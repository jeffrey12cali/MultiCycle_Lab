library ieee;
use ieee.std_logic_1164.all;

entity TestCU is
	port(
		op1: in std_logic_vector(5 downto 0); -- opcode
		clock: in bit;
		ALUop1: out std_logic_vector(1 downto 0);
		ALUsrcA1: out std_logic;
		ALUsrcB1: out std_logic_vector(1 downto 0);
		PCsrc1: out std_logic_vector(1 downto 0);
		PCwrCond1: out std_logic;
		PCwr1: out std_logic;
		RegWr1: out std_logic;
		RegDst1: out std_logic;
		IorD1: out std_logic;
		MemRd1: out std_logic;
		MemWr1: out std_logic;
		MemtoReg1: out std_logic;
		IRwr1: out std_logic;
		NextSt1: out std_logic_vector(3 downto 0)
	);
end TestCU;

architecture behavior of TestCU is
	component controlUnit 
		port(
			op: in std_logic_vector(5 downto 0); -- opcode
			st: in std_logic_vector(3 downto 0); -- estado actual
			ALUop: out std_logic_vector(1 downto 0);
			ALUsrcA: out std_logic;
			ALUsrcB: out std_logic_vector(1 downto 0);
			PCsrc: out std_logic_vector(1 downto 0);
			PCwrCond: out std_logic;
			PCwr: out std_logic;
			RegWr: out std_logic;
			RegDst: out std_logic;
			IorD: out std_logic;
			MemRd: out std_logic;
			MemWr: out std_logic;
			MemtoReg: out std_logic;
			IRwr: out std_logic;
			NextSt: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component NewState
		port(
			NewS: in std_logic_vector (3 downto 0);
			clk: in bit;
			CS: out std_logic_vector (3 downto 0)
		);
	end component;
	
	signal ns_in: std_logic_vector(3 downto 0);
	signal ns_out: std_logic_vector(3 downto 0);
	
	begin
		CONTUN: controlUnit
		port map(
			op => op1,
			st => ns_in,
			ALUop => ALUop1,
			ALUsrcA => ALUsrcA1,
			ALUsrcB => ALUsrcB1,
			PCsrc => PCsrc1,
			PCwrCond => PCwrCond1,
			PCwr => PCwr1,
			RegWr => RegWr1,
			RegDst => RegDst1,
			IorD => IorD1,
			MemRd => MemRd1,
			MemWr => MemWr1,
			MemtoReg => MemtoReg1,
			IRwr => IRwr1,
			NextSt => ns_out
		);
		
		NWST: NewState
		port map(
			NewS => ns_out,
			clk => clock,
			CS => ns_in
		);
		
		NextSt1 <= ns_in;
		
end architecture;

