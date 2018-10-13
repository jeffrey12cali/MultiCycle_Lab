library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
port(
	
	a: in std_logic_vector (7 downto 0);
	op: in std_logic_vector (1 downto 0);
	aluOut: out std_logic_vector (7 downto 0);
	zero: out std_logic
	
);

end alu;

architecture case_arch of alu is
signal temp: std_logic_vector (7 downto 0);
begin 
 process (a,op)
 begin 
 case (op) is
	when "00" =>
		temp <= a+"00000001";
	when "01" =>
		temp <= a-"00000001";
	when "10" => 
		temp <= a and "00000001";
	when others =>
		temp <= a or "00000001";
	end case;
	aluOut <= temp;
 end process;
 zero <= '1' when temp = "00000000" else
 '0';
end case_arch;