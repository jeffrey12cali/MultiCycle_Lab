
library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
end MultiCycle;

architecture behaviour of MultiCycle is
	component PC
		port(
			PCw: in std_logic;
			addr: in std_logic_vector (7 downto 0);
			addr_out: out std_logic_vector (7 downto 0)
		);
	end component;
	
	for reg: pc use entity work.PC (behavior);
	
	signal clock: std_logic;
	signal input, output: std_logic_vector (7 downto 0);
	
	begin
		reg: PC port map(clock, input, output);
	end;