library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--DISPOSITVO DE salida 7segmento

entity outputTest is
	port(
		LED_BCD: in std_logic_vector(4 downto 0);
		LED_out: out std_logic_vector(6 downto 0)
	);
	end outputTest;


architecture compor of outputTest is
	begin
		process(LED_BCD)
		begin
    case (LED_BCD) is
    when "00000" => LED_out <= "1000000"; -- "0"     
    when "00001" => LED_out <= "1111001"; -- "1" 
    when "00010" => LED_out <= "0100100"; -- "2" 
    when "00011" => LED_out <= "0110000"; -- "3" 
    when "00100" => LED_out <= "0011001"; -- "4" 
    when "00101" => LED_out <= "0010010"; -- "5" 
    when "00110" => LED_out <= "0000010"; -- "6" 
    when "00111" => LED_out <= "1111000"; -- "7" 
    when "01000" => LED_out <= "0000000"; -- "8"     
    when "01001" => LED_out <= "0010000"; -- "9" 
    when "01010" => LED_out <= "0100000"; -- a
    when "01011" => LED_out <= "0000011"; -- b
    when "01100" => LED_out <= "1000110"; -- C
    when "01101" => LED_out <= "0100001"; -- d
    when "01110" => LED_out <= "0000110"; -- E
    when "01111" => LED_out <= "0001110"; -- F
	 when others =>LED_out <="0000000";
    end case;
end process;

end architecture  compor;
