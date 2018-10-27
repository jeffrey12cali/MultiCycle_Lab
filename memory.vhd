library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory is 
	port(
	
	address: in std_logic_vector(31 downto 0);
	--write_data: in std_logic_vector(31 downto 0);
	data_out: out std_logic_vector(31 downto 0)
	--memWrite,memRead,clk: in  std_logic
	
	);
	
	
	end memory;

architecture compor of memory is



constant mem_add: std_logic_vector(31 downto 0) := "00000001000010100101100000100000";
constant mem_sub: std_logic_vector(31 downto 0) := "00000001000010100101100000100010";
constant mem_and: std_logic_vector(31 downto 0) := "00000001000010100101100000100100";
constant mem_or: std_logic_vector(31 downto 0) := "00000001000010100101100000100101";
constant mem_beq: std_logic_vector(31 downto 0) := "00010001000010000000000000000011";
constant mem_jump: std_logic_vector(31 downto 0) := "00001000000000000000000000000100";


begin
	data_out <= mem_add when (address = "00000000000000000000000000000000") else
					mem_beq when (address = "00000000000000000000000000000001") else
					mem_and when (address = "00000000000000000000000000000010") else
					mem_or when (address = "00000000000000000000000000000011") else
					mem_sub when (address = "00000000000000000000000000000100") else
					mem_jump;

end architecture compor;