library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memoryV2 is
  port(
		  clk: in bit;
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
						0 => "10101100101000010000001000000000",
						-- 0 => "00100000000000010000000000000001",		-- addi r1, r0, 1; r1 = r0 + 1
						-- 0 => "00000000000000100000100000100000",		-- add r1, r2, r0; r1 = r0 + r2
						1 => "00000000100000010000100000100000",		-- add r1, r1, r4: r1 = r1 + r4
						2 => "10101100011000010000000000000000",		-- sw r1, 0(r3); MEM[r3+0] = r1
						3 => "10001100011001000000000000000000",		-- lw r4, 0(r3); r4 = MEM[r3+0]
						4 => "00000000100000000011000000101010",		-- slt r6, r4, r0; r6 = r4 < r0 ?
						-- 5 => "00001000000000000000000000000000",		-- j init
						others => (others => '0')
					);


begin

address <= addrIn(5 downto 0);

--Memory Write Block 
MEM_WRITE:
    process (MemWrite, clk)
     begin
        if( clk='0' and clk'event and MemWrite='1') then 
          MEM( conv_integer(address)) <= WrData;
        end if;
    end process; 

MEM_READ: 
    process (MemRead, clk)
     begin
        if( clk='0' and clk'event and MemRead='1') then 
          dataOut <= MEM(conv_integer(address));
        end if;
    end process;

end architecture;