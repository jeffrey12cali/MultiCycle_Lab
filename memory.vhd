library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory is 
	port(
	
	address: in std_logic_vector(31 downto 0);
	write_data: in std_logic_vector(31 downto 0);
	data_out: out std_logic_vector(31 downto 0);
	memWrite,memRead,clk: in  std_logic
	
	);
	
	
	end memory;

architecture compor of memory is



constant mem_add: std_logic_vector(31 downto 0) := "00000000000000010001000000100000";
constant mem_beq: std_logic_vector(31 downto 0) := "00010000001000100000000000000001";
constant mem_jump: std_logic_vector(31 downto 0) := "00001000000000000000000000000000";
constant mem_add2: std_logic_vector(31 downto 0) := "00000000000000010001000000100000";


begin
	data_out <= mem_add when (address = "00000000000000000000000000000000") else
					mem_beq when (address = "00000000000000000000000000000001") else
					mem_jump when (address = "00000000000000000000000000000010") else
					mem_add2;

end architecture compor;