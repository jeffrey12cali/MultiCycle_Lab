library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addressDecoder is
	port(
		address: in std_logic_vector(31 downto 0);
		memWrite: in  std_logic;
		writeMemory,dev1,dev2: out std_logic;
		addressSel: out std_logic_vector(1 downto 0)
	);
	end addressDecoder;

architecture compor of addressDecoder is
	begin
				process (address)
			begin
			
			if (address = "00000000000000000000000000000000") then
				writeMemory <= '1';
				dev1 <= '0';
				dev2 <= '0';
				addressSel <= "00";
			elsif (address="00000000000000000000000000000001") then
				writeMemory <= '0';
				dev1 <= '1';
				dev2 <= '0';
				addressSel <= "01";
				
			else
				writeMemory <= '0';
				dev1 <= '0';
				dev2 <= '1';
				addressSel <= "10";
			end if;
		end process;
				
end architecture compor;
		
			
			

