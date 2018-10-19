library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory is 
	port(
	
	address: in std_logic_vector(7 downto 0);
	write_data: in std_logic_vector(7 downto 0);
	read_data: out std_logic_vector( 7 downto 0);
	memWrite,memRead,clk: in  std_logic
	
	);
	
	
	end memory;

architecture compor of memory is

type mem_array is array(0 to 7) of std_logic_vector(7 downto 0);

signal data_mem: mem_array:=((others=>(others=>'0')));

begin 
read_data <= data_mem(to_integer(unsigned(address))) when MemRead = '1' else "00000000";

mem_process: process(address, write_data,clk)
begin
	if clk = '0' and clk'event then
		if (MemWrite = '1') then
			data_mem(to_integer(unsigned(address))) <= write_data;
		end if;
	end if;
end process mem_process;
end compor;