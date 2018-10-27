library ieee;
use ieee.std_logic_1164.all;

entity controlUnit is
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
end controlUnit;

architecture behavior of controlUnit is
	
	signal nxt_st: std_logic_vector(3 downto 0);

	begin
		process(op, st)
			begin
			if (st = "0000") then
				IorD <= '0';
				MemRd <= '1';
				ALUsrcA <= '0';
				ALUsrcB <= "01";
				ALUop <= "00";
				PCsrc <= "00";
				IRwr <= '1';
				PCWr <= '1';
				PCwrCond <= '0';
				RegWr <= '0';
				RegDst <= '0';
				MemWr <= '0';
				MemtoReg <= '0';
				NextSt <= "0001";
			
			elsif (st = "0001") then
				IorD <= '0';
				MemRd <= '0';
				ALUsrcA <= '0';
				ALUsrcB <= "10";
				ALUop <= "00";
				PCsrc <= "00";
				IRwr <= '0';
				PCWr <= '0';
				PCwrCond <= '0';
				RegWr <= '0';
				RegDst <= '0';
				MemWr <= '0';
				MemtoReg <= '0';
				case(op) is
					-- tipo R
					when "000000" =>
						nxt_st <= "0110";
					-- J
					when "000010" =>
						nxt_st <= "1001";
					-- branch
					when "000100" =>
						nxt_st <= "1000";
					when others =>
						nxt_st <= "0000";
				end case;
				NextSt <= nxt_st;
			
			elsif (st = "0110") then
				IorD <= '0';
				MemRd <= '0';
				ALUsrcA <= '1';
				ALUsrcB <= "00";
				ALUop <= "10";
				PCsrc <= "00";
				IRwr <= '0';
				PCWr <= '0';
				PCwrCond <= '0';
				RegWr <= '0';
				RegDst <= '0';
				MemWr <= '0';
				MemtoReg <= '0';
				NextSt <= "0111";
				
			elsif (st = "0111") then
				IorD <= '0';
				MemRd <= '0';
				ALUsrcA <= '0';
				ALUsrcB <= "00";
				ALUop <= "00";
				PCsrc <= "00";
				IRwr <= '0';
				PCWr <= '0';
				PCwrCond <= '0';
				RegWr <= '1';
				RegDst <= '1';
				MemWr <= '0';
				MemtoReg <= '0';
				NextSt <= "0000";
			
			-- branch todavia no sirve
			elsif (st = "1000") then
				IorD <= '0';
				MemRd <= '0';
				ALUsrcA <= '1';
				ALUsrcB <= "00";
				ALUop <= "01";
				PCsrc <= "01";
				IRwr <= '0';
				PCWr <= '0';
				PCwrCond <= '1';
				RegWr <= '0';
				RegDst <= '0';
				MemWr <= '0';
				MemtoReg <= '0';
				NextSt <= "0000";
			
			elsif (st = "1001") then
				IorD <= '0';
				MemRd <= '0';
				ALUsrcA <= '0';
				ALUsrcB <= "00";
				ALUop <= "00";
				PCsrc <= "10";
				IRwr <= '0';
				PCWr <= '1';
				PCwrCond <= '0';
				RegWr <= '0';
				RegDst <= '0';
				MemWr <= '0';
				MemtoReg <= '0';
				NextSt <= "0000";
			
			end if;
		end process;
end architecture;
			