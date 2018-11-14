library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity registerFile is
   port (
		RR1: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 1
		RR2: in std_logic_vector(4 downto 0);		--5-bit Read Reg. 2 
		WR: in std_logic_vector(4 downto 0);		--5-bit Write Register
		WD: in std_logic_vector(31 downto 0);		--32-bit Write Data
		RegWR: in std_logic;
		RD1: out std_logic_vector(31 downto 0); 	--32-bit output1
		RD2: out std_logic_vector(31 downto 0)	 --32-bit output2
	);
end entity;

architecture behavior of registerFile is 
 --Internal Variables--
 
    signal data_out1 : std_logic_vector(31 downto 0);
    signal data_out2 : std_logic_vector(31 downto 0);
     
    type RAM is array (0 to 7)of std_logic_vector(31 downto 0);
    signal MEM : RAM := (
							0 => "00000000000000000000000000000001",
							1 => "00000000000000000000000000000001",
							2 => "00000000000000000000000000000001",
							others => (others => '0')
						);
     
	begin

		process(RegWR) is
		begin
			if (RegWR = '1') then
				MEM(conv_integer(WR)) <= WD;
			end if;
		end process;
		
		RD1 <= MEM(conv_integer(RR1));
		RD2 <= MEM(conv_integer(RR2));
	
end architecture behavior;