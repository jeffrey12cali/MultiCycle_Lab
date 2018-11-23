library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--DISPOSITVO DE salida 7segmento

entity output1 is
	port(
		LED_BCD: in std_logic_vector(31 downto 0);
		LED_out: out std_logic_vector(6 downto 0)
	);
	end output1;

architecture compor of output1 is
	begin
		process(LED_BCD)
		begin
    case (LED_BCD) is
    when "00000000000000000000000000000000" => LED_out <= "0000001"; -- "0"     
    when "00000000000000000000000000000001" => LED_out <= "1001111"; -- "1" 
    when "00000000000000000000000000000010" => LED_out <= "0010010"; -- "2" 
    when "00000000000000000000000000000011" => LED_out <= "0000110"; -- "3" 
    when "00000000000000000000000000000100" => LED_out <= "1001100"; -- "4" 
    when "00000000000000000000000000000101" => LED_out <= "0100100"; -- "5" 
    when "00000000000000000000000000000110" => LED_out <= "0100000"; -- "6" 
    when "00000000000000000000000000000111" => LED_out <= "0001111"; -- "7" 
    when "00000000000000000000000000001000" => LED_out <= "0000000"; -- "8"     
    when "00000000000000000000000000001001" => LED_out <= "0000100"; -- "9" 
    when "00000000000000000000000000001010" => LED_out <= "0000010"; -- a
    when "00000000000000000000000000001011" => LED_out <= "1100000"; -- b
    when "00000000000000000000000000001100" => LED_out <= "0110001"; -- C
    when "00000000000000000000000000001101" => LED_out <= "1000010"; -- d
    when "00000000000000000000000000001110" => LED_out <= "0110000"; -- E
    when "00000000000000000000000000001111" => LED_out <= "0111000"; -- F
	 when others =>LED_out <="0000000";
    end case;
end process;

end architecture  compor;
