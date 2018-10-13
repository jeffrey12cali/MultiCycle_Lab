library ieee;
use ieee.std_logic_1164.all;
entity mux is 
port
(
	a,b,c,d: in std_logic_vector(7 downto 0);
	sel: in std_logic_vector(1 downto 0);
	salida: out std_logic_vector(7 downto 0)
	
);
end mux;

architecture case_arch of mux is
begin
	process(sel)
	begin
		case (sel) is
			when "00" =>
				salida <= a;
			when "01" =>
				salida <= b;
			when "10" =>
				salida <= c;
			when others =>
				salida <= d;
		end case;
	end process;
end case_arch;


