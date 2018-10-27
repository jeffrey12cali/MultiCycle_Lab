library ieee;
use ieee.std_logic_1164.all;

entity clock is 
    port (
		clk_in: in std_logic;
		clk_out: out std_logic
	 );
end clock;
    
architecture behavior of clock is
    begin 
       process(clk_in)
		 begin
			if (clk_in = '1' or clk_in = '0') then
				clk_out <= not(clk_in);
			else
				clk_out <= '0';
			end if;
		end process;
end architecture;