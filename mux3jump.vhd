library ieee;
use ieee.std_logic_1164.all;
entity mux3jump is 
port
(
	
	a,b,c: in std_logic_vector(31 downto 0);
	sel1: in std_logic_vector(1 downto 0);
	salida: out std_logic_vector(31 downto 0)
	
);
end mux3jump;

architecture case_arch2 of mux3jump is
begin
	process(sel1,a,b,c)
	begin
		case (sel1) is
			when "00" =>
				salida <= a;
			when "01" =>
				salida <= b;
			when others =>
				salida <= c;
		end case;
	end process;
end case_arch2;