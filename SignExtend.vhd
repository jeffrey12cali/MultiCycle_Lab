library ieee;
use ieee.std_logic_1164.all;

entity SignExtend is
	port(
	imm: in std_logic_vector (15 downto 0);
	ext: out std_logic_vector (31 downto 0)
	);
end entity;

architecture behavior of SignExtend is
	begin
		process(imm) begin
			ext(15 downto 0) <= imm(15 downto 0);
			ext(31 downto 16) <= "0000000000000000";
		end process;
end architecture;