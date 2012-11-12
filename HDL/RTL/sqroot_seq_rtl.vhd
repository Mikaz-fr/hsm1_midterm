--==============================================================================
-- File        :  sqroot_comb_rtl.vhd
-- Description :  Generic repetitive-addition multiplier model.
-- Notes       :  FSMD model.
-- Author      :  Michael Roy
-- Tools       :  Modelsim 6.5c, Synopsys DC 2009.06
-- History     :
--    06 nov 2012    M. Roy     Creation.
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sqroot_comb is
   generic (NBITS : natural := 8);
   port (
     signal arg : IN std_logic_vector(NBITS-1 downto 0); 
     signal roundup : IN std_logic;
     signal sqroot : OUT std_logic_vector(NBITS/2 downto 0)
     );  
end entity sqroot_comb;

architecture rtl of sqroot_comb is

  begin
    
  sqroot_proc: process(arg,roundup)
    variable res: unsigned(NBITS-1 downto 0);
    variable root: unsigned(NBITS-1 downto 0);
    variable delta: unsigned(NBITS-1 downto 0);
    variable one_vect : unsigned(NBITS-1 downto 0);
    begin  
    
      one_vect := to_unsigned(1,NBITS);
      delta := (others => '0');
      delta(NBITS - 2) := '1';                  --Compute 2^(NBITS-2)
      res := unsigned(arg(NBITS-1 downto 0)); 
      root := (others => '0');
              
      while (delta >= one_vect) loop
        if ((root + delta) <= res) then
          res := res - (root + delta);
          root := root + (delta(NBITS-2 downto 0) & '0');
        end if; 
        
        root(NBITS-1 downto 0) := '0' & root(NBITS-1 downto 1);   --shift by 1 (divide by 2)
        delta(NBITS-1 downto 0) := "00" & delta(NBITS-1 downto 2);  --shift by 2 (divide by 4)
      end loop;
      
      if ((roundup = '1') AND (res > root)) then
        root := root + one_vect;     
      end if;
      
      sqroot <= std_logic_vector(root(NBITS/2 downto 0));
      
    end process sqroot_proc;
    
  
end architecture rtl;