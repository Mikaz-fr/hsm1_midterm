library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sqroot_seq_tb is end;

architecture bench of sqroot_seq_tb is

   component sqroot is
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
   constant CLK_FREQ  : time := 3.5 ns;

   signal arg      : std_logic_vector(NBITS-1 downto 0);
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
      port map (arg, roundup, CLK, nRst, start, z, ready);


  CLK <= not CLK after CLK_FREQ when sim_done = '0' else '0';


   process

      procedure compute (argn : integer; rup : std_logic := '0') is
         variable sqrt_exp2 : natural;
        begin
          roundup  <= rup;
          arg      <= std_logic_vector(to_unsigned(argn, arg'length));

          start <= '1';
          wait until ready = '0';
          start <= '0';
          sqrt_exp <= sqrt(real(argn));
          wait until ready = '1';

          check <= '1';
          if rup = '1' then
            sqrt_exp2 := integer(round(sqrt_exp));
          else
            sqrt_exp2 := integer(floor(sqrt_exp));
          end if;
          wait for CLK_FREQ/20 ;  --let time to do a pulse on check
          assert to_integer(unsigned(z)) = sqrt_exp2;
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
      sim_done <= '1';
      wait;
   end process;
   

end architecture bench;