library ieee;
use ieee.std_logic_1164.all;

entity IR is
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
end entity;

architecture behavior of IR is
	signal op_out: std_logic_vector (5 downto 0);
	signal r1_out: std_logic_vector (4 downto 0);
	signal r2_out: std_logic_vector (4 downto 0);
	signal r3_out: std_logic_vector (4 downto 0);
	signal imm_out: std_logic_vector (15 downto 0);
	signal jump_out: std_logic_vector (25 downto 0);
	signal func_out: std_logic_vector (5 downto 0);
	
	begin
		op <= op_out;
		r1 <= r1_out;
		r2 <= r2_out;
		r3 <= r3_out;
		imm <= imm_out;
		jump <= jump_out;
		func <= func_out;
		
		process (IRw, instr) begin
				if (IRw = '1') then
					op_out <= instr(31 downto 26);
					r1_out <= instr(25 downto 21);
					r2_out <= instr(20 downto 16);
					r3_out <= instr(15 downto 11);
					imm_out <= instr(15 downto 0);
					jump_out <= instr(25 downto 0);
					func_out <= instr(5 downto 0);
				end if;
		end process;
end architecture;