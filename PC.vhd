library ieee;
use ieee.std_logic_1164.all;

entity PC is
	port(
	rst: in std_logic;
	clk : in bit;
	PCw: in std_logic;
	addr: in std_logic_vector (31 downto 0);
	reset: in std_logic;
	addr_out: out std_logic_vector (31 downto 0)
	);
end entity;

architecture behavior of PC is
	begin
	process(PCw, addr, reset, clk) begin
		if (rst = '1') then
			addr_out <= "00000000000000000000000000000000";
		elsif (clk = '0' and clk'event and PCw = '1') then
			addr_out <= addr;
		end if;
	end process;
end architecture;