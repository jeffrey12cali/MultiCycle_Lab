library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--DISPOSITVO DE ENTRADA
entity input1 is
	port(
		date: in std_logic_vector(9 downto 0);
		dateOut: out std_logic_vector(31 downto 0)
	);
	end input1;

architecture compor of input1 is
	begin
				process (date)
			begin
			
			if (date = "1000000000") then -- posicion de los switches valor 9
				dateOut <= "00000000000000000000000000001001";
			elsif (date = "0100000000") then  -- posicion de los switches valor 8
				dateOut <="00000000000000000000000000001000";
				
			elsif (date = "0010000000") then --" "
				dateOut <="00000000000000000000000000000111";
			elsif (date = "0001000000") then --" "
				dateOut <="00000000000000000000000000000110";
			elsif (date = "0000100000") then --
				dateOut <="00000000000000000000000000000101";
			elsif (date = "0000010000") then  --
				dateOut <="00000000000000000000000000000100";
			elsif (date = "0000001000") then  ---
				dateOut <="00000000000000000000000000000011";
			elsif (date = "000000100") then  --
				dateOut <="00000000000000000000000000000010";
			elsif (date = "0000000010") then  --
				dateOut <="00000000000000000000000000000001";
			else
				dateOut <="00000000000000000000000000000000";
				
			end if;
		end process;
				
end architecture compor;
		
			