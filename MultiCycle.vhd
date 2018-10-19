library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
	port(
		testSel1: in std_logic;
		testSel2: in std_logic_vector(1 downto 0);
		testSel3: in std_logic;
		testSel4: in std_logic;
		testMemory: in std_logic_vector(31 downto 0);
		--testOp: in std_logic_vector(5 downto 0);
		--testRegister1: in std_logic_vector(4 downto 0);
		--testRegister2: in std_logic_vector(4 downto 0);
		testRes: out std_logic_vector(31 downto 0);
		--testIr: in std_logic_vector(31 downto 0);
		
		testIrw: in std_logic
		
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
	component registerFile
		port (RR1: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 1
		 RR2: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 2 
		 WR: in std_logic_vector(4 downto 0);		--5-bit Write Register
		 WD: in std_logic_vector(31 downto 0);		--32-bit Write Data
		 Control: in std_logic_vector(5 downto 0);	--6-bit Opcode/Function
		 RD1: out std_logic_vector(31 downto 0); 	--32-bit output1
		 RD2: out std_logic_vector(31 downto 0); 	--32-bit output2
		 CTRL_OUT: out std_logic_vector(5 downto 0)
		 );
	end component;
	
	component mux3
	port
	(
	
		a,
		b: in std_logic_vector(4 downto 0);
		sel1: in std_logic;
		salida: out std_logic_vector(4 downto 0)
	);
	end component;

	component IR
		port(
		instr: in std_logic_vector (31 downto 0);
		IRw: in std_logic;
		op: out std_logic_vector (5 downto 0);
		r1: out std_logic_vector (4 downto 0);
		r2: out std_logic_vector (4 downto 0);
		r3: out std_logic_vector (4 downto 0);
		imm: out std_logic_vector (15 downto 0);
		jump: out std_logic_vector (25 downto 0);
		func: out std_logic_vector (5 downto 0)
		);
	end component;
	component memory
		port (
		address: in std_logic_vector(31 downto 0);
		--write_data: in std_logic_vector(31 downto 0);
		data_out: out std_logic_vector(31 downto 0)
		--memWrite,memRead,clk: in  std_logic
	
		);
	end component;
	
	
	signal outMux: std_logic_vector(31 downto 0); 
	signal outMux1: std_logic_vector(31 downto 0);
	signal outReg1: std_logic_vector(31 downto 0);
	signal outReg2: std_logic_vector(31 downto 0);
	signal outMux3: std_logic_vector(4 downto 0);
	signal outMux4: std_logic_vector(31 downto 0);
	signal outMemory: std_logic_vector(31 downto 0);

	signal op_out: std_logic_vector (5 downto 0);
	signal r1_out: std_logic_vector (4 downto 0);
	signal r2_out: std_logic_vector (4 downto 0);
	signal r3_out: std_logic_vector (4 downto 0);
	signal imm_out: std_logic_vector (15 downto 0);
	signal jump_out: std_logic_vector (25 downto 0);
	signal func_out: std_logic_vector (5 downto 0);

	
	
	begin
		unit1: alu
		port map(
			a => outMux1,
			b => outMux,
			op => func_out,
			aluOut => testRes
		);
		
		unit2: mux
		port map(
			sel => testSel2,
			salida => outMux,
			a => outReg1, 
			b => "00000000000000000000000000000100",
			c => "00000000000000000000000000000110",
			d => "00000000000000000000000000000111"
		);
		
		unit3: mux2
		port map(
			sel1 => testSel1, 
			salida =>outMux1,  
			regA => "00000000000000000000000000010100",
			PC => outReg2   --1
		);
		
		unit4: registerFile
		port map(
		RR1 => r1_out,
		RR2 => r2_out,
		WR => outMux3,
		WD => outMux4,
		Control => "000000",
		RD1 => outReg1,
		RD2 => outReg2	
		);
		
		unit5:mux3
		port map(
			sel1 => testSel3, 
			salida =>outMux3,  
			a => r2_out,
			b => r3_out
		);
		
		unit6: mux2
		port map(
			sel1 => testSel4, 
			salida =>outMux4,  
			regA => "00000000000000000000000000010100",
			PC => "00000000000000000000000000010101"   --1
		);

		unit7: IR
		port map(
			instr => outMemory,
			IRw => testIrw,
			op => op_out,
			r1 => r1_out,
			r2 => r2_out,
			r3 => r3_out,
			imm => imm_out,
			jump => jump_out,
			func => func_out
			);
		unit8: memory
		port map(
			address => testMemory,
			data_out => outMemory
			
		
		);
		
	end;