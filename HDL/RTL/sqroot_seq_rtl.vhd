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
     signal start : IN std_logic; 
     signal sqroot : OUT std_logic_vector(NBITS/2 downto 0);
     signal ready : OUT std_logic
     );  
end entity sqroot_seq;

architecture rtl of sqroot_seq is
  
  type state_type is (ST_IDLE, ST_INIT, ST_IF, ST_COMP, ST_ROUND);
  constant RST_STATE : state_type := ST_IDLE;
  signal state_reg, state_next : state_type;
  
  --data reg
  signal delta_reg, delta_next : unsigned(NBITS-1 downto 0); 
  signal root_reg, root_next : unsigned(NBITS-1 downto 0); 
  signal res_reg, res_next : unsigned(NBITS-1 downto 0); 

  --internal status signal
  signal iss_start, iss_looping, iss_round, iss_if : std_logic;
  
  --functional unit outputs
  signal fuo_if_res, fuo_if_root, fuo_comp_root, fuo_comp_delta, fuo_round : unsigned(NBITS-1 downto 0);

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
    CP_NSL: process(state_reg, start, iss_start, iss_looping, iss_round, iss_if)
      begin
        state_next <= state_reg;        --avoid latches
        case state_reg is
          when ST_IDLE => if iss_start = '1' then     --Starting condition
                            state_next <= ST_INIT;
                          end if;
          when ST_INIT => if iss_if = '1' then            --does res need to be updated
                            state_next <= ST_IF;
                          else
                            state_next <= ST_COMP;
                          end if;                          
          when ST_IF =>   state_next <= ST_COMP;
          when ST_COMP => if iss_looping = '1' then   --is the while over?
                            if iss_if = '1' then            --does res need to be updated
                              state_next <= ST_IF;
                            else
                              state_next <= ST_COMP;
                            end if;
                          else 
                            if iss_round = '1' then   --do we need to roundup
                              state_next <= ST_ROUND;
                           else
                              state_next <= ST_IDLE;    
                            end if;
                          end if;
         when ST_ROUND => state_next <= ST_IDLE;
       end case;
      end process CP_NSL;
    
    --control path: output logic
    CP_OL: ready <= '1' when state_reg = ST_IDLE else '0';
    
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
    iss_start <= '1' when start = '1' else '0';                                     
    iss_looping <= '1' when (delta_next >= to_unsigned(1,NBITS)) else '0';             --!!!!!!!!TO BE CHECKED!!!!!!!!!!!!!!
    iss_round <= '1' when (roundup = '1' and (res_next> root_next)) else '0';
    iss_if <= '1' when ((root_next + delta_next) <= res_next) else '0';
    
    --data path; routing mux
    DP_RMUX: process(state_reg,arg,root_reg,delta_reg,res_reg, fuo_if_res, fuo_if_root, fuo_comp_root, fuo_comp_delta, fuo_round)
      begin
        root_next <= root_reg;    --avoid latches
        delta_next <= delta_reg;
        res_next <= res_reg;
        
        case state_reg is
          when ST_IDLE =>   null;
            
          when ST_INIT =>   delta_next <= (others => '0');
                            delta_next(NBITS - 2) <= '1';                  --Compute 2^(NBITS-2)
                            res_next <= unsigned(arg(NBITS-1 downto 0)); 
                            root_next <= (others => '0');
                            
          when ST_IF =>     res_next <= fuo_if_res;
                            root_next <= fuo_if_root;
                            
          when ST_COMP =>   root_next(NBITS-1 downto 0) <= fuo_comp_root;
                            delta_next(NBITS-1 downto 0) <= fuo_comp_delta;
                            
          when ST_ROUND =>  root_next <= fuo_round;
        end case;
      end process DP_RMUX;
      
    --data path: functional units
    fuo_if_res <= res_reg - (root_reg + delta_reg);
    fuo_if_root <= root_reg + (delta_reg(NBITS-2 downto 0) & '0'); 
    fuo_comp_root <= '0' & root_reg(NBITS-1 downto 1);   --shift by 1 (divide by 2)
    fuo_comp_delta <= "00" & delta_reg(NBITS-1 downto 2);  --shift by 2 (divide by 4)
    fuo_round <= root_reg + to_unsigned(1,NBITS);
      
    --data phat: data output
    sqroot <= std_logic_vector(root_reg(NBITS/2 downto 0)); 
  
end architecture rtl;