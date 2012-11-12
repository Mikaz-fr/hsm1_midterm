--==============================================================================
-- File        :  sqroot_seq_rtl.vhd
-- Description :  Sequential square root calculator.
-- Notes       :  FSMD model.
-- Author      :  Michael Roy
-- Tools       :  Modelsim 10.0a, Synopsys DC 2011.09
-- History     :
--    12 nov 2012    M. Roy     Creation.
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sqroot_seq is
   generic (NBITS : natural := 8);
   port (
     signal arg : IN std_logic_vector(NBITS-1 downto 0); 
     signal roundup : IN std_logic;
     signal clk : IN std_logic;
     signal nRst : IN std_logic; 
     signal sqroot : OUT std_logic_vector(NBITS/2 downto 0)
     signal ready : OUT std_logic;
     );  
end entity sqroot_seq;

architecture rtl of sqroot_seq is
  
  type state_type is (ST_INIT, ST_IF, ST_COMP, ST_ROUND, ST_RES);
  constant RST_STATE : state_type := ST_INIT;
  signal state_reg, state_next : state_type;
  
  --data reg
  signal delta, delta_next : unsigned(NBITS-1 downto 0); 
  signal root, root_next : unsigned(NBITS-1 downto 0); 
  signal res, res_next : unsigned(NBITS-1 downto 0); 

  --internal status signal
  signal iss_start, iss_looping, iss_round, iss_if : std_logic;

  begin
    
  --control path: state register
  CP_SR: process(clk,nRst)
    begin 
      if nRst = '0' then                 --asynchronous reset active low                
        state_reg  <= RST_STATE;         
      elsif (rising_edge(clk)) then 
        state_reg <= state_next;
      end if;
    end process CP_SR;
    
    --control path: next state logic
    CP_NST: process(state_reg)
      begin
        case state_reg is
          when ST_INIT => if iss_start = '1' then     --Starting condition
                            if iss_if then            --does res need to be updated
                              state_next <= ST_IF;
                            else
                              state_next <= ST_COMP;
                            end if;
                          end if;
          when ST_IF =>   state_next <= ST_COMP;
          when ST_COMP => if iss_looping = '1' then   --is the while over?
                            if iss_if then            --does res need to be updated
                              state_next <= ST_IF;
                            else
                              state_next <= ST_COMP;
                            end if;
                          else 
                            if iss_round = '1' then   --do we need to roundup
                              state_next <= ST_ROUND;
                           else
                              state_next <= ST_RES;    
                            end if;
                          end if;
         when ST_ROUND => state_next <= ST_RES;
         when ST_RES =>  state_next <= ST_INIT;
       end case;
      end process CP_NST.
    
    --control path: output logic
    CP_OL: ready <= '1' when state_reg = ST_INIT else '0';
    
    --data path: data register
    DP_DR: process(clk, nRst)
      begin
        if nRst = '0' then                 --asynchronous reset active low                
          root_reg <= (others => '0'); 
          delta_reg <= (others => '0'); 
          res_reg <= (others => '0');        
        elsif (rising_edge(clk)) then 
          root_reg <= root_next;
          delta_reg <= delta_next;
          res_reg <= res_next;
        end if;
      end process DP_DR;
    
    --data path: internal status signal
    iss_ start <= '1' when ?????? else '0';                                       --!!!!!!!!TO BE CHECKED!!!!!!!!!!!!!!
    iss_looping <= '1' when (delta_next >= unsigned(1,NBITS)) else '0';             --!!!!!!!!TO BE CHECKED!!!!!!!!!!!!!!
    iss_round <= '1' when (roundup = '1' and (res_reg > root_reg)) else '0';
    iss_if <= when (root_reg + delta_reg) <= res_reg else '0';
    
    --data path; routing mux
    DP_RMUX: process(state_reg,arg,root_reg,delta_reg,res_reg)
      begin
        root_next <= root_reg;    --avoid latches
        delta_next <= delta_reg;
        res_next <= res_reg;
        
        case state_reg is
          when ST_INIT =>   delta_next <= (others => '0');
                            delta_next(NBITS - 2) <= '1';                  --Compute 2^(NBITS-2)
                            res_next <= unsigned(arg(NBITS-1 downto 0)); 
                            root_next <= (others => '0');
                            
          when ST_IF =>     res_next <= res - (root_reg + delta_reg);
                            root_next <= root + (delta_reg(NBITS-2 downto 0) & '0');
                            
          when ST_COMPT =>  root_next(NBITS-1 downto 0) <= '0' & root_reg(NBITS-1 downto 1);   --shift by 1 (divide by 2)
                            delta_next(NBITS-1 downto 0) <= "00" & delta_reg(NBITS-1 downto 2);  --shift by 2 (divide by 4)
                            
          when ST_ROUND =>  root_next <= root_reg + unsigned(1,NBITS);
          
          when ST_RES =>    null; 
        end case;
      end process DP_RMUX;
      
    --data path: functional units
      --none
      
    --data phat: data output
    sqroot <= std_logic_vector(root_reg(NBITS/2 downto 0)); 
  
end architecture rtl;