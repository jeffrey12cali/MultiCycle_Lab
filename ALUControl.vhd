library ieee;
use ieee.std_logic_1164.all;

entity ALUControl is 
  port( 
			ALUOp: in std_logic_vector(1 downto 0);
			Func: in std_logic_vector(5 downto 0);
			op: out std_logic_vector(2 downto 0)
      );
end entity;
    
architecture behavior of ALUControl is
begin
  
  process(ALUOp,Func)
  begin
     
        op(2) <= ( ALUOp(0) or ( ALUOp(1)and Func(1)));
        op(1) <= ( not(ALUOp(1)) or not(Func(2)));
        op(0) <= (( ALUOp(1) )and( Func(3) or Func(0)));
      
    end process;
    
end behavior;