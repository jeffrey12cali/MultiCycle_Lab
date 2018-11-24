library ieee;
use ieee.std_logic_1164.all;

entity MultiCycle is
	port(
		--MemDir: in std_logic_vector(31 downto 0);
		clk: in bit;
		rst: in std_logic;
		key: in std_logic_vector(8 downto 0);
		seg7exit: out std_logic_vector(6 downto 0)
		-- DEV1: out std_logic_vector(31 downto 0);
		-- PCMUX: out std_logic_vector(31 downto 0);
		--MEMDATA: out std_logic_vector(31 downto 0);
		--ActDir: out std_logic_vector(31 downto 0);
		--AREG: out std_logic_vector(4 downto 0);
		--BREG: out std_logic_vector(4 downto 0);
		--ALOUT: out std_logic_vector(31 downto 0);
		--ALUA: out std_logic_vector(31 downto 0);
		--ALUB: out std_logic_vector(31 downto 0);
		--wrReg: out std_logic_vector(4 downto 0);
		--wrData: out std_logic_vector(31 downto 0);
		--nextIns: out std_logic_vector(31 downto 0);
		--sts: out std_logic_vector(3 downto 0)
		--exitMux: out std_logic_vector(31 downto 0)

		
		
	);
end MultiCycle;

architecture behaviour of MultiCycle is
	component alu
		port(
			a: in std_logic_vector (31 downto 0);
			b: in std_logic_vector(31 downto 0);
			func: in std_logic_vector (2 downto 0);
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
			dataSrc0,
			dataSrc1: in std_logic_vector(31 downto 0);
			sel1: in std_logic;
			salida: out std_logic_vector(31 downto 0)
			);
	end component;
	component registerFile
		port (
		 clk: in bit;
		 RR1: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 1
		 RR2: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 2 
		 WR: in std_logic_vector(4 downto 0);		--5-bit Write Register
		 WD: in std_logic_vector(31 downto 0);		--32-bit Write Data
		 RegWR: in std_logic;
		 RD1: out std_logic_vector(31 downto 0); 	--32-bit output1
		 RD2: out std_logic_vector(31 downto 0) 	--32-bit output2
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
		clk: in bit;
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
	component memoryV2
		port (
			clk : in bit;
			addrIn : in std_logic_vector(31 downto 0); --address Input 
			dataOut : out std_logic_vector(31 downto 0); --data Output rs
			WrData: in std_logic_vector(31 downto 0); --data Input 
			MemRead : in std_logic;
			MemWrite : in std_logic
		);
	end component;
	
	component PC
		port(
			rst: in std_logic;
			clk: in bit;
			PCw: in std_logic;
			addr: in std_logic_vector (31 downto 0);
			addr_out: out std_logic_vector (31 downto 0)
		);
	end component;
	
	component controlUnit
		port(
			op: in std_logic_vector(5 downto 0); -- opcode
			st: in std_logic_vector(3 downto 0); -- estado actual
			rst: in std_logic;
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
	
	component ALUControl
	port(
		ALUOp: in std_logic_vector(1 downto 0);
      Func: in std_logic_vector(5 downto 0);
      op: out std_logic_vector(2 downto 0)
	);
	end component;
	
	component NewState
	port(
		NewS: in std_logic_vector (3 downto 0);--New states taht are going to be load
		clk: in bit;
		CS: out std_logic_vector (3 downto 0)--output of the block
	);
	end component;
	
	component reg32bit
	port(
		clock: in bit;
		dt_in: in std_logic_vector(31 downto 0);
		dt_out: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component SignExtend
	port(
		imm: in std_logic_vector (15 downto 0);
		ext: out std_logic_vector (31 downto 0)
	);
	end component;
	
	component ShiftLeft2_1
	port(
		dataIn: in std_logic_vector (25 downto 0);
		dataOut: out std_logic_vector (27 downto 0)
	);
	end component;
	
	component ShiftLeft2_2
	port(
		dataIn: in std_logic_vector (31 downto 0);
		dataOut: out std_logic_vector (31 downto 0)
	);
	end component;
	
	component mux3jump
	port(
		a,b,c: in std_logic_vector(31 downto 0);
		sel1: in std_logic_vector(1 downto 0);
		salida: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component addressDecoder
	port(
		address: in std_logic_vector(31 downto 0);
		memWrite: in  std_logic;
		writeMemory,dev1: out std_logic;
		addressSel: out std_logic_vector(1 downto 0)
	);
	end component;
	
	component reg32bitEN
	port(
		clock: in bit;
		enable: in std_logic;
		dt_in: in std_logic_vector(31 downto 0);
		dt_out: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component output1
	port(
		LED_BCD: in std_logic_vector(31 downto 0);
		LED_out: out std_logic_vector(6 downto 0)
	
	);
	end component;
	
	component input1
	port(
		date: in std_logic_vector(8 downto 0);
		dateOut: out std_logic_vector(31 downto 0)
	);
	end component;
	
	
	signal ALUcontOP: std_logic_vector(2 downto 0);
	
	signal MuxSrcA: std_logic_vector(31 downto 0); 
	signal MuxSrcB: std_logic_vector(31 downto 0);
	signal outReg1: std_logic_vector(31 downto 0);
	signal outReg2: std_logic_vector(31 downto 0);
	signal outMux3: std_logic_vector(4 downto 0);
	signal outMux4: std_logic_vector(31 downto 0);
	signal outMemory: std_logic_vector(31 downto 0);
	signal outMuxPC: std_logic_vector(31 downto 0);

	signal op_out: std_logic_vector (5 downto 0);
	signal r1_out: std_logic_vector (4 downto 0);
	signal r2_out: std_logic_vector (4 downto 0);
	signal r3_out: std_logic_vector (4 downto 0);
	signal imm_out: std_logic_vector (15 downto 0);
	signal jump_out: std_logic_vector (25 downto 0);
	signal func_out: std_logic_vector (5 downto 0);
	
	signal PCaddrout: std_logic_vector(31 downto 0);
	
	signal ALUop_out: std_logic_vector(1 downto 0);
	signal ALUsrcA_out: std_logic;
	signal ALUsrcB_out: std_logic_vector(1 downto 0);
	signal PCsrc_out: std_logic_vector(1 downto 0);
	signal PCwrCond_out: std_logic;
	signal PCwr_out: std_logic;
	signal RegWr_out: std_logic;
	signal RegDst_out: std_logic;
	signal IorD_out: std_logic;
	signal MemRd_out: std_logic;
	signal MemWr_out: std_logic;
	signal MemtoReg_out: std_logic;
	signal IRwr_out: std_logic;
	signal NextSt_out: std_logic_vector(3 downto 0);
	
	signal ALUContOp_out: std_logic_vector(2 downto 0);
	
	signal CurrentS_out: std_logic_vector(3 downto 0);	
	
	signal ALUres_out: std_logic_vector(31 downto 0);
	
	signal MDRtoMUX: std_logic_vector(31 downto 0);
	
	signal AtoMUX: std_logic_vector(31 downto 0);
	signal BtoMUX: std_logic_vector(31 downto 0);
	
	signal ALUOut: std_logic_vector(31 downto 0);
	
	signal sgnExt_out: std_logic_vector(31 downto 0);
	
	signal shiftup_out: std_logic_vector(27 downto 0);
	
	signal jump_sig: std_logic_vector(31 downto 0);
	
	signal sftl2_out: std_logic_vector(31 downto 0);
	
	signal newPC: std_logic_vector(31 downto 0);
	
	signal zero_out: std_logic;
	
	signal PCwrite: std_logic;
	
	signal writeMemoryAD: std_logic;
	signal wrDev1: std_logic;
	signal seg7_1: std_logic_vector(31 downto 0);
	
	--señales de siete segmentos
	signal writeBcd: std_logic_vector(31 downto 0);
	signal keyOut: std_logic_vector(31 downto 0);
	signal addsel: std_logic_vector(1 downto 0);
	signal readadd: std_logic_vector(31 downto 0);
	
	begin
	
		ALUCOMP: alu
		port map(
			a => MuxSrcA,
			b => MuxSrcB,
			func => ALUContOP_out,
			aluOut => ALUres_out,
			zero => zero_out
		);
		
		MUXB: mux
		port map(
			sel => ALUsrcB_out,
			salida => MuxSrcB,
			a => BtoMUX, 
			b => "00000000000000000000000000000001",
			c => sgnExt_out,
			d => sftl2_out
		);
		
		MUXA: mux2
		port map(
			sel1 => ALUsrcA_out, 
			salida => MuxSrcA,  
			dataSrc0 => PCaddrout,
			dataSrc1 => AtoMUX
		);
		
		REGFILE: registerFile
		port map(
		clk => clk,
		RR1 => r1_out,
		RR2 => r2_out,
		WR => outMux3,
		WD => outMux4,
		RegWR => RegWr_out,
		RD1 => outReg1,
		RD2 => outReg2	
		);
		
		MUXRegDst:mux3
		port map(
			sel1 => RegDst_out, 
			salida => outMux3,  
			a => r2_out,
			b => r3_out
		);
		
		MUXMemReg: mux2
		port map(
			sel1 => MemtoReg_out, 
			salida => outMux4,  
			dataSrc0 => ALUOut,
			dataSrc1 => MDRtoMUX
		);

		INSTREG: IR
		port map(
			clk => clk,
			instr => outMemory,
			IRw => IRWr_out,
			op => op_out,
			r1 => r1_out,
			r2 => r2_out,
			r3 => r3_out,
			imm => imm_out,
			jump => jump_out,
			func => func_out
			);
			
		MEM: memoryV2
		port map(
			clk => clk,
			addrIn => outMuxPc,
			dataOut => outMemory,
			WrData => BtoMUX,
			MemRead => MemRd_out,
			MemWrite => writeMemoryAD
		);
		
		MUXPC: mux2
		port map(
			sel1 => IorD_out,
			salida => outMuxPc,
			dataSrc0 => PCaddrout,
			dataSrc1 => ALUOut
		);
		
		PROGCOUNT: PC
		port map(
			rst => rst,
			clk => clk,
			PCw => PCwrite,
			addr => newPC,
			addr_out => PCaddrout
		);
		
		CONTROLU: controlUnit
		port map(
			op => op_out,
			st => currentS_out,
			rst => rst,
			ALUop => ALUop_out,
			ALUsrcA => ALUsrcA_out,
			ALUsrcB => ALUsrcB_out,
			PCsrc => PCsrc_out,
			PCwrCond => PCwrCond_out,
			PCwr => PCwr_out,
			RegWr => RegWr_out,
			RegDst => RegDst_out,
			IorD => IorD_out,
			MemRd => MemRd_out,
			MemWr => MemWr_out,
			MemtoReg => MemtoReg_out,
			IRwr => IRwr_out,
			NextSt => NextSt_out
		);
		
		ALUCONTRL: ALUControl
		port map(
			ALUOp => ALUop_out,
			Func => func_out,
			op => ALUContOp_out
		);
		
		NEWST: NewState
		port map(
			NewS => NextSt_out,
			clk => clk,
			CS => CurrentS_out
		);
		
		MDR: reg32bit
		port map(
			clock => clk,
			dt_in => readadd,
			dt_out => MDRtoMUX
		);
		
		regA: reg32bit
		port map(
			clock => clk,
			dt_in => outReg1,
			dt_out => AtoMUX
		);
		
		regB: reg32bit
		port map(
			clock => clk,
			dt_in => outReg2,
			dt_out => BtoMUX
		);
		
		regALU: reg32bit
		port map(
			clock => clk,
			dt_in => ALUres_out,
			dt_out => ALUOut
		);
		
		SNGEXT: SignExtend
		port map(
			imm => imm_out,
			ext => sgnExt_out
		);
		
		UPSLF: ShiftLeft2_1
		port map(
			dataIn => jump_out,
			dataOut => shiftup_out
		);
		
		DOWNSLF: ShiftLeft2_2
		port map(
			dataIn => sgnExt_out,
			dataOut => sftl2_out
		);
		
		JUMPMUX: mux3jump
		port map(
			a => ALUres_out,
			b => ALUOut,
			c => jump_sig,
			sel1 => PCsrc_out,
			salida => newPC
		);
		
		ADDRDEC: addressDecoder
		port map(
			address => outMuxPc,
			memWrite => MemWr_out,
			writeMemory => writeMemoryAD,
			dev1 => wrDev1,
			addressSel => addsel
		);
		
		REG7SEG: reg32bitEN
		port map(
			clock => clk,
			enable => wrDev1,
			dt_in => BtoMUX,
			dt_out => seg7_1
		);
		
		SEG7WR: output1
		port map(
			LED_BCD => seg7_1,
			LED_out => seg7exit
		);
		
		KEYBOARD: input1
		port map(
			date => key,
			dateOut => keyOut
		);
		
		MUXREAD: mux3jump
		port map(
			a => outMemory,
			b => "10001100101000010000001100000000",
			c => keyOut,
			sel1 => addsel,
			salida => readadd
		
		);
		-- PC WRITE
		PCwrite <= (PCwr_out or (PCWrCond_out and zero_out));
		
		-- jump
		jump_sig(27 downto 0) <= shiftup_out;
		jump_sig(31 downto 28) <= PCaddrout(31 downto 28);
		
		
		-- prints
		--ActDir <= outMemory;
		--MEMDATA <= BtoMUX;
		--DEV1 <= seg7_1;
		--ALOUT <= ALUres_out;
		--ALUA <= MuxSrcA;
		--ALUB <= MuxSrcB;
		--AREG <= r1_out;
		--BREG <= r2_out;
		-- PCMUX <= outMuxPc;
		--sts <= currentS_out;
		--wrReg <= outMux3;
		--wrData <= outMux4;
		--nextIns <= newPC;
		--exitMux <= outMuxPc;
		
		
	end;