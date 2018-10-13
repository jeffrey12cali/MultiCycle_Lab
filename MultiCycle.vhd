library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
	port(
		testA: in std_logic_vector(7 downto 0);
		testSel: in std_logic_vector(1 downto 0);
		testOp: in std_logic_vector(1 downto 0);
		testRes: out std_logic_vector(7 downto 0)
	);
end MultiCycle;

architecture behaviour of MultiCycle is
	component alu
		port(
			a: in std_logic_vector (7 downto 0);
			b: in std_logic_vector(7 downto 0);
			op: in std_logic_vector (1 downto 0);
			aluOut: out std_logic_vector (7 downto 0);
			zero: out std_logic
		);
	end component;
	
	component mux
		port(
			a,b,c,d: in std_logic_vector(7 downto 0);
			sel: in std_logic_vector(1 downto 0);
			salida: out std_logic_vector(7 downto 0)
		);
	end component;
		
	signal outMux: std_logic_vector(7 downto 0);
	
	begin
		unit1: alu
		port map(
			a => testA,
			b => outMux,
			op => testOp,
			aluOut => testRes
		);
		
		unit2: mux
		port map(
			sel => testSel,
			salida => outMux,
			a => "00000000",
			b => "00000100",
			c => "00110111",
			d => "01100100"
		);
	end;