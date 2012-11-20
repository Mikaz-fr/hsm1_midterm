--==============================================================================
-- File        :  sqroot_seq_tb.vhd
-- Description :  TestBench for synchronous square root calculator.
-- Notes       :  
-- Author      :  Michael Roy
-- Tools       :  Modelsim 10.0a, Synopsys DC 2011.09
-- History     :
--    12 nov 2012    M. Roy     Creation
--    20 nov 2012    M. Roy     Comments
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sqroot_seq_tb is end;

architecture bench of sqroot_seq_tb is

   component sqroot is		--get component 
      port (
        signal arg : IN std_logic_vector; 
        signal roundup : IN std_logic;
        signal clk : IN std_logic;
        signal nRst : IN std_logic;
        signal start : IN std_logic; 
        signal sqroot : OUT std_logic_vector;
        signal ready : OUT std_logic
        );
   end component sqroot;

   constant NBITS     : natural := 8;
   constant CLK_PERIODE  : time := 3.5 ns;

   signal arg      : std_logic_vector(NBITS-1 downto 0);	--internal signals
   signal z        : std_logic_vector(NBITS/2 downto 0);
   signal roundup  : std_logic;
   signal check    : std_logic := '0';
   signal sqrt_exp : real := 0.0;
   signal CLK : std_logic := '0';
   signal nRst : std_logic := '0';
   signal start : std_logic := '0'; 
   signal ready : std_logic;
   signal sim_done : std_logic := '0';

begin

   UUT : component sqroot
      port map (arg, roundup, CLK, nRst, start, z, ready);	--map component


  CLK <= not CLK after (CLK_PERIODE/2) when sim_done = '0' else '0';	--Generate clock at correct periode, stop it when everything has been tested


   process

      procedure compute (argn : integer; rup : std_logic := '0') is
         variable sqrt_exp2 : natural;
        begin
          roundup  <= rup;
          arg      <= std_logic_vector(to_unsigned(argn, arg'length));

          start <= '1';			--ask to start computation
          wait until ready = '0';
          start <= '0';			--Reset signal as soon as computation has started
          sqrt_exp <= sqrt(real(argn));
          wait until ready = '1';	--Wait for computation to be over

          check <= '1';
          if rup = '1' then
            sqrt_exp2 := integer(round(sqrt_exp));
          else
            sqrt_exp2 := integer(floor(sqrt_exp));
          end if;
          wait for CLK_PERIODE/20 ;  		--let some time to do a pulse on check
          assert to_integer(unsigned(z)) = sqrt_exp2;	--rise message a wrong value
          check <= '0';
      end procedure compute;

   begin      
      nRst <= '0';
      wait for 20 ns; --Take some time to reset
      nRst <= '1';
      
      for i in 1 to (2**NBITS)-1 loop
         compute(i);
         compute(i, '1');
      end loop;
      nRst <= '0';
      sim_done <= '1';		--all cases has been tested
      wait;			--wait forever
   end process;
   

end architecture bench;