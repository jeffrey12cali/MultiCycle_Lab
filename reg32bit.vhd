library ieee;
use ieee.std_logic_1164.all;

entity reg32bit is
	port(
		clock: in bit;
		dt_in: in std_logic_vector(31 downto 0);
		dt_out: out std_logic_vector(31 downto 0)
	);
end entity;

architecture behavior of reg32bit is
  begin
      process (clock)
        begin 
          --clock rising edge
          if (clock='1' and clock'event) then
				dt_out <= dt_in;
          end if;
        end process;

end architecture;