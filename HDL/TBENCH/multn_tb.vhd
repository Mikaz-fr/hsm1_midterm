--==============================================================================
-- File        :  multn_tb.vhd
-- Description :  Testbench for generic multiplier model.
-- Notes       :  -.
-- Author      :  Alain Vachoux, EPFL STI IEL LSM, alain.vachoux@epfl.ch
--                for Hardware Modeling I course.
-- Tools       :  Modelsim 6.5c, Synopsys DC 2009.06
-- History     :
--    06 oct 2010    A. Vachoux     Creation.
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multn_tb is
end entity multn_tb;

architecture bench of multn_tb is

   constant CLK_PER : time := 10 ns;
   constant NBITS   : natural := 8;

   signal clk    : std_logic := '0';
   signal rst_b,
          start,
          ready  : std_logic;
   signal a_in,
          b_in   : std_logic_vector (NBITS-1 downto 0);
   signal z_out  : std_logic_vector(2*NBITS-1 downto 0);
   signal stop   : boolean := false;

   component multn is
      port (
         signal clk,                            -- clock
                rst_b : in  std_logic;          -- async asserted low reset
         signal start : in  std_logic;          -- start computation
         signal a_in,                           -- input operands
                b_in  : in  std_logic_vector;
         signal ready : out std_logic;          -- output has final result
         signal z_out : out std_logic_vector);  -- result
   end component multn;

begin

   UUT : component multn
      port map (clk, rst_b, start, a_in, b_in, ready, z_out);

   clk   <= not clk after CLK_PER/2 when not stop;
   rst_b <= '1', '0' after CLK_PER/4, '1' after 3*CLK_PER/4;

   process

      procedure compute (constant x, y : in integer) is
         variable z_exp : unsigned(z_out'range);
      begin
         wait until clk = '0';
         a_in  <= std_logic_vector(to_unsigned(x, a_in'length));
         b_in  <= std_logic_vector(to_unsigned(y, b_in'length));
         z_exp := to_unsigned(x*y, z_exp'length);
         start <= '1';
         wait until clk = '0';
         start <= '0';
         wait until ready = '1';
         wait until clk = '0';
         assert z_out = std_logic_vector(z_exp);
      end procedure compute;

   begin
      start <= '0';
      wait until rst_b = '0';
      compute(9, 24);
      compute(0, 221);
      compute(255, 5);
      compute(128, 128);
      compute(99, 0);
      compute(255, 255);
      wait until clk = '1';
      stop <= true;
      wait;
   end process;

end architecture bench;
