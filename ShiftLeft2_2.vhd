library ieee;
use ieee.std_logic_1164.all;

entity ShiftLeft2_2 is
	port(
		dataIn: in std_logic_vector (31 downto 0);
		dataOut: out std_logic_vector (31 downto 0)
	);
end entity;

architecture behavior of ShiftLeft2_2 is
	begin
	process(dataIn) begin
		dataOut(31 downto 2) <= dataIn(29 downto 0);
		dataOut(1 downto 0) <= "00";
	end process;
end architecture;