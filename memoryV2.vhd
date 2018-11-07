library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memoryV2 is
  port(
        addrIn : in std_logic_vector(31 downto 0); --address Input 
        dataOut : out std_logic_vector(31 downto 0); --data Output rs
        WrData: in std_logic_vector(31 downto 0); --data Input 
        MemRead : in std_logic;
        MemWrite : in std_logic
        ); 
  end entity;

architecture behavior of memoryV2 is
--Internal Variables--
  signal address : std_logic_vector(5 downto 0);
  type RAM is array (0 to 7) of std_logic_vector(31 downto 0);
  signal MEM : RAM := ( 
						0 => "00000000000000010001000000100000",
						1 => "10001100010000000000000000000000",
						others => (others => '0')
					);


begin

address <= addrIn(5 downto 0);

--Memory Write Block 
MEM_WRITE:
    process (MemWrite)
     begin
        if( MemWrite='1') then 
          MEM( conv_integer(address)) <= WrData;
        end if;
    end process; 

MEM_READ: 
    process (MemRead)
     begin
        if(MemRead='1') then 
          dataOut <= MEM(conv_integer(address));
        end if;
    end process;

end architecture;