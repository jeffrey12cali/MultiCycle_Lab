library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addressDecoder is
	port(
		address: in std_logic_vector(31 downto 0);
		memWrite: in  std_logic;
		writeMemory,dev1: out std_logic;
		addressSel: out std_logic_vector(1 downto 0)
	);
	end addressDecoder;

architecture compor of addressDecoder is
	begin
			process (address, memWrite)
			begin
			
			if (memWrite = '1') then
				if (address = "00000000000000000000001000000000") then
					writeMemory <= '0';  -- sw
					dev1 <= '1';
					addressSel <= "00";	
				else 
					writeMemory <= '1';
					dev1 <= '0';
					addressSel <= "00";
				end if;
			else
				if (address = "00000000000000000000001000000000") then
					addressSel <= "01";
					writeMemory <= '0';
					dev1 <= '0';
				elsif (address = "00000000000000000000001100000000") then
					addressSel <= "10";
					writeMemory <= '0';
					dev1 <= '0';
				else
					addressSel <= "00";
					writeMemory <= '0';
					dev1 <= '0';
				end if;
			end if;
		end process;
				
end architecture compor;
		
			
			

