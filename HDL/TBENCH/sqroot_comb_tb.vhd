library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sqroot_comb_tb is end;

architecture bench of sqroot_comb_tb is

   component sqroot is
      port (
         signal arg     : in  std_logic_vector;
         signal roundup : in  std_logic;
         signal sqroot  : out std_logic_vector );
   end component sqroot;

   constant NBITS     : natural := 8;
   constant WAIT_TIME : time := 2.61 ns;

   signal arg      : std_logic_vector(NBITS-1 downto 0);
   signal z        : std_logic_vector(NBITS/2 downto 0);
   signal roundup  : std_logic;
   signal check    : std_logic := '0';
   signal sqrt_exp : real := 0.0;

begin

   UUT : component sqroot
      port map (arg, roundup, z);

   process

      procedure compute (argn : integer; rup : std_logic := '0') is
         variable sqrt_exp2 : natural;
      begin
         roundup  <= rup;
         arg      <= std_logic_vector(to_unsigned(argn, arg'length));
         sqrt_exp <= sqrt(real(argn));
         wait for WAIT_TIME;

         check <= '1';
         if rup = '1' then
            sqrt_exp2 := integer(round(sqrt_exp));
         else
            sqrt_exp2 := integer(floor(sqrt_exp));
         end if;
         assert to_integer(unsigned(z)) = sqrt_exp2;
         wait for WAIT_TIME/4;
         check <= '0';

      end procedure compute;

   begin
      wait for WAIT_TIME;
      for i in 1 to (2**NBITS)-1 loop
         compute(i);
         compute(i, '1');
      end loop;
      wait;
   end process;

end architecture bench;
