library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
port(
	
	a: in std_logic_vector (31 downto 0);
	b: in std_logic_vector(31 downto 0);
	func: in std_logic_vector (2 downto 0);
	aluOut: out std_logic_vector (31 downto 0);
	zero: out std_logic
	
);

end alu;

architecture behavior of alu is

signal temp: std_logic_vector(31 downto 0);

begin 
	process (func)
		begin 
		case (func) is
		-- instrucción add
		when "010" =>
			temp <= a+b;
		-- instrucción sub
		when "110" =>
			temp <= a - b;
		-- instrucción and
		when "000" =>
			temp <= a and b;
		-- instrucción or
		when "001" =>
			temp <= a or b;
		-- instrucción stl
		when "111" =>
			if (a<b) then
			temp <= "11111111111111111111111111111111";
			else
			temp <= "00000000000000000000000000000000";
			end if;
		-- otras instrucciones
		when others =>
			temp <= not(a and b);
		end case;
		aluOut <= temp;
	end process;
	zero <= '1' when temp = "00000000000000000000000000000000" else
	'0';

end behavior; 