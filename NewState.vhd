library ieee;
use ieee.std_logic_1164.all;

entity NewState is
  port(
			NewS: in std_logic_vector (3 downto 0);--New states taht are going to be load
			clk: in bit;
			CS: out std_logic_vector (3 downto 0)--output of the block
  );
    end NewState;

architecture behavioral of NewState is
	signal nxt: std_logic_vector(3 downto 0);
  begin
      process (NewS, clk)
        begin 
          --clock rising edge
          if (clk='1' and clk'event) then
					case (NewS(0)) is
						when '0' | '1' =>
							CS <= NewS;
						when others =>
							CS <= "0000";
					end case;
          end if;
        end process;
end behavioral;