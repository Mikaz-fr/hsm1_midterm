--==============================================================================
-- File        :  multn_ra.vhd
-- Description :  Generic repetitive-addition multiplier model.
-- Notes       :  FSMD model.
-- Author      :  Alain Vachoux, EPFL STI IEL LSM, alain.vachoux@epfl.ch
--                for Hardware Modeling I course.
-- Tools       :  Modelsim 6.5c, Synopsys DC 2009.06
-- History     :
--    06 oct 2010    A. Vachoux     Creation.
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;

entity multn is
   generic (NBITS : natural := 8);
   port (
      signal clk,                      -- clock
             rst_b : in  std_logic;    -- async asserted low reset
      signal start : in  std_logic;    -- start computation
      signal a_in,                     -- input operands
             b_in  : in  std_logic_vector(NBITS-1 downto 0);
      signal ready : out std_logic;    -- output has final result
      signal z_out : out std_logic_vector(2*NBITS-1 downto 0));   -- result
end entity multn;

library ieee;
use ieee.numeric_std.all;
architecture ra of multn is

   constant ZERO_NBITS : unsigned(NBITS-1 downto 0) := (others => '0');

   -- control registers
   type state_type is (ST_IDLE, ST_AB0, ST_LOAD, ST_OP);
   constant RST_STATE : state_type := ST_IDLE;
   signal state_reg, state_next : state_type;

   -- data registers
   signal a_reg, a_next,
          b_reg, b_next : unsigned(NBITS-1 downto 0);
   signal z_reg, z_next : unsigned(2*NBITS-1 downto 0);

   -- data path status
   signal opa0, opb0, breg0 : std_logic;  -- 1 if zero

   -- functional unit outputs
   signal add_out : unsigned(2*NBITS-1 downto 0);
   signal dec_out : unsigned(NBITS-1 downto 0);

begin

   -- control path & data path registers
   REG: process (clk, rst_b)
   begin
      if rst_b = '0' then
         state_reg <= RST_STATE;
         a_reg     <= (others => '0');
         b_reg     <= (others => '0');
         z_reg     <= (others => '0');
      elsif clk'event and clk = '1' then
         state_reg <= state_next;
         a_reg     <= a_next;
         b_reg     <= b_next;
         z_reg     <= z_next;
     end if;
   end process REG;

   -- control path next-state logic
   CP_NSL: process (state_reg, start, opa0, opb0, breg0)
   begin
      state_next <= state_reg; -- keep current state by default
      case state_reg is
         when ST_IDLE =>
            if start = '1' then
               if opa0 = '1' or opb0 = '1' then
                  state_next <= ST_AB0;
               else
                  state_next <= ST_LOAD;
               end if;
            end if;
         when ST_AB0 => state_next <= ST_IDLE;
         when ST_LOAD => state_next <= ST_OP;
         when ST_OP =>
            if breg0 = '1' then
               state_next <= ST_IDLE;
            end if;
      end case;
   end process CP_NSL;

   -- control path output logic
   CP_OL: ready <= '1' when state_reg = ST_IDLE else
                   '0';

   -- datapath routing mux
   DP_RMUX: process (state_reg, a_in, b_in, a_reg, b_reg, z_reg, add_out, dec_out)
   begin
      a_next <= a_reg;
      b_next <= b_reg;
      z_next <= z_reg;
      case state_reg is
         when ST_IDLE => null;
         when ST_AB0  => z_next <= (others => '0');
         when ST_LOAD => a_next <= unsigned(a_in);
                         b_next <= unsigned(b_in);
                         z_next <= (others => '0');
         when ST_OP   => b_next <= dec_out;
                         z_next <= add_out;
      end case;
   end process DP_RMUX;

   -- data path functional units
   add_out <= (ZERO_NBITS & a_reg) + z_reg;
   dec_out <= b_reg - 1;

   -- data path status signals
   opa0  <= '1' when unsigned(a_in) = ZERO_NBITS else
            '0';
   opb0  <= '1' when unsigned(b_in) = ZERO_NBITS else
            '0';
   breg0 <= '1' when b_next = 0 else
            '0';

   -- data path output
   z_out <= std_logic_vector(z_reg);

end architecture ra;
