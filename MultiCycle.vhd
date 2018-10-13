library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
	port(
		testA: in std_logic_vector(7 downto 0);
		testSel: std_logic;
		testOp: in std_logic_vector(1 downto 0);
		testRes: out std_logic_vector(7 downto 0)
	);
end MultiCycle;

architecture behaviour of MultiCycle is
	component alu
		port(
			a: in std_logic_vector (7 downto 0);
			op: in std_logic_vector (1 downto 0);
			aluOut: out std_logic_vector (7 downto 0);
			zero: out std_logic
		);
	end component;
	
	component mux
	
	begin
		unit: PC
		port map(
			PCw => clock,
			addr => input,
			addr_out => output
		);
	end;