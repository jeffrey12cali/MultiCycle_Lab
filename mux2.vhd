library ieee;
use ieee.std_logic_1164.all;
entity mux2 is 
port
(
	dataSrc0,
	dataSrc1: in std_logic_vector(31 downto 0);
	sel1: in std_logic;
	salida: out std_logic_vector(31 downto 0)
	
);
end mux2;

architecture case_arch1 of mux2 is
begin
	process(sel1,dataSrc0,dataSrc1)
	begin
		case (sel1) is
			when '0' =>
				salida <= dataSrc0;
			when others =>
				salida <= dataSrc1;
		end case;
	end process;
end case_arch1;

