library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerFile is
	port(
	regA: out std_logic_vector(7 downto 0);
	regB: out std_logic_vector(7 downto 0);
	selA: in std_logic_vector(3 downto 0);
	selB: in std_logic_vector(3 downto 0);
	writeData: in std_logic_vector(7 downto 0);
	registerWrite: in std_logic;
	writeRegister: in std_logic_vector( 3 downto 0);
	clk: in	std_logic );
	
	end registerFile;
	
architecture behavioral of registerFile is

type reg_arr is array (0 to 7) of std_logic_vector(7 downto 0);

signal rData: reg_arr;

begin
	regA <= rData(to_integer(unsigned(selA)));
	regB <= rData(to_integer(unsigned(selB)));
	wrProc: process(clk) is
	begin 
		if rising_edge(clk) then
		if (registerWrite='1') then
			rData(to_integer(unsigned(writeRegister)))<=writeData;
		end if;
		end if;
	end process;
end behavioral;
	