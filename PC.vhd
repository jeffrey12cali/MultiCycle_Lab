library ieee;
use ieee.std_logic_1164.all;

entity PC is
	port(
	PCw: in std_logic;
	addr: in std_logic_vector (7 downto 0);
	addr_out: out std_logic_vector (7 downto 0)
	);
end entity;

architecture behavior of PC is
	begin
	process(PCw, addr) begin
		if (PCw = '1') then
			addr_out <= addr;
		end if;
	end process;
end architecture;