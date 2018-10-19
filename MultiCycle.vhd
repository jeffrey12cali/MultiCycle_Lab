library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
	port(
		testSel1: in std_logic;
		testSel2: in std_logic_vector(1 downto 0);
		testOp: in std_logic_vector(5 downto 0);
		testRes: out std_logic_vector(31 downto 0)
	);
end MultiCycle;

architecture behaviour of MultiCycle is
	component alu
		port(
			a: in std_logic_vector (31 downto 0);
			b: in std_logic_vector(31 downto 0);
			op: in std_logic_vector (5 downto 0);
			aluOut: out std_logic_vector (31 downto 0);
			zero: out std_logic
		);
	end component;
	
	component mux
		port(
			a,b,c,d: in std_logic_vector(31 downto 0);
			sel: in std_logic_vector(1 downto 0);
			salida: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component mux2
		port(
			regA,
			PC: in std_logic_vector(31 downto 0);
			sel1: in std_logic;
			salida: out std_logic_vector(31 downto 0)
			);
	end component;
	
		
	signal outMux: std_logic_vector(31 downto 0); 
	signal outMux1: std_logic_vector(31 downto 0);
	
	begin
		unit1: alu
		port map(
			a => outMux1,
			b => outMux,
			op => testOp,
			aluOut => testRes
		);
		
		unit2: mux
		port map(
			sel => testSel2,
			salida => outMux,
			a => "00000000000000000000000000000000", 
			b => "00000000000000000000000000000100",
			c => "00000000000000000000000000000110",
			d => "00000000000000000000000000000111"
		);
		
		unit3: mux2
		port map(
			sel1 => testSel1, 
			salida =>outMux1,  
			regA => "00000000000000000000000000010100",
			PC => "00000000000000000000000000010101"
		);
		
	end;


