library ieee;
use ieee.std_logic_1164.all;
entity mux2 is 
port
(
	regA,
	PC: in std_logic_vector(31 downto 0);
	sel1: in std_logic_vector(0 downto 0);
	salida: out std_logic_vector(31 downto 0)
	
);
end mux2;

architecture case_arch1 of mux2 is
begin
	process(sel1)
	begin
		case (sel1) is
			when "0" =>
				salida <= regA;
			when others =>
				salida <= PC;
		end case;
	end process;
end case_arch1;

