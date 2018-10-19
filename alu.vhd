library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
port(
	
	a: in std_logic_vector (31 downto 0);
	b: in std_logic_vector(31 downto 0);
	op: in std_logic_vector (5 downto 0);
	aluOut: out std_logic_vector (31 downto 0);
	zero: out std_logic
	
);

end alu;

architecture case_arch of alu is
signal temp: std_logic_vector (31 downto 0);
begin 
 process (a,b,op)
 begin 
 case (op) is
	when "000000" =>
		temp <= a+b;
	when "000001" =>
		temp <= a-b;
	when "000010" => 
		temp <= a and b;
	when others =>
		temp <= a or b;
	end case;
	aluOut <= temp;
 end process;
 zero <= '1' when temp = "00000000000000000000000000000000" else
 '0';
end case_arch;