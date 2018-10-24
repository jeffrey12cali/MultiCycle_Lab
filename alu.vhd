library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
port(
	
	a: in std_logic_vector (31 downto 0);
	b: in std_logic_vector(31 downto 0);
	func: in std_logic_vector (5 downto 0);
	aluOut: out std_logic_vector (31 downto 0);
	zero: out std_logic
	
);

end alu;

architecture behavior of alu is

begin 
	process (a,b,func)
		begin 
		case (func) is
		-- instrucción add
		when "100000" =>
			temp <= a+b;
		-- instrucción and
		when "100100" =>
			temp <= a+b;
		-- instrucción or
		when "100101" =>
			temp <= a or b;
		-- instrucción stl
		when "101010" =>
			if (a<b) then
			temp <= "11111111111111111111111111111111";
			else
			temp <= "00000000000000000000000000000000";
		-- instrucción jr
		when "001000" =>
			temp <= a;
		-- otras instrucciones
		when others =>
			temp <= not(a and b);
		end case;
		aluOut <= temp;
	end process;
	zero <= '1' when temp = "00000000000000000000000000000000" else
	'0';

end behavior; 