library ieee;
use ieee.std_logic_1164.all;

entity reg32bitEN is
	port(
		clock: in bit;
		enable: in std_logic;
		dt_in: in std_logic_vector(31 downto 0);
		dt_out: out std_logic_vector(31 downto 0)
	);
end entity;

architecture behavior of reg32bitEN is
  begin
      process (clock,enable,dt_in)
        begin 
          if (clock='1' and clock'event and enable = '1') then
				dt_out <= dt_in;
          end if;
        end process;

end architecture;