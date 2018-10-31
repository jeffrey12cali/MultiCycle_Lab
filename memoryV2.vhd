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
  type RAM is array (integer range<>) of std_logic_vector(31 downto 0);
  signal MEM : RAM(0 to 63);


begin

address <= addrIn(5 downto 0);

--Memory Write Block 
MEM_WRITE:
    process (addrIn, WrData, MemWrite)
     begin
        if( MemWrite='1') then 
          mem( conv_integer(address)) <= WrData;
        end if;
    end process; 

MEM_READ: 
    process (addrIn, MemRead)
     begin
        if(MemRead='1') then 
          dataOut <= mem(conv_integer(address));
        end if;
    end process;

end architecture;