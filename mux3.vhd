library ieee;
use ieee.std_logic_1164.all;
entity mux3 is 
port
(
	
	a,
	b: in std_logic_vector(4 downto 0);
	sel1: in std_logic;
	salida: out std_logic_vector(4 downto 0)
	
);
end mux3;

architecture case_arch2 of mux3 is
begin
	process(sel1,a,b)
	begin
		case (sel1) is
			when '0' =>
				salida <= a;
			when others =>
				salida <= b;
		end case;
	end process;
end case_arch2;


