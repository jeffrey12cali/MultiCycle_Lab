-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/24/2018 12:06:45"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MultiCycle IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	key : IN std_logic_vector(8 DOWNTO 0);
	seg7exit : OUT std_logic_vector(6 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- seg7exit[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7exit[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[4]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[5]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[6]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[7]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MultiCycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_key : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_seg7exit : std_logic_vector(6 DOWNTO 0);
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st[1]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCOMP|Add0~28_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~64_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[23]~3_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[22]~4_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[21]~5_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[6]~6_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[7]~8_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[24]~24_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \SEG7WR|Equal0~3_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~5_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~6_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~7_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~8_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~9_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~10_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~11_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~12_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~13_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~20_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~21_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~29_combout\ : std_logic;
SIGNAL \REGFILE|MEM~260_regout\ : std_logic;
SIGNAL \REGFILE|MEM~68_regout\ : std_logic;
SIGNAL \REGFILE|MEM~36_regout\ : std_logic;
SIGNAL \REGFILE|MEM~294_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~9_combout\ : std_logic;
SIGNAL \ALUCONTRL|op~1_combout\ : std_logic;
SIGNAL \MUXB|Mux1~0_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~12_combout\ : std_logic;
SIGNAL \MUXB|Mux3~0_combout\ : std_logic;
SIGNAL \MUXB|Mux4~0_combout\ : std_logic;
SIGNAL \MUXB|Mux8~0_combout\ : std_logic;
SIGNAL \MUXB|Mux10~0_combout\ : std_logic;
SIGNAL \MUXB|Mux12~0_combout\ : std_logic;
SIGNAL \MUXB|Mux13~0_combout\ : std_logic;
SIGNAL \MUXB|Mux14~0_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~26_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~28_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~1_combout\ : std_logic;
SIGNAL \PCwrite~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~32_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~34_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~39_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~1_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~69_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~75_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~80_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~81_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~1_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~200_regout\ : std_logic;
SIGNAL \REGFILE|MEM~232_regout\ : std_logic;
SIGNAL \REGFILE|MEM~168_regout\ : std_logic;
SIGNAL \REGFILE|MEM~297_combout\ : std_logic;
SIGNAL \REGFILE|MEM~264_regout\ : std_logic;
SIGNAL \REGFILE|MEM~298_combout\ : std_logic;
SIGNAL \REGFILE|MEM~72_regout\ : std_logic;
SIGNAL \REGFILE|MEM~136_regout\ : std_logic;
SIGNAL \REGFILE|MEM~304_combout\ : std_logic;
SIGNAL \REGFILE|MEM~305_combout\ : std_logic;
SIGNAL \REGFILE|MEM~309_combout\ : std_logic;
SIGNAL \REGFILE|MEM~235_regout\ : std_logic;
SIGNAL \REGFILE|MEM~171_regout\ : std_logic;
SIGNAL \REGFILE|MEM~312_combout\ : std_logic;
SIGNAL \REGFILE|MEM~313_combout\ : std_logic;
SIGNAL \REGFILE|MEM~204_regout\ : std_logic;
SIGNAL \REGFILE|MEM~108_regout\ : std_logic;
SIGNAL \REGFILE|MEM~76_regout\ : std_logic;
SIGNAL \REGFILE|MEM~44_regout\ : std_logic;
SIGNAL \REGFILE|MEM~319_combout\ : std_logic;
SIGNAL \REGFILE|MEM~140_regout\ : std_logic;
SIGNAL \REGFILE|MEM~320_combout\ : std_logic;
SIGNAL \REGFILE|MEM~237_regout\ : std_logic;
SIGNAL \REGFILE|MEM~173_regout\ : std_logic;
SIGNAL \REGFILE|MEM~322_combout\ : std_logic;
SIGNAL \REGFILE|MEM~77_regout\ : std_logic;
SIGNAL \REGFILE|MEM~324_combout\ : std_logic;
SIGNAL \REGFILE|MEM~238_regout\ : std_logic;
SIGNAL \REGFILE|MEM~174_regout\ : std_logic;
SIGNAL \REGFILE|MEM~327_combout\ : std_logic;
SIGNAL \REGFILE|MEM~328_combout\ : std_logic;
SIGNAL \REGFILE|MEM~329_combout\ : std_logic;
SIGNAL \REGFILE|MEM~239_regout\ : std_logic;
SIGNAL \REGFILE|MEM~175_regout\ : std_logic;
SIGNAL \REGFILE|MEM~332_combout\ : std_logic;
SIGNAL \REGFILE|MEM~240_regout\ : std_logic;
SIGNAL \REGFILE|MEM~176_regout\ : std_logic;
SIGNAL \REGFILE|MEM~337_combout\ : std_logic;
SIGNAL \REGFILE|MEM~48_regout\ : std_logic;
SIGNAL \REGFILE|MEM~144_regout\ : std_logic;
SIGNAL \REGFILE|MEM~241_regout\ : std_logic;
SIGNAL \REGFILE|MEM~81_regout\ : std_logic;
SIGNAL \REGFILE|MEM~49_regout\ : std_logic;
SIGNAL \REGFILE|MEM~344_combout\ : std_logic;
SIGNAL \REGFILE|MEM~243_regout\ : std_logic;
SIGNAL \REGFILE|MEM~179_regout\ : std_logic;
SIGNAL \REGFILE|MEM~352_combout\ : std_logic;
SIGNAL \REGFILE|MEM~83_regout\ : std_logic;
SIGNAL \REGFILE|MEM~51_regout\ : std_logic;
SIGNAL \REGFILE|MEM~354_combout\ : std_logic;
SIGNAL \REGFILE|MEM~213_regout\ : std_logic;
SIGNAL \REGFILE|MEM~246_regout\ : std_logic;
SIGNAL \REGFILE|MEM~278_regout\ : std_logic;
SIGNAL \REGFILE|MEM~86_regout\ : std_logic;
SIGNAL \REGFILE|MEM~54_regout\ : std_logic;
SIGNAL \REGFILE|MEM~369_combout\ : std_logic;
SIGNAL \REGFILE|MEM~247_regout\ : std_logic;
SIGNAL \REGFILE|MEM~372_combout\ : std_logic;
SIGNAL \REGFILE|MEM~373_combout\ : std_logic;
SIGNAL \REGFILE|MEM~119_regout\ : std_logic;
SIGNAL \REGFILE|MEM~382_combout\ : std_logic;
SIGNAL \REGFILE|MEM~282_regout\ : std_logic;
SIGNAL \REGFILE|MEM~122_regout\ : std_logic;
SIGNAL \REGFILE|MEM~90_regout\ : std_logic;
SIGNAL \REGFILE|MEM~58_regout\ : std_logic;
SIGNAL \REGFILE|MEM~389_combout\ : std_logic;
SIGNAL \REGFILE|MEM~154_regout\ : std_logic;
SIGNAL \REGFILE|MEM~390_combout\ : std_logic;
SIGNAL \REGFILE|MEM~219_regout\ : std_logic;
SIGNAL \REGFILE|MEM~251_regout\ : std_logic;
SIGNAL \REGFILE|MEM~187_regout\ : std_logic;
SIGNAL \REGFILE|MEM~392_combout\ : std_logic;
SIGNAL \REGFILE|MEM~283_regout\ : std_logic;
SIGNAL \REGFILE|MEM~393_combout\ : std_logic;
SIGNAL \REGFILE|MEM~123_regout\ : std_logic;
SIGNAL \REGFILE|MEM~59_regout\ : std_logic;
SIGNAL \REGFILE|MEM~285_regout\ : std_logic;
SIGNAL \REGFILE|MEM~222_regout\ : std_logic;
SIGNAL \REGFILE|MEM~126_regout\ : std_logic;
SIGNAL \REGFILE|MEM~94_regout\ : std_logic;
SIGNAL \REGFILE|MEM~409_combout\ : std_logic;
SIGNAL \REGFILE|MEM~410_combout\ : std_logic;
SIGNAL \REGFILE|MEM~223_regout\ : std_logic;
SIGNAL \REGFILE|MEM~412_combout\ : std_logic;
SIGNAL \REGFILE|MEM~413_combout\ : std_logic;
SIGNAL \REGFILE|MEM~95_regout\ : std_logic;
SIGNAL \REGFILE|MEM~257_regout\ : std_logic;
SIGNAL \REGFILE|MEM~161_regout\ : std_logic;
SIGNAL \REGFILE|MEM~290_regout\ : std_logic;
SIGNAL \REGFILE|MEM~429_combout\ : std_logic;
SIGNAL \REGFILE|MEM~162_regout\ : std_logic;
SIGNAL \REGFILE|MEM~430_combout\ : std_logic;
SIGNAL \REGFILE|MEM~227_regout\ : std_logic;
SIGNAL \REGFILE|MEM~131_regout\ : std_logic;
SIGNAL \REGFILE|MEM~99_regout\ : std_logic;
SIGNAL \REGFILE|MEM~103_regout\ : std_logic;
SIGNAL \REGFILE|MEM~71_regout\ : std_logic;
SIGNAL \REGFILE|MEM~39_regout\ : std_logic;
SIGNAL \REGFILE|MEM~439_combout\ : std_logic;
SIGNAL \REGFILE|MEM~135_regout\ : std_logic;
SIGNAL \REGFILE|MEM~440_combout\ : std_logic;
SIGNAL \REGFILE|MEM~261_regout\ : std_logic;
SIGNAL \REGFILE|MEM~69_regout\ : std_logic;
SIGNAL \REGFILE|MEM~37_regout\ : std_logic;
SIGNAL \REGFILE|MEM~444_combout\ : std_logic;
SIGNAL \REGFILE|MEM~198_regout\ : std_logic;
SIGNAL \REGFILE|MEM~447_combout\ : std_logic;
SIGNAL \REGFILE|MEM~448_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[1]~2_combout\ : std_logic;
SIGNAL \CONTROLU|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[3]~5_combout\ : std_logic;
SIGNAL \REGFILE|MEM~462_combout\ : std_logic;
SIGNAL \REGFILE|MEM~463_combout\ : std_logic;
SIGNAL \REGFILE|MEM~467_combout\ : std_logic;
SIGNAL \REGFILE|MEM~468_combout\ : std_logic;
SIGNAL \REGFILE|MEM~469_combout\ : std_logic;
SIGNAL \REGFILE|MEM~470_combout\ : std_logic;
SIGNAL \REGFILE|MEM~471_combout\ : std_logic;
SIGNAL \REGFILE|MEM~472_combout\ : std_logic;
SIGNAL \REGFILE|MEM~487_combout\ : std_logic;
SIGNAL \REGFILE|MEM~488_combout\ : std_logic;
SIGNAL \REGFILE|MEM~489_combout\ : std_logic;
SIGNAL \REGFILE|MEM~490_combout\ : std_logic;
SIGNAL \REGFILE|MEM~491_combout\ : std_logic;
SIGNAL \REGFILE|MEM~494_combout\ : std_logic;
SIGNAL \REGFILE|MEM~495_combout\ : std_logic;
SIGNAL \REGFILE|MEM~502_combout\ : std_logic;
SIGNAL \REGFILE|MEM~503_combout\ : std_logic;
SIGNAL \REGFILE|MEM~504_combout\ : std_logic;
SIGNAL \REGFILE|MEM~505_combout\ : std_logic;
SIGNAL \REGFILE|MEM~506_combout\ : std_logic;
SIGNAL \REGFILE|MEM~507_combout\ : std_logic;
SIGNAL \REGFILE|MEM~508_combout\ : std_logic;
SIGNAL \REGFILE|MEM~509_combout\ : std_logic;
SIGNAL \REGFILE|MEM~510_combout\ : std_logic;
SIGNAL \REGFILE|MEM~511_combout\ : std_logic;
SIGNAL \REGFILE|MEM~512_combout\ : std_logic;
SIGNAL \REGFILE|MEM~513_combout\ : std_logic;
SIGNAL \REGFILE|MEM~514_combout\ : std_logic;
SIGNAL \REGFILE|MEM~515_combout\ : std_logic;
SIGNAL \REGFILE|MEM~516_combout\ : std_logic;
SIGNAL \REGFILE|MEM~522_combout\ : std_logic;
SIGNAL \REGFILE|MEM~523_combout\ : std_logic;
SIGNAL \REGFILE|MEM~524_combout\ : std_logic;
SIGNAL \REGFILE|MEM~525_combout\ : std_logic;
SIGNAL \REGFILE|MEM~526_combout\ : std_logic;
SIGNAL \REGFILE|MEM~527_combout\ : std_logic;
SIGNAL \REGFILE|MEM~528_combout\ : std_logic;
SIGNAL \REGFILE|MEM~534_combout\ : std_logic;
SIGNAL \REGFILE|MEM~549_combout\ : std_logic;
SIGNAL \REGFILE|MEM~552_combout\ : std_logic;
SIGNAL \REGFILE|MEM~553_combout\ : std_logic;
SIGNAL \REGFILE|MEM~559_combout\ : std_logic;
SIGNAL \REGFILE|MEM~560_combout\ : std_logic;
SIGNAL \REGFILE|MEM~564_combout\ : std_logic;
SIGNAL \REGFILE|MEM~569_combout\ : std_logic;
SIGNAL \REGFILE|MEM~570_combout\ : std_logic;
SIGNAL \REGFILE|MEM~577_combout\ : std_logic;
SIGNAL \REGFILE|MEM~578_combout\ : std_logic;
SIGNAL \REGFILE|MEM~579_combout\ : std_logic;
SIGNAL \REGFILE|MEM~580_combout\ : std_logic;
SIGNAL \REGFILE|MEM~581_combout\ : std_logic;
SIGNAL \REGFILE|MEM~584_combout\ : std_logic;
SIGNAL \REGFILE|MEM~589_combout\ : std_logic;
SIGNAL \REGFILE|MEM~590_combout\ : std_logic;
SIGNAL \REGFILE|MEM~592_combout\ : std_logic;
SIGNAL \REGFILE|MEM~593_combout\ : std_logic;
SIGNAL \REGFILE|MEM~594_combout\ : std_logic;
SIGNAL \REGFILE|MEM~595_combout\ : std_logic;
SIGNAL \REGFILE|MEM~596_combout\ : std_logic;
SIGNAL \REGFILE|MEM~597_combout\ : std_logic;
SIGNAL \REGFILE|MEM~602_combout\ : std_logic;
SIGNAL \REGFILE|MEM~603_combout\ : std_logic;
SIGNAL \REGFILE|MEM~604_combout\ : std_logic;
SIGNAL \REGFILE|MEM~605_combout\ : std_logic;
SIGNAL \REGFILE|MEM~606_combout\ : std_logic;
SIGNAL \REGFILE|MEM~607_combout\ : std_logic;
SIGNAL \REGFILE|MEM~608_combout\ : std_logic;
SIGNAL \REGFILE|MEM~609_combout\ : std_logic;
SIGNAL \REGFILE|MEM~610_combout\ : std_logic;
SIGNAL \REGFILE|MEM~611_combout\ : std_logic;
SIGNAL \REGFILE|MEM~612_combout\ : std_logic;
SIGNAL \REGFILE|MEM~613_combout\ : std_logic;
SIGNAL \REGFILE|MEM~614_combout\ : std_logic;
SIGNAL \REGFILE|MEM~615_combout\ : std_logic;
SIGNAL \REGFILE|MEM~616_combout\ : std_logic;
SIGNAL \REGFILE|MEM~617_combout\ : std_logic;
SIGNAL \ADDRDEC|addressSel[0]~1_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~14_combout\ : std_logic;
SIGNAL \MUXREAD|Mux26~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux24~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux18~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux17~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux12~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux11~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux10~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux8~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux6~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux5~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux2~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~19_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~13_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~14_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~7_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~15_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~20_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM~623_combout\ : std_logic;
SIGNAL \REGFILE|MEM~625_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~feeder_combout\ : std_logic;
SIGNAL \INSTREG|jump_out[20]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[11]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[12]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[18]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~260feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~200feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~204feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~108feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~44feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~238feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~175feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~239feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~48feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~241feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~49feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~179feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~243feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~51feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~246feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~247feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~282feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~90feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~154feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~285feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~223feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~227feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~99feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~198feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~20_combout\ : std_logic;
SIGNAL \NEWST|CS[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~6_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~6clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|Equal0~8_combout\ : std_logic;
SIGNAL \CONTROLU|MemRd~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~6_combout\ : std_logic;
SIGNAL \CONTROLU|PCsrc[1]~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \ALUCONTRL|op[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~4_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[3]~29_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcA~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~5_combout\ : std_logic;
SIGNAL \CONTROLU|ALUop[0]~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[8]~9_combout\ : std_logic;
SIGNAL \MUXB|Mux0~0_combout\ : std_logic;
SIGNAL \MUXB|Mux16~0_combout\ : std_logic;
SIGNAL \MUXB|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~42_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[0]~1_combout\ : std_logic;
SIGNAL \MUXB|Mux21~0_combout\ : std_logic;
SIGNAL \MUXB|Mux18~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~40_combout\ : std_logic;
SIGNAL \MUXB|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47\ : std_logic;
SIGNAL \ALUCOMP|Add0~49\ : std_logic;
SIGNAL \ALUCOMP|Add0~50_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[13]~10_combout\ : std_logic;
SIGNAL \CONTROLU|RegWr~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~454_combout\ : std_logic;
SIGNAL \REGFILE|MEM~458_combout\ : std_logic;
SIGNAL \REGFILE|MEM~113_regout\ : std_logic;
SIGNAL \REGFILE|MEM~461_combout\ : std_logic;
SIGNAL \REGFILE|MEM~145_regout\ : std_logic;
SIGNAL \REGFILE|MEM~345_combout\ : std_logic;
SIGNAL \REGFILE|MEM~177feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~456_combout\ : std_logic;
SIGNAL \REGFILE|MEM~177_regout\ : std_logic;
SIGNAL \REGFILE|MEM~342_combout\ : std_logic;
SIGNAL \REGFILE|MEM~273_regout\ : std_logic;
SIGNAL \REGFILE|MEM~209_regout\ : std_logic;
SIGNAL \REGFILE|MEM~343_combout\ : std_logic;
SIGNAL \REGFILE|MEM~346_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \ADDRDEC|addressSel[1]~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux15~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[16]~13_combout\ : std_logic;
SIGNAL \REGFILE|MEM~460_combout\ : std_logic;
SIGNAL \REGFILE|MEM~52_regout\ : std_logic;
SIGNAL \REGFILE|MEM~459_combout\ : std_logic;
SIGNAL \REGFILE|MEM~84_regout\ : std_logic;
SIGNAL \REGFILE|MEM~359_combout\ : std_logic;
SIGNAL \REGFILE|MEM~148_regout\ : std_logic;
SIGNAL \REGFILE|MEM~116feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~116_regout\ : std_logic;
SIGNAL \REGFILE|MEM~360_combout\ : std_logic;
SIGNAL \REGFILE|MEM~180_regout\ : std_logic;
SIGNAL \REGFILE|MEM~357_combout\ : std_logic;
SIGNAL \REGFILE|MEM~212_regout\ : std_logic;
SIGNAL \REGFILE|MEM~358_combout\ : std_logic;
SIGNAL \REGFILE|MEM~361_combout\ : std_logic;
SIGNAL \MUXREAD|Mux14~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~2_combout\ : std_logic;
SIGNAL \MUXB|Mux0~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~36_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[18]~21_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~74_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[19]~22_combout\ : std_logic;
SIGNAL \REGFILE|MEM~151_regout\ : std_logic;
SIGNAL \REGFILE|MEM~574_combout\ : std_logic;
SIGNAL \REGFILE|MEM~575_combout\ : std_logic;
SIGNAL \REGFILE|MEM~183_regout\ : std_logic;
SIGNAL \REGFILE|MEM~572_combout\ : std_logic;
SIGNAL \REGFILE|MEM~279_regout\ : std_logic;
SIGNAL \REGFILE|MEM~215_regout\ : std_logic;
SIGNAL \REGFILE|MEM~573_combout\ : std_logic;
SIGNAL \REGFILE|MEM~576_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~59\ : std_logic;
SIGNAL \ALUCOMP|Add0~61\ : std_logic;
SIGNAL \ALUCOMP|Add0~62_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~3_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[19]~16_combout\ : std_logic;
SIGNAL \REGFILE|MEM~87_regout\ : std_logic;
SIGNAL \REGFILE|MEM~55_regout\ : std_logic;
SIGNAL \REGFILE|MEM~374_combout\ : std_logic;
SIGNAL \REGFILE|MEM~375_combout\ : std_logic;
SIGNAL \REGFILE|MEM~376_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[20]~23_combout\ : std_logic;
SIGNAL \REGFILE|MEM~216_regout\ : std_logic;
SIGNAL \REGFILE|MEM~280_regout\ : std_logic;
SIGNAL \REGFILE|MEM~184feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~184_regout\ : std_logic;
SIGNAL \REGFILE|MEM~567_combout\ : std_logic;
SIGNAL \REGFILE|MEM~568_combout\ : std_logic;
SIGNAL \REGFILE|MEM~571_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~21_combout\ : std_logic;
SIGNAL \MUXB|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[20]~17_combout\ : std_logic;
SIGNAL \REGFILE|MEM~455_combout\ : std_logic;
SIGNAL \REGFILE|MEM~248_regout\ : std_logic;
SIGNAL \REGFILE|MEM~377_combout\ : std_logic;
SIGNAL \REGFILE|MEM~378_combout\ : std_logic;
SIGNAL \REGFILE|MEM~120feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~120_regout\ : std_logic;
SIGNAL \REGFILE|MEM~152_regout\ : std_logic;
SIGNAL \REGFILE|MEM~88_regout\ : std_logic;
SIGNAL \REGFILE|MEM~56_regout\ : std_logic;
SIGNAL \REGFILE|MEM~379_combout\ : std_logic;
SIGNAL \REGFILE|MEM~380_combout\ : std_logic;
SIGNAL \REGFILE|MEM~381_combout\ : std_logic;
SIGNAL \REGFILE|MEM~185_regout\ : std_logic;
SIGNAL \REGFILE|MEM~249_regout\ : std_logic;
SIGNAL \REGFILE|MEM~562_combout\ : std_logic;
SIGNAL \REGFILE|MEM~281_regout\ : std_logic;
SIGNAL \REGFILE|MEM~217_regout\ : std_logic;
SIGNAL \REGFILE|MEM~563_combout\ : std_logic;
SIGNAL \REGFILE|MEM~153feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~153_regout\ : std_logic;
SIGNAL \REGFILE|MEM~565_combout\ : std_logic;
SIGNAL \REGFILE|MEM~566_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~63\ : std_logic;
SIGNAL \ALUCOMP|Add0~65\ : std_logic;
SIGNAL \ALUCOMP|Add0~66_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~3_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[21]~18_combout\ : std_logic;
SIGNAL \REGFILE|MEM~121_regout\ : std_logic;
SIGNAL \REGFILE|MEM~89_regout\ : std_logic;
SIGNAL \REGFILE|MEM~57_regout\ : std_logic;
SIGNAL \REGFILE|MEM~384_combout\ : std_logic;
SIGNAL \REGFILE|MEM~385_combout\ : std_logic;
SIGNAL \REGFILE|MEM~383_combout\ : std_logic;
SIGNAL \REGFILE|MEM~386_combout\ : std_logic;
SIGNAL \MUXB|Mux9~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~218_regout\ : std_logic;
SIGNAL \REGFILE|MEM~250_regout\ : std_logic;
SIGNAL \REGFILE|MEM~557_combout\ : std_logic;
SIGNAL \REGFILE|MEM~558_combout\ : std_logic;
SIGNAL \REGFILE|MEM~561_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~67\ : std_logic;
SIGNAL \ALUCOMP|Add0~70_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux9~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[22]~19_combout\ : std_logic;
SIGNAL \REGFILE|MEM~186feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~186_regout\ : std_logic;
SIGNAL \REGFILE|MEM~387_combout\ : std_logic;
SIGNAL \REGFILE|MEM~388_combout\ : std_logic;
SIGNAL \REGFILE|MEM~391_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~68_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~71\ : std_logic;
SIGNAL \ALUCOMP|Add0~72_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[23]~20_combout\ : std_logic;
SIGNAL \REGFILE|MEM~91_regout\ : std_logic;
SIGNAL \REGFILE|MEM~394_combout\ : std_logic;
SIGNAL \REGFILE|MEM~155feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~155_regout\ : std_logic;
SIGNAL \REGFILE|MEM~395_combout\ : std_logic;
SIGNAL \REGFILE|MEM~396_combout\ : std_logic;
SIGNAL \REGFILE|MEM~156feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~156_regout\ : std_logic;
SIGNAL \REGFILE|MEM~92feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~92_regout\ : std_logic;
SIGNAL \REGFILE|MEM~60feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~60_regout\ : std_logic;
SIGNAL \REGFILE|MEM~399_combout\ : std_logic;
SIGNAL \REGFILE|MEM~124_regout\ : std_logic;
SIGNAL \REGFILE|MEM~400_combout\ : std_logic;
SIGNAL \REGFILE|MEM~188_regout\ : std_logic;
SIGNAL \REGFILE|MEM~252_regout\ : std_logic;
SIGNAL \REGFILE|MEM~397_combout\ : std_logic;
SIGNAL \REGFILE|MEM~284_regout\ : std_logic;
SIGNAL \REGFILE|MEM~398_combout\ : std_logic;
SIGNAL \REGFILE|MEM~401_combout\ : std_logic;
SIGNAL \MUXB|Mux5~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[26]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~62feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~62_regout\ : std_logic;
SIGNAL \REGFILE|MEM~539_combout\ : std_logic;
SIGNAL \REGFILE|MEM~158_regout\ : std_logic;
SIGNAL \REGFILE|MEM~540_combout\ : std_logic;
SIGNAL \REGFILE|MEM~254_regout\ : std_logic;
SIGNAL \REGFILE|MEM~537_combout\ : std_logic;
SIGNAL \REGFILE|MEM~286_regout\ : std_logic;
SIGNAL \REGFILE|MEM~538_combout\ : std_logic;
SIGNAL \REGFILE|MEM~541_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~79\ : std_logic;
SIGNAL \ALUCOMP|Add0~82_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[26]~23_combout\ : std_logic;
SIGNAL \REGFILE|MEM~190_regout\ : std_logic;
SIGNAL \REGFILE|MEM~407_combout\ : std_logic;
SIGNAL \REGFILE|MEM~408_combout\ : std_logic;
SIGNAL \REGFILE|MEM~411_combout\ : std_logic;
SIGNAL \REGFILE|MEM~287_regout\ : std_logic;
SIGNAL \REGFILE|MEM~191_regout\ : std_logic;
SIGNAL \REGFILE|MEM~255_regout\ : std_logic;
SIGNAL \REGFILE|MEM~532_combout\ : std_logic;
SIGNAL \REGFILE|MEM~533_combout\ : std_logic;
SIGNAL \REGFILE|MEM~159feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~159_regout\ : std_logic;
SIGNAL \REGFILE|MEM~535_combout\ : std_logic;
SIGNAL \REGFILE|MEM~536_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~83\ : std_logic;
SIGNAL \ALUCOMP|Add0~84_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux3~0_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~89_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~85\ : std_logic;
SIGNAL \ALUCOMP|Add0~90_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~1_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~28_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[28]~25_combout\ : std_logic;
SIGNAL \REGFILE|MEM~128feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~128_regout\ : std_logic;
SIGNAL \REGFILE|MEM~64feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~64_regout\ : std_logic;
SIGNAL \REGFILE|MEM~419_combout\ : std_logic;
SIGNAL \REGFILE|MEM~420_combout\ : std_logic;
SIGNAL \REGFILE|MEM~288_regout\ : std_logic;
SIGNAL \REGFILE|MEM~224_regout\ : std_logic;
SIGNAL \REGFILE|MEM~256feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~256_regout\ : std_logic;
SIGNAL \REGFILE|MEM~192feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~192_regout\ : std_logic;
SIGNAL \REGFILE|MEM~417_combout\ : std_logic;
SIGNAL \REGFILE|MEM~418_combout\ : std_logic;
SIGNAL \REGFILE|MEM~421_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~8_combout\ : std_logic;
SIGNAL \MUXB|Mux2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~88_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~91\ : std_logic;
SIGNAL \ALUCOMP|Add0~92_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~1_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~25_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[29]~26_combout\ : std_logic;
SIGNAL \REGFILE|MEM~129feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~129_regout\ : std_logic;
SIGNAL \REGFILE|MEM~65_regout\ : std_logic;
SIGNAL \REGFILE|MEM~97_regout\ : std_logic;
SIGNAL \REGFILE|MEM~424_combout\ : std_logic;
SIGNAL \REGFILE|MEM~425_combout\ : std_logic;
SIGNAL \REGFILE|MEM~289feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~289_regout\ : std_logic;
SIGNAL \REGFILE|MEM~225_regout\ : std_logic;
SIGNAL \REGFILE|MEM~193_regout\ : std_logic;
SIGNAL \REGFILE|MEM~422_combout\ : std_logic;
SIGNAL \REGFILE|MEM~423_combout\ : std_logic;
SIGNAL \REGFILE|MEM~426_combout\ : std_logic;
SIGNAL \MUXREAD|Mux1~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[30]~27_combout\ : std_logic;
SIGNAL \REGFILE|MEM~226feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~226_regout\ : std_logic;
SIGNAL \REGFILE|MEM~194_regout\ : std_logic;
SIGNAL \REGFILE|MEM~258_regout\ : std_logic;
SIGNAL \REGFILE|MEM~427_combout\ : std_logic;
SIGNAL \REGFILE|MEM~428_combout\ : std_logic;
SIGNAL \REGFILE|MEM~431_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \MUXREAD|Mux4~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[27]~24_combout\ : std_logic;
SIGNAL \REGFILE|MEM~127feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~127_regout\ : std_logic;
SIGNAL \REGFILE|MEM~63_regout\ : std_logic;
SIGNAL \REGFILE|MEM~414_combout\ : std_logic;
SIGNAL \REGFILE|MEM~415_combout\ : std_logic;
SIGNAL \REGFILE|MEM~416_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \MUXREAD|Mux7~0_combout\ : std_logic;
SIGNAL \MUXB|Mux7~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~73\ : std_logic;
SIGNAL \ALUCOMP|Add0~76_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[24]~21_combout\ : std_logic;
SIGNAL \REGFILE|MEM~220feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~220_regout\ : std_logic;
SIGNAL \REGFILE|MEM~547_combout\ : std_logic;
SIGNAL \REGFILE|MEM~548_combout\ : std_logic;
SIGNAL \REGFILE|MEM~550_combout\ : std_logic;
SIGNAL \REGFILE|MEM~551_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~77\ : std_logic;
SIGNAL \ALUCOMP|Add0~78_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[25]~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~93_regout\ : std_logic;
SIGNAL \REGFILE|MEM~61_regout\ : std_logic;
SIGNAL \REGFILE|MEM~544_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125_regout\ : std_logic;
SIGNAL \REGFILE|MEM~545_combout\ : std_logic;
SIGNAL \REGFILE|MEM~253_regout\ : std_logic;
SIGNAL \REGFILE|MEM~189feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~189_regout\ : std_logic;
SIGNAL \REGFILE|MEM~542_combout\ : std_logic;
SIGNAL \REGFILE|MEM~543_combout\ : std_logic;
SIGNAL \REGFILE|MEM~546_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[25]~22_combout\ : std_logic;
SIGNAL \REGFILE|MEM~221_regout\ : std_logic;
SIGNAL \REGFILE|MEM~402_combout\ : std_logic;
SIGNAL \REGFILE|MEM~403_combout\ : std_logic;
SIGNAL \REGFILE|MEM~404_combout\ : std_logic;
SIGNAL \REGFILE|MEM~157feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~157_regout\ : std_logic;
SIGNAL \REGFILE|MEM~405_combout\ : std_logic;
SIGNAL \REGFILE|MEM~406_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~554_combout\ : std_logic;
SIGNAL \REGFILE|MEM~555_combout\ : std_logic;
SIGNAL \REGFILE|MEM~556_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~18_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~2_combout\ : std_logic;
SIGNAL \PCwrite~1_combout\ : std_logic;
SIGNAL \PCwrite~3_combout\ : std_logic;
SIGNAL \MUXB|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~0_combout\ : std_logic;
SIGNAL \MUXB|Mux16~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~38_combout\ : std_logic;
SIGNAL \REGFILE|MEM~210_regout\ : std_logic;
SIGNAL \REGFILE|MEM~598_combout\ : std_logic;
SIGNAL \REGFILE|MEM~82_regout\ : std_logic;
SIGNAL \REGFILE|MEM~599_combout\ : std_logic;
SIGNAL \REGFILE|MEM~146_regout\ : std_logic;
SIGNAL \REGFILE|MEM~600_combout\ : std_logic;
SIGNAL \REGFILE|MEM~601_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51\ : std_logic;
SIGNAL \ALUCOMP|Add0~53\ : std_logic;
SIGNAL \ALUCOMP|Add0~55\ : std_logic;
SIGNAL \ALUCOMP|Add0~56_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~2_combout\ : std_logic;
SIGNAL \PCwrite~2_combout\ : std_logic;
SIGNAL \PCwrite~4_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~7_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~feeder_combout\ : std_logic;
SIGNAL \PCwrite~11_combout\ : std_logic;
SIGNAL \PCwrite~12_combout\ : std_logic;
SIGNAL \PCwrite~13_combout\ : std_logic;
SIGNAL \PCwrite~15_combout\ : std_logic;
SIGNAL \PCwrite~10_combout\ : std_logic;
SIGNAL \PCwrite~16_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~35_combout\ : std_logic;
SIGNAL \REGFILE|MEM~66feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~66_regout\ : std_logic;
SIGNAL \REGFILE|MEM~98feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~98_regout\ : std_logic;
SIGNAL \REGFILE|MEM~519_combout\ : std_logic;
SIGNAL \REGFILE|MEM~130_regout\ : std_logic;
SIGNAL \REGFILE|MEM~520_combout\ : std_logic;
SIGNAL \REGFILE|MEM~517_combout\ : std_logic;
SIGNAL \REGFILE|MEM~518_combout\ : std_logic;
SIGNAL \REGFILE|MEM~521_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~11_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~87_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~93\ : std_logic;
SIGNAL \ALUCOMP|Add0~94_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~1_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~18_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~33_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~34_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~feeder_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~10_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~86_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~95\ : std_logic;
SIGNAL \ALUCOMP|Add0~96_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~36_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~32_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~26_combout\ : std_logic;
SIGNAL \PCwrite~8_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[4]~7_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MUXA|salida[4]~5_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[1]~0_combout\ : std_logic;
SIGNAL \MUXB|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5_combout\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \MUXA|salida[1]~8_combout\ : std_logic;
SIGNAL \MUXA|salida[0]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~11_cout\ : std_logic;
SIGNAL \ALUCOMP|Add0~13\ : std_logic;
SIGNAL \ALUCOMP|Add0~15\ : std_logic;
SIGNAL \ALUCOMP|Add0~17\ : std_logic;
SIGNAL \ALUCOMP|Add0~19\ : std_logic;
SIGNAL \ALUCOMP|Add0~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~42_regout\ : std_logic;
SIGNAL \REGFILE|MEM~74_regout\ : std_logic;
SIGNAL \REGFILE|MEM~479_combout\ : std_logic;
SIGNAL \REGFILE|MEM~480_combout\ : std_logic;
SIGNAL \REGFILE|MEM~266_regout\ : std_logic;
SIGNAL \REGFILE|MEM~170_regout\ : std_logic;
SIGNAL \REGFILE|MEM~234_regout\ : std_logic;
SIGNAL \REGFILE|MEM~477_combout\ : std_logic;
SIGNAL \REGFILE|MEM~202feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~202_regout\ : std_logic;
SIGNAL \REGFILE|MEM~478_combout\ : std_logic;
SIGNAL \REGFILE|MEM~481_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~0_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21\ : std_logic;
SIGNAL \ALUCOMP|Add0~23\ : std_logic;
SIGNAL \ALUCOMP|Add0~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~2_combout\ : std_logic;
SIGNAL \PCwrite~5_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[12]~13_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~48_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~2_combout\ : std_logic;
SIGNAL \PCwrite~6_combout\ : std_logic;
SIGNAL \PCwrite~7_combout\ : std_logic;
SIGNAL \PCwrite~9_combout\ : std_logic;
SIGNAL \PCwrite~14_combout\ : std_logic;
SIGNAL \PCwrite~combout\ : std_logic;
SIGNAL \MUXA|salida[18]~23_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~60_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux13~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[18]~15_combout\ : std_logic;
SIGNAL \REGFILE|MEM~182_regout\ : std_logic;
SIGNAL \REGFILE|MEM~367_combout\ : std_logic;
SIGNAL \REGFILE|MEM~214_regout\ : std_logic;
SIGNAL \REGFILE|MEM~368_combout\ : std_logic;
SIGNAL \REGFILE|MEM~150_regout\ : std_logic;
SIGNAL \REGFILE|MEM~118_regout\ : std_logic;
SIGNAL \REGFILE|MEM~370_combout\ : std_logic;
SIGNAL \REGFILE|MEM~371_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \REGFILE|MEM~244_regout\ : std_logic;
SIGNAL \REGFILE|MEM~587_combout\ : std_logic;
SIGNAL \REGFILE|MEM~276_regout\ : std_logic;
SIGNAL \REGFILE|MEM~588_combout\ : std_logic;
SIGNAL \REGFILE|MEM~591_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~57\ : std_logic;
SIGNAL \ALUCOMP|Add0~58_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~3_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[17]~14_combout\ : std_logic;
SIGNAL \REGFILE|MEM~149_regout\ : std_logic;
SIGNAL \REGFILE|MEM~53feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~53_regout\ : std_logic;
SIGNAL \REGFILE|MEM~85_regout\ : std_logic;
SIGNAL \REGFILE|MEM~364_combout\ : std_logic;
SIGNAL \REGFILE|MEM~117_regout\ : std_logic;
SIGNAL \REGFILE|MEM~365_combout\ : std_logic;
SIGNAL \REGFILE|MEM~245feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~245_regout\ : std_logic;
SIGNAL \REGFILE|MEM~181_regout\ : std_logic;
SIGNAL \REGFILE|MEM~362_combout\ : std_logic;
SIGNAL \REGFILE|MEM~277_regout\ : std_logic;
SIGNAL \REGFILE|MEM~363_combout\ : std_logic;
SIGNAL \REGFILE|MEM~366_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \MUXREAD|Mux16~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[15]~12_combout\ : std_logic;
SIGNAL \REGFILE|MEM~115_regout\ : std_logic;
SIGNAL \REGFILE|MEM~147_regout\ : std_logic;
SIGNAL \REGFILE|MEM~355_combout\ : std_logic;
SIGNAL \REGFILE|MEM~211_regout\ : std_logic;
SIGNAL \REGFILE|MEM~275_regout\ : std_logic;
SIGNAL \REGFILE|MEM~353_combout\ : std_logic;
SIGNAL \REGFILE|MEM~356_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~52_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[14]~11_combout\ : std_logic;
SIGNAL \REGFILE|MEM~274_regout\ : std_logic;
SIGNAL \REGFILE|MEM~178_regout\ : std_logic;
SIGNAL \REGFILE|MEM~242_regout\ : std_logic;
SIGNAL \REGFILE|MEM~347_combout\ : std_logic;
SIGNAL \REGFILE|MEM~348_combout\ : std_logic;
SIGNAL \REGFILE|MEM~114_regout\ : std_logic;
SIGNAL \REGFILE|MEM~50feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~50_regout\ : std_logic;
SIGNAL \REGFILE|MEM~349_combout\ : std_logic;
SIGNAL \REGFILE|MEM~350_combout\ : std_logic;
SIGNAL \REGFILE|MEM~351_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \MUXREAD|Mux19~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[12]~9_combout\ : std_logic;
SIGNAL \REGFILE|MEM~112_regout\ : std_logic;
SIGNAL \REGFILE|MEM~80_regout\ : std_logic;
SIGNAL \REGFILE|MEM~339_combout\ : std_logic;
SIGNAL \REGFILE|MEM~340_combout\ : std_logic;
SIGNAL \REGFILE|MEM~272_regout\ : std_logic;
SIGNAL \REGFILE|MEM~208_regout\ : std_logic;
SIGNAL \REGFILE|MEM~338_combout\ : std_logic;
SIGNAL \REGFILE|MEM~341_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \REGFILE|MEM~45_regout\ : std_logic;
SIGNAL \REGFILE|MEM~464_combout\ : std_logic;
SIGNAL \REGFILE|MEM~141_regout\ : std_logic;
SIGNAL \REGFILE|MEM~465_combout\ : std_logic;
SIGNAL \REGFILE|MEM~466_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~25\ : std_logic;
SIGNAL \ALUCOMP|Add0~27\ : std_logic;
SIGNAL \ALUCOMP|Add0~29\ : std_logic;
SIGNAL \ALUCOMP|Add0~31\ : std_logic;
SIGNAL \ALUCOMP|Add0~44_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[10]~11_combout\ : std_logic;
SIGNAL \REGFILE|MEM~142feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~142_regout\ : std_logic;
SIGNAL \REGFILE|MEM~78_regout\ : std_logic;
SIGNAL \REGFILE|MEM~46_regout\ : std_logic;
SIGNAL \REGFILE|MEM~619_combout\ : std_logic;
SIGNAL \REGFILE|MEM~620_combout\ : std_logic;
SIGNAL \REGFILE|MEM~206_regout\ : std_logic;
SIGNAL \REGFILE|MEM~270_regout\ : std_logic;
SIGNAL \REGFILE|MEM~618_combout\ : std_logic;
SIGNAL \REGFILE|MEM~621_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~45\ : std_logic;
SIGNAL \ALUCOMP|Add0~46_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[11]~12_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \MUXA|salida[11]~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux20~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[11]~8_combout\ : std_logic;
SIGNAL \REGFILE|MEM~207_regout\ : std_logic;
SIGNAL \REGFILE|MEM~271_regout\ : std_logic;
SIGNAL \REGFILE|MEM~333_combout\ : std_logic;
SIGNAL \REGFILE|MEM~79feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~79_regout\ : std_logic;
SIGNAL \REGFILE|MEM~47feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~47_regout\ : std_logic;
SIGNAL \REGFILE|MEM~334_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111_regout\ : std_logic;
SIGNAL \REGFILE|MEM~143_regout\ : std_logic;
SIGNAL \REGFILE|MEM~335_combout\ : std_logic;
SIGNAL \REGFILE|MEM~336_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \MUXREAD|Mux21~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[10]~7_combout\ : std_logic;
SIGNAL \REGFILE|MEM~110_regout\ : std_logic;
SIGNAL \REGFILE|MEM~330_combout\ : std_logic;
SIGNAL \REGFILE|MEM~331_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MUXREAD|Mux0~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[31]~28_combout\ : std_logic;
SIGNAL \REGFILE|MEM~291feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~291_regout\ : std_logic;
SIGNAL \REGFILE|MEM~195_regout\ : std_logic;
SIGNAL \REGFILE|MEM~259_regout\ : std_logic;
SIGNAL \REGFILE|MEM~432_combout\ : std_logic;
SIGNAL \REGFILE|MEM~433_combout\ : std_logic;
SIGNAL \REGFILE|MEM~67_regout\ : std_logic;
SIGNAL \REGFILE|MEM~434_combout\ : std_logic;
SIGNAL \REGFILE|MEM~163feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~163_regout\ : std_logic;
SIGNAL \REGFILE|MEM~435_combout\ : std_logic;
SIGNAL \REGFILE|MEM~436_combout\ : std_logic;
SIGNAL \MUXB|Mux0~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~160feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~160_regout\ : std_logic;
SIGNAL \REGFILE|MEM~96feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~96_regout\ : std_logic;
SIGNAL \REGFILE|MEM~529_combout\ : std_logic;
SIGNAL \REGFILE|MEM~530_combout\ : std_logic;
SIGNAL \REGFILE|MEM~531_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~13_combout\ : std_logic;
SIGNAL \MUXB|Mux6~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[17]~29_combout\ : std_logic;
SIGNAL \REGFILE|MEM~582_combout\ : std_logic;
SIGNAL \REGFILE|MEM~583_combout\ : std_logic;
SIGNAL \REGFILE|MEM~585_combout\ : std_logic;
SIGNAL \REGFILE|MEM~586_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~24_combout\ : std_logic;
SIGNAL \MUXB|Mux22~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~43_regout\ : std_logic;
SIGNAL \REGFILE|MEM~75_regout\ : std_logic;
SIGNAL \REGFILE|MEM~474_combout\ : std_logic;
SIGNAL \REGFILE|MEM~139_regout\ : std_logic;
SIGNAL \REGFILE|MEM~475_combout\ : std_logic;
SIGNAL \REGFILE|MEM~267_regout\ : std_logic;
SIGNAL \REGFILE|MEM~203_regout\ : std_logic;
SIGNAL \REGFILE|MEM~473_combout\ : std_logic;
SIGNAL \REGFILE|MEM~476_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~2_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \MUXB|Mux26~0_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INSTREG|func_out[0]~feeder_combout\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~1_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~3_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~5_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~7_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~9_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~11_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~13_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~15_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~17_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~19_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~21_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~23_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~25_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~27_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~29_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~31_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~33_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~35_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~37_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~39_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~41_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~43_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~45_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~47_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~49_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~51_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~53_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~55_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~57_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~59_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~61_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~62_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux22~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[9]~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM~109_regout\ : std_logic;
SIGNAL \REGFILE|MEM~325_combout\ : std_logic;
SIGNAL \REGFILE|MEM~269_regout\ : std_logic;
SIGNAL \REGFILE|MEM~205_regout\ : std_logic;
SIGNAL \REGFILE|MEM~323_combout\ : std_logic;
SIGNAL \REGFILE|MEM~326_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \MUXREAD|Mux23~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[8]~5_combout\ : std_logic;
SIGNAL \REGFILE|MEM~172_regout\ : std_logic;
SIGNAL \REGFILE|MEM~236_regout\ : std_logic;
SIGNAL \REGFILE|MEM~317_combout\ : std_logic;
SIGNAL \REGFILE|MEM~268feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~268_regout\ : std_logic;
SIGNAL \REGFILE|MEM~318_combout\ : std_logic;
SIGNAL \REGFILE|MEM~321_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~26_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[7]~4_combout\ : std_logic;
SIGNAL \REGFILE|MEM~107feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~107_regout\ : std_logic;
SIGNAL \REGFILE|MEM~314_combout\ : std_logic;
SIGNAL \REGFILE|MEM~315_combout\ : std_logic;
SIGNAL \REGFILE|MEM~316_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[13]~14_combout\ : std_logic;
SIGNAL \CONTROLU|IorD~4_combout\ : std_logic;
SIGNAL \CONTROLU|IorD~9_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~14_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~54_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[15]~16_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[14]~15_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~16_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~17_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[16]~17_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~18_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~19_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~22_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[27]~0_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \INSTREG|jump_out[25]~feeder_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~1_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~3_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[9]~10_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~0_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~4_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~feeder_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[5]~27_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~27_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~28_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~23_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~24_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~25_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~26_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~30_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~31_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux27~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux25~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[6]~3_combout\ : std_logic;
SIGNAL \REGFILE|MEM~106_regout\ : std_logic;
SIGNAL \REGFILE|MEM~138_regout\ : std_logic;
SIGNAL \REGFILE|MEM~310_combout\ : std_logic;
SIGNAL \REGFILE|MEM~307_combout\ : std_logic;
SIGNAL \REGFILE|MEM~308_combout\ : std_logic;
SIGNAL \REGFILE|MEM~311_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \CONTROLU|Equal0~7_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~452_combout\ : std_logic;
SIGNAL \REGFILE|MEM~453_combout\ : std_logic;
SIGNAL \REGFILE|MEM~201_regout\ : std_logic;
SIGNAL \REGFILE|MEM~233_regout\ : std_logic;
SIGNAL \REGFILE|MEM~482_combout\ : std_logic;
SIGNAL \REGFILE|MEM~265_regout\ : std_logic;
SIGNAL \REGFILE|MEM~483_combout\ : std_logic;
SIGNAL \REGFILE|MEM~137_regout\ : std_logic;
SIGNAL \REGFILE|MEM~41_regout\ : std_logic;
SIGNAL \REGFILE|MEM~73_regout\ : std_logic;
SIGNAL \REGFILE|MEM~484_combout\ : std_logic;
SIGNAL \REGFILE|MEM~105_regout\ : std_logic;
SIGNAL \REGFILE|MEM~485_combout\ : std_logic;
SIGNAL \REGFILE|MEM~486_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[5]~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~169_regout\ : std_logic;
SIGNAL \REGFILE|MEM~302_combout\ : std_logic;
SIGNAL \REGFILE|MEM~303_combout\ : std_logic;
SIGNAL \REGFILE|MEM~306_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \MUXREAD|Mux27~1_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[4]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~40_regout\ : std_logic;
SIGNAL \REGFILE|MEM~299_combout\ : std_logic;
SIGNAL \REGFILE|MEM~104_regout\ : std_logic;
SIGNAL \REGFILE|MEM~300_combout\ : std_logic;
SIGNAL \REGFILE|MEM~301_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \MUXMemReg|salida[2]~31_combout\ : std_logic;
SIGNAL \REGFILE|MEM~102_regout\ : std_logic;
SIGNAL \REGFILE|MEM~70_regout\ : std_logic;
SIGNAL \REGFILE|MEM~38_regout\ : std_logic;
SIGNAL \REGFILE|MEM~449_combout\ : std_logic;
SIGNAL \REGFILE|MEM~450_combout\ : std_logic;
SIGNAL \REGFILE|MEM~451_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \MUXREAD|Mux30~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~14_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~13_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[1]~30_combout\ : std_logic;
SIGNAL \REGFILE|MEM~165_regout\ : std_logic;
SIGNAL \REGFILE|MEM~229_regout\ : std_logic;
SIGNAL \REGFILE|MEM~442_combout\ : std_logic;
SIGNAL \REGFILE|MEM~197_regout\ : std_logic;
SIGNAL \REGFILE|MEM~443_combout\ : std_logic;
SIGNAL \REGFILE|MEM~626_combout\ : std_logic;
SIGNAL \REGFILE|MEM~133_regout\ : std_logic;
SIGNAL \REGFILE|MEM~101feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~101_regout\ : std_logic;
SIGNAL \REGFILE|MEM~445_combout\ : std_logic;
SIGNAL \REGFILE|MEM~446_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \MUXRegDst|salida[2]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~457_combout\ : std_logic;
SIGNAL \REGFILE|MEM~263_regout\ : std_logic;
SIGNAL \REGFILE|MEM~199_regout\ : std_logic;
SIGNAL \REGFILE|MEM~231_regout\ : std_logic;
SIGNAL \REGFILE|MEM~167_regout\ : std_logic;
SIGNAL \REGFILE|MEM~492_combout\ : std_logic;
SIGNAL \REGFILE|MEM~493_combout\ : std_logic;
SIGNAL \REGFILE|MEM~496_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~18_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~6_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[3]~20_combout\ : std_logic;
SIGNAL \MUXPC|salida[3]~2_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \INSTREG|jump_out[22]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~499_combout\ : std_logic;
SIGNAL \REGFILE|MEM~627_combout\ : std_logic;
SIGNAL \REGFILE|MEM~134_regout\ : std_logic;
SIGNAL \REGFILE|MEM~500_combout\ : std_logic;
SIGNAL \REGFILE|MEM~166feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~166_regout\ : std_logic;
SIGNAL \REGFILE|MEM~230_regout\ : std_logic;
SIGNAL \REGFILE|MEM~497_combout\ : std_logic;
SIGNAL \REGFILE|MEM~262feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~262_regout\ : std_logic;
SIGNAL \REGFILE|MEM~498_combout\ : std_logic;
SIGNAL \REGFILE|MEM~501_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[2]~19_combout\ : std_logic;
SIGNAL \MUXPC|salida[2]~0_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ALUCOMP|Mux28~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~2_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux30~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[1]~1_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \INSTREG|op_out[3]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \CONTROLU|nxt_st[0]~15_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[0]~16_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~17_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~18_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~2_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux31~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[0]~3_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \INSTREG|jump_out[17]~feeder_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[0]~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~624_combout\ : std_logic;
SIGNAL \REGFILE|MEM~132_regout\ : std_logic;
SIGNAL \REGFILE|MEM~622_combout\ : std_logic;
SIGNAL \REGFILE|MEM~100_regout\ : std_logic;
SIGNAL \REGFILE|MEM~295_combout\ : std_logic;
SIGNAL \REGFILE|MEM~196feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~196_regout\ : std_logic;
SIGNAL \REGFILE|MEM~228feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~228_regout\ : std_logic;
SIGNAL \REGFILE|MEM~164feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~164_regout\ : std_logic;
SIGNAL \REGFILE|MEM~292_combout\ : std_logic;
SIGNAL \REGFILE|MEM~293_combout\ : std_logic;
SIGNAL \REGFILE|MEM~296_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~12_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~10_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~13_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~14_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~19_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~7_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~8_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~9_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~11_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt~10_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt~21_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[3]~14_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[3]~22_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~1_combout\ : std_logic;
SIGNAL \MUXB|Mux16~1_combout\ : std_logic;
SIGNAL \MUXB|Mux23~0_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal0~32_combout\ : std_logic;
SIGNAL \ADDRDEC|writeMemory~0_combout\ : std_logic;
SIGNAL \MEM|MEM_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \REGFILE|MEM~437_combout\ : std_logic;
SIGNAL \REGFILE|MEM~438_combout\ : std_logic;
SIGNAL \REGFILE|MEM~441_combout\ : std_logic;
SIGNAL \ADDRDEC|dev1~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~11_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[27]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~8_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~9_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~7_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~10_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal4~0_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal1~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal12~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr6~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr6~combout\ : std_logic;
SIGNAL \SEG7WR|Equal14~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~13_combout\ : std_logic;
SIGNAL \SEG7WR|Equal11~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr4~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr5~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr5~1_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[13]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~4_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[7]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[4]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~2_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[16]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~5_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~6_combout\ : std_logic;
SIGNAL \SEG7WR|Equal2~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal2~1_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr4~combout\ : std_logic;
SIGNAL \SEG7WR|WideOr0~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr3~combout\ : std_logic;
SIGNAL \SEG7WR|WideOr2~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr2~1_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~2_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~3_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~12_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr0~combout\ : std_logic;
SIGNAL \regA|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regB|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INSTREG|op_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \REG7SEG|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCONTRL|op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INSTREG|func_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \INSTREG|jump_out\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \MDR|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_key <= key;
seg7exit <= ww_seg7exit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\regB|dt_out\(31) & \regB|dt_out\(30) & \regB|dt_out\(29) & \regB|dt_out\(28) & \regB|dt_out\(27) & \regB|dt_out\(26) & \regB|dt_out\(25) & \regB|dt_out\(24) & \regB|dt_out\(23) & 
\regB|dt_out\(22) & \regB|dt_out\(21) & \regB|dt_out\(20) & \regB|dt_out\(19) & \regB|dt_out\(18) & \regB|dt_out\(17) & \regB|dt_out\(16) & \regB|dt_out\(15) & \regB|dt_out\(14) & \regB|dt_out\(13) & \regB|dt_out\(12) & \regB|dt_out\(11) & 
\regB|dt_out\(10) & \regB|dt_out\(9) & \regB|dt_out\(8) & \regB|dt_out\(7) & \regB|dt_out\(6) & \regB|dt_out\(5) & \regB|dt_out\(4) & \regB|dt_out\(3) & \regB|dt_out\(2) & \regB|dt_out\(1) & \regB|dt_out\(0));

\MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUXPC|salida[3]~2_combout\ & \MUXPC|salida[2]~0_combout\ & \MUXPC|salida[1]~1_combout\ & \MUXPC|salida[0]~3_combout\);

\MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\MUXPC|salida[3]~2_combout\ & \MUXPC|salida[2]~0_combout\ & \MUXPC|salida[1]~1_combout\ & \MUXPC|salida[0]~3_combout\);

\MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MEM|MEM_rtl_0|auto_generated|ram_block1a1\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MEM|MEM_rtl_0|auto_generated|ram_block1a2\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MEM|MEM_rtl_0|auto_generated|ram_block1a3\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MEM|MEM_rtl_0|auto_generated|ram_block1a4\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MEM|MEM_rtl_0|auto_generated|ram_block1a5\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MEM|MEM_rtl_0|auto_generated|ram_block1a6\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MEM|MEM_rtl_0|auto_generated|ram_block1a7\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\MEM|MEM_rtl_0|auto_generated|ram_block1a8\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\MEM|MEM_rtl_0|auto_generated|ram_block1a9\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\MEM|MEM_rtl_0|auto_generated|ram_block1a10\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\MEM|MEM_rtl_0|auto_generated|ram_block1a11\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\MEM|MEM_rtl_0|auto_generated|ram_block1a12\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\MEM|MEM_rtl_0|auto_generated|ram_block1a13\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\MEM|MEM_rtl_0|auto_generated|ram_block1a14\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\MEM|MEM_rtl_0|auto_generated|ram_block1a15\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\MEM|MEM_rtl_0|auto_generated|ram_block1a16\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\MEM|MEM_rtl_0|auto_generated|ram_block1a17\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\MEM|MEM_rtl_0|auto_generated|ram_block1a18\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\MEM|MEM_rtl_0|auto_generated|ram_block1a19\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\MEM|MEM_rtl_0|auto_generated|ram_block1a20\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\MEM|MEM_rtl_0|auto_generated|ram_block1a21\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\MEM|MEM_rtl_0|auto_generated|ram_block1a22\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\MEM|MEM_rtl_0|auto_generated|ram_block1a23\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\MEM|MEM_rtl_0|auto_generated|ram_block1a24\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\MEM|MEM_rtl_0|auto_generated|ram_block1a25\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\MEM|MEM_rtl_0|auto_generated|ram_block1a26\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\MEM|MEM_rtl_0|auto_generated|ram_block1a27\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\MEM|MEM_rtl_0|auto_generated|ram_block1a28\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\MEM|MEM_rtl_0|auto_generated|ram_block1a29\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\MEM|MEM_rtl_0|auto_generated|ram_block1a30\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\MEM|MEM_rtl_0|auto_generated|ram_block1a31\ <= \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\CONTROLU|nxt_st[1]~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|nxt_st[1]~6_combout\);
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: LCFF_X42_Y14_N13
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[23]~3_combout\,
	sdata => \INSTREG|jump_out\(21),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(23));

-- Location: LCFF_X42_Y14_N23
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[22]~4_combout\,
	sdata => \INSTREG|jump_out\(20),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(22));

-- Location: LCFF_X42_Y14_N17
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[21]~5_combout\,
	sdata => \INSTREG|jump_out\(19),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(21));

-- Location: LCFF_X43_Y14_N25
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[6]~6_combout\,
	sdata => \INSTREG|jump_out\(4),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(6));

-- Location: LCFF_X42_Y14_N9
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[7]~8_combout\,
	sdata => \INSTREG|jump_out\(5),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(7));

-- Location: LCFF_X47_Y13_N29
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[24]~24_combout\,
	sdata => \INSTREG|jump_out\(22),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(24));

-- Location: LCFF_X42_Y13_N7
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[29]~feeder_combout\,
	sdata => \regALU|dt_out\(29),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[30]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X45_Y13_N2
\ALUCOMP|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~28_combout\ = (\MUXA|salida[8]~1_combout\ & ((\ALUCOMP|Add0~1_combout\ & (\ALUCOMP|Add0~27\ & VCC)) # (!\ALUCOMP|Add0~1_combout\ & (!\ALUCOMP|Add0~27\)))) # (!\MUXA|salida[8]~1_combout\ & ((\ALUCOMP|Add0~1_combout\ & (!\ALUCOMP|Add0~27\)) # 
-- (!\ALUCOMP|Add0~1_combout\ & ((\ALUCOMP|Add0~27\) # (GND)))))
-- \ALUCOMP|Add0~29\ = CARRY((\MUXA|salida[8]~1_combout\ & (!\ALUCOMP|Add0~1_combout\ & !\ALUCOMP|Add0~27\)) # (!\MUXA|salida[8]~1_combout\ & ((!\ALUCOMP|Add0~27\) # (!\ALUCOMP|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~1_combout\,
	datab => \ALUCOMP|Add0~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~27\,
	combout => \ALUCOMP|Add0~28_combout\,
	cout => \ALUCOMP|Add0~29\);

-- Location: LCCOMB_X45_Y13_N4
\ALUCOMP|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~30_combout\ = ((\ALUCOMP|Add0~0_combout\ $ (\MUXA|salida[9]~0_combout\ $ (!\ALUCOMP|Add0~29\)))) # (GND)
-- \ALUCOMP|Add0~31\ = CARRY((\ALUCOMP|Add0~0_combout\ & ((\MUXA|salida[9]~0_combout\) # (!\ALUCOMP|Add0~29\))) # (!\ALUCOMP|Add0~0_combout\ & (\MUXA|salida[9]~0_combout\ & !\ALUCOMP|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~0_combout\,
	datab => \MUXA|salida[9]~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~29\,
	combout => \ALUCOMP|Add0~30_combout\,
	cout => \ALUCOMP|Add0~31\);

-- Location: LCCOMB_X45_Y13_N26
\ALUCOMP|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~64_combout\ = (\MUXA|salida[20]~21_combout\ & ((\ALUCOMP|Add0~33_combout\ & (\ALUCOMP|Add0~63\ & VCC)) # (!\ALUCOMP|Add0~33_combout\ & (!\ALUCOMP|Add0~63\)))) # (!\MUXA|salida[20]~21_combout\ & ((\ALUCOMP|Add0~33_combout\ & 
-- (!\ALUCOMP|Add0~63\)) # (!\ALUCOMP|Add0~33_combout\ & ((\ALUCOMP|Add0~63\) # (GND)))))
-- \ALUCOMP|Add0~65\ = CARRY((\MUXA|salida[20]~21_combout\ & (!\ALUCOMP|Add0~33_combout\ & !\ALUCOMP|Add0~63\)) # (!\MUXA|salida[20]~21_combout\ & ((!\ALUCOMP|Add0~63\) # (!\ALUCOMP|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~21_combout\,
	datab => \ALUCOMP|Add0~33_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~63\,
	combout => \ALUCOMP|Add0~64_combout\,
	cout => \ALUCOMP|Add0~65\);

-- Location: LCCOMB_X42_Y14_N12
\PROGCOUNT|addr_out[23]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[23]~3_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(23))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(23),
	datad => \ALUCOMP|Mux8~2_combout\,
	combout => \PROGCOUNT|addr_out[23]~3_combout\);

-- Location: LCCOMB_X42_Y14_N22
\PROGCOUNT|addr_out[22]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[22]~4_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(22))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(22),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux9~2_combout\,
	combout => \PROGCOUNT|addr_out[22]~4_combout\);

-- Location: LCCOMB_X42_Y14_N16
\PROGCOUNT|addr_out[21]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[21]~5_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(21))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(21),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux10~3_combout\,
	combout => \PROGCOUNT|addr_out[21]~5_combout\);

-- Location: LCCOMB_X43_Y14_N24
\PROGCOUNT|addr_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[6]~6_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(6)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux25~2_combout\,
	datad => \regALU|dt_out\(6),
	combout => \PROGCOUNT|addr_out[6]~6_combout\);

-- Location: LCCOMB_X42_Y14_N8
\PROGCOUNT|addr_out[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[7]~8_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(7))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(7),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux24~2_combout\,
	combout => \PROGCOUNT|addr_out[7]~8_combout\);

-- Location: LCCOMB_X47_Y13_N28
\PROGCOUNT|addr_out[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[24]~24_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(24))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(24),
	datad => \ALUCOMP|Mux7~2_combout\,
	combout => \PROGCOUNT|addr_out[24]~24_combout\);

-- Location: M4K_X41_Y10
\MEM|MEM_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000001000FFFB0023082220030001AC0102001020FFFE8C010300",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MultiCycle.ram0_memoryV2_5d453a49.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoryV2:MEM|altsyncram:MEM_rtl_0|altsyncram_uji1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 11,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 11,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ADDRDEC|writeMemory~0_combout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~combout\,
	clk1 => \ALT_INV_clk~combout\,
	ena0 => \ADDRDEC|writeMemory~0_combout\,
	ena1 => \CONTROLU|MemRd~0_combout\,
	portadatain => \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X46_Y11_N19
\REG7SEG|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(6));

-- Location: LCFF_X45_Y10_N9
\REG7SEG|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(8));

-- Location: LCFF_X40_Y10_N25
\REG7SEG|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(9));

-- Location: LCFF_X40_Y10_N23
\REG7SEG|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(10));

-- Location: LCFF_X45_Y10_N19
\REG7SEG|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[11]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(11));

-- Location: LCCOMB_X40_Y10_N24
\SEG7WR|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~3_combout\ = (!\REG7SEG|dt_out\(11) & (!\REG7SEG|dt_out\(10) & (!\REG7SEG|dt_out\(9) & !\REG7SEG|dt_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(11),
	datab => \REG7SEG|dt_out\(10),
	datac => \REG7SEG|dt_out\(9),
	datad => \REG7SEG|dt_out\(8),
	combout => \SEG7WR|Equal0~3_combout\);

-- Location: LCFF_X40_Y10_N21
\REG7SEG|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[12]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(12));

-- Location: LCFF_X40_Y10_N13
\REG7SEG|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[18]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(18));

-- Location: LCFF_X45_Y10_N27
\REG7SEG|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(23));

-- Location: LCFF_X46_Y11_N23
\REG7SEG|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(24));

-- Location: LCFF_X46_Y12_N21
\REG7SEG|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(29));

-- Location: LCCOMB_X42_Y14_N26
\ADDRDEC|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~5_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(23)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(23),
	datac => \regALU|dt_out\(23),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y14_N4
\ADDRDEC|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~6_combout\ = (\ADDRDEC|Equal0~5_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(22)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(22),
	datac => \regALU|dt_out\(22),
	datad => \ADDRDEC|Equal0~5_combout\,
	combout => \ADDRDEC|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y14_N10
\ADDRDEC|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~7_combout\ = (\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(21))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(21),
	datac => \PROGCOUNT|addr_out\(21),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~7_combout\);

-- Location: LCFF_X44_Y13_N17
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCCOMB_X42_Y14_N0
\ADDRDEC|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~8_combout\ = (\ADDRDEC|Equal0~7_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(6)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(6),
	datac => \regALU|dt_out\(6),
	datad => \ADDRDEC|Equal0~7_combout\,
	combout => \ADDRDEC|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y14_N14
\ADDRDEC|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~9_combout\ = (\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(4))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(4),
	datab => \PROGCOUNT|addr_out\(4),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y14_N28
\ADDRDEC|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~10_combout\ = (\ADDRDEC|Equal0~9_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(7))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(7),
	datab => \PROGCOUNT|addr_out\(7),
	datac => \ADDRDEC|Equal0~9_combout\,
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~10_combout\);

-- Location: LCCOMB_X42_Y14_N18
\ADDRDEC|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~11_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(10)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(10),
	datac => \regALU|dt_out\(10),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~11_combout\);

-- Location: LCCOMB_X42_Y14_N20
\ADDRDEC|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~12_combout\ = (\ADDRDEC|Equal0~11_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(11))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \regALU|dt_out\(11),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \ADDRDEC|Equal0~11_combout\,
	combout => \ADDRDEC|Equal0~12_combout\);

-- Location: LCCOMB_X42_Y14_N2
\ADDRDEC|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~13_combout\ = (\ADDRDEC|Equal0~12_combout\ & (\ADDRDEC|Equal0~8_combout\ & (\ADDRDEC|Equal0~6_combout\ & \ADDRDEC|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal0~12_combout\,
	datab => \ADDRDEC|Equal0~8_combout\,
	datac => \ADDRDEC|Equal0~6_combout\,
	datad => \ADDRDEC|Equal0~10_combout\,
	combout => \ADDRDEC|Equal0~13_combout\);

-- Location: LCFF_X44_Y15_N25
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: LCFF_X44_Y11_N3
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCCOMB_X43_Y14_N10
\ADDRDEC|Equal0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~20_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(18)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(18),
	datac => \CONTROLU|IorD~9_combout\,
	datad => \regALU|dt_out\(18),
	combout => \ADDRDEC|Equal0~20_combout\);

-- Location: LCCOMB_X43_Y14_N28
\ADDRDEC|Equal0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~21_combout\ = (\ADDRDEC|Equal0~20_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(19)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(19),
	datab => \regALU|dt_out\(19),
	datac => \CONTROLU|IorD~9_combout\,
	datad => \ADDRDEC|Equal0~20_combout\,
	combout => \ADDRDEC|Equal0~21_combout\);

-- Location: LCCOMB_X43_Y14_N8
\ADDRDEC|Equal0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~29_combout\ = (\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(17))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(17),
	datac => \CONTROLU|IorD~9_combout\,
	datad => \PROGCOUNT|addr_out\(17),
	combout => \ADDRDEC|Equal0~29_combout\);

-- Location: LCFF_X42_Y10_N13
\REGFILE|MEM~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~260feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~260_regout\);

-- Location: LCFF_X39_Y14_N17
\REGFILE|MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~623_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~68_regout\);

-- Location: LCFF_X39_Y14_N15
\REGFILE|MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[0]~0_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~36_regout\);

-- Location: LCCOMB_X39_Y14_N24
\REGFILE|MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~294_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17)) # (!\REGFILE|MEM~68_regout\)))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~36_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~36_regout\,
	datac => \REGFILE|MEM~68_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~294_combout\);

-- Location: LCCOMB_X48_Y11_N28
\CONTROLU|nxt_st[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~4_combout\ = (!\rst~combout\ & !\CONTROLU|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~1_combout\,
	combout => \CONTROLU|nxt_st[1]~4_combout\);

-- Location: LCCOMB_X46_Y14_N18
\ALUCOMP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~0_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux22~0_combout\,
	combout => \ALUCOMP|Add0~0_combout\);

-- Location: LCFF_X46_Y10_N31
\regA|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(8));

-- Location: LCCOMB_X45_Y14_N10
\ALUCOMP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~4_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux26~0_combout\,
	combout => \ALUCOMP|Add0~4_combout\);

-- Location: LCFF_X47_Y12_N7
\regA|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(4));

-- Location: LCCOMB_X45_Y14_N12
\ALUCOMP|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~7_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Add0~7_combout\);

-- Location: LCCOMB_X46_Y14_N2
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = \MUXB|Mux30~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux30~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~8_combout\);

-- Location: LCFF_X46_Y10_N5
\regA|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~506_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(1));

-- Location: LCCOMB_X45_Y14_N6
\ALUCOMP|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~9_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux31~0_combout\,
	combout => \ALUCOMP|Add0~9_combout\);

-- Location: LCFF_X44_Y15_N17
\regA|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~511_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(0));

-- Location: LCCOMB_X46_Y14_N4
\ALUCONTRL|op~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op~1_combout\ = (\INSTREG|func_out\(1) & (\CONTROLU|Equal0~3_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \CONTROLU|Equal0~3_combout\,
	datad => \rst~combout\,
	combout => \ALUCONTRL|op~1_combout\);

-- Location: LCFF_X49_Y13_N25
\regA|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~516_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(31));

-- Location: LCCOMB_X47_Y11_N10
\MUXB|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux1~0_combout\ = (!\MUXB|Mux0~1_combout\ & \regB|dt_out\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux0~1_combout\,
	datad => \regB|dt_out\(30),
	combout => \MUXB|Mux1~0_combout\);

-- Location: LCFF_X44_Y11_N15
\regA|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~526_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(29));

-- Location: LCCOMB_X44_Y11_N14
\MUXA|salida[29]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~12_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(29))) # (!\rst~combout\ & ((\regA|dt_out\(29)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(29),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(29),
	datad => \rst~combout\,
	combout => \MUXA|salida[29]~12_combout\);

-- Location: LCCOMB_X42_Y12_N18
\MUXB|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux3~0_combout\ = (\regB|dt_out\(28) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(28),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y11_N4
\MUXB|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux4~0_combout\ = (\regB|dt_out\(27) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(27),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y11_N12
\MUXB|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux8~0_combout\ = (\regB|dt_out\(23) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(23),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux8~0_combout\);

-- Location: LCCOMB_X42_Y11_N10
\MUXB|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux10~0_combout\ = (\regB|dt_out\(21) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(21),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux10~0_combout\);

-- Location: LCCOMB_X44_Y10_N12
\MUXB|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux12~0_combout\ = (\regB|dt_out\(19) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(19),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux12~0_combout\);

-- Location: LCFF_X46_Y10_N7
\regA|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(18));

-- Location: LCCOMB_X44_Y10_N8
\MUXB|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux13~0_combout\ = (\regB|dt_out\(18) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(18),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux13~0_combout\);

-- Location: LCCOMB_X47_Y11_N28
\MUXB|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux14~0_combout\ = (!\MUXB|Mux0~1_combout\ & \regB|dt_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux0~1_combout\,
	datad => \regB|dt_out\(17),
	combout => \MUXB|Mux14~0_combout\);

-- Location: LCFF_X46_Y10_N13
\regA|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(15));

-- Location: LCCOMB_X46_Y10_N26
\MUXA|salida[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~26_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(15))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(15))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(15),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(15),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[15]~26_combout\);

-- Location: LCFF_X47_Y11_N15
\regA|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(13));

-- Location: LCCOMB_X42_Y11_N28
\MUXA|salida[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~28_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(13)))) # (!\rst~combout\ & (\regA|dt_out\(13))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(13),
	datab => \PROGCOUNT|addr_out\(13),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[13]~28_combout\);

-- Location: LCFF_X46_Y10_N17
\regA|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(12));

-- Location: LCFF_X46_Y10_N21
\regA|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(11));

-- Location: LCCOMB_X45_Y11_N26
\ALUCOMP|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~1_combout\ = (\MUXB|Mux22~0_combout\ & ((\MUXA|salida[9]~0_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXB|Mux22~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[9]~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux22~0_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXA|salida[9]~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux22~1_combout\);

-- Location: LCCOMB_X49_Y14_N24
\PCwrite~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~0_combout\ = (!\rst~combout\ & ((\CONTROLU|Equal0~6_combout\) # (\CONTROLU|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~6_combout\,
	datad => \CONTROLU|Equal0~1_combout\,
	combout => \PCwrite~0_combout\);

-- Location: LCCOMB_X45_Y10_N28
\ALUCOMP|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~32_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(21) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(21),
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~32_combout\);

-- Location: LCCOMB_X45_Y10_N4
\ALUCOMP|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~34_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(19) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(19),
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~34_combout\);

-- Location: LCCOMB_X45_Y10_N10
\ALUCOMP|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~35_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(18) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(18),
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~35_combout\);

-- Location: LCCOMB_X45_Y14_N2
\ALUCOMP|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~37_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \MUXB|Mux0~1_combout\,
	datad => \regB|dt_out\(16),
	combout => \ALUCOMP|Add0~37_combout\);

-- Location: LCCOMB_X46_Y14_N0
\ALUCOMP|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~39_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|Add0~39_combout\);

-- Location: LCCOMB_X46_Y14_N22
\ALUCOMP|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~43_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux21~0_combout\,
	combout => \ALUCOMP|Add0~43_combout\);

-- Location: LCCOMB_X45_Y11_N10
\ALUCOMP|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~1_combout\ = (\regB|dt_out\(21) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(21),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Mux10~1_combout\);

-- Location: LCCOMB_X46_Y12_N8
\ALUCOMP|temp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~1_combout\ = (\MUXA|salida[23]~18_combout\) # ((\regB|dt_out\(23) & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(23),
	datab => \MUXA|salida[23]~18_combout\,
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|temp~1_combout\);

-- Location: LCCOMB_X46_Y15_N26
\ALUCOMP|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~69_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(22) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(22),
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~69_combout\);

-- Location: LCCOMB_X44_Y10_N30
\ALUCOMP|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux13~0_combout\) # ((\ALUCOMP|Mux28~1_combout\) # (\MUXA|salida[18]~23_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux13~0_combout\ & (!\ALUCOMP|Mux28~1_combout\ & 
-- \MUXA|salida[18]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXB|Mux13~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXA|salida[18]~23_combout\,
	combout => \ALUCOMP|Mux13~0_combout\);

-- Location: LCCOMB_X46_Y12_N4
\ALUCOMP|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~75_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(24) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(24),
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~75_combout\);

-- Location: LCCOMB_X45_Y12_N22
\ALUCOMP|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~80_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(27) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datac => \regB|dt_out\(27),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~80_combout\);

-- Location: LCCOMB_X45_Y12_N24
\ALUCOMP|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~81_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(26) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(26),
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~81_combout\);

-- Location: LCCOMB_X42_Y12_N24
\ALUCOMP|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\) # ((\MUXA|salida[27]~14_combout\) # (\MUXB|Mux4~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (!\ALUCOMP|Mux28~1_combout\ & (\MUXA|salida[27]~14_combout\ & 
-- \MUXB|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \MUXA|salida[27]~14_combout\,
	datad => \MUXB|Mux4~0_combout\,
	combout => \ALUCOMP|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y15_N10
\ALUCOMP|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~0_combout\ = (\MUXB|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\MUXA|salida[10]~31_combout\ & !\ALUCOMP|Mux28~1_combout\)))) # (!\MUXB|Mux21~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[10]~31_combout\) # 
-- (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux21~0_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXA|salida[10]~31_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux21~0_combout\);

-- Location: LCCOMB_X44_Y13_N6
\ALUCOMP|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~0_combout\ = (\MUXA|salida[1]~8_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((!\ALUCOMP|Mux28~1_combout\ & \MUXB|Mux30~0_combout\)))) # (!\MUXA|salida[1]~8_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\) # 
-- (\MUXB|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~8_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXB|Mux30~0_combout\,
	combout => \ALUCOMP|Mux30~0_combout\);

-- Location: LCCOMB_X45_Y11_N4
\ALUCOMP|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~1_combout\ = (\MUXB|Mux29~0_combout\ & ((\MUXA|salida[2]~7_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXB|Mux29~0_combout\ & (\MUXA|salida[2]~7_combout\ & (\ALUCONTRL|op[0]~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux29~0_combout\,
	datab => \MUXA|salida[2]~7_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux29~1_combout\);

-- Location: LCCOMB_X42_Y12_N16
\ALUCOMP|temp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~4_combout\ = (\MUXA|salida[28]~13_combout\) # ((\regB|dt_out\(28) & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(28),
	datab => \MUXB|Mux0~1_combout\,
	datad => \MUXA|salida[28]~13_combout\,
	combout => \ALUCOMP|temp~4_combout\);

-- Location: LCCOMB_X45_Y11_N6
\ALUCOMP|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~0_combout\ = (\MUXB|Mux7~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((!\ALUCOMP|Mux28~1_combout\ & \MUXA|salida[24]~17_combout\)))) # (!\MUXB|Mux7~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\) # 
-- (\MUXA|salida[24]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux7~0_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXA|salida[24]~17_combout\,
	combout => \ALUCOMP|Mux7~0_combout\);

-- Location: LCFF_X46_Y13_N23
\INSTREG|jump_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[20]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(20));

-- Location: LCFF_X46_Y14_N23
\INSTREG|jump_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a19\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(19));

-- Location: LCFF_X48_Y13_N27
\REGFILE|MEM~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~200feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~200_regout\);

-- Location: LCFF_X49_Y12_N21
\REGFILE|MEM~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~232_regout\);

-- Location: LCFF_X49_Y12_N19
\REGFILE|MEM~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~168_regout\);

-- Location: LCCOMB_X49_Y12_N18
\REGFILE|MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~297_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~232_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~168_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~232_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~168_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~297_combout\);

-- Location: LCFF_X48_Y12_N29
\REGFILE|MEM~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~264_regout\);

-- Location: LCCOMB_X48_Y12_N28
\REGFILE|MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~298_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~297_combout\ & (\REGFILE|MEM~264_regout\)) # (!\REGFILE|MEM~297_combout\ & ((\REGFILE|MEM~200_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~297_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~297_combout\,
	datac => \REGFILE|MEM~264_regout\,
	datad => \REGFILE|MEM~200_regout\,
	combout => \REGFILE|MEM~298_combout\);

-- Location: LCFF_X39_Y14_N29
\REGFILE|MEM~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~72_regout\);

-- Location: LCFF_X40_Y13_N11
\REGFILE|MEM~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~136_regout\);

-- Location: LCCOMB_X39_Y14_N30
\REGFILE|MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~304_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~73_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~41_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~73_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~41_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~304_combout\);

-- Location: LCCOMB_X40_Y13_N2
\REGFILE|MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~305_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~304_combout\ & (\REGFILE|MEM~137_regout\)) # (!\REGFILE|MEM~304_combout\ & ((\REGFILE|MEM~105_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~137_regout\,
	datac => \REGFILE|MEM~105_regout\,
	datad => \REGFILE|MEM~304_combout\,
	combout => \REGFILE|MEM~305_combout\);

-- Location: LCCOMB_X39_Y14_N2
\REGFILE|MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~309_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~74_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~42_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~74_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~42_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~309_combout\);

-- Location: LCFF_X49_Y12_N5
\REGFILE|MEM~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~235_regout\);

-- Location: LCFF_X49_Y12_N31
\REGFILE|MEM~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~171_regout\);

-- Location: LCCOMB_X49_Y12_N30
\REGFILE|MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~312_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~235_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~171_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~171_regout\,
	datad => \REGFILE|MEM~235_regout\,
	combout => \REGFILE|MEM~312_combout\);

-- Location: LCCOMB_X48_Y12_N20
\REGFILE|MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~313_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~312_combout\ & (\REGFILE|MEM~267_regout\)) # (!\REGFILE|MEM~312_combout\ & ((\REGFILE|MEM~203_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~267_regout\,
	datac => \REGFILE|MEM~203_regout\,
	datad => \REGFILE|MEM~312_combout\,
	combout => \REGFILE|MEM~313_combout\);

-- Location: LCFF_X48_Y13_N21
\REGFILE|MEM~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~204feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~204_regout\);

-- Location: LCFF_X49_Y13_N29
\REGFILE|MEM~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~108feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~108_regout\);

-- Location: LCFF_X48_Y9_N5
\REGFILE|MEM~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~76_regout\);

-- Location: LCFF_X49_Y9_N27
\REGFILE|MEM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~44feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~44_regout\);

-- Location: LCCOMB_X48_Y9_N4
\REGFILE|MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~319_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~76_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~44_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~44_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~76_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~319_combout\);

-- Location: LCFF_X48_Y9_N19
\REGFILE|MEM~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~140_regout\);

-- Location: LCCOMB_X48_Y9_N12
\REGFILE|MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~320_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~319_combout\ & (\REGFILE|MEM~140_regout\)) # (!\REGFILE|MEM~319_combout\ & ((\REGFILE|MEM~108_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~140_regout\,
	datac => \REGFILE|MEM~319_combout\,
	datad => \REGFILE|MEM~108_regout\,
	combout => \REGFILE|MEM~320_combout\);

-- Location: LCFF_X49_Y12_N25
\REGFILE|MEM~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~237_regout\);

-- Location: LCFF_X49_Y12_N7
\REGFILE|MEM~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~173_regout\);

-- Location: LCCOMB_X49_Y12_N6
\REGFILE|MEM~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~322_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~237_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~173_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~173_regout\,
	datad => \REGFILE|MEM~237_regout\,
	combout => \REGFILE|MEM~322_combout\);

-- Location: LCFF_X48_Y9_N11
\REGFILE|MEM~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~77_regout\);

-- Location: LCCOMB_X48_Y9_N10
\REGFILE|MEM~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~324_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~77_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~45_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~45_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~77_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~324_combout\);

-- Location: LCFF_X45_Y9_N29
\REGFILE|MEM~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~238feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~238_regout\);

-- Location: LCFF_X49_Y9_N3
\REGFILE|MEM~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~174_regout\);

-- Location: LCCOMB_X49_Y13_N18
\REGFILE|MEM~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~327_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16)) # (\REGFILE|MEM~238_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~174_regout\ & (!\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~174_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~238_regout\,
	combout => \REGFILE|MEM~327_combout\);

-- Location: LCCOMB_X48_Y12_N14
\REGFILE|MEM~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~328_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~327_combout\ & (\REGFILE|MEM~270_regout\)) # (!\REGFILE|MEM~327_combout\ & ((\REGFILE|MEM~206_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~327_combout\,
	datac => \REGFILE|MEM~270_regout\,
	datad => \REGFILE|MEM~206_regout\,
	combout => \REGFILE|MEM~328_combout\);

-- Location: LCCOMB_X48_Y9_N8
\REGFILE|MEM~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~329_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~78_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~46_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~46_regout\,
	datac => \REGFILE|MEM~78_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~329_combout\);

-- Location: LCFF_X49_Y11_N19
\REGFILE|MEM~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~239feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~239_regout\);

-- Location: LCFF_X49_Y11_N9
\REGFILE|MEM~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~175feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~175_regout\);

-- Location: LCCOMB_X49_Y11_N6
\REGFILE|MEM~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~332_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~239_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~175_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~175_regout\,
	datad => \REGFILE|MEM~239_regout\,
	combout => \REGFILE|MEM~332_combout\);

-- Location: LCFF_X49_Y11_N5
\REGFILE|MEM~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~240_regout\);

-- Location: LCFF_X49_Y11_N27
\REGFILE|MEM~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~176_regout\);

-- Location: LCCOMB_X49_Y11_N26
\REGFILE|MEM~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~337_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~240_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~240_regout\,
	datac => \REGFILE|MEM~176_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~337_combout\);

-- Location: LCFF_X49_Y9_N5
\REGFILE|MEM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~48feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~48_regout\);

-- Location: LCFF_X49_Y10_N27
\REGFILE|MEM~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~144_regout\);

-- Location: LCFF_X49_Y11_N1
\REGFILE|MEM~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~241feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~241_regout\);

-- Location: LCFF_X48_Y9_N3
\REGFILE|MEM~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~81_regout\);

-- Location: LCFF_X49_Y9_N19
\REGFILE|MEM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~49feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~49_regout\);

-- Location: LCCOMB_X48_Y9_N2
\REGFILE|MEM~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~344_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~81_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~49_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~49_regout\,
	datac => \REGFILE|MEM~81_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~344_combout\);

-- Location: LCFF_X49_Y11_N17
\REGFILE|MEM~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~243feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~243_regout\);

-- Location: LCFF_X49_Y11_N31
\REGFILE|MEM~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~179feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~179_regout\);

-- Location: LCCOMB_X48_Y11_N26
\REGFILE|MEM~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~352_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~243_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~179_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~179_regout\,
	datac => \REGFILE|MEM~243_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~352_combout\);

-- Location: LCFF_X48_Y10_N7
\REGFILE|MEM~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~83_regout\);

-- Location: LCFF_X47_Y9_N19
\REGFILE|MEM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~51feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~51_regout\);

-- Location: LCCOMB_X48_Y10_N6
\REGFILE|MEM~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~354_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~83_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~51_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~83_regout\,
	datad => \REGFILE|MEM~51_regout\,
	combout => \REGFILE|MEM~354_combout\);

-- Location: LCFF_X49_Y14_N15
\REGFILE|MEM~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~213_regout\);

-- Location: LCFF_X49_Y15_N17
\REGFILE|MEM~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~246feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~246_regout\);

-- Location: LCFF_X40_Y11_N17
\REGFILE|MEM~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~278_regout\);

-- Location: LCFF_X38_Y14_N7
\REGFILE|MEM~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~86_regout\);

-- Location: LCFF_X38_Y14_N9
\REGFILE|MEM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~54_regout\);

-- Location: LCCOMB_X38_Y14_N8
\REGFILE|MEM~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~369_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~86_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~54_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~54_regout\,
	datad => \REGFILE|MEM~86_regout\,
	combout => \REGFILE|MEM~369_combout\);

-- Location: LCFF_X39_Y11_N25
\REGFILE|MEM~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~247feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~247_regout\);

-- Location: LCCOMB_X39_Y11_N30
\REGFILE|MEM~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~372_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~247_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~183_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~183_regout\,
	datad => \REGFILE|MEM~247_regout\,
	combout => \REGFILE|MEM~372_combout\);

-- Location: LCCOMB_X40_Y11_N26
\REGFILE|MEM~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~373_combout\ = (\REGFILE|MEM~372_combout\ & ((\REGFILE|MEM~279_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~372_combout\ & (((\REGFILE|MEM~215_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~372_combout\,
	datab => \REGFILE|MEM~279_regout\,
	datac => \REGFILE|MEM~215_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~373_combout\);

-- Location: LCFF_X38_Y12_N13
\REGFILE|MEM~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~119_regout\);

-- Location: LCCOMB_X39_Y11_N14
\REGFILE|MEM~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~382_combout\ = (\INSTREG|jump_out\(17) & (((\REGFILE|MEM~249_regout\) # (\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~185_regout\ & ((!\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~185_regout\,
	datac => \REGFILE|MEM~249_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~382_combout\);

-- Location: LCFF_X49_Y8_N9
\REGFILE|MEM~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~282feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~282_regout\);

-- Location: LCFF_X48_Y10_N27
\REGFILE|MEM~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~122_regout\);

-- Location: LCFF_X47_Y10_N29
\REGFILE|MEM~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~90feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~90_regout\);

-- Location: LCFF_X49_Y9_N25
\REGFILE|MEM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~58_regout\);

-- Location: LCCOMB_X40_Y12_N12
\REGFILE|MEM~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~389_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~90_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~58_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~90_regout\,
	combout => \REGFILE|MEM~389_combout\);

-- Location: LCFF_X47_Y10_N3
\REGFILE|MEM~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~154feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~154_regout\);

-- Location: LCCOMB_X45_Y15_N16
\REGFILE|MEM~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~390_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~389_combout\ & (\REGFILE|MEM~154_regout\)) # (!\REGFILE|MEM~389_combout\ & ((\REGFILE|MEM~122_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~154_regout\,
	datac => \REGFILE|MEM~389_combout\,
	datad => \REGFILE|MEM~122_regout\,
	combout => \REGFILE|MEM~390_combout\);

-- Location: LCFF_X46_Y9_N21
\REGFILE|MEM~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~219_regout\);

-- Location: LCFF_X39_Y11_N27
\REGFILE|MEM~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~251_regout\);

-- Location: LCFF_X38_Y11_N11
\REGFILE|MEM~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~187_regout\);

-- Location: LCCOMB_X39_Y11_N26
\REGFILE|MEM~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~392_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~251_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~187_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~251_regout\,
	datad => \REGFILE|MEM~187_regout\,
	combout => \REGFILE|MEM~392_combout\);

-- Location: LCFF_X46_Y9_N31
\REGFILE|MEM~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~283_regout\);

-- Location: LCCOMB_X46_Y9_N20
\REGFILE|MEM~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~393_combout\ = (\REGFILE|MEM~392_combout\ & (((\REGFILE|MEM~283_regout\)) # (!\INSTREG|jump_out\(16)))) # (!\REGFILE|MEM~392_combout\ & (\INSTREG|jump_out\(16) & (\REGFILE|MEM~219_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~392_combout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~219_regout\,
	datad => \REGFILE|MEM~283_regout\,
	combout => \REGFILE|MEM~393_combout\);

-- Location: LCFF_X38_Y11_N1
\REGFILE|MEM~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~123_regout\);

-- Location: LCFF_X43_Y12_N1
\REGFILE|MEM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~59_regout\);

-- Location: LCFF_X46_Y9_N17
\REGFILE|MEM~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~285feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~285_regout\);

-- Location: LCFF_X48_Y13_N11
\REGFILE|MEM~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~222_regout\);

-- Location: LCFF_X43_Y11_N25
\REGFILE|MEM~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~126_regout\);

-- Location: LCFF_X44_Y10_N17
\REGFILE|MEM~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~94_regout\);

-- Location: LCCOMB_X40_Y12_N26
\REGFILE|MEM~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~409_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~94_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~62_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~94_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~62_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~409_combout\);

-- Location: LCCOMB_X38_Y11_N26
\REGFILE|MEM~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~410_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~409_combout\ & ((\REGFILE|MEM~158_regout\))) # (!\REGFILE|MEM~409_combout\ & (\REGFILE|MEM~126_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~409_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~126_regout\,
	datac => \REGFILE|MEM~409_combout\,
	datad => \REGFILE|MEM~158_regout\,
	combout => \REGFILE|MEM~410_combout\);

-- Location: LCFF_X40_Y9_N25
\REGFILE|MEM~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~223feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~223_regout\);

-- Location: LCCOMB_X44_Y9_N14
\REGFILE|MEM~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~412_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~255_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~191_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~191_regout\,
	datad => \REGFILE|MEM~255_regout\,
	combout => \REGFILE|MEM~412_combout\);

-- Location: LCCOMB_X40_Y9_N2
\REGFILE|MEM~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~413_combout\ = (\REGFILE|MEM~412_combout\ & (((\REGFILE|MEM~287_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~412_combout\ & (\REGFILE|MEM~223_regout\ & (\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~223_regout\,
	datab => \REGFILE|MEM~412_combout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~287_regout\,
	combout => \REGFILE|MEM~413_combout\);

-- Location: LCFF_X40_Y12_N9
\REGFILE|MEM~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~95_regout\);

-- Location: LCFF_X44_Y9_N19
\REGFILE|MEM~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~257_regout\);

-- Location: LCFF_X49_Y10_N13
\REGFILE|MEM~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~161_regout\);

-- Location: LCFF_X46_Y10_N29
\REGFILE|MEM~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~290_regout\);

-- Location: LCCOMB_X47_Y9_N24
\REGFILE|MEM~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~429_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17)) # (\REGFILE|MEM~98_regout\)))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~66_regout\ & (!\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~66_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~98_regout\,
	combout => \REGFILE|MEM~429_combout\);

-- Location: LCFF_X40_Y13_N31
\REGFILE|MEM~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[30]~27_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~162_regout\);

-- Location: LCCOMB_X47_Y9_N26
\REGFILE|MEM~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~430_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~429_combout\ & (\REGFILE|MEM~162_regout\)) # (!\REGFILE|MEM~429_combout\ & ((\REGFILE|MEM~130_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~162_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~429_combout\,
	datad => \REGFILE|MEM~130_regout\,
	combout => \REGFILE|MEM~430_combout\);

-- Location: LCFF_X46_Y9_N25
\REGFILE|MEM~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~227feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~227_regout\);

-- Location: LCFF_X42_Y12_N17
\REGFILE|MEM~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~131_regout\);

-- Location: LCFF_X39_Y12_N15
\REGFILE|MEM~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~99feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~99_regout\);

-- Location: LCFF_X40_Y13_N21
\REGFILE|MEM~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~103_regout\);

-- Location: LCFF_X47_Y10_N11
\REGFILE|MEM~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~625_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~71_regout\);

-- Location: LCFF_X47_Y9_N17
\REGFILE|MEM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~39_regout\);

-- Location: LCCOMB_X47_Y9_N6
\REGFILE|MEM~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~439_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((!\REGFILE|MEM~71_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~39_regout\,
	datab => \REGFILE|MEM~71_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~439_combout\);

-- Location: LCFF_X40_Y13_N23
\REGFILE|MEM~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~135_regout\);

-- Location: LCCOMB_X40_Y13_N22
\REGFILE|MEM~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~440_combout\ = (\REGFILE|MEM~439_combout\ & (((\REGFILE|MEM~135_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~439_combout\ & (\REGFILE|MEM~103_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~103_regout\,
	datab => \REGFILE|MEM~439_combout\,
	datac => \REGFILE|MEM~135_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~440_combout\);

-- Location: LCFF_X48_Y12_N11
\REGFILE|MEM~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~261_regout\);

-- Location: LCFF_X39_Y14_N5
\REGFILE|MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~69_regout\);

-- Location: LCFF_X39_Y14_N11
\REGFILE|MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~37_regout\);

-- Location: LCCOMB_X39_Y14_N4
\REGFILE|MEM~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~444_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~69_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~37_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~69_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~444_combout\);

-- Location: LCFF_X48_Y13_N25
\REGFILE|MEM~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~198feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~198_regout\);

-- Location: LCCOMB_X44_Y9_N6
\REGFILE|MEM~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~447_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16)) # (\REGFILE|MEM~230_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~166_regout\ & (!\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~166_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~230_regout\,
	combout => \REGFILE|MEM~447_combout\);

-- Location: LCCOMB_X48_Y13_N6
\REGFILE|MEM~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~448_combout\ = (\REGFILE|MEM~447_combout\ & (((\REGFILE|MEM~262_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~447_combout\ & (\REGFILE|MEM~198_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~198_regout\,
	datab => \REGFILE|MEM~262_regout\,
	datac => \REGFILE|MEM~447_combout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~448_combout\);

-- Location: LCFF_X44_Y14_N7
\MDR|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux31~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(0));

-- Location: LCCOMB_X49_Y10_N10
\MUXRegDst|salida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[1]~2_combout\ = (\rst~combout\ & (((\INSTREG|jump_out\(17))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~7_combout\ & (\INSTREG|jump_out\(12))) # (!\CONTROLU|Equal0~7_combout\ & ((\INSTREG|jump_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \INSTREG|jump_out\(12),
	datac => \CONTROLU|Equal0~7_combout\,
	datad => \INSTREG|jump_out\(17),
	combout => \MUXRegDst|salida[1]~2_combout\);

-- Location: LCCOMB_X49_Y14_N4
\CONTROLU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Mux0~0_combout\ = (!\INSTREG|op_out\(0) & ((\INSTREG|op_out\(3) & (!\INSTREG|op_out\(2) & !\INSTREG|op_out\(1))) # (!\INSTREG|op_out\(3) & (\INSTREG|op_out\(2) $ (\INSTREG|op_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(0),
	datab => \INSTREG|op_out\(3),
	datac => \INSTREG|op_out\(2),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y14_N6
\CONTROLU|nxt_st[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[3]~5_combout\ = (!\INSTREG|op_out\(4) & (\CONTROLU|Equal0~2_combout\ & (!\INSTREG|op_out\(5) & \CONTROLU|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(4),
	datab => \CONTROLU|Equal0~2_combout\,
	datac => \INSTREG|op_out\(5),
	datad => \CONTROLU|Mux0~0_combout\,
	combout => \CONTROLU|nxt_st[3]~5_combout\);

-- Location: LCCOMB_X49_Y12_N24
\REGFILE|MEM~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~462_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~237_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~173_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~237_regout\,
	datad => \REGFILE|MEM~173_regout\,
	combout => \REGFILE|MEM~462_combout\);

-- Location: LCCOMB_X48_Y12_N2
\REGFILE|MEM~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~463_combout\ = (\REGFILE|MEM~462_combout\ & (((\REGFILE|MEM~269_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~462_combout\ & (\REGFILE|MEM~205_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~205_regout\,
	datab => \REGFILE|MEM~462_combout\,
	datac => \REGFILE|MEM~269_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~463_combout\);

-- Location: LCCOMB_X49_Y12_N28
\REGFILE|MEM~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~467_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~236_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~172_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~236_regout\,
	datad => \REGFILE|MEM~172_regout\,
	combout => \REGFILE|MEM~467_combout\);

-- Location: LCCOMB_X42_Y10_N16
\REGFILE|MEM~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~468_combout\ = (\REGFILE|MEM~467_combout\ & (((\REGFILE|MEM~268_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~467_combout\ & (\REGFILE|MEM~204_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~204_regout\,
	datab => \REGFILE|MEM~467_combout\,
	datac => \REGFILE|MEM~268_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~468_combout\);

-- Location: LCCOMB_X48_Y9_N6
\REGFILE|MEM~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~469_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~76_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~44_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~44_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~76_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~469_combout\);

-- Location: LCCOMB_X48_Y9_N18
\REGFILE|MEM~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~470_combout\ = (\REGFILE|MEM~469_combout\ & (((\REGFILE|MEM~140_regout\)) # (!\INSTREG|jump_out\(22)))) # (!\REGFILE|MEM~469_combout\ & (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~108_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~469_combout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~140_regout\,
	datad => \REGFILE|MEM~108_regout\,
	combout => \REGFILE|MEM~470_combout\);

-- Location: LCCOMB_X46_Y10_N30
\REGFILE|MEM~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~471_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~468_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~470_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~468_combout\,
	datac => \REGFILE|MEM~470_combout\,
	combout => \REGFILE|MEM~471_combout\);

-- Location: LCCOMB_X49_Y12_N4
\REGFILE|MEM~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~472_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~235_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~171_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~235_regout\,
	datad => \REGFILE|MEM~171_regout\,
	combout => \REGFILE|MEM~472_combout\);

-- Location: LCCOMB_X49_Y12_N20
\REGFILE|MEM~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~487_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~232_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~168_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~232_regout\,
	datad => \REGFILE|MEM~168_regout\,
	combout => \REGFILE|MEM~487_combout\);

-- Location: LCCOMB_X48_Y12_N6
\REGFILE|MEM~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~488_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~487_combout\ & (\REGFILE|MEM~264_regout\)) # (!\REGFILE|MEM~487_combout\ & ((\REGFILE|MEM~200_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~487_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~264_regout\,
	datac => \REGFILE|MEM~487_combout\,
	datad => \REGFILE|MEM~200_regout\,
	combout => \REGFILE|MEM~488_combout\);

-- Location: LCCOMB_X39_Y14_N28
\REGFILE|MEM~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~489_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~72_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~40_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~40_regout\,
	datac => \REGFILE|MEM~72_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~489_combout\);

-- Location: LCCOMB_X39_Y13_N14
\REGFILE|MEM~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~490_combout\ = (\REGFILE|MEM~489_combout\ & (((\REGFILE|MEM~136_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~489_combout\ & (\REGFILE|MEM~104_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~489_combout\,
	datab => \REGFILE|MEM~104_regout\,
	datac => \REGFILE|MEM~136_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~490_combout\);

-- Location: LCCOMB_X47_Y12_N6
\REGFILE|MEM~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~491_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~488_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~490_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~488_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~490_combout\,
	combout => \REGFILE|MEM~491_combout\);

-- Location: LCCOMB_X47_Y9_N8
\REGFILE|MEM~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~494_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((!\REGFILE|MEM~71_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~39_regout\,
	datab => \REGFILE|MEM~71_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~494_combout\);

-- Location: LCCOMB_X40_Y13_N20
\REGFILE|MEM~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~495_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~494_combout\ & (\REGFILE|MEM~135_regout\)) # (!\REGFILE|MEM~494_combout\ & ((\REGFILE|MEM~103_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~135_regout\,
	datac => \REGFILE|MEM~103_regout\,
	datad => \REGFILE|MEM~494_combout\,
	combout => \REGFILE|MEM~495_combout\);

-- Location: LCCOMB_X49_Y12_N12
\REGFILE|MEM~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~502_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~229_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~165_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~229_regout\,
	datad => \REGFILE|MEM~165_regout\,
	combout => \REGFILE|MEM~502_combout\);

-- Location: LCCOMB_X48_Y12_N10
\REGFILE|MEM~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~503_combout\ = (\REGFILE|MEM~502_combout\ & (((\REGFILE|MEM~261_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~502_combout\ & (\REGFILE|MEM~197_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~197_regout\,
	datab => \REGFILE|MEM~502_combout\,
	datac => \REGFILE|MEM~261_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~503_combout\);

-- Location: LCCOMB_X39_Y14_N10
\REGFILE|MEM~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~504_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~69_regout\) # ((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~37_regout\ & !\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~69_regout\,
	datac => \REGFILE|MEM~37_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~504_combout\);

-- Location: LCCOMB_X48_Y11_N14
\REGFILE|MEM~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~505_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~504_combout\ & (!\REGFILE|MEM~133_regout\)) # (!\REGFILE|MEM~504_combout\ & ((\REGFILE|MEM~101_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~504_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~133_regout\,
	datac => \REGFILE|MEM~101_regout\,
	datad => \REGFILE|MEM~504_combout\,
	combout => \REGFILE|MEM~505_combout\);

-- Location: LCCOMB_X46_Y10_N4
\REGFILE|MEM~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~506_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~503_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~505_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~503_combout\,
	datac => \REGFILE|MEM~505_combout\,
	combout => \REGFILE|MEM~506_combout\);

-- Location: LCCOMB_X44_Y9_N20
\REGFILE|MEM~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~507_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~228_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~164_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~228_regout\,
	datac => \REGFILE|MEM~164_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~507_combout\);

-- Location: LCCOMB_X42_Y10_N30
\REGFILE|MEM~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~508_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~507_combout\ & ((\REGFILE|MEM~260_regout\))) # (!\REGFILE|MEM~507_combout\ & (\REGFILE|MEM~196_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~196_regout\,
	datac => \REGFILE|MEM~507_combout\,
	datad => \REGFILE|MEM~260_regout\,
	combout => \REGFILE|MEM~508_combout\);

-- Location: LCCOMB_X39_Y14_N0
\REGFILE|MEM~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~509_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22)) # (!\REGFILE|MEM~68_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~36_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~36_regout\,
	datac => \REGFILE|MEM~68_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~509_combout\);

-- Location: LCCOMB_X39_Y14_N22
\REGFILE|MEM~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~510_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~509_combout\ & (!\REGFILE|MEM~132_regout\)) # (!\REGFILE|MEM~509_combout\ & ((!\REGFILE|MEM~100_regout\))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~509_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~509_combout\,
	datac => \REGFILE|MEM~132_regout\,
	datad => \REGFILE|MEM~100_regout\,
	combout => \REGFILE|MEM~510_combout\);

-- Location: LCCOMB_X44_Y15_N16
\REGFILE|MEM~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~511_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~508_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~510_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~508_combout\,
	datad => \REGFILE|MEM~510_combout\,
	combout => \REGFILE|MEM~511_combout\);

-- Location: LCCOMB_X44_Y9_N12
\REGFILE|MEM~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~512_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~259_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~195_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~195_regout\,
	datac => \REGFILE|MEM~259_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~512_combout\);

-- Location: LCCOMB_X45_Y9_N24
\REGFILE|MEM~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~513_combout\ = (\REGFILE|MEM~512_combout\ & ((\REGFILE|MEM~291_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~512_combout\ & (((\REGFILE|MEM~227_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~512_combout\,
	datab => \REGFILE|MEM~291_regout\,
	datac => \REGFILE|MEM~227_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~513_combout\);

-- Location: LCCOMB_X39_Y12_N30
\REGFILE|MEM~514\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~514_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~99_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~67_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~99_regout\,
	datad => \REGFILE|MEM~67_regout\,
	combout => \REGFILE|MEM~514_combout\);

-- Location: LCCOMB_X42_Y13_N26
\REGFILE|MEM~515\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~515_combout\ = (\REGFILE|MEM~514_combout\ & (((\REGFILE|MEM~163_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~514_combout\ & (\REGFILE|MEM~131_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~131_regout\,
	datab => \REGFILE|MEM~514_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~163_regout\,
	combout => \REGFILE|MEM~515_combout\);

-- Location: LCCOMB_X49_Y13_N24
\REGFILE|MEM~516\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~516_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~513_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~515_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~513_combout\,
	datac => \REGFILE|MEM~515_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~516_combout\);

-- Location: LCCOMB_X44_Y9_N18
\REGFILE|MEM~522\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~522_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~257_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~193_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~193_regout\,
	datac => \REGFILE|MEM~257_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~522_combout\);

-- Location: LCCOMB_X46_Y9_N8
\REGFILE|MEM~523\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~523_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~522_combout\ & ((\REGFILE|MEM~289_regout\))) # (!\REGFILE|MEM~522_combout\ & (\REGFILE|MEM~225_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~522_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~225_regout\,
	datac => \REGFILE|MEM~289_regout\,
	datad => \REGFILE|MEM~522_combout\,
	combout => \REGFILE|MEM~523_combout\);

-- Location: LCCOMB_X38_Y14_N10
\REGFILE|MEM~524\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~524_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~97_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~65_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~65_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~97_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~524_combout\);

-- Location: LCCOMB_X38_Y13_N18
\REGFILE|MEM~525\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~525_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~524_combout\ & ((\REGFILE|MEM~161_regout\))) # (!\REGFILE|MEM~524_combout\ & (\REGFILE|MEM~129_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~524_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~129_regout\,
	datac => \REGFILE|MEM~524_combout\,
	datad => \REGFILE|MEM~161_regout\,
	combout => \REGFILE|MEM~525_combout\);

-- Location: LCCOMB_X46_Y9_N12
\REGFILE|MEM~526\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~526_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~523_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~525_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~525_combout\,
	datab => \REGFILE|MEM~523_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~526_combout\);

-- Location: LCCOMB_X45_Y9_N14
\REGFILE|MEM~527\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~527_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~256_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~192_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~256_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~192_regout\,
	combout => \REGFILE|MEM~527_combout\);

-- Location: LCCOMB_X46_Y9_N4
\REGFILE|MEM~528\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~528_combout\ = (\REGFILE|MEM~527_combout\ & (((\REGFILE|MEM~288_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~527_combout\ & (\REGFILE|MEM~224_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~527_combout\,
	datab => \REGFILE|MEM~224_regout\,
	datac => \REGFILE|MEM~288_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~528_combout\);

-- Location: LCCOMB_X40_Y12_N14
\REGFILE|MEM~534\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~534_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~95_regout\) # ((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (((!\INSTREG|jump_out\(22) & \REGFILE|MEM~63_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~95_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~63_regout\,
	combout => \REGFILE|MEM~534_combout\);

-- Location: LCCOMB_X38_Y11_N12
\REGFILE|MEM~549\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~549_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~92_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~60_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~92_regout\,
	datad => \REGFILE|MEM~60_regout\,
	combout => \REGFILE|MEM~549_combout\);

-- Location: LCCOMB_X39_Y11_N18
\REGFILE|MEM~552\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~552_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~251_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~187_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~251_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~187_regout\,
	combout => \REGFILE|MEM~552_combout\);

-- Location: LCCOMB_X46_Y9_N30
\REGFILE|MEM~553\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~553_combout\ = (\REGFILE|MEM~552_combout\ & (((\REGFILE|MEM~283_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~552_combout\ & (\REGFILE|MEM~219_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~219_regout\,
	datab => \REGFILE|MEM~552_combout\,
	datac => \REGFILE|MEM~283_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~553_combout\);

-- Location: LCCOMB_X40_Y12_N22
\REGFILE|MEM~559\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~559_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~90_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~58_regout\,
	datab => \REGFILE|MEM~90_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~559_combout\);

-- Location: LCCOMB_X45_Y15_N22
\REGFILE|MEM~560\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~560_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~559_combout\ & ((\REGFILE|MEM~154_regout\))) # (!\REGFILE|MEM~559_combout\ & (\REGFILE|MEM~122_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~122_regout\,
	datac => \REGFILE|MEM~559_combout\,
	datad => \REGFILE|MEM~154_regout\,
	combout => \REGFILE|MEM~560_combout\);

-- Location: LCCOMB_X38_Y14_N26
\REGFILE|MEM~564\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~564_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~89_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~57_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~57_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~89_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~564_combout\);

-- Location: LCCOMB_X38_Y14_N2
\REGFILE|MEM~569\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~569_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~88_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~56_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~56_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~88_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~569_combout\);

-- Location: LCCOMB_X38_Y11_N20
\REGFILE|MEM~570\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~570_combout\ = (\REGFILE|MEM~569_combout\ & ((\REGFILE|MEM~152_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~569_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~120_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~152_regout\,
	datab => \REGFILE|MEM~569_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~120_regout\,
	combout => \REGFILE|MEM~570_combout\);

-- Location: LCCOMB_X40_Y14_N28
\REGFILE|MEM~577\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~577_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~246_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~182_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~182_regout\,
	datad => \REGFILE|MEM~246_regout\,
	combout => \REGFILE|MEM~577_combout\);

-- Location: LCCOMB_X40_Y11_N16
\REGFILE|MEM~578\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~578_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~577_combout\ & (\REGFILE|MEM~278_regout\)) # (!\REGFILE|MEM~577_combout\ & ((\REGFILE|MEM~214_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~577_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~577_combout\,
	datac => \REGFILE|MEM~278_regout\,
	datad => \REGFILE|MEM~214_regout\,
	combout => \REGFILE|MEM~578_combout\);

-- Location: LCCOMB_X38_Y14_N6
\REGFILE|MEM~579\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~579_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~86_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~54_regout\,
	datac => \REGFILE|MEM~86_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~579_combout\);

-- Location: LCCOMB_X39_Y12_N28
\REGFILE|MEM~580\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~580_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~579_combout\ & ((\REGFILE|MEM~150_regout\))) # (!\REGFILE|MEM~579_combout\ & (\REGFILE|MEM~118_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~579_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~118_regout\,
	datab => \REGFILE|MEM~150_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~579_combout\,
	combout => \REGFILE|MEM~580_combout\);

-- Location: LCCOMB_X46_Y10_N6
\REGFILE|MEM~581\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~581_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~578_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~580_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~580_combout\,
	datad => \REGFILE|MEM~578_combout\,
	combout => \REGFILE|MEM~581_combout\);

-- Location: LCCOMB_X47_Y10_N20
\REGFILE|MEM~584\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~584_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~85_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~53_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~85_regout\,
	datad => \REGFILE|MEM~53_regout\,
	combout => \REGFILE|MEM~584_combout\);

-- Location: LCCOMB_X38_Y14_N18
\REGFILE|MEM~589\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~589_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~84_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~52_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~84_regout\,
	datad => \REGFILE|MEM~52_regout\,
	combout => \REGFILE|MEM~589_combout\);

-- Location: LCCOMB_X40_Y14_N10
\REGFILE|MEM~590\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~590_combout\ = (\REGFILE|MEM~589_combout\ & (((\REGFILE|MEM~148_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~589_combout\ & (\REGFILE|MEM~116_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~589_combout\,
	datab => \REGFILE|MEM~116_regout\,
	datac => \REGFILE|MEM~148_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~590_combout\);

-- Location: LCCOMB_X48_Y11_N12
\REGFILE|MEM~592\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~592_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~243_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~179_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~243_regout\,
	datab => \REGFILE|MEM~179_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~592_combout\);

-- Location: LCCOMB_X40_Y11_N14
\REGFILE|MEM~593\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~593_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~592_combout\ & ((\REGFILE|MEM~275_regout\))) # (!\REGFILE|MEM~592_combout\ & (\REGFILE|MEM~211_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~211_regout\,
	datac => \REGFILE|MEM~275_regout\,
	datad => \REGFILE|MEM~592_combout\,
	combout => \REGFILE|MEM~593_combout\);

-- Location: LCCOMB_X48_Y10_N10
\REGFILE|MEM~594\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~594_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~83_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~51_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~51_regout\,
	datab => \REGFILE|MEM~83_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~594_combout\);

-- Location: LCCOMB_X48_Y10_N28
\REGFILE|MEM~595\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~595_combout\ = (\REGFILE|MEM~594_combout\ & (((\REGFILE|MEM~147_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~594_combout\ & (\REGFILE|MEM~115_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~594_combout\,
	datab => \REGFILE|MEM~115_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~147_regout\,
	combout => \REGFILE|MEM~595_combout\);

-- Location: LCCOMB_X46_Y10_N12
\REGFILE|MEM~596\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~596_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~593_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~595_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~595_combout\,
	datad => \REGFILE|MEM~593_combout\,
	combout => \REGFILE|MEM~596_combout\);

-- Location: LCCOMB_X49_Y11_N12
\REGFILE|MEM~597\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~597_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~242_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~178_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~242_regout\,
	datad => \REGFILE|MEM~178_regout\,
	combout => \REGFILE|MEM~597_combout\);

-- Location: LCCOMB_X49_Y13_N0
\REGFILE|MEM~602\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~602_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~241_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~177_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~177_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~241_regout\,
	combout => \REGFILE|MEM~602_combout\);

-- Location: LCCOMB_X49_Y13_N26
\REGFILE|MEM~603\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~603_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~602_combout\ & (\REGFILE|MEM~273_regout\)) # (!\REGFILE|MEM~602_combout\ & ((\REGFILE|MEM~209_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~273_regout\,
	datab => \REGFILE|MEM~209_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~602_combout\,
	combout => \REGFILE|MEM~603_combout\);

-- Location: LCCOMB_X48_Y9_N28
\REGFILE|MEM~604\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~604_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~81_regout\) # ((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (((!\INSTREG|jump_out\(22) & \REGFILE|MEM~49_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~81_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~49_regout\,
	combout => \REGFILE|MEM~604_combout\);

-- Location: LCCOMB_X48_Y13_N16
\REGFILE|MEM~605\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~605_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~604_combout\ & (\REGFILE|MEM~145_regout\)) # (!\REGFILE|MEM~604_combout\ & ((\REGFILE|MEM~113_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~145_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~604_combout\,
	datad => \REGFILE|MEM~113_regout\,
	combout => \REGFILE|MEM~605_combout\);

-- Location: LCCOMB_X47_Y11_N14
\REGFILE|MEM~606\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~606_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~603_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~605_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~603_combout\,
	datab => \REGFILE|MEM~605_combout\,
	datac => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~606_combout\);

-- Location: LCCOMB_X49_Y11_N4
\REGFILE|MEM~607\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~607_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~240_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~176_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~240_regout\,
	datad => \REGFILE|MEM~176_regout\,
	combout => \REGFILE|MEM~607_combout\);

-- Location: LCCOMB_X45_Y9_N30
\REGFILE|MEM~608\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~608_combout\ = (\REGFILE|MEM~607_combout\ & (((\REGFILE|MEM~272_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~607_combout\ & (\REGFILE|MEM~208_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~607_combout\,
	datab => \REGFILE|MEM~208_regout\,
	datac => \REGFILE|MEM~272_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~608_combout\);

-- Location: LCCOMB_X48_Y9_N30
\REGFILE|MEM~609\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~609_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~80_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~48_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~48_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~80_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~609_combout\);

-- Location: LCCOMB_X48_Y10_N30
\REGFILE|MEM~610\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~610_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~609_combout\ & (\REGFILE|MEM~144_regout\)) # (!\REGFILE|MEM~609_combout\ & ((\REGFILE|MEM~112_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~609_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~144_regout\,
	datab => \REGFILE|MEM~112_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~609_combout\,
	combout => \REGFILE|MEM~610_combout\);

-- Location: LCCOMB_X46_Y10_N16
\REGFILE|MEM~611\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~611_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~608_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~610_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~608_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~610_combout\,
	combout => \REGFILE|MEM~611_combout\);

-- Location: LCCOMB_X49_Y11_N22
\REGFILE|MEM~612\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~612_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21)) # (\REGFILE|MEM~239_regout\)))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~175_regout\ & (!\INSTREG|jump_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~175_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~239_regout\,
	combout => \REGFILE|MEM~612_combout\);

-- Location: LCCOMB_X46_Y15_N14
\REGFILE|MEM~613\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~613_combout\ = (\REGFILE|MEM~612_combout\ & ((\REGFILE|MEM~271_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~612_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~207_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~271_regout\,
	datab => \REGFILE|MEM~612_combout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~207_regout\,
	combout => \REGFILE|MEM~613_combout\);

-- Location: LCCOMB_X48_Y9_N24
\REGFILE|MEM~614\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~614_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22)) # (\REGFILE|MEM~79_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~47_regout\ & (!\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~47_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~79_regout\,
	combout => \REGFILE|MEM~614_combout\);

-- Location: LCCOMB_X45_Y9_N20
\REGFILE|MEM~615\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~615_combout\ = (\REGFILE|MEM~614_combout\ & (((\REGFILE|MEM~143_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~614_combout\ & (\REGFILE|MEM~111_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~111_regout\,
	datab => \REGFILE|MEM~614_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~143_regout\,
	combout => \REGFILE|MEM~615_combout\);

-- Location: LCCOMB_X46_Y10_N20
\REGFILE|MEM~616\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~616_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~613_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~615_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~615_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~613_combout\,
	combout => \REGFILE|MEM~616_combout\);

-- Location: LCCOMB_X49_Y13_N4
\REGFILE|MEM~617\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~617_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~238_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~174_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~174_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~238_regout\,
	combout => \REGFILE|MEM~617_combout\);

-- Location: LCFF_X42_Y9_N13
\MDR|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(5));

-- Location: LCFF_X42_Y9_N25
\MDR|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(7));

-- Location: LCFF_X42_Y9_N17
\MDR|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(13));

-- Location: LCFF_X42_Y9_N27
\MDR|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(14));

-- Location: LCFF_X43_Y9_N7
\MDR|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(19));

-- Location: LCFF_X42_Y9_N3
\MDR|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(20));

-- Location: LCFF_X43_Y9_N3
\MDR|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(21));

-- Location: LCFF_X43_Y9_N13
\MDR|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(23));

-- Location: LCFF_X42_Y9_N5
\MDR|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(25));

-- Location: LCFF_X43_Y9_N23
\MDR|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(26));

-- Location: LCFF_X40_Y9_N19
\MDR|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(29));

-- Location: LCFF_X44_Y14_N21
\MDR|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux28~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(3));

-- Location: LCFF_X44_Y14_N5
\MDR|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux29~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(2));

-- Location: LCCOMB_X44_Y14_N10
\ADDRDEC|addressSel[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|addressSel[0]~1_combout\ = (\ADDRDEC|Equal0~32_combout\ & ((\rst~combout\) # (!\CONTROLU|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \ADDRDEC|Equal0~32_combout\,
	combout => \ADDRDEC|addressSel[0]~1_combout\);

-- Location: LCCOMB_X44_Y14_N6
\MUXREAD|Mux31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~14_combout\ = (!\ADDRDEC|addressSel[0]~1_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\ & ((\MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\ADDRDEC|addressSel[1]~0_combout\ & (\MUXREAD|Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux31~15_combout\,
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \ADDRDEC|addressSel[0]~1_combout\,
	combout => \MUXREAD|Mux31~14_combout\);

-- Location: LCCOMB_X42_Y9_N12
\MUXREAD|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux26~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a5\,
	combout => \MUXREAD|Mux26~0_combout\);

-- Location: LCCOMB_X42_Y9_N24
\MUXREAD|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux24~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a7\,
	combout => \MUXREAD|Mux24~0_combout\);

-- Location: LCCOMB_X42_Y9_N16
\MUXREAD|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux18~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a13\,
	combout => \MUXREAD|Mux18~0_combout\);

-- Location: LCCOMB_X42_Y9_N26
\MUXREAD|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux17~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a14\,
	combout => \MUXREAD|Mux17~0_combout\);

-- Location: LCCOMB_X43_Y9_N6
\MUXREAD|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux12~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a19\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a19\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux12~0_combout\);

-- Location: LCCOMB_X42_Y9_N2
\MUXREAD|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux11~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a20\,
	combout => \MUXREAD|Mux11~0_combout\);

-- Location: LCCOMB_X43_Y9_N2
\MUXREAD|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux10~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a21\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux10~0_combout\);

-- Location: LCCOMB_X43_Y9_N12
\MUXREAD|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux8~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a23\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux8~0_combout\);

-- Location: LCCOMB_X42_Y9_N4
\MUXREAD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux6~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a25\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a25\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y9_N22
\MUXREAD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux5~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a26\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y9_N18
\MUXREAD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux2~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a29\,
	combout => \MUXREAD|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y14_N20
\MUXREAD|Mux28~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~19_combout\ = (!\ADDRDEC|addressSel[0]~1_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a3\)) # (!\ADDRDEC|addressSel[1]~0_combout\ & ((\MUXREAD|Mux28~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a3\,
	datab => \MUXREAD|Mux28~20_combout\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \ADDRDEC|addressSel[0]~1_combout\,
	combout => \MUXREAD|Mux28~19_combout\);

-- Location: LCCOMB_X44_Y14_N4
\MUXREAD|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~13_combout\ = (!\ADDRDEC|addressSel[0]~1_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\ & ((\MEM|MEM_rtl_0|auto_generated|ram_block1a2\))) # (!\ADDRDEC|addressSel[1]~0_combout\ & (\MUXREAD|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux29~14_combout\,
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a2\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \ADDRDEC|addressSel[0]~1_combout\,
	combout => \MUXREAD|Mux29~13_combout\);

-- Location: LCCOMB_X38_Y10_N0
\MUXREAD|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~6_combout\ = (\key~combout\(6) & (!\key~combout\(4) & (!\key~combout\(3) & !\key~combout\(5)))) # (!\key~combout\(6) & ((\key~combout\(4) & (!\key~combout\(3) & !\key~combout\(5))) # (!\key~combout\(4) & (\key~combout\(3) $ 
-- (\key~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(4),
	datac => \key~combout\(3),
	datad => \key~combout\(5),
	combout => \MUXREAD|Mux29~6_combout\);

-- Location: LCCOMB_X38_Y10_N14
\MUXREAD|Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~14_combout\ = (\MUXREAD|Mux29~3_combout\ & (!\key~combout\(2) & (!\key~combout\(0) & !\key~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux29~3_combout\,
	datab => \key~combout\(2),
	datac => \key~combout\(0),
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux29~14_combout\);

-- Location: LCCOMB_X38_Y10_N24
\MUXREAD|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~3_combout\ = (!\key~combout\(8) & (!\key~combout\(7) & \MUXREAD|Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(8),
	datac => \key~combout\(7),
	datad => \MUXREAD|Mux29~6_combout\,
	combout => \MUXREAD|Mux29~3_combout\);

-- Location: LCCOMB_X38_Y10_N18
\MUXREAD|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~6_combout\ = (\key~combout\(6) & (!\key~combout\(0) & (!\key~combout\(4) & !\key~combout\(8)))) # (!\key~combout\(6) & ((\key~combout\(0) & (!\key~combout\(4) & !\key~combout\(8))) # (!\key~combout\(0) & (\key~combout\(4) $ 
-- (\key~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(0),
	datac => \key~combout\(4),
	datad => \key~combout\(8),
	combout => \MUXREAD|Mux31~6_combout\);

-- Location: LCCOMB_X38_Y10_N8
\MUXREAD|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~7_combout\ = (!\key~combout\(6) & (!\key~combout\(0) & (!\key~combout\(4) & !\key~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(0),
	datac => \key~combout\(4),
	datad => \key~combout\(8),
	combout => \MUXREAD|Mux31~7_combout\);

-- Location: LCCOMB_X38_Y10_N22
\MUXREAD|Mux31~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~15_combout\ = (\MUXREAD|Mux31~3_combout\ & (!\key~combout\(5) & (!\key~combout\(3) & !\key~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux31~3_combout\,
	datab => \key~combout\(5),
	datac => \key~combout\(3),
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux31~15_combout\);

-- Location: LCCOMB_X38_Y10_N20
\MUXREAD|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~3_combout\ = (!\key~combout\(7) & ((\key~combout\(2) & (\MUXREAD|Mux31~7_combout\)) # (!\key~combout\(2) & ((\MUXREAD|Mux31~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(2),
	datac => \MUXREAD|Mux31~7_combout\,
	datad => \MUXREAD|Mux31~6_combout\,
	combout => \MUXREAD|Mux31~3_combout\);

-- Location: LCCOMB_X38_Y10_N10
\MUXREAD|Mux28~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~20_combout\ = (!\key~combout\(3) & (\MUXREAD|Mux28~3_combout\ & (!\key~combout\(4) & !\key~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \MUXREAD|Mux28~3_combout\,
	datac => \key~combout\(4),
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux28~20_combout\);

-- Location: LCCOMB_X38_Y10_N28
\MUXREAD|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~3_combout\ = (!\key~combout\(6) & (!\key~combout\(5) & (!\key~combout\(0) & \MUXREAD|Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(5),
	datac => \key~combout\(0),
	datad => \MUXREAD|Mux28~6_combout\,
	combout => \MUXREAD|Mux28~3_combout\);

-- Location: LCCOMB_X38_Y10_N2
\MUXREAD|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~6_combout\ = (!\key~combout\(2) & (\key~combout\(8) $ (\key~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(8),
	datab => \key~combout\(2),
	datac => \key~combout\(7),
	combout => \MUXREAD|Mux28~6_combout\);

-- Location: LCCOMB_X39_Y14_N16
\REGFILE|MEM~623\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~623_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~623_combout\);

-- Location: LCCOMB_X47_Y10_N10
\REGFILE|MEM~625\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~625_combout\ = !\MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~625_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(3),
	combout => \key~combout\(3));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(8),
	combout => \key~combout\(8));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(6),
	combout => \key~combout\(6));

-- Location: LCCOMB_X42_Y13_N6
\PROGCOUNT|addr_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~feeder_combout\ = \PROGCOUNT|addr_out[29]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[29]~25_combout\,
	combout => \PROGCOUNT|addr_out[29]~feeder_combout\);

-- Location: LCCOMB_X46_Y13_N22
\INSTREG|jump_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[20]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a20\,
	combout => \INSTREG|jump_out[20]~feeder_combout\);

-- Location: LCCOMB_X45_Y10_N18
\REG7SEG|dt_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[11]~feeder_combout\ = \regB|dt_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(11),
	combout => \REG7SEG|dt_out[11]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N20
\REG7SEG|dt_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[12]~feeder_combout\ = \regB|dt_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(12),
	combout => \REG7SEG|dt_out[12]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N12
\REG7SEG|dt_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[18]~feeder_combout\ = \regB|dt_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(18),
	combout => \REG7SEG|dt_out[18]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N12
\REGFILE|MEM~260feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~260feeder_combout\ = \MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~260feeder_combout\);

-- Location: LCCOMB_X48_Y13_N26
\REGFILE|MEM~200feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~200feeder_combout\ = \MUXMemReg|salida[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[4]~1_combout\,
	combout => \REGFILE|MEM~200feeder_combout\);

-- Location: LCCOMB_X48_Y13_N20
\REGFILE|MEM~204feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~204feeder_combout\ = \MUXMemReg|salida[8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[8]~5_combout\,
	combout => \REGFILE|MEM~204feeder_combout\);

-- Location: LCCOMB_X49_Y13_N28
\REGFILE|MEM~108feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~108feeder_combout\ = \MUXMemReg|salida[8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[8]~5_combout\,
	combout => \REGFILE|MEM~108feeder_combout\);

-- Location: LCCOMB_X49_Y9_N26
\REGFILE|MEM~44feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~44feeder_combout\ = \MUXMemReg|salida[8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[8]~5_combout\,
	combout => \REGFILE|MEM~44feeder_combout\);

-- Location: LCCOMB_X45_Y9_N28
\REGFILE|MEM~238feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~238feeder_combout\ = \MUXMemReg|salida[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[10]~7_combout\,
	combout => \REGFILE|MEM~238feeder_combout\);

-- Location: LCCOMB_X49_Y11_N8
\REGFILE|MEM~175feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~175feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~175feeder_combout\);

-- Location: LCCOMB_X49_Y11_N18
\REGFILE|MEM~239feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~239feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~239feeder_combout\);

-- Location: LCCOMB_X49_Y9_N4
\REGFILE|MEM~48feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~48feeder_combout\ = \MUXMemReg|salida[12]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[12]~9_combout\,
	combout => \REGFILE|MEM~48feeder_combout\);

-- Location: LCCOMB_X49_Y11_N0
\REGFILE|MEM~241feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~241feeder_combout\ = \MUXMemReg|salida[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[13]~10_combout\,
	combout => \REGFILE|MEM~241feeder_combout\);

-- Location: LCCOMB_X49_Y9_N18
\REGFILE|MEM~49feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~49feeder_combout\ = \MUXMemReg|salida[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[13]~10_combout\,
	combout => \REGFILE|MEM~49feeder_combout\);

-- Location: LCCOMB_X49_Y11_N30
\REGFILE|MEM~179feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~179feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~179feeder_combout\);

-- Location: LCCOMB_X49_Y11_N16
\REGFILE|MEM~243feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~243feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~243feeder_combout\);

-- Location: LCCOMB_X47_Y9_N18
\REGFILE|MEM~51feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~51feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~51feeder_combout\);

-- Location: LCCOMB_X49_Y15_N16
\REGFILE|MEM~246feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~246feeder_combout\ = \MUXMemReg|salida[18]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[18]~15_combout\,
	combout => \REGFILE|MEM~246feeder_combout\);

-- Location: LCCOMB_X39_Y11_N24
\REGFILE|MEM~247feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~247feeder_combout\ = \MUXMemReg|salida[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[19]~16_combout\,
	combout => \REGFILE|MEM~247feeder_combout\);

-- Location: LCCOMB_X49_Y8_N8
\REGFILE|MEM~282feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~282feeder_combout\ = \MUXMemReg|salida[22]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[22]~19_combout\,
	combout => \REGFILE|MEM~282feeder_combout\);

-- Location: LCCOMB_X47_Y10_N28
\REGFILE|MEM~90feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~90feeder_combout\ = \MUXMemReg|salida[22]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[22]~19_combout\,
	combout => \REGFILE|MEM~90feeder_combout\);

-- Location: LCCOMB_X47_Y10_N2
\REGFILE|MEM~154feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~154feeder_combout\ = \MUXMemReg|salida[22]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[22]~19_combout\,
	combout => \REGFILE|MEM~154feeder_combout\);

-- Location: LCCOMB_X46_Y9_N16
\REGFILE|MEM~285feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~285feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~285feeder_combout\);

-- Location: LCCOMB_X40_Y9_N24
\REGFILE|MEM~223feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~223feeder_combout\ = \MUXMemReg|salida[27]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[27]~24_combout\,
	combout => \REGFILE|MEM~223feeder_combout\);

-- Location: LCCOMB_X46_Y9_N24
\REGFILE|MEM~227feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~227feeder_combout\ = \MUXMemReg|salida[31]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[31]~28_combout\,
	combout => \REGFILE|MEM~227feeder_combout\);

-- Location: LCCOMB_X39_Y12_N14
\REGFILE|MEM~99feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~99feeder_combout\ = \MUXMemReg|salida[31]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[31]~28_combout\,
	combout => \REGFILE|MEM~99feeder_combout\);

-- Location: LCCOMB_X48_Y13_N24
\REGFILE|MEM~198feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~198feeder_combout\ = \MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~198feeder_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X49_Y14_N0
\CONTROLU|NextSt[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~20_combout\ = (!\NEWST|CS\(0) & (\NEWST|CS\(1) & (\NEWST|CS\(3) $ (\NEWST|CS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|NextSt[0]~20_combout\);

-- Location: LCCOMB_X47_Y14_N28
\NEWST|CS[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NEWST|CS[0]~0_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (\NEWST|CS\(0) $ (\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \NEWST|CS[0]~0_combout\);

-- Location: LCCOMB_X48_Y14_N16
\CONTROLU|nxt_st[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~6_combout\ = (!\rst~combout\ & (\NEWST|CS[0]~0_combout\ & !\CONTROLU|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS[0]~0_combout\,
	datad => \CONTROLU|Equal0~1_combout\,
	combout => \CONTROLU|nxt_st[1]~6_combout\);

-- Location: CLKCTRL_G7
\CONTROLU|nxt_st[1]~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|nxt_st[1]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|nxt_st[1]~6clkctrl_outclk\);

-- Location: LCCOMB_X49_Y14_N30
\CONTROLU|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~8_combout\ = (\NEWST|CS\(0) & (\NEWST|CS\(1) & (!\NEWST|CS\(3) & !\NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y14_N16
\CONTROLU|MemRd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemRd~0_combout\ = (!\rst~combout\ & ((\CONTROLU|Equal0~8_combout\) # (\CONTROLU|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~8_combout\,
	datad => \CONTROLU|Equal0~1_combout\,
	combout => \CONTROLU|MemRd~0_combout\);

-- Location: LCCOMB_X49_Y14_N28
\CONTROLU|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~6_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(1) & (\NEWST|CS\(3) & !\NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~6_combout\);

-- Location: LCCOMB_X49_Y14_N6
\CONTROLU|PCsrc[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCsrc[1]~0_combout\ = (!\rst~combout\ & (!\CONTROLU|Equal0~1_combout\ & \CONTROLU|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~1_combout\,
	datad => \CONTROLU|Equal0~6_combout\,
	combout => \CONTROLU|PCsrc[1]~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X43_Y15_N6
\ALUCONTRL|op[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op[0]~0_combout\ = (!\rst~combout\ & (\CONTROLU|Equal0~3_combout\ & ((\INSTREG|func_out\(0)) # (\INSTREG|func_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(0),
	datab => \rst~combout\,
	datac => \INSTREG|func_out\(3),
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \ALUCONTRL|op[0]~0_combout\);

-- Location: LCCOMB_X49_Y14_N2
\CONTROLU|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~4_combout\ = (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y13_N8
\MUXMemReg|salida[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[3]~29_combout\ = (\rst~combout\ & (((\regALU|dt_out\(3))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(3))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(3),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \regALU|dt_out\(3),
	combout => \MUXMemReg|salida[3]~29_combout\);

-- Location: LCFF_X44_Y13_N15
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCCOMB_X47_Y14_N0
\CONTROLU|ALUsrcA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcA~0_combout\ = (!\NEWST|CS\(0) & ((\NEWST|CS\(3) & (!\NEWST|CS\(2))) # (!\NEWST|CS\(3) & ((\NEWST|CS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|ALUsrcA~0_combout\);

-- Location: LCCOMB_X46_Y14_N6
\CONTROLU|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~5_combout\ = (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & (\NEWST|CS\(3) & !\NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y14_N0
\CONTROLU|ALUop[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUop[0]~0_combout\ = (!\rst~combout\ & \CONTROLU|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \CONTROLU|ALUop[0]~0_combout\);

-- Location: LCCOMB_X47_Y13_N26
\PROGCOUNT|addr_out[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[8]~9_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(8))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(8),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux23~2_combout\,
	combout => \PROGCOUNT|addr_out[8]~9_combout\);

-- Location: LCCOMB_X47_Y14_N20
\MUXB|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~0_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(0) & \NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y14_N22
\MUXB|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~0_combout\ = (!\CONTROLU|Equal0~1_combout\ & (!\rst~combout\ & ((\CONTROLU|Equal0~2_combout\) # (\MUXB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~2_combout\,
	datab => \CONTROLU|Equal0~1_combout\,
	datac => \rst~combout\,
	datad => \MUXB|Mux0~0_combout\,
	combout => \MUXB|Mux16~0_combout\);

-- Location: LCCOMB_X46_Y14_N14
\MUXB|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux20~0_combout\ = (\INSTREG|jump_out\(11) & ((\MUXB|Mux16~0_combout\) # ((\regB|dt_out\(11) & \MUXB|Mux16~1_combout\)))) # (!\INSTREG|jump_out\(11) & (\regB|dt_out\(11) & (\MUXB|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(11),
	datab => \regB|dt_out\(11),
	datac => \MUXB|Mux16~1_combout\,
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux20~0_combout\);

-- Location: LCCOMB_X46_Y14_N8
\ALUCOMP|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~42_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux20~0_combout\,
	combout => \ALUCOMP|Add0~42_combout\);

-- Location: LCCOMB_X47_Y14_N10
\CONTROLU|ALUsrcB[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[0]~1_combout\ = (\CONTROLU|Equal0~1_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \rst~combout\,
	combout => \CONTROLU|ALUsrcB[0]~1_combout\);

-- Location: LCFF_X46_Y14_N17
\INSTREG|jump_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a10\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(10));

-- Location: LCCOMB_X46_Y14_N16
\MUXB|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux21~0_combout\ = (\MUXB|Mux16~1_combout\ & ((\regB|dt_out\(10)) # ((\INSTREG|jump_out\(10) & \MUXB|Mux16~0_combout\)))) # (!\MUXB|Mux16~1_combout\ & (((\INSTREG|jump_out\(10) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~1_combout\,
	datab => \regB|dt_out\(10),
	datac => \INSTREG|jump_out\(10),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux21~0_combout\);

-- Location: LCCOMB_X46_Y13_N14
\MUXB|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux18~0_combout\ = (\regB|dt_out\(13) & ((\MUXB|Mux16~1_combout\) # ((\INSTREG|jump_out\(13) & \MUXB|Mux16~0_combout\)))) # (!\regB|dt_out\(13) & (((\INSTREG|jump_out\(13) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(13),
	datab => \MUXB|Mux16~1_combout\,
	datac => \INSTREG|jump_out\(13),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux18~0_combout\);

-- Location: LCCOMB_X45_Y11_N20
\ALUCOMP|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~1_combout\ = (\MUXA|salida[13]~28_combout\ & ((\MUXB|Mux18~0_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXA|salida[13]~28_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux18~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~28_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXB|Mux18~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux18~1_combout\);

-- Location: LCCOMB_X46_Y13_N8
\ALUCOMP|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~40_combout\ = \MUXB|Mux18~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux18~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~40_combout\);

-- Location: LCFF_X46_Y13_N21
\INSTREG|jump_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a12\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(12));

-- Location: LCCOMB_X46_Y13_N20
\MUXB|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux19~0_combout\ = (\regB|dt_out\(12) & ((\MUXB|Mux16~1_combout\) # ((\INSTREG|jump_out\(12) & \MUXB|Mux16~0_combout\)))) # (!\regB|dt_out\(12) & (((\INSTREG|jump_out\(12) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(12),
	datab => \MUXB|Mux16~1_combout\,
	datac => \INSTREG|jump_out\(12),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux19~0_combout\);

-- Location: LCCOMB_X46_Y13_N30
\ALUCOMP|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~41_combout\ = \MUXB|Mux19~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux19~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~41_combout\);

-- Location: LCCOMB_X45_Y13_N8
\ALUCOMP|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~46_combout\ = ((\MUXA|salida[11]~30_combout\ $ (\ALUCOMP|Add0~42_combout\ $ (!\ALUCOMP|Add0~45\)))) # (GND)
-- \ALUCOMP|Add0~47\ = CARRY((\MUXA|salida[11]~30_combout\ & ((\ALUCOMP|Add0~42_combout\) # (!\ALUCOMP|Add0~45\))) # (!\MUXA|salida[11]~30_combout\ & (\ALUCOMP|Add0~42_combout\ & !\ALUCOMP|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~30_combout\,
	datab => \ALUCOMP|Add0~42_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~45\,
	combout => \ALUCOMP|Add0~46_combout\,
	cout => \ALUCOMP|Add0~47\);

-- Location: LCCOMB_X45_Y13_N10
\ALUCOMP|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~48_combout\ = (\MUXA|salida[12]~29_combout\ & ((\ALUCOMP|Add0~41_combout\ & (\ALUCOMP|Add0~47\ & VCC)) # (!\ALUCOMP|Add0~41_combout\ & (!\ALUCOMP|Add0~47\)))) # (!\MUXA|salida[12]~29_combout\ & ((\ALUCOMP|Add0~41_combout\ & 
-- (!\ALUCOMP|Add0~47\)) # (!\ALUCOMP|Add0~41_combout\ & ((\ALUCOMP|Add0~47\) # (GND)))))
-- \ALUCOMP|Add0~49\ = CARRY((\MUXA|salida[12]~29_combout\ & (!\ALUCOMP|Add0~41_combout\ & !\ALUCOMP|Add0~47\)) # (!\MUXA|salida[12]~29_combout\ & ((!\ALUCOMP|Add0~47\) # (!\ALUCOMP|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~29_combout\,
	datab => \ALUCOMP|Add0~41_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~47\,
	combout => \ALUCOMP|Add0~48_combout\,
	cout => \ALUCOMP|Add0~49\);

-- Location: LCCOMB_X45_Y13_N12
\ALUCOMP|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~50_combout\ = ((\MUXA|salida[13]~28_combout\ $ (\ALUCOMP|Add0~40_combout\ $ (!\ALUCOMP|Add0~49\)))) # (GND)
-- \ALUCOMP|Add0~51\ = CARRY((\MUXA|salida[13]~28_combout\ & ((\ALUCOMP|Add0~40_combout\) # (!\ALUCOMP|Add0~49\))) # (!\MUXA|salida[13]~28_combout\ & (\ALUCOMP|Add0~40_combout\ & !\ALUCOMP|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~28_combout\,
	datab => \ALUCOMP|Add0~40_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~49\,
	combout => \ALUCOMP|Add0~50_combout\,
	cout => \ALUCOMP|Add0~51\);

-- Location: LCCOMB_X44_Y11_N26
\ALUCOMP|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~50_combout\,
	combout => \ALUCOMP|Mux18~0_combout\);

-- Location: LCCOMB_X44_Y11_N16
\ALUCOMP|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux18~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux18~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux18~1_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux18~0_combout\,
	combout => \ALUCOMP|Mux18~2_combout\);

-- Location: LCFF_X44_Y11_N17
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCCOMB_X46_Y15_N22
\MUXMemReg|salida[13]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[13]~10_combout\ = (\rst~combout\ & (((\regALU|dt_out\(13))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(13))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(13),
	datab => \regALU|dt_out\(13),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[13]~10_combout\);

-- Location: LCCOMB_X49_Y14_N20
\CONTROLU|RegWr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegWr~0_combout\ = (\NEWST|CS\(1) & (\NEWST|CS\(0) & (\NEWST|CS\(3) $ (\NEWST|CS\(2))))) # (!\NEWST|CS\(1) & (!\NEWST|CS\(0) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|RegWr~0_combout\);

-- Location: LCCOMB_X49_Y10_N22
\REGFILE|MEM~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~454_combout\ = (!\rst~combout\ & (!\MUXRegDst|salida[0]~0_combout\ & \CONTROLU|RegWr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MUXRegDst|salida[0]~0_combout\,
	datad => \CONTROLU|RegWr~0_combout\,
	combout => \REGFILE|MEM~454_combout\);

-- Location: LCCOMB_X49_Y10_N20
\REGFILE|MEM~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~458_combout\ = (\MUXRegDst|salida[1]~2_combout\ & (\REGFILE|MEM~454_combout\ & !\MUXRegDst|salida[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \REGFILE|MEM~454_combout\,
	datad => \MUXRegDst|salida[2]~1_combout\,
	combout => \REGFILE|MEM~458_combout\);

-- Location: LCFF_X48_Y10_N23
\REGFILE|MEM~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~113_regout\);

-- Location: LCCOMB_X49_Y10_N18
\REGFILE|MEM~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~461_combout\ = (\MUXRegDst|salida[1]~2_combout\ & (!\MUXRegDst|salida[2]~1_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \MUXRegDst|salida[2]~1_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~461_combout\);

-- Location: LCFF_X47_Y10_N25
\REGFILE|MEM~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~145_regout\);

-- Location: LCCOMB_X48_Y10_N22
\REGFILE|MEM~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~345_combout\ = (\REGFILE|MEM~344_combout\ & (((\REGFILE|MEM~145_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~344_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~113_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~344_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~113_regout\,
	datad => \REGFILE|MEM~145_regout\,
	combout => \REGFILE|MEM~345_combout\);

-- Location: LCCOMB_X49_Y11_N14
\REGFILE|MEM~177feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~177feeder_combout\ = \MUXMemReg|salida[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[13]~10_combout\,
	combout => \REGFILE|MEM~177feeder_combout\);

-- Location: LCCOMB_X49_Y10_N2
\REGFILE|MEM~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~456_combout\ = (!\MUXRegDst|salida[1]~2_combout\ & (\REGFILE|MEM~454_combout\ & \MUXRegDst|salida[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \REGFILE|MEM~454_combout\,
	datad => \MUXRegDst|salida[2]~1_combout\,
	combout => \REGFILE|MEM~456_combout\);

-- Location: LCFF_X49_Y11_N15
\REGFILE|MEM~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~177feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~177_regout\);

-- Location: LCCOMB_X49_Y13_N2
\REGFILE|MEM~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~342_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~241_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((!\INSTREG|jump_out\(16) & \REGFILE|MEM~177_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~241_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~177_regout\,
	combout => \REGFILE|MEM~342_combout\);

-- Location: LCFF_X45_Y14_N21
\REGFILE|MEM~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~273_regout\);

-- Location: LCFF_X48_Y13_N29
\REGFILE|MEM~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~209_regout\);

-- Location: LCCOMB_X49_Y13_N12
\REGFILE|MEM~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~343_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~342_combout\ & (\REGFILE|MEM~273_regout\)) # (!\REGFILE|MEM~342_combout\ & ((\REGFILE|MEM~209_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~342_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~342_combout\,
	datac => \REGFILE|MEM~273_regout\,
	datad => \REGFILE|MEM~209_regout\,
	combout => \REGFILE|MEM~343_combout\);

-- Location: LCCOMB_X46_Y13_N26
\REGFILE|MEM~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~346_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~343_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~345_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~345_combout\,
	datad => \REGFILE|MEM~343_combout\,
	combout => \REGFILE|MEM~346_combout\);

-- Location: LCFF_X46_Y13_N27
\regB|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(13));

-- Location: LCCOMB_X49_Y14_N8
\CONTROLU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~0_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y9_N14
\ADDRDEC|addressSel[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|addressSel[1]~0_combout\ = ((!\rst~combout\ & \CONTROLU|Equal0~0_combout\)) # (!\ADDRDEC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \ADDRDEC|Equal1~0_combout\,
	combout => \ADDRDEC|addressSel[1]~0_combout\);

-- Location: LCCOMB_X43_Y9_N20
\MUXREAD|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux15~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a16\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux15~0_combout\);

-- Location: LCFF_X43_Y9_N21
\MDR|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(16));

-- Location: LCCOMB_X43_Y9_N30
\MUXMemReg|salida[16]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[16]~13_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & (\regALU|dt_out\(16))) # (!\rst~combout\ & ((\MDR|dt_out\(16)))))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(16),
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \MDR|dt_out\(16),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[16]~13_combout\);

-- Location: LCCOMB_X49_Y10_N24
\REGFILE|MEM~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~460_combout\ = (!\MUXRegDst|salida[1]~2_combout\ & (\REGFILE|MEM~454_combout\ & !\MUXRegDst|salida[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \REGFILE|MEM~454_combout\,
	datad => \MUXRegDst|salida[2]~1_combout\,
	combout => \REGFILE|MEM~460_combout\);

-- Location: LCFF_X38_Y14_N31
\REGFILE|MEM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~52_regout\);

-- Location: LCCOMB_X49_Y10_N12
\REGFILE|MEM~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~459_combout\ = (!\MUXRegDst|salida[1]~2_combout\ & (!\MUXRegDst|salida[2]~1_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \MUXRegDst|salida[2]~1_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~459_combout\);

-- Location: LCFF_X38_Y14_N5
\REGFILE|MEM~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~84_regout\);

-- Location: LCCOMB_X38_Y14_N28
\REGFILE|MEM~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~359_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~84_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~52_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~52_regout\,
	datac => \REGFILE|MEM~84_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~359_combout\);

-- Location: LCFF_X47_Y10_N31
\REGFILE|MEM~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~148_regout\);

-- Location: LCCOMB_X48_Y10_N20
\REGFILE|MEM~116feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~116feeder_combout\ = \MUXMemReg|salida[16]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[16]~13_combout\,
	combout => \REGFILE|MEM~116feeder_combout\);

-- Location: LCFF_X48_Y10_N21
\REGFILE|MEM~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~116feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~116_regout\);

-- Location: LCCOMB_X40_Y14_N14
\REGFILE|MEM~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~360_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~359_combout\ & (\REGFILE|MEM~148_regout\)) # (!\REGFILE|MEM~359_combout\ & ((\REGFILE|MEM~116_regout\))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~359_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~359_combout\,
	datac => \REGFILE|MEM~148_regout\,
	datad => \REGFILE|MEM~116_regout\,
	combout => \REGFILE|MEM~360_combout\);

-- Location: LCFF_X49_Y11_N3
\REGFILE|MEM~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~180_regout\);

-- Location: LCCOMB_X49_Y11_N2
\REGFILE|MEM~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~357_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~244_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~180_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~244_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~180_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~357_combout\);

-- Location: LCFF_X40_Y11_N19
\REGFILE|MEM~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~212_regout\);

-- Location: LCCOMB_X40_Y11_N18
\REGFILE|MEM~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~358_combout\ = (\REGFILE|MEM~357_combout\ & ((\REGFILE|MEM~276_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~357_combout\ & (((\REGFILE|MEM~212_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~276_regout\,
	datab => \REGFILE|MEM~357_combout\,
	datac => \REGFILE|MEM~212_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~358_combout\);

-- Location: LCCOMB_X40_Y14_N12
\REGFILE|MEM~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~361_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~358_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~360_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~360_combout\,
	datac => \REGFILE|MEM~358_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~361_combout\);

-- Location: LCFF_X44_Y14_N1
\regB|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~361_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(16));

-- Location: LCCOMB_X42_Y9_N0
\MUXREAD|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux14~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a17\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a17\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux14~0_combout\);

-- Location: LCFF_X42_Y9_N1
\MDR|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(17));

-- Location: LCCOMB_X47_Y14_N24
\CONTROLU|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~2_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (\NEWST|CS\(0) & !\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y14_N12
\MUXB|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~1_combout\ = (!\rst~combout\ & ((\CONTROLU|Equal0~2_combout\) # ((\CONTROLU|Equal0~1_combout\) # (\MUXB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~2_combout\,
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \MUXB|Mux0~0_combout\,
	combout => \MUXB|Mux0~1_combout\);

-- Location: LCCOMB_X43_Y15_N30
\ALUCOMP|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~1_combout\ = (\regB|dt_out\(17) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(17),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Mux14~1_combout\);

-- Location: LCCOMB_X43_Y15_N12
\ALUCOMP|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~2_combout\ = (\MUXA|salida[17]~24_combout\ & ((\ALUCOMP|Mux14~1_combout\) # ((!\ALUCOMP|Mux28~3_combout\ & \ALUCONTRL|op[0]~0_combout\)))) # (!\MUXA|salida[17]~24_combout\ & (\ALUCOMP|Mux14~1_combout\ & (!\ALUCOMP|Mux28~3_combout\ & 
-- \ALUCONTRL|op[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~24_combout\,
	datab => \ALUCOMP|Mux14~1_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux14~2_combout\);

-- Location: LCCOMB_X46_Y12_N10
\ALUCOMP|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~36_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(17) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(17),
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~36_combout\);

-- Location: LCCOMB_X43_Y14_N14
\PROGCOUNT|addr_out[18]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[18]~21_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(18))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(18),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux13~2_combout\,
	combout => \PROGCOUNT|addr_out[18]~21_combout\);

-- Location: LCCOMB_X47_Y12_N24
\ALUCOMP|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~74_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux0~1_combout\,
	datac => \ALUCONTRL|op\(2),
	datad => \regB|dt_out\(25),
	combout => \ALUCOMP|Add0~74_combout\);

-- Location: LCCOMB_X43_Y14_N12
\PROGCOUNT|addr_out[19]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[19]~22_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(19))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(19),
	datad => \ALUCOMP|Mux12~3_combout\,
	combout => \PROGCOUNT|addr_out[19]~22_combout\);

-- Location: LCFF_X43_Y14_N13
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[19]~22_combout\,
	sdata => \INSTREG|jump_out\(17),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(19));

-- Location: LCFF_X39_Y10_N11
\REGFILE|MEM~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~151_regout\);

-- Location: LCCOMB_X38_Y14_N14
\REGFILE|MEM~574\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~574_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~87_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~55_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~55_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~87_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~574_combout\);

-- Location: LCCOMB_X38_Y12_N26
\REGFILE|MEM~575\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~575_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~574_combout\ & ((\REGFILE|MEM~151_regout\))) # (!\REGFILE|MEM~574_combout\ & (\REGFILE|MEM~119_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~119_regout\,
	datab => \REGFILE|MEM~151_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~574_combout\,
	combout => \REGFILE|MEM~575_combout\);

-- Location: LCFF_X39_Y10_N25
\REGFILE|MEM~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~183_regout\);

-- Location: LCCOMB_X39_Y11_N4
\REGFILE|MEM~572\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~572_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~247_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~183_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~247_regout\,
	datab => \REGFILE|MEM~183_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~572_combout\);

-- Location: LCFF_X40_Y11_N1
\REGFILE|MEM~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~279_regout\);

-- Location: LCFF_X40_Y11_N27
\REGFILE|MEM~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~215_regout\);

-- Location: LCCOMB_X40_Y11_N0
\REGFILE|MEM~573\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~573_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~572_combout\ & (\REGFILE|MEM~279_regout\)) # (!\REGFILE|MEM~572_combout\ & ((\REGFILE|MEM~215_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~572_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~572_combout\,
	datac => \REGFILE|MEM~279_regout\,
	datad => \REGFILE|MEM~215_regout\,
	combout => \REGFILE|MEM~573_combout\);

-- Location: LCCOMB_X44_Y10_N28
\REGFILE|MEM~576\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~576_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~573_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~575_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~575_combout\,
	datac => \REGFILE|MEM~573_combout\,
	combout => \REGFILE|MEM~576_combout\);

-- Location: LCFF_X44_Y10_N29
\regA|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(19));

-- Location: LCCOMB_X44_Y10_N6
\MUXA|salida[19]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~22_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(19))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(19)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(19),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(19),
	combout => \MUXA|salida[19]~22_combout\);

-- Location: LCCOMB_X45_Y13_N20
\ALUCOMP|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~58_combout\ = ((\MUXA|salida[17]~24_combout\ $ (\ALUCOMP|Add0~36_combout\ $ (!\ALUCOMP|Add0~57\)))) # (GND)
-- \ALUCOMP|Add0~59\ = CARRY((\MUXA|salida[17]~24_combout\ & ((\ALUCOMP|Add0~36_combout\) # (!\ALUCOMP|Add0~57\))) # (!\MUXA|salida[17]~24_combout\ & (\ALUCOMP|Add0~36_combout\ & !\ALUCOMP|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~24_combout\,
	datab => \ALUCOMP|Add0~36_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~57\,
	combout => \ALUCOMP|Add0~58_combout\,
	cout => \ALUCOMP|Add0~59\);

-- Location: LCCOMB_X45_Y13_N22
\ALUCOMP|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~60_combout\ = (\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[18]~23_combout\ & (\ALUCOMP|Add0~59\ & VCC)) # (!\MUXA|salida[18]~23_combout\ & (!\ALUCOMP|Add0~59\)))) # (!\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[18]~23_combout\ & 
-- (!\ALUCOMP|Add0~59\)) # (!\MUXA|salida[18]~23_combout\ & ((\ALUCOMP|Add0~59\) # (GND)))))
-- \ALUCOMP|Add0~61\ = CARRY((\ALUCOMP|Add0~35_combout\ & (!\MUXA|salida[18]~23_combout\ & !\ALUCOMP|Add0~59\)) # (!\ALUCOMP|Add0~35_combout\ & ((!\ALUCOMP|Add0~59\) # (!\MUXA|salida[18]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~35_combout\,
	datab => \MUXA|salida[18]~23_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~59\,
	combout => \ALUCOMP|Add0~60_combout\,
	cout => \ALUCOMP|Add0~61\);

-- Location: LCCOMB_X45_Y13_N24
\ALUCOMP|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~62_combout\ = ((\ALUCOMP|Add0~34_combout\ $ (\MUXA|salida[19]~22_combout\ $ (!\ALUCOMP|Add0~61\)))) # (GND)
-- \ALUCOMP|Add0~63\ = CARRY((\ALUCOMP|Add0~34_combout\ & ((\MUXA|salida[19]~22_combout\) # (!\ALUCOMP|Add0~61\))) # (!\ALUCOMP|Add0~34_combout\ & (\MUXA|salida[19]~22_combout\ & !\ALUCOMP|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~34_combout\,
	datab => \MUXA|salida[19]~22_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~61\,
	combout => \ALUCOMP|Add0~62_combout\,
	cout => \ALUCOMP|Add0~63\);

-- Location: LCCOMB_X44_Y12_N8
\ALUCOMP|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~62_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux12~0_combout\);

-- Location: LCCOMB_X43_Y15_N18
\ALUCOMP|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~1_combout\ = (\regB|dt_out\(19) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(19),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Mux12~1_combout\);

-- Location: LCCOMB_X43_Y15_N20
\ALUCOMP|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~2_combout\ = (\ALUCOMP|Mux12~1_combout\ & ((\MUXA|salida[19]~22_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\ALUCOMP|Mux12~1_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (!\ALUCOMP|Mux28~3_combout\ & 
-- \MUXA|salida[19]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux12~1_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \MUXA|salida[19]~22_combout\,
	combout => \ALUCOMP|Mux12~2_combout\);

-- Location: LCCOMB_X44_Y12_N30
\ALUCOMP|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~3_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux12~2_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux12~0_combout\)) # (!\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Mux12~0_combout\,
	datad => \ALUCOMP|Mux12~2_combout\,
	combout => \ALUCOMP|Mux12~3_combout\);

-- Location: LCFF_X44_Y12_N31
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCCOMB_X43_Y9_N24
\MUXMemReg|salida[19]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[19]~16_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(19)))) # (!\rst~combout\ & (\MDR|dt_out\(19))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(19),
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \rst~combout\,
	datad => \regALU|dt_out\(19),
	combout => \MUXMemReg|salida[19]~16_combout\);

-- Location: LCFF_X38_Y14_N15
\REGFILE|MEM~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~87_regout\);

-- Location: LCFF_X38_Y14_N21
\REGFILE|MEM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~55_regout\);

-- Location: LCCOMB_X38_Y14_N20
\REGFILE|MEM~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~374_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~87_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~55_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~87_regout\,
	datac => \REGFILE|MEM~55_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~374_combout\);

-- Location: LCCOMB_X38_Y12_N10
\REGFILE|MEM~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~375_combout\ = (\REGFILE|MEM~374_combout\ & (((\REGFILE|MEM~151_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~374_combout\ & (\REGFILE|MEM~119_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~119_regout\,
	datab => \REGFILE|MEM~374_combout\,
	datac => \REGFILE|MEM~151_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~375_combout\);

-- Location: LCCOMB_X44_Y10_N14
\REGFILE|MEM~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~376_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~373_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~373_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~375_combout\,
	combout => \REGFILE|MEM~376_combout\);

-- Location: LCFF_X44_Y10_N15
\regB|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(19));

-- Location: LCCOMB_X47_Y13_N18
\PROGCOUNT|addr_out[20]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[20]~23_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(20))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(20),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux11~2_combout\,
	combout => \PROGCOUNT|addr_out[20]~23_combout\);

-- Location: LCFF_X47_Y13_N19
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[20]~23_combout\,
	sdata => \INSTREG|jump_out\(18),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(20));

-- Location: LCFF_X40_Y11_N3
\REGFILE|MEM~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~216_regout\);

-- Location: LCFF_X40_Y11_N5
\REGFILE|MEM~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~280_regout\);

-- Location: LCCOMB_X38_Y11_N8
\REGFILE|MEM~184feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~184feeder_combout\ = \MUXMemReg|salida[20]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[20]~17_combout\,
	combout => \REGFILE|MEM~184feeder_combout\);

-- Location: LCFF_X38_Y11_N9
\REGFILE|MEM~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~184feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~184_regout\);

-- Location: LCCOMB_X39_Y11_N22
\REGFILE|MEM~567\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~567_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~248_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~184_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~248_regout\,
	datad => \REGFILE|MEM~184_regout\,
	combout => \REGFILE|MEM~567_combout\);

-- Location: LCCOMB_X40_Y11_N4
\REGFILE|MEM~568\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~568_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~567_combout\ & ((\REGFILE|MEM~280_regout\))) # (!\REGFILE|MEM~567_combout\ & (\REGFILE|MEM~216_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~216_regout\,
	datac => \REGFILE|MEM~280_regout\,
	datad => \REGFILE|MEM~567_combout\,
	combout => \REGFILE|MEM~568_combout\);

-- Location: LCCOMB_X40_Y11_N30
\REGFILE|MEM~571\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~571_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~568_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~570_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~570_combout\,
	datac => \REGFILE|MEM~568_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~571_combout\);

-- Location: LCFF_X47_Y12_N11
\regA|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~571_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(20));

-- Location: LCCOMB_X47_Y13_N10
\MUXA|salida[20]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~21_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(20))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(20)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(20),
	datac => \regA|dt_out\(20),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[20]~21_combout\);

-- Location: LCCOMB_X46_Y11_N20
\MUXB|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux11~0_combout\ = (\regB|dt_out\(20) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(20),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux11~0_combout\);

-- Location: LCCOMB_X46_Y15_N20
\ALUCOMP|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[20]~21_combout\) # ((\MUXB|Mux11~0_combout\) # (\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[20]~21_combout\ & (\MUXB|Mux11~0_combout\ & 
-- !\ALUCOMP|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[20]~21_combout\,
	datac => \MUXB|Mux11~0_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux11~0_combout\);

-- Location: LCCOMB_X46_Y15_N18
\ALUCOMP|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux11~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux11~0_combout\ & (\ALUCOMP|Add0~64_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (((\ALUCOMP|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~64_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Mux11~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux11~1_combout\);

-- Location: LCCOMB_X46_Y15_N28
\ALUCOMP|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux11~0_combout\)) # (!\MUXA|salida[20]~21_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXA|salida[20]~21_combout\,
	datac => \MUXB|Mux11~0_combout\,
	datad => \ALUCOMP|Mux11~1_combout\,
	combout => \ALUCOMP|Mux11~2_combout\);

-- Location: LCFF_X46_Y15_N29
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCCOMB_X49_Y10_N0
\MUXMemReg|salida[20]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[20]~17_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(20)))) # (!\rst~combout\ & (\MDR|dt_out\(20))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(20),
	datab => \regALU|dt_out\(20),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[20]~17_combout\);

-- Location: LCCOMB_X49_Y10_N8
\REGFILE|MEM~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~455_combout\ = (\MUXRegDst|salida[1]~2_combout\ & (\REGFILE|MEM~454_combout\ & \MUXRegDst|salida[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \REGFILE|MEM~454_combout\,
	datad => \MUXRegDst|salida[2]~1_combout\,
	combout => \REGFILE|MEM~455_combout\);

-- Location: LCFF_X39_Y11_N17
\REGFILE|MEM~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~248_regout\);

-- Location: LCCOMB_X39_Y11_N16
\REGFILE|MEM~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~377_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~248_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~184_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~184_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~248_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~377_combout\);

-- Location: LCCOMB_X40_Y11_N2
\REGFILE|MEM~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~378_combout\ = (\REGFILE|MEM~377_combout\ & ((\REGFILE|MEM~280_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~377_combout\ & (((\REGFILE|MEM~216_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~280_regout\,
	datab => \REGFILE|MEM~377_combout\,
	datac => \REGFILE|MEM~216_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~378_combout\);

-- Location: LCCOMB_X38_Y11_N22
\REGFILE|MEM~120feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~120feeder_combout\ = \MUXMemReg|salida[20]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[20]~17_combout\,
	combout => \REGFILE|MEM~120feeder_combout\);

-- Location: LCFF_X38_Y11_N23
\REGFILE|MEM~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~120feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~120_regout\);

-- Location: LCFF_X49_Y10_N1
\REGFILE|MEM~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[20]~17_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~152_regout\);

-- Location: LCFF_X38_Y14_N3
\REGFILE|MEM~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~88_regout\);

-- Location: LCFF_X38_Y14_N13
\REGFILE|MEM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~56_regout\);

-- Location: LCCOMB_X38_Y14_N12
\REGFILE|MEM~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~379_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~88_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~56_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~88_regout\,
	datac => \REGFILE|MEM~56_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~379_combout\);

-- Location: LCCOMB_X38_Y11_N28
\REGFILE|MEM~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~380_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~379_combout\ & ((\REGFILE|MEM~152_regout\))) # (!\REGFILE|MEM~379_combout\ & (\REGFILE|MEM~120_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~120_regout\,
	datac => \REGFILE|MEM~152_regout\,
	datad => \REGFILE|MEM~379_combout\,
	combout => \REGFILE|MEM~380_combout\);

-- Location: LCCOMB_X38_Y11_N10
\REGFILE|MEM~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~381_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~378_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~378_combout\,
	datad => \REGFILE|MEM~380_combout\,
	combout => \REGFILE|MEM~381_combout\);

-- Location: LCFF_X46_Y11_N31
\regB|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~381_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(20));

-- Location: LCFF_X39_Y10_N1
\REGFILE|MEM~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~185_regout\);

-- Location: LCFF_X39_Y11_N15
\REGFILE|MEM~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~249_regout\);

-- Location: LCCOMB_X39_Y11_N28
\REGFILE|MEM~562\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~562_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~249_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~185_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~185_regout\,
	datac => \REGFILE|MEM~249_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~562_combout\);

-- Location: LCFF_X40_Y11_N29
\REGFILE|MEM~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~281_regout\);

-- Location: LCFF_X40_Y11_N11
\REGFILE|MEM~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~217_regout\);

-- Location: LCCOMB_X40_Y11_N28
\REGFILE|MEM~563\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~563_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~562_combout\ & (\REGFILE|MEM~281_regout\)) # (!\REGFILE|MEM~562_combout\ & ((\REGFILE|MEM~217_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~562_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~562_combout\,
	datac => \REGFILE|MEM~281_regout\,
	datad => \REGFILE|MEM~217_regout\,
	combout => \REGFILE|MEM~563_combout\);

-- Location: LCCOMB_X47_Y10_N14
\REGFILE|MEM~153feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~153feeder_combout\ = \MUXMemReg|salida[21]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[21]~18_combout\,
	combout => \REGFILE|MEM~153feeder_combout\);

-- Location: LCFF_X47_Y10_N15
\REGFILE|MEM~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~153feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~153_regout\);

-- Location: LCCOMB_X45_Y11_N16
\REGFILE|MEM~565\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~565_combout\ = (\REGFILE|MEM~564_combout\ & ((\REGFILE|MEM~153_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~564_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~121_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~564_combout\,
	datab => \REGFILE|MEM~153_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~121_regout\,
	combout => \REGFILE|MEM~565_combout\);

-- Location: LCCOMB_X45_Y11_N14
\REGFILE|MEM~566\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~566_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~563_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~565_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~563_combout\,
	datac => \REGFILE|MEM~565_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~566_combout\);

-- Location: LCFF_X44_Y11_N29
\regA|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~566_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(21));

-- Location: LCCOMB_X44_Y11_N28
\MUXA|salida[21]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~20_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(21))) # (!\rst~combout\ & ((\regA|dt_out\(21)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(21),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(21),
	datad => \rst~combout\,
	combout => \MUXA|salida[21]~20_combout\);

-- Location: LCCOMB_X45_Y11_N8
\ALUCOMP|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~2_combout\ = (\ALUCOMP|Mux10~1_combout\ & ((\MUXA|salida[21]~20_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\ALUCOMP|Mux10~1_combout\ & (\MUXA|salida[21]~20_combout\ & (\ALUCONTRL|op[0]~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux10~1_combout\,
	datab => \MUXA|salida[21]~20_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux10~2_combout\);

-- Location: LCCOMB_X46_Y11_N30
\ALUCOMP|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~33_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(20) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \regB|dt_out\(20),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|Add0~33_combout\);

-- Location: LCCOMB_X45_Y13_N28
\ALUCOMP|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~66_combout\ = ((\ALUCOMP|Add0~32_combout\ $ (\MUXA|salida[21]~20_combout\ $ (!\ALUCOMP|Add0~65\)))) # (GND)
-- \ALUCOMP|Add0~67\ = CARRY((\ALUCOMP|Add0~32_combout\ & ((\MUXA|salida[21]~20_combout\) # (!\ALUCOMP|Add0~65\))) # (!\ALUCOMP|Add0~32_combout\ & (\MUXA|salida[21]~20_combout\ & !\ALUCOMP|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~32_combout\,
	datab => \MUXA|salida[21]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~65\,
	combout => \ALUCOMP|Add0~66_combout\,
	cout => \ALUCOMP|Add0~67\);

-- Location: LCCOMB_X45_Y11_N28
\ALUCOMP|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~66_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux10~0_combout\);

-- Location: LCCOMB_X45_Y11_N0
\ALUCOMP|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~3_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|Mux10~2_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux10~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|Mux10~2_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|Mux10~0_combout\,
	combout => \ALUCOMP|Mux10~3_combout\);

-- Location: LCFF_X45_Y11_N1
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCCOMB_X47_Y10_N6
\MUXMemReg|salida[21]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[21]~18_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(21)))) # (!\rst~combout\ & (\MDR|dt_out\(21))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(21),
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \regALU|dt_out\(21),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[21]~18_combout\);

-- Location: LCFF_X43_Y11_N23
\REGFILE|MEM~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~121_regout\);

-- Location: LCFF_X38_Y14_N27
\REGFILE|MEM~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~89_regout\);

-- Location: LCFF_X38_Y14_N25
\REGFILE|MEM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~57_regout\);

-- Location: LCCOMB_X38_Y14_N24
\REGFILE|MEM~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~384_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~89_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~57_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~89_regout\,
	datac => \REGFILE|MEM~57_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~384_combout\);

-- Location: LCCOMB_X45_Y11_N22
\REGFILE|MEM~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~385_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~384_combout\ & ((\REGFILE|MEM~153_regout\))) # (!\REGFILE|MEM~384_combout\ & (\REGFILE|MEM~121_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~121_regout\,
	datac => \REGFILE|MEM~384_combout\,
	datad => \REGFILE|MEM~153_regout\,
	combout => \REGFILE|MEM~385_combout\);

-- Location: LCCOMB_X40_Y11_N10
\REGFILE|MEM~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~383_combout\ = (\REGFILE|MEM~382_combout\ & ((\REGFILE|MEM~281_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~382_combout\ & (((\REGFILE|MEM~217_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~382_combout\,
	datab => \REGFILE|MEM~281_regout\,
	datac => \REGFILE|MEM~217_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~383_combout\);

-- Location: LCCOMB_X45_Y11_N24
\REGFILE|MEM~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~386_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~383_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~385_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~385_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~383_combout\,
	combout => \REGFILE|MEM~386_combout\);

-- Location: LCFF_X45_Y11_N25
\regB|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(21));

-- Location: LCCOMB_X44_Y15_N8
\MUXB|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux9~0_combout\ = (\regB|dt_out\(22) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(22),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux9~0_combout\);

-- Location: LCFF_X46_Y9_N29
\REGFILE|MEM~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~218_regout\);

-- Location: LCFF_X39_Y11_N1
\REGFILE|MEM~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~250_regout\);

-- Location: LCCOMB_X39_Y12_N22
\REGFILE|MEM~557\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~557_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~250_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~186_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~186_regout\,
	datad => \REGFILE|MEM~250_regout\,
	combout => \REGFILE|MEM~557_combout\);

-- Location: LCCOMB_X46_Y9_N2
\REGFILE|MEM~558\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~558_combout\ = (\REGFILE|MEM~557_combout\ & ((\REGFILE|MEM~282_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~557_combout\ & (((\REGFILE|MEM~218_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~282_regout\,
	datab => \REGFILE|MEM~218_regout\,
	datac => \REGFILE|MEM~557_combout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~558_combout\);

-- Location: LCCOMB_X46_Y13_N6
\REGFILE|MEM~561\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~561_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~558_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~560_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~560_combout\,
	datab => \REGFILE|MEM~558_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~561_combout\);

-- Location: LCFF_X46_Y13_N7
\regA|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(22));

-- Location: LCCOMB_X46_Y13_N24
\MUXA|salida[22]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~19_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(22))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(22)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(22),
	datab => \rst~combout\,
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(22),
	combout => \MUXA|salida[22]~19_combout\);

-- Location: LCCOMB_X44_Y15_N4
\ALUCOMP|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~0_combout\ = (\MUXA|salida[22]~19_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\MUXB|Mux9~0_combout\ & !\ALUCOMP|Mux28~1_combout\)))) # (!\MUXA|salida[22]~19_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux9~0_combout\) # 
-- (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~19_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXB|Mux9~0_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux9~0_combout\);

-- Location: LCCOMB_X45_Y13_N30
\ALUCOMP|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~70_combout\ = (\ALUCOMP|Add0~69_combout\ & ((\MUXA|salida[22]~19_combout\ & (\ALUCOMP|Add0~67\ & VCC)) # (!\MUXA|salida[22]~19_combout\ & (!\ALUCOMP|Add0~67\)))) # (!\ALUCOMP|Add0~69_combout\ & ((\MUXA|salida[22]~19_combout\ & 
-- (!\ALUCOMP|Add0~67\)) # (!\MUXA|salida[22]~19_combout\ & ((\ALUCOMP|Add0~67\) # (GND)))))
-- \ALUCOMP|Add0~71\ = CARRY((\ALUCOMP|Add0~69_combout\ & (!\MUXA|salida[22]~19_combout\ & !\ALUCOMP|Add0~67\)) # (!\ALUCOMP|Add0~69_combout\ & ((!\ALUCOMP|Add0~67\) # (!\MUXA|salida[22]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~69_combout\,
	datab => \MUXA|salida[22]~19_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~67\,
	combout => \ALUCOMP|Add0~70_combout\,
	cout => \ALUCOMP|Add0~71\);

-- Location: LCCOMB_X45_Y15_N2
\ALUCOMP|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux9~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux9~0_combout\ & (\ALUCOMP|Add0~70_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux9~0_combout\,
	datac => \ALUCOMP|Add0~70_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux9~1_combout\);

-- Location: LCCOMB_X45_Y15_N12
\ALUCOMP|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[22]~19_combout\)) # (!\MUXB|Mux9~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXB|Mux9~0_combout\,
	datac => \MUXA|salida[22]~19_combout\,
	datad => \ALUCOMP|Mux9~1_combout\,
	combout => \ALUCOMP|Mux9~2_combout\);

-- Location: LCFF_X45_Y15_N13
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCCOMB_X42_Y9_N8
\MUXREAD|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux9~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a22\,
	combout => \MUXREAD|Mux9~0_combout\);

-- Location: LCFF_X42_Y9_N9
\MDR|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(22));

-- Location: LCCOMB_X45_Y9_N0
\MUXMemReg|salida[22]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[22]~19_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & (\regALU|dt_out\(22))) # (!\rst~combout\ & ((\MDR|dt_out\(22)))))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \regALU|dt_out\(22),
	datac => \rst~combout\,
	datad => \MDR|dt_out\(22),
	combout => \MUXMemReg|salida[22]~19_combout\);

-- Location: LCCOMB_X39_Y10_N6
\REGFILE|MEM~186feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~186feeder_combout\ = \MUXMemReg|salida[22]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[22]~19_combout\,
	combout => \REGFILE|MEM~186feeder_combout\);

-- Location: LCFF_X39_Y10_N7
\REGFILE|MEM~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~186feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~186_regout\);

-- Location: LCCOMB_X39_Y10_N28
\REGFILE|MEM~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~387_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~250_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~186_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~186_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~250_regout\,
	combout => \REGFILE|MEM~387_combout\);

-- Location: LCCOMB_X46_Y9_N26
\REGFILE|MEM~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~388_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~387_combout\ & (\REGFILE|MEM~282_regout\)) # (!\REGFILE|MEM~387_combout\ & ((\REGFILE|MEM~218_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~282_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~387_combout\,
	datad => \REGFILE|MEM~218_regout\,
	combout => \REGFILE|MEM~388_combout\);

-- Location: LCCOMB_X46_Y11_N6
\REGFILE|MEM~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~391_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~388_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~390_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~390_combout\,
	datac => \REGFILE|MEM~388_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~391_combout\);

-- Location: LCFF_X46_Y11_N7
\regB|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(22));

-- Location: LCCOMB_X46_Y12_N14
\ALUCOMP|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~68_combout\ = \ALUCONTRL|op\(2) $ (((\regB|dt_out\(23) & !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(23),
	datac => \MUXB|Mux0~1_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~68_combout\);

-- Location: LCCOMB_X45_Y12_N0
\ALUCOMP|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~72_combout\ = ((\MUXA|salida[23]~18_combout\ $ (\ALUCOMP|Add0~68_combout\ $ (!\ALUCOMP|Add0~71\)))) # (GND)
-- \ALUCOMP|Add0~73\ = CARRY((\MUXA|salida[23]~18_combout\ & ((\ALUCOMP|Add0~68_combout\) # (!\ALUCOMP|Add0~71\))) # (!\MUXA|salida[23]~18_combout\ & (\ALUCOMP|Add0~68_combout\ & !\ALUCOMP|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~18_combout\,
	datab => \ALUCOMP|Add0~68_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~71\,
	combout => \ALUCOMP|Add0~72_combout\,
	cout => \ALUCOMP|Add0~73\);

-- Location: LCCOMB_X44_Y12_N14
\ALUCOMP|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Add0~72_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~2_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~72_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux8~0_combout\);

-- Location: LCCOMB_X44_Y12_N24
\ALUCOMP|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux8~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux8~0_combout\ & (\ALUCOMP|temp~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~1_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux8~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux8~1_combout\);

-- Location: LCCOMB_X45_Y12_N26
\ALUCOMP|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|temp~2_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~2_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux8~1_combout\,
	combout => \ALUCOMP|Mux8~2_combout\);

-- Location: LCFF_X45_Y12_N27
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCCOMB_X44_Y9_N22
\MUXMemReg|salida[23]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[23]~20_combout\ = (\rst~combout\ & (((\regALU|dt_out\(23))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(23))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(23),
	datab => \regALU|dt_out\(23),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[23]~20_combout\);

-- Location: LCFF_X40_Y12_N19
\REGFILE|MEM~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~91_regout\);

-- Location: LCCOMB_X40_Y12_N18
\REGFILE|MEM~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~394_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~91_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~59_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~59_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~91_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~394_combout\);

-- Location: LCCOMB_X47_Y10_N12
\REGFILE|MEM~155feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~155feeder_combout\ = \MUXMemReg|salida[23]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[23]~20_combout\,
	combout => \REGFILE|MEM~155feeder_combout\);

-- Location: LCFF_X47_Y10_N13
\REGFILE|MEM~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~155feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~155_regout\);

-- Location: LCCOMB_X40_Y12_N16
\REGFILE|MEM~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~395_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~394_combout\ & ((\REGFILE|MEM~155_regout\))) # (!\REGFILE|MEM~394_combout\ & (\REGFILE|MEM~123_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~123_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~394_combout\,
	datad => \REGFILE|MEM~155_regout\,
	combout => \REGFILE|MEM~395_combout\);

-- Location: LCCOMB_X47_Y11_N20
\REGFILE|MEM~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~396_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~393_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~395_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~393_combout\,
	datab => \REGFILE|MEM~395_combout\,
	datac => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~396_combout\);

-- Location: LCFF_X47_Y11_N21
\regB|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(23));

-- Location: LCCOMB_X39_Y10_N22
\REGFILE|MEM~156feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~156feeder_combout\ = \MUXMemReg|salida[24]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[24]~21_combout\,
	combout => \REGFILE|MEM~156feeder_combout\);

-- Location: LCFF_X39_Y10_N23
\REGFILE|MEM~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~156feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~156_regout\);

-- Location: LCCOMB_X49_Y8_N22
\REGFILE|MEM~92feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~92feeder_combout\ = \MUXMemReg|salida[24]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[24]~21_combout\,
	combout => \REGFILE|MEM~92feeder_combout\);

-- Location: LCFF_X49_Y8_N23
\REGFILE|MEM~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~92feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~92_regout\);

-- Location: LCCOMB_X38_Y10_N12
\REGFILE|MEM~60feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~60feeder_combout\ = \MUXMemReg|salida[24]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[24]~21_combout\,
	combout => \REGFILE|MEM~60feeder_combout\);

-- Location: LCFF_X38_Y10_N13
\REGFILE|MEM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~60feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~60_regout\);

-- Location: LCCOMB_X38_Y11_N14
\REGFILE|MEM~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~399_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~92_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~60_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~92_regout\,
	datad => \REGFILE|MEM~60_regout\,
	combout => \REGFILE|MEM~399_combout\);

-- Location: LCFF_X48_Y10_N5
\REGFILE|MEM~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~124_regout\);

-- Location: LCCOMB_X38_Y11_N24
\REGFILE|MEM~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~400_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~399_combout\ & (\REGFILE|MEM~156_regout\)) # (!\REGFILE|MEM~399_combout\ & ((\REGFILE|MEM~124_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~156_regout\,
	datac => \REGFILE|MEM~399_combout\,
	datad => \REGFILE|MEM~124_regout\,
	combout => \REGFILE|MEM~400_combout\);

-- Location: LCFF_X49_Y11_N21
\REGFILE|MEM~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~188_regout\);

-- Location: LCFF_X39_Y11_N13
\REGFILE|MEM~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~252_regout\);

-- Location: LCCOMB_X49_Y11_N20
\REGFILE|MEM~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~397_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~252_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~188_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~188_regout\,
	datad => \REGFILE|MEM~252_regout\,
	combout => \REGFILE|MEM~397_combout\);

-- Location: LCFF_X46_Y9_N13
\REGFILE|MEM~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~284_regout\);

-- Location: LCCOMB_X49_Y13_N8
\REGFILE|MEM~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~398_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~397_combout\ & ((\REGFILE|MEM~284_regout\))) # (!\REGFILE|MEM~397_combout\ & (\REGFILE|MEM~220_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~220_regout\,
	datac => \REGFILE|MEM~397_combout\,
	datad => \REGFILE|MEM~284_regout\,
	combout => \REGFILE|MEM~398_combout\);

-- Location: LCCOMB_X46_Y11_N2
\REGFILE|MEM~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~401_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~398_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~400_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~400_combout\,
	datad => \REGFILE|MEM~398_combout\,
	combout => \REGFILE|MEM~401_combout\);

-- Location: LCFF_X46_Y11_N3
\regB|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(24));

-- Location: LCCOMB_X46_Y11_N28
\MUXB|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux5~0_combout\ = (\regB|dt_out\(26) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(26),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y11_N8
\ALUCOMP|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~0_combout\ = (\MUXA|salida[26]~15_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\MUXB|Mux5~0_combout\ & !\ALUCOMP|Mux28~1_combout\)))) # (!\MUXA|salida[26]~15_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux5~0_combout\) # 
-- (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~15_combout\,
	datab => \MUXB|Mux5~0_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y13_N22
\PROGCOUNT|addr_out[26]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[26]~1_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(26))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(26),
	datad => \ALUCOMP|Mux5~2_combout\,
	combout => \PROGCOUNT|addr_out[26]~1_combout\);

-- Location: LCFF_X49_Y10_N9
\INSTREG|jump_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a24\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(24));

-- Location: LCFF_X47_Y13_N23
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[26]~1_combout\,
	sdata => \INSTREG|jump_out\(24),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(26));

-- Location: LCCOMB_X47_Y9_N12
\REGFILE|MEM~62feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~62feeder_combout\ = \MUXMemReg|salida[26]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[26]~23_combout\,
	combout => \REGFILE|MEM~62feeder_combout\);

-- Location: LCFF_X47_Y9_N13
\REGFILE|MEM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~62feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~62_regout\);

-- Location: LCCOMB_X40_Y12_N20
\REGFILE|MEM~539\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~539_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~94_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~62_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~94_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~62_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~539_combout\);

-- Location: LCFF_X49_Y10_N3
\REGFILE|MEM~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~158_regout\);

-- Location: LCCOMB_X39_Y12_N16
\REGFILE|MEM~540\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~540_combout\ = (\REGFILE|MEM~539_combout\ & (((\REGFILE|MEM~158_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~539_combout\ & (\REGFILE|MEM~126_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~126_regout\,
	datab => \REGFILE|MEM~539_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~158_regout\,
	combout => \REGFILE|MEM~540_combout\);

-- Location: LCFF_X44_Y9_N29
\REGFILE|MEM~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~254_regout\);

-- Location: LCCOMB_X44_Y9_N28
\REGFILE|MEM~537\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~537_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~254_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~190_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~190_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~254_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~537_combout\);

-- Location: LCFF_X46_Y9_N7
\REGFILE|MEM~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~286_regout\);

-- Location: LCCOMB_X46_Y9_N6
\REGFILE|MEM~538\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~538_combout\ = (\REGFILE|MEM~537_combout\ & (((\REGFILE|MEM~286_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~537_combout\ & (\REGFILE|MEM~222_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~222_regout\,
	datab => \REGFILE|MEM~537_combout\,
	datac => \REGFILE|MEM~286_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~538_combout\);

-- Location: LCCOMB_X46_Y11_N10
\REGFILE|MEM~541\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~541_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~538_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~540_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~540_combout\,
	datad => \REGFILE|MEM~538_combout\,
	combout => \REGFILE|MEM~541_combout\);

-- Location: LCFF_X46_Y11_N11
\regA|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(26));

-- Location: LCCOMB_X46_Y11_N16
\MUXA|salida[26]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~15_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(26))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(26)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(26),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(26),
	combout => \MUXA|salida[26]~15_combout\);

-- Location: LCCOMB_X45_Y12_N4
\ALUCOMP|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~78_combout\ = ((\MUXA|salida[25]~16_combout\ $ (\ALUCOMP|Add0~74_combout\ $ (!\ALUCOMP|Add0~77\)))) # (GND)
-- \ALUCOMP|Add0~79\ = CARRY((\MUXA|salida[25]~16_combout\ & ((\ALUCOMP|Add0~74_combout\) # (!\ALUCOMP|Add0~77\))) # (!\MUXA|salida[25]~16_combout\ & (\ALUCOMP|Add0~74_combout\ & !\ALUCOMP|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~16_combout\,
	datab => \ALUCOMP|Add0~74_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~77\,
	combout => \ALUCOMP|Add0~78_combout\,
	cout => \ALUCOMP|Add0~79\);

-- Location: LCCOMB_X45_Y12_N6
\ALUCOMP|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~82_combout\ = (\ALUCOMP|Add0~81_combout\ & ((\MUXA|salida[26]~15_combout\ & (\ALUCOMP|Add0~79\ & VCC)) # (!\MUXA|salida[26]~15_combout\ & (!\ALUCOMP|Add0~79\)))) # (!\ALUCOMP|Add0~81_combout\ & ((\MUXA|salida[26]~15_combout\ & 
-- (!\ALUCOMP|Add0~79\)) # (!\MUXA|salida[26]~15_combout\ & ((\ALUCOMP|Add0~79\) # (GND)))))
-- \ALUCOMP|Add0~83\ = CARRY((\ALUCOMP|Add0~81_combout\ & (!\MUXA|salida[26]~15_combout\ & !\ALUCOMP|Add0~79\)) # (!\ALUCOMP|Add0~81_combout\ & ((!\ALUCOMP|Add0~79\) # (!\MUXA|salida[26]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~81_combout\,
	datab => \MUXA|salida[26]~15_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~79\,
	combout => \ALUCOMP|Add0~82_combout\,
	cout => \ALUCOMP|Add0~83\);

-- Location: LCCOMB_X46_Y11_N0
\ALUCOMP|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux5~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux5~0_combout\ & (\ALUCOMP|Add0~82_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux5~0_combout\,
	datac => \ALUCOMP|Add0~82_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux5~1_combout\);

-- Location: LCCOMB_X46_Y11_N24
\ALUCOMP|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux5~0_combout\)) # (!\MUXA|salida[26]~15_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~15_combout\,
	datab => \MUXB|Mux5~0_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux5~1_combout\,
	combout => \ALUCOMP|Mux5~2_combout\);

-- Location: LCFF_X46_Y11_N25
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCCOMB_X44_Y10_N20
\MUXMemReg|salida[26]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[26]~23_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(26)))) # (!\rst~combout\ & (\MDR|dt_out\(26))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(26),
	datab => \regALU|dt_out\(26),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[26]~23_combout\);

-- Location: LCFF_X44_Y9_N11
\REGFILE|MEM~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~190_regout\);

-- Location: LCCOMB_X44_Y9_N10
\REGFILE|MEM~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~407_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~254_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~190_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~190_regout\,
	datad => \REGFILE|MEM~254_regout\,
	combout => \REGFILE|MEM~407_combout\);

-- Location: LCCOMB_X46_Y9_N0
\REGFILE|MEM~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~408_combout\ = (\REGFILE|MEM~407_combout\ & (((\REGFILE|MEM~286_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~407_combout\ & (\REGFILE|MEM~222_regout\ & (\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~222_regout\,
	datab => \REGFILE|MEM~407_combout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~286_regout\,
	combout => \REGFILE|MEM~408_combout\);

-- Location: LCCOMB_X46_Y10_N0
\REGFILE|MEM~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~411_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~408_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~410_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~410_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~408_combout\,
	combout => \REGFILE|MEM~411_combout\);

-- Location: LCFF_X46_Y10_N1
\regB|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~411_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(26));

-- Location: LCFF_X46_Y10_N19
\REGFILE|MEM~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~287_regout\);

-- Location: LCFF_X44_Y9_N15
\REGFILE|MEM~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~191_regout\);

-- Location: LCFF_X44_Y9_N17
\REGFILE|MEM~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~255_regout\);

-- Location: LCCOMB_X44_Y9_N16
\REGFILE|MEM~532\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~532_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~255_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~191_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~191_regout\,
	datac => \REGFILE|MEM~255_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~532_combout\);

-- Location: LCCOMB_X40_Y9_N12
\REGFILE|MEM~533\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~533_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~532_combout\ & ((\REGFILE|MEM~287_regout\))) # (!\REGFILE|MEM~532_combout\ & (\REGFILE|MEM~223_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~223_regout\,
	datab => \REGFILE|MEM~287_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~532_combout\,
	combout => \REGFILE|MEM~533_combout\);

-- Location: LCCOMB_X39_Y10_N12
\REGFILE|MEM~159feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~159feeder_combout\ = \MUXMemReg|salida[27]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[27]~24_combout\,
	combout => \REGFILE|MEM~159feeder_combout\);

-- Location: LCFF_X39_Y10_N13
\REGFILE|MEM~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~159feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~159_regout\);

-- Location: LCCOMB_X39_Y12_N6
\REGFILE|MEM~535\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~535_combout\ = (\REGFILE|MEM~534_combout\ & ((\REGFILE|MEM~159_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~534_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~127_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~534_combout\,
	datab => \REGFILE|MEM~159_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~127_regout\,
	combout => \REGFILE|MEM~535_combout\);

-- Location: LCCOMB_X47_Y12_N18
\REGFILE|MEM~536\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~536_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~533_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~535_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~533_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~535_combout\,
	combout => \REGFILE|MEM~536_combout\);

-- Location: LCFF_X47_Y12_N19
\regA|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(27));

-- Location: LCCOMB_X47_Y12_N16
\MUXA|salida[27]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~14_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(27))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(27)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(27),
	datab => \regA|dt_out\(27),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[27]~14_combout\);

-- Location: LCCOMB_X45_Y12_N8
\ALUCOMP|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~84_combout\ = ((\ALUCOMP|Add0~80_combout\ $ (\MUXA|salida[27]~14_combout\ $ (!\ALUCOMP|Add0~83\)))) # (GND)
-- \ALUCOMP|Add0~85\ = CARRY((\ALUCOMP|Add0~80_combout\ & ((\MUXA|salida[27]~14_combout\) # (!\ALUCOMP|Add0~83\))) # (!\ALUCOMP|Add0~80_combout\ & (\MUXA|salida[27]~14_combout\ & !\ALUCOMP|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~80_combout\,
	datab => \MUXA|salida[27]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~83\,
	combout => \ALUCOMP|Add0~84_combout\,
	cout => \ALUCOMP|Add0~85\);

-- Location: LCCOMB_X44_Y12_N18
\ALUCOMP|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~1_combout\ = (\ALUCOMP|Mux4~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux28~1_combout\))) # (!\ALUCOMP|Mux4~0_combout\ & (\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Add0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux4~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Add0~84_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux4~1_combout\);

-- Location: LCCOMB_X44_Y12_N20
\ALUCOMP|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[27]~14_combout\)) # (!\MUXB|Mux4~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux4~0_combout\,
	datab => \MUXA|salida[27]~14_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux4~1_combout\,
	combout => \ALUCOMP|Mux4~2_combout\);

-- Location: LCFF_X44_Y12_N21
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCCOMB_X42_Y9_N6
\MUXREAD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux3~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a28\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a28\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux3~0_combout\);

-- Location: LCFF_X42_Y9_N7
\MDR|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(28));

-- Location: LCCOMB_X42_Y12_N22
\ALUCOMP|temp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~5_combout\ = (\MUXA|salida[28]~13_combout\ & (\regB|dt_out\(28) & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~13_combout\,
	datac => \regB|dt_out\(28),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|temp~5_combout\);

-- Location: LCCOMB_X46_Y12_N22
\ALUCOMP|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~89_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datab => \regB|dt_out\(28),
	datac => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~89_combout\);

-- Location: LCCOMB_X45_Y12_N10
\ALUCOMP|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~90_combout\ = (\MUXA|salida[28]~13_combout\ & ((\ALUCOMP|Add0~89_combout\ & (\ALUCOMP|Add0~85\ & VCC)) # (!\ALUCOMP|Add0~89_combout\ & (!\ALUCOMP|Add0~85\)))) # (!\MUXA|salida[28]~13_combout\ & ((\ALUCOMP|Add0~89_combout\ & 
-- (!\ALUCOMP|Add0~85\)) # (!\ALUCOMP|Add0~89_combout\ & ((\ALUCOMP|Add0~85\) # (GND)))))
-- \ALUCOMP|Add0~91\ = CARRY((\MUXA|salida[28]~13_combout\ & (!\ALUCOMP|Add0~89_combout\ & !\ALUCOMP|Add0~85\)) # (!\MUXA|salida[28]~13_combout\ & ((!\ALUCOMP|Add0~85\) # (!\ALUCOMP|Add0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~13_combout\,
	datab => \ALUCOMP|Add0~89_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~85\,
	combout => \ALUCOMP|Add0~90_combout\,
	cout => \ALUCOMP|Add0~91\);

-- Location: LCCOMB_X42_Y12_N12
\ALUCOMP|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Mux28~1_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Add0~90_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|temp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|temp~5_combout\,
	datad => \ALUCOMP|Add0~90_combout\,
	combout => \ALUCOMP|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y12_N26
\ALUCOMP|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux3~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux3~0_combout\ & (\ALUCOMP|temp~4_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~4_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Mux3~0_combout\,
	combout => \ALUCOMP|Mux3~1_combout\);

-- Location: LCCOMB_X42_Y12_N8
\PROGCOUNT|addr_out[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~28_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|temp~5_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|temp~5_combout\,
	datad => \ALUCOMP|Mux3~1_combout\,
	combout => \PROGCOUNT|addr_out[28]~28_combout\);

-- Location: LCFF_X42_Y12_N9
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCCOMB_X40_Y9_N0
\MUXMemReg|salida[28]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[28]~25_combout\ = (\rst~combout\ & (((\regALU|dt_out\(28))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(28))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MDR|dt_out\(28),
	datac => \regALU|dt_out\(28),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[28]~25_combout\);

-- Location: LCCOMB_X39_Y12_N24
\REGFILE|MEM~128feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~128feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~128feeder_combout\);

-- Location: LCFF_X39_Y12_N25
\REGFILE|MEM~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~128feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~128_regout\);

-- Location: LCCOMB_X49_Y9_N28
\REGFILE|MEM~64feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~64feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~64feeder_combout\);

-- Location: LCFF_X49_Y9_N29
\REGFILE|MEM~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~64feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~64_regout\);

-- Location: LCCOMB_X40_Y12_N28
\REGFILE|MEM~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~419_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~96_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~64_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~96_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~64_regout\,
	combout => \REGFILE|MEM~419_combout\);

-- Location: LCCOMB_X39_Y12_N18
\REGFILE|MEM~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~420_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~419_combout\ & (\REGFILE|MEM~160_regout\)) # (!\REGFILE|MEM~419_combout\ & ((\REGFILE|MEM~128_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~160_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~128_regout\,
	datad => \REGFILE|MEM~419_combout\,
	combout => \REGFILE|MEM~420_combout\);

-- Location: LCFF_X46_Y9_N5
\REGFILE|MEM~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~288_regout\);

-- Location: LCFF_X46_Y9_N23
\REGFILE|MEM~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~224_regout\);

-- Location: LCCOMB_X44_Y9_N24
\REGFILE|MEM~256feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~256feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~256feeder_combout\);

-- Location: LCFF_X44_Y9_N25
\REGFILE|MEM~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~256feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~256_regout\);

-- Location: LCCOMB_X49_Y9_N10
\REGFILE|MEM~192feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~192feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~192feeder_combout\);

-- Location: LCFF_X49_Y9_N11
\REGFILE|MEM~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~192feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~192_regout\);

-- Location: LCCOMB_X45_Y9_N16
\REGFILE|MEM~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~417_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~256_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((!\INSTREG|jump_out\(16) & \REGFILE|MEM~192_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~256_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~192_regout\,
	combout => \REGFILE|MEM~417_combout\);

-- Location: LCCOMB_X46_Y9_N22
\REGFILE|MEM~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~418_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~417_combout\ & (\REGFILE|MEM~288_regout\)) # (!\REGFILE|MEM~417_combout\ & ((\REGFILE|MEM~224_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~288_regout\,
	datac => \REGFILE|MEM~224_regout\,
	datad => \REGFILE|MEM~417_combout\,
	combout => \REGFILE|MEM~418_combout\);

-- Location: LCCOMB_X46_Y12_N28
\REGFILE|MEM~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~421_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~418_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~420_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~420_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~418_combout\,
	combout => \REGFILE|MEM~421_combout\);

-- Location: LCFF_X46_Y12_N29
\regB|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(28));

-- Location: LCCOMB_X45_Y15_N26
\ALUCOMP|temp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~8_combout\ = (\MUXA|salida[29]~12_combout\ & (\regB|dt_out\(29) & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~12_combout\,
	datab => \regB|dt_out\(29),
	datac => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|temp~8_combout\);

-- Location: LCCOMB_X46_Y11_N22
\MUXB|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux2~0_combout\ = (\regB|dt_out\(29) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(29),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y15_N28
\ALUCOMP|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~0_combout\ = (\MUXA|salida[29]~12_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((!\ALUCOMP|Mux28~1_combout\ & \MUXB|Mux2~0_combout\)))) # (!\MUXA|salida[29]~12_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\) # 
-- (\MUXB|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~12_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \MUXB|Mux2~0_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y12_N0
\ALUCOMP|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~88_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(29),
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~88_combout\);

-- Location: LCCOMB_X45_Y12_N12
\ALUCOMP|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~92_combout\ = ((\MUXA|salida[29]~12_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~91\)))) # (GND)
-- \ALUCOMP|Add0~93\ = CARRY((\MUXA|salida[29]~12_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~91\))) # (!\MUXA|salida[29]~12_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~12_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~91\,
	combout => \ALUCOMP|Add0~92_combout\,
	cout => \ALUCOMP|Add0~93\);

-- Location: LCCOMB_X44_Y15_N30
\ALUCOMP|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux2~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux2~0_combout\ & (\ALUCOMP|Add0~92_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux2~0_combout\,
	datac => \ALUCOMP|Add0~92_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux2~1_combout\);

-- Location: LCCOMB_X44_Y15_N0
\PROGCOUNT|addr_out[29]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~25_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|temp~8_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|temp~8_combout\,
	datad => \ALUCOMP|Mux2~1_combout\,
	combout => \PROGCOUNT|addr_out[29]~25_combout\);

-- Location: LCFF_X44_Y15_N1
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[29]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCCOMB_X40_Y14_N16
\MUXMemReg|salida[29]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[29]~26_combout\ = (\rst~combout\ & (((\regALU|dt_out\(29))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(29))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(29),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(29),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[29]~26_combout\);

-- Location: LCCOMB_X38_Y12_N0
\REGFILE|MEM~129feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~129feeder_combout\ = \MUXMemReg|salida[29]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[29]~26_combout\,
	combout => \REGFILE|MEM~129feeder_combout\);

-- Location: LCFF_X38_Y12_N1
\REGFILE|MEM~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~129feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~129_regout\);

-- Location: LCFF_X38_Y14_N17
\REGFILE|MEM~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~65_regout\);

-- Location: LCFF_X38_Y14_N11
\REGFILE|MEM~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~97_regout\);

-- Location: LCCOMB_X38_Y14_N16
\REGFILE|MEM~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~424_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~97_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~65_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~65_regout\,
	datad => \REGFILE|MEM~97_regout\,
	combout => \REGFILE|MEM~424_combout\);

-- Location: LCCOMB_X38_Y13_N24
\REGFILE|MEM~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~425_combout\ = (\REGFILE|MEM~424_combout\ & ((\REGFILE|MEM~161_regout\) # ((!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~424_combout\ & (((\REGFILE|MEM~129_regout\ & \INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~161_regout\,
	datab => \REGFILE|MEM~129_regout\,
	datac => \REGFILE|MEM~424_combout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~425_combout\);

-- Location: LCCOMB_X49_Y8_N4
\REGFILE|MEM~289feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~289feeder_combout\ = \MUXMemReg|salida[29]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[29]~26_combout\,
	combout => \REGFILE|MEM~289feeder_combout\);

-- Location: LCFF_X49_Y8_N5
\REGFILE|MEM~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~289feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~289_regout\);

-- Location: LCFF_X46_Y9_N19
\REGFILE|MEM~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~225_regout\);

-- Location: LCFF_X49_Y9_N23
\REGFILE|MEM~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~193_regout\);

-- Location: LCCOMB_X49_Y9_N22
\REGFILE|MEM~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~422_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~257_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~193_regout\ & !\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~257_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~193_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~422_combout\);

-- Location: LCCOMB_X46_Y9_N18
\REGFILE|MEM~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~423_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~422_combout\ & (\REGFILE|MEM~289_regout\)) # (!\REGFILE|MEM~422_combout\ & ((\REGFILE|MEM~225_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~289_regout\,
	datac => \REGFILE|MEM~225_regout\,
	datad => \REGFILE|MEM~422_combout\,
	combout => \REGFILE|MEM~423_combout\);

-- Location: LCCOMB_X46_Y11_N26
\REGFILE|MEM~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~426_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~423_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~425_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~425_combout\,
	datac => \REGFILE|MEM~423_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~426_combout\);

-- Location: LCFF_X46_Y11_N27
\regB|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~426_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(29));

-- Location: LCCOMB_X42_Y9_N28
\MUXREAD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux1~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a30\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a30\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux1~0_combout\);

-- Location: LCFF_X42_Y9_N29
\MDR|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(30));

-- Location: LCCOMB_X40_Y13_N30
\MUXMemReg|salida[30]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[30]~27_combout\ = (\rst~combout\ & (\regALU|dt_out\(30))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(30)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(30),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \MDR|dt_out\(30),
	combout => \MUXMemReg|salida[30]~27_combout\);

-- Location: LCCOMB_X47_Y11_N18
\REGFILE|MEM~226feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~226feeder_combout\ = \MUXMemReg|salida[30]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[30]~27_combout\,
	combout => \REGFILE|MEM~226feeder_combout\);

-- Location: LCFF_X47_Y11_N19
\REGFILE|MEM~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~226feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~226_regout\);

-- Location: LCFF_X44_Y9_N27
\REGFILE|MEM~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~194_regout\);

-- Location: LCFF_X44_Y9_N1
\REGFILE|MEM~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~258_regout\);

-- Location: LCCOMB_X44_Y9_N26
\REGFILE|MEM~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~427_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~258_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~194_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~194_regout\,
	datad => \REGFILE|MEM~258_regout\,
	combout => \REGFILE|MEM~427_combout\);

-- Location: LCCOMB_X47_Y11_N0
\REGFILE|MEM~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~428_combout\ = (\REGFILE|MEM~427_combout\ & ((\REGFILE|MEM~290_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~427_combout\ & (((\REGFILE|MEM~226_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~290_regout\,
	datab => \REGFILE|MEM~226_regout\,
	datac => \REGFILE|MEM~427_combout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~428_combout\);

-- Location: LCCOMB_X47_Y11_N30
\REGFILE|MEM~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~431_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~428_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~430_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~430_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~428_combout\,
	combout => \REGFILE|MEM~431_combout\);

-- Location: LCFF_X47_Y11_N31
\regB|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(30));

-- Location: LCCOMB_X43_Y9_N4
\MUXREAD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux4~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a27\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux4~0_combout\);

-- Location: LCFF_X43_Y9_N5
\MDR|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(27));

-- Location: LCCOMB_X43_Y9_N26
\MUXMemReg|salida[27]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[27]~24_combout\ = (\rst~combout\ & (\regALU|dt_out\(27))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(27)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(27),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \MDR|dt_out\(27),
	combout => \MUXMemReg|salida[27]~24_combout\);

-- Location: LCCOMB_X48_Y10_N18
\REGFILE|MEM~127feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~127feeder_combout\ = \MUXMemReg|salida[27]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[27]~24_combout\,
	combout => \REGFILE|MEM~127feeder_combout\);

-- Location: LCFF_X48_Y10_N19
\REGFILE|MEM~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~127feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~127_regout\);

-- Location: LCFF_X40_Y12_N7
\REGFILE|MEM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~63_regout\);

-- Location: LCCOMB_X40_Y12_N6
\REGFILE|MEM~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~414_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~95_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~63_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~95_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~63_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~414_combout\);

-- Location: LCCOMB_X39_Y10_N30
\REGFILE|MEM~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~415_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~414_combout\ & (\REGFILE|MEM~159_regout\)) # (!\REGFILE|MEM~414_combout\ & ((\REGFILE|MEM~127_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~159_regout\,
	datab => \REGFILE|MEM~127_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~414_combout\,
	combout => \REGFILE|MEM~415_combout\);

-- Location: LCCOMB_X46_Y11_N14
\REGFILE|MEM~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~416_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~413_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~413_combout\,
	datab => \REGFILE|MEM~415_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~416_combout\);

-- Location: LCFF_X46_Y11_N15
\regB|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~416_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(27));

-- Location: LCCOMB_X42_Y9_N30
\MUXREAD|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux7~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a24\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a24\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux7~0_combout\);

-- Location: LCFF_X42_Y9_N31
\MDR|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(24));

-- Location: LCCOMB_X46_Y11_N18
\MUXB|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux7~0_combout\ = (\regB|dt_out\(24) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(24),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux7~0_combout\);

-- Location: LCCOMB_X45_Y12_N2
\ALUCOMP|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~76_combout\ = (\ALUCOMP|Add0~75_combout\ & ((\MUXA|salida[24]~17_combout\ & (\ALUCOMP|Add0~73\ & VCC)) # (!\MUXA|salida[24]~17_combout\ & (!\ALUCOMP|Add0~73\)))) # (!\ALUCOMP|Add0~75_combout\ & ((\MUXA|salida[24]~17_combout\ & 
-- (!\ALUCOMP|Add0~73\)) # (!\MUXA|salida[24]~17_combout\ & ((\ALUCOMP|Add0~73\) # (GND)))))
-- \ALUCOMP|Add0~77\ = CARRY((\ALUCOMP|Add0~75_combout\ & (!\MUXA|salida[24]~17_combout\ & !\ALUCOMP|Add0~73\)) # (!\ALUCOMP|Add0~75_combout\ & ((!\ALUCOMP|Add0~73\) # (!\MUXA|salida[24]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~75_combout\,
	datab => \MUXA|salida[24]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~73\,
	combout => \ALUCOMP|Add0~76_combout\,
	cout => \ALUCOMP|Add0~77\);

-- Location: LCCOMB_X45_Y11_N12
\ALUCOMP|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~1_combout\ = (\ALUCOMP|Mux7~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux28~1_combout\))) # (!\ALUCOMP|Mux7~0_combout\ & (\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux7~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Add0~76_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux7~1_combout\);

-- Location: LCCOMB_X45_Y11_N2
\ALUCOMP|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux7~0_combout\)) # (!\MUXA|salida[24]~17_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXA|salida[24]~17_combout\,
	datac => \MUXB|Mux7~0_combout\,
	datad => \ALUCOMP|Mux7~1_combout\,
	combout => \ALUCOMP|Mux7~2_combout\);

-- Location: LCFF_X45_Y11_N3
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCCOMB_X42_Y10_N24
\MUXMemReg|salida[24]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[24]~21_combout\ = (\rst~combout\ & (((\regALU|dt_out\(24))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(24))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MDR|dt_out\(24),
	datac => \regALU|dt_out\(24),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[24]~21_combout\);

-- Location: LCCOMB_X48_Y13_N4
\REGFILE|MEM~220feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~220feeder_combout\ = \MUXMemReg|salida[24]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[24]~21_combout\,
	combout => \REGFILE|MEM~220feeder_combout\);

-- Location: LCFF_X48_Y13_N5
\REGFILE|MEM~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~220feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~220_regout\);

-- Location: LCCOMB_X39_Y11_N12
\REGFILE|MEM~547\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~547_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~252_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~188_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~188_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~252_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~547_combout\);

-- Location: LCCOMB_X48_Y13_N14
\REGFILE|MEM~548\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~548_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~547_combout\ & ((\REGFILE|MEM~284_regout\))) # (!\REGFILE|MEM~547_combout\ & (\REGFILE|MEM~220_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~220_regout\,
	datac => \REGFILE|MEM~284_regout\,
	datad => \REGFILE|MEM~547_combout\,
	combout => \REGFILE|MEM~548_combout\);

-- Location: LCCOMB_X38_Y11_N30
\REGFILE|MEM~550\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~550_combout\ = (\REGFILE|MEM~549_combout\ & ((\REGFILE|MEM~156_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~549_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~124_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~549_combout\,
	datab => \REGFILE|MEM~156_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~124_regout\,
	combout => \REGFILE|MEM~550_combout\);

-- Location: LCCOMB_X47_Y12_N2
\REGFILE|MEM~551\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~551_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~548_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~548_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~550_combout\,
	combout => \REGFILE|MEM~551_combout\);

-- Location: LCFF_X47_Y12_N3
\regA|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(24));

-- Location: LCCOMB_X47_Y12_N0
\MUXA|salida[24]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~17_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(24))) # (!\rst~combout\ & ((\regA|dt_out\(24)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(24),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \rst~combout\,
	datad => \regA|dt_out\(24),
	combout => \MUXA|salida[24]~17_combout\);

-- Location: LCCOMB_X45_Y12_N18
\ALUCOMP|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Add0~78_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~0_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~78_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y10_N12
\PROGCOUNT|addr_out[25]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[25]~2_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(25))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(25),
	datad => \ALUCOMP|Mux6~2_combout\,
	combout => \PROGCOUNT|addr_out[25]~2_combout\);

-- Location: LCFF_X43_Y10_N13
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[25]~2_combout\,
	sdata => \INSTREG|jump_out\(23),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(25));

-- Location: LCFF_X40_Y12_N3
\REGFILE|MEM~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~93_regout\);

-- Location: LCFF_X44_Y12_N7
\REGFILE|MEM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~61_regout\);

-- Location: LCCOMB_X40_Y12_N2
\REGFILE|MEM~544\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~544_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~93_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~61_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~93_regout\,
	datad => \REGFILE|MEM~61_regout\,
	combout => \REGFILE|MEM~544_combout\);

-- Location: LCCOMB_X49_Y13_N6
\REGFILE|MEM~125feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~125feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~125feeder_combout\);

-- Location: LCFF_X49_Y13_N7
\REGFILE|MEM~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~125feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~125_regout\);

-- Location: LCCOMB_X40_Y14_N18
\REGFILE|MEM~545\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~545_combout\ = (\REGFILE|MEM~544_combout\ & ((\REGFILE|MEM~157_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~544_combout\ & (((\REGFILE|MEM~125_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~157_regout\,
	datab => \REGFILE|MEM~544_combout\,
	datac => \REGFILE|MEM~125_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~545_combout\);

-- Location: LCFF_X39_Y11_N11
\REGFILE|MEM~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~253_regout\);

-- Location: LCCOMB_X39_Y10_N8
\REGFILE|MEM~189feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~189feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~189feeder_combout\);

-- Location: LCFF_X39_Y10_N9
\REGFILE|MEM~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~189feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~189_regout\);

-- Location: LCCOMB_X39_Y11_N10
\REGFILE|MEM~542\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~542_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~253_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~189_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~253_regout\,
	datad => \REGFILE|MEM~189_regout\,
	combout => \REGFILE|MEM~542_combout\);

-- Location: LCCOMB_X45_Y9_N12
\REGFILE|MEM~543\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~543_combout\ = (\REGFILE|MEM~542_combout\ & ((\REGFILE|MEM~285_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~542_combout\ & (((\REGFILE|MEM~221_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~285_regout\,
	datab => \REGFILE|MEM~221_regout\,
	datac => \REGFILE|MEM~542_combout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~543_combout\);

-- Location: LCCOMB_X40_Y14_N0
\REGFILE|MEM~546\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~546_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~543_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~545_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~545_combout\,
	datac => \REGFILE|MEM~543_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~546_combout\);

-- Location: LCFF_X40_Y14_N1
\regA|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(25));

-- Location: LCCOMB_X40_Y14_N26
\MUXA|salida[25]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~16_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(25))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(25)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(25),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(25),
	combout => \MUXA|salida[25]~16_combout\);

-- Location: LCCOMB_X45_Y12_N20
\ALUCOMP|temp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~3_combout\ = (\MUXA|salida[25]~16_combout\) # ((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(25),
	datad => \MUXA|salida[25]~16_combout\,
	combout => \ALUCOMP|temp~3_combout\);

-- Location: LCCOMB_X45_Y12_N28
\ALUCOMP|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux6~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux6~0_combout\ & (\ALUCOMP|temp~3_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux6~0_combout\,
	datac => \ALUCOMP|temp~3_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux6~1_combout\);

-- Location: LCCOMB_X45_Y12_N30
\ALUCOMP|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|temp~0_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~0_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux6~1_combout\,
	combout => \ALUCOMP|Mux6~2_combout\);

-- Location: LCFF_X45_Y12_N5
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \ALUCOMP|Mux6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCCOMB_X42_Y13_N22
\MUXMemReg|salida[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[25]~22_combout\ = (\rst~combout\ & (((\regALU|dt_out\(25))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(25))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(25),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(25),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[25]~22_combout\);

-- Location: LCFF_X46_Y9_N15
\REGFILE|MEM~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~221_regout\);

-- Location: LCCOMB_X39_Y11_N20
\REGFILE|MEM~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~402_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~253_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~189_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~253_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~189_regout\,
	combout => \REGFILE|MEM~402_combout\);

-- Location: LCCOMB_X45_Y9_N18
\REGFILE|MEM~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~403_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~402_combout\ & (\REGFILE|MEM~285_regout\)) # (!\REGFILE|MEM~402_combout\ & ((\REGFILE|MEM~221_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~285_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~221_regout\,
	datad => \REGFILE|MEM~402_combout\,
	combout => \REGFILE|MEM~403_combout\);

-- Location: LCCOMB_X40_Y12_N4
\REGFILE|MEM~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~404_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~93_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~61_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~61_regout\,
	datab => \REGFILE|MEM~93_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~404_combout\);

-- Location: LCCOMB_X39_Y10_N2
\REGFILE|MEM~157feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~157feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~157feeder_combout\);

-- Location: LCFF_X39_Y10_N3
\REGFILE|MEM~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~157feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~157_regout\);

-- Location: LCCOMB_X40_Y14_N8
\REGFILE|MEM~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~405_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~404_combout\ & ((\REGFILE|MEM~157_regout\))) # (!\REGFILE|MEM~404_combout\ & (\REGFILE|MEM~125_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~404_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~404_combout\,
	datac => \REGFILE|MEM~125_regout\,
	datad => \REGFILE|MEM~157_regout\,
	combout => \REGFILE|MEM~405_combout\);

-- Location: LCCOMB_X40_Y10_N0
\REGFILE|MEM~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~406_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~403_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~403_combout\,
	datad => \REGFILE|MEM~405_combout\,
	combout => \REGFILE|MEM~406_combout\);

-- Location: LCFF_X40_Y10_N1
\regB|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(25));

-- Location: LCCOMB_X46_Y12_N16
\ALUCOMP|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~0_combout\ = (!\MUXB|Mux0~1_combout\ & (\regB|dt_out\(25) & \MUXA|salida[25]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(25),
	datad => \MUXA|salida[25]~16_combout\,
	combout => \ALUCOMP|temp~0_combout\);

-- Location: LCCOMB_X40_Y12_N30
\REGFILE|MEM~554\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~554_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22)) # (\REGFILE|MEM~91_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~59_regout\ & (!\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~59_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~91_regout\,
	combout => \REGFILE|MEM~554_combout\);

-- Location: LCCOMB_X40_Y12_N0
\REGFILE|MEM~555\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~555_combout\ = (\REGFILE|MEM~554_combout\ & (((\REGFILE|MEM~155_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~554_combout\ & (\REGFILE|MEM~123_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~123_regout\,
	datab => \REGFILE|MEM~554_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~155_regout\,
	combout => \REGFILE|MEM~555_combout\);

-- Location: LCCOMB_X46_Y9_N14
\REGFILE|MEM~556\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~556_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~553_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~553_combout\,
	datab => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~555_combout\,
	combout => \REGFILE|MEM~556_combout\);

-- Location: LCFF_X46_Y11_N13
\regA|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~556_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(23));

-- Location: LCCOMB_X46_Y11_N12
\MUXA|salida[23]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~18_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(23))) # (!\rst~combout\ & ((\regA|dt_out\(23)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(23),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(23),
	datad => \rst~combout\,
	combout => \MUXA|salida[23]~18_combout\);

-- Location: LCCOMB_X45_Y10_N20
\ALUCOMP|temp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~2_combout\ = (\regB|dt_out\(23) & (\MUXA|salida[23]~18_combout\ & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(23),
	datab => \MUXA|salida[23]~18_combout\,
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|temp~2_combout\);

-- Location: LCCOMB_X44_Y12_N22
\PCwrite~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~1_combout\ = (\ALUCOMP|Mux28~3_combout\ & (\ALUCOMP|temp~0_combout\ & ((\ALUCOMP|temp~2_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|temp~0_combout\,
	datac => \ALUCOMP|Mux8~1_combout\,
	datad => \ALUCOMP|temp~2_combout\,
	combout => \PCwrite~1_combout\);

-- Location: LCCOMB_X44_Y12_N16
\PCwrite~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~3_combout\ = (!\ALUCOMP|Mux12~3_combout\ & (!\ALUCOMP|Mux4~2_combout\ & !\ALUCOMP|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|Mux12~3_combout\,
	datac => \ALUCOMP|Mux4~2_combout\,
	datad => \ALUCOMP|Mux14~3_combout\,
	combout => \PCwrite~3_combout\);

-- Location: LCCOMB_X44_Y14_N0
\MUXB|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux15~0_combout\ = (\regB|dt_out\(16) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(16),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux15~0_combout\);

-- Location: LCCOMB_X44_Y10_N4
\ALUCOMP|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux15~0_combout\) # ((\ALUCOMP|Mux28~1_combout\) # (\MUXA|salida[16]~25_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux15~0_combout\ & (!\ALUCOMP|Mux28~1_combout\ & 
-- \MUXA|salida[16]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXA|salida[16]~25_combout\,
	combout => \ALUCOMP|Mux15~0_combout\);

-- Location: LCFF_X46_Y14_N29
\INSTREG|jump_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a15\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(15));

-- Location: LCCOMB_X46_Y14_N28
\MUXB|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~2_combout\ = (\MUXB|Mux16~1_combout\ & ((\regB|dt_out\(15)) # ((\INSTREG|jump_out\(15) & \MUXB|Mux16~0_combout\)))) # (!\MUXB|Mux16~1_combout\ & (((\INSTREG|jump_out\(15) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~1_combout\,
	datab => \regB|dt_out\(15),
	datac => \INSTREG|jump_out\(15),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux16~2_combout\);

-- Location: LCCOMB_X46_Y13_N10
\ALUCOMP|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~38_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \MUXB|Mux16~2_combout\,
	combout => \ALUCOMP|Add0~38_combout\);

-- Location: LCFF_X48_Y13_N31
\REGFILE|MEM~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~210_regout\);

-- Location: LCCOMB_X47_Y15_N30
\REGFILE|MEM~598\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~598_combout\ = (\REGFILE|MEM~597_combout\ & ((\REGFILE|MEM~274_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~597_combout\ & (((\REGFILE|MEM~210_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~597_combout\,
	datab => \REGFILE|MEM~274_regout\,
	datac => \REGFILE|MEM~210_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~598_combout\);

-- Location: LCFF_X48_Y10_N15
\REGFILE|MEM~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~82_regout\);

-- Location: LCCOMB_X48_Y10_N14
\REGFILE|MEM~599\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~599_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~82_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~50_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~50_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~82_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~599_combout\);

-- Location: LCFF_X49_Y10_N17
\REGFILE|MEM~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~146_regout\);

-- Location: LCCOMB_X47_Y10_N18
\REGFILE|MEM~600\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~600_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~599_combout\ & ((\REGFILE|MEM~146_regout\))) # (!\REGFILE|MEM~599_combout\ & (\REGFILE|MEM~114_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~114_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~599_combout\,
	datad => \REGFILE|MEM~146_regout\,
	combout => \REGFILE|MEM~600_combout\);

-- Location: LCCOMB_X47_Y12_N26
\REGFILE|MEM~601\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~601_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~598_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~600_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~598_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~600_combout\,
	combout => \REGFILE|MEM~601_combout\);

-- Location: LCFF_X46_Y12_N7
\regA|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~601_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(14));

-- Location: LCCOMB_X46_Y12_N6
\MUXA|salida[14]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~27_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(14))) # (!\rst~combout\ & ((\regA|dt_out\(14)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(14),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(14),
	datad => \rst~combout\,
	combout => \MUXA|salida[14]~27_combout\);

-- Location: LCCOMB_X45_Y13_N14
\ALUCOMP|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~52_combout\ = (\ALUCOMP|Add0~39_combout\ & ((\MUXA|salida[14]~27_combout\ & (\ALUCOMP|Add0~51\ & VCC)) # (!\MUXA|salida[14]~27_combout\ & (!\ALUCOMP|Add0~51\)))) # (!\ALUCOMP|Add0~39_combout\ & ((\MUXA|salida[14]~27_combout\ & 
-- (!\ALUCOMP|Add0~51\)) # (!\MUXA|salida[14]~27_combout\ & ((\ALUCOMP|Add0~51\) # (GND)))))
-- \ALUCOMP|Add0~53\ = CARRY((\ALUCOMP|Add0~39_combout\ & (!\MUXA|salida[14]~27_combout\ & !\ALUCOMP|Add0~51\)) # (!\ALUCOMP|Add0~39_combout\ & ((!\ALUCOMP|Add0~51\) # (!\MUXA|salida[14]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~39_combout\,
	datab => \MUXA|salida[14]~27_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~51\,
	combout => \ALUCOMP|Add0~52_combout\,
	cout => \ALUCOMP|Add0~53\);

-- Location: LCCOMB_X45_Y13_N16
\ALUCOMP|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~54_combout\ = ((\MUXA|salida[15]~26_combout\ $ (\ALUCOMP|Add0~38_combout\ $ (!\ALUCOMP|Add0~53\)))) # (GND)
-- \ALUCOMP|Add0~55\ = CARRY((\MUXA|salida[15]~26_combout\ & ((\ALUCOMP|Add0~38_combout\) # (!\ALUCOMP|Add0~53\))) # (!\MUXA|salida[15]~26_combout\ & (\ALUCOMP|Add0~38_combout\ & !\ALUCOMP|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~26_combout\,
	datab => \ALUCOMP|Add0~38_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~53\,
	combout => \ALUCOMP|Add0~54_combout\,
	cout => \ALUCOMP|Add0~55\);

-- Location: LCCOMB_X45_Y13_N18
\ALUCOMP|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~56_combout\ = (\ALUCOMP|Add0~37_combout\ & ((\MUXA|salida[16]~25_combout\ & (\ALUCOMP|Add0~55\ & VCC)) # (!\MUXA|salida[16]~25_combout\ & (!\ALUCOMP|Add0~55\)))) # (!\ALUCOMP|Add0~37_combout\ & ((\MUXA|salida[16]~25_combout\ & 
-- (!\ALUCOMP|Add0~55\)) # (!\MUXA|salida[16]~25_combout\ & ((\ALUCOMP|Add0~55\) # (GND)))))
-- \ALUCOMP|Add0~57\ = CARRY((\ALUCOMP|Add0~37_combout\ & (!\MUXA|salida[16]~25_combout\ & !\ALUCOMP|Add0~55\)) # (!\ALUCOMP|Add0~37_combout\ & ((!\ALUCOMP|Add0~55\) # (!\MUXA|salida[16]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~37_combout\,
	datab => \MUXA|salida[16]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~55\,
	combout => \ALUCOMP|Add0~56_combout\,
	cout => \ALUCOMP|Add0~57\);

-- Location: LCCOMB_X44_Y12_N12
\ALUCOMP|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux15~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux15~0_combout\ & (\ALUCOMP|Add0~56_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux15~0_combout\,
	datac => \ALUCOMP|Add0~56_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux15~1_combout\);

-- Location: LCCOMB_X44_Y12_N26
\ALUCOMP|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[16]~25_combout\)) # (!\MUXB|Mux15~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux15~0_combout\,
	datab => \MUXA|salida[16]~25_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux15~1_combout\,
	combout => \ALUCOMP|Mux15~2_combout\);

-- Location: LCCOMB_X44_Y12_N28
\PCwrite~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~2_combout\ = (!\ALUCOMP|Mux13~2_combout\ & (!\ALUCOMP|Mux15~2_combout\ & ((\ALUCOMP|Mux28~3_combout\) # (!\ALUCOMP|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|Mux6~1_combout\,
	datac => \ALUCOMP|Mux13~2_combout\,
	datad => \ALUCOMP|Mux15~2_combout\,
	combout => \PCwrite~2_combout\);

-- Location: LCCOMB_X44_Y12_N10
\PCwrite~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~4_combout\ = (!\ALUCOMP|Mux10~3_combout\ & (\PCwrite~1_combout\ & (\PCwrite~3_combout\ & \PCwrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux10~3_combout\,
	datab => \PCwrite~1_combout\,
	datac => \PCwrite~3_combout\,
	datad => \PCwrite~2_combout\,
	combout => \PCwrite~4_combout\);

-- Location: LCCOMB_X42_Y13_N20
\ALUCOMP|temp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~7_combout\ = (\MUXA|salida[30]~11_combout\ & (\regB|dt_out\(30) & !\MUXB|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~11_combout\,
	datac => \regB|dt_out\(30),
	datad => \MUXB|Mux0~1_combout\,
	combout => \ALUCOMP|temp~7_combout\);

-- Location: LCCOMB_X42_Y13_N4
\PROGCOUNT|addr_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~feeder_combout\ = \PROGCOUNT|addr_out[30]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[30]~18_combout\,
	combout => \PROGCOUNT|addr_out[30]~feeder_combout\);

-- Location: LCFF_X42_Y12_N3
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[30]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCCOMB_X43_Y13_N24
\PCwrite~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~11_combout\ = (!\ALUCOMP|Mux26~2_combout\ & (!\ALUCOMP|Mux24~2_combout\ & (!\ALUCOMP|Mux22~2_combout\ & !\ALUCOMP|Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux24~2_combout\,
	datac => \ALUCOMP|Mux22~2_combout\,
	datad => \ALUCOMP|Mux28~6_combout\,
	combout => \PCwrite~11_combout\);

-- Location: LCCOMB_X43_Y13_N10
\PCwrite~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~12_combout\ = (!\ALUCOMP|Mux16~2_combout\ & (!\ALUCOMP|Mux18~2_combout\ & (!\ALUCOMP|Mux20~2_combout\ & !\ALUCOMP|Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux16~2_combout\,
	datab => \ALUCOMP|Mux18~2_combout\,
	datac => \ALUCOMP|Mux20~2_combout\,
	datad => \ALUCOMP|Mux31~2_combout\,
	combout => \PCwrite~12_combout\);

-- Location: LCCOMB_X43_Y13_N20
\PCwrite~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~13_combout\ = (\PCwrite~11_combout\ & \PCwrite~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCwrite~11_combout\,
	datad => \PCwrite~12_combout\,
	combout => \PCwrite~13_combout\);

-- Location: LCCOMB_X43_Y13_N26
\PCwrite~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~15_combout\ = (\PCwrite~8_combout\ & (\CONTROLU|ALUop[0]~0_combout\ & (!\PROGCOUNT|addr_out[29]~25_combout\ & !\PROGCOUNT|addr_out[30]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCwrite~8_combout\,
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datac => \PROGCOUNT|addr_out[29]~25_combout\,
	datad => \PROGCOUNT|addr_out[30]~18_combout\,
	combout => \PCwrite~15_combout\);

-- Location: LCCOMB_X46_Y13_N12
\PCwrite~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~10_combout\ = (!\ALUCOMP|Mux7~2_combout\ & (!\ALUCOMP|Mux5~2_combout\ & (!\ALUCOMP|Mux11~2_combout\ & !\ALUCOMP|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux7~2_combout\,
	datab => \ALUCOMP|Mux5~2_combout\,
	datac => \ALUCOMP|Mux11~2_combout\,
	datad => \ALUCOMP|Mux9~2_combout\,
	combout => \PCwrite~10_combout\);

-- Location: LCCOMB_X43_Y13_N12
\PCwrite~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~16_combout\ = (\PCwrite~7_combout\ & (\PCwrite~15_combout\ & (\PCwrite~4_combout\ & \PCwrite~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCwrite~7_combout\,
	datab => \PCwrite~15_combout\,
	datac => \PCwrite~4_combout\,
	datad => \PCwrite~10_combout\,
	combout => \PCwrite~16_combout\);

-- Location: LCCOMB_X43_Y13_N30
\PROGCOUNT|addr_out[30]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~35_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\PCwrite~0_combout\) # ((\PCwrite~13_combout\ & \PCwrite~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCwrite~0_combout\,
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \PCwrite~13_combout\,
	datad => \PCwrite~16_combout\,
	combout => \PROGCOUNT|addr_out[30]~35_combout\);

-- Location: LCFF_X42_Y13_N5
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[30]~feeder_combout\,
	sdata => \regALU|dt_out\(30),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[30]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(30));

-- Location: LCCOMB_X47_Y9_N30
\REGFILE|MEM~66feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~66feeder_combout\ = \MUXMemReg|salida[30]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[30]~27_combout\,
	combout => \REGFILE|MEM~66feeder_combout\);

-- Location: LCFF_X47_Y9_N31
\REGFILE|MEM~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~66feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~66_regout\);

-- Location: LCCOMB_X47_Y10_N4
\REGFILE|MEM~98feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~98feeder_combout\ = \MUXMemReg|salida[30]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[30]~27_combout\,
	combout => \REGFILE|MEM~98feeder_combout\);

-- Location: LCFF_X47_Y10_N5
\REGFILE|MEM~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~98feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~98_regout\);

-- Location: LCCOMB_X47_Y9_N22
\REGFILE|MEM~519\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~519_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22)) # (\REGFILE|MEM~98_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~66_regout\ & (!\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~66_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~98_regout\,
	combout => \REGFILE|MEM~519_combout\);

-- Location: LCFF_X39_Y12_N21
\REGFILE|MEM~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~130_regout\);

-- Location: LCCOMB_X47_Y9_N28
\REGFILE|MEM~520\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~520_combout\ = (\REGFILE|MEM~519_combout\ & ((\REGFILE|MEM~162_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~519_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~130_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~162_regout\,
	datab => \REGFILE|MEM~519_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~130_regout\,
	combout => \REGFILE|MEM~520_combout\);

-- Location: LCCOMB_X44_Y9_N0
\REGFILE|MEM~517\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~517_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~258_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~194_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~194_regout\,
	datac => \REGFILE|MEM~258_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~517_combout\);

-- Location: LCCOMB_X47_Y11_N2
\REGFILE|MEM~518\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~518_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~517_combout\ & (\REGFILE|MEM~290_regout\)) # (!\REGFILE|MEM~517_combout\ & ((\REGFILE|MEM~226_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~290_regout\,
	datab => \REGFILE|MEM~226_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~517_combout\,
	combout => \REGFILE|MEM~518_combout\);

-- Location: LCCOMB_X49_Y13_N14
\REGFILE|MEM~521\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~521_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~518_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~520_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~520_combout\,
	datac => \REGFILE|MEM~518_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~521_combout\);

-- Location: LCFF_X49_Y13_N15
\regA|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~521_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(30));

-- Location: LCCOMB_X42_Y13_N14
\MUXA|salida[30]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~11_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(30))) # (!\rst~combout\ & ((\regA|dt_out\(30)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~0_combout\,
	datab => \PROGCOUNT|addr_out\(30),
	datac => \regA|dt_out\(30),
	datad => \rst~combout\,
	combout => \MUXA|salida[30]~11_combout\);

-- Location: LCCOMB_X42_Y13_N30
\ALUCOMP|temp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~6_combout\ = (\MUXA|salida[30]~11_combout\) # ((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(30),
	datad => \MUXA|salida[30]~11_combout\,
	combout => \ALUCOMP|temp~6_combout\);

-- Location: LCCOMB_X46_Y12_N12
\ALUCOMP|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~87_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(30),
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~87_combout\);

-- Location: LCCOMB_X45_Y12_N14
\ALUCOMP|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~94_combout\ = (\MUXA|salida[30]~11_combout\ & ((\ALUCOMP|Add0~87_combout\ & (\ALUCOMP|Add0~93\ & VCC)) # (!\ALUCOMP|Add0~87_combout\ & (!\ALUCOMP|Add0~93\)))) # (!\MUXA|salida[30]~11_combout\ & ((\ALUCOMP|Add0~87_combout\ & 
-- (!\ALUCOMP|Add0~93\)) # (!\ALUCOMP|Add0~87_combout\ & ((\ALUCOMP|Add0~93\) # (GND)))))
-- \ALUCOMP|Add0~95\ = CARRY((\MUXA|salida[30]~11_combout\ & (!\ALUCOMP|Add0~87_combout\ & !\ALUCOMP|Add0~93\)) # (!\MUXA|salida[30]~11_combout\ & ((!\ALUCOMP|Add0~93\) # (!\ALUCOMP|Add0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~11_combout\,
	datab => \ALUCOMP|Add0~87_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~93\,
	combout => \ALUCOMP|Add0~94_combout\,
	cout => \ALUCOMP|Add0~95\);

-- Location: LCCOMB_X42_Y12_N6
\ALUCOMP|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Mux28~1_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Add0~94_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|temp~7_combout\,
	datad => \ALUCOMP|Add0~94_combout\,
	combout => \ALUCOMP|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y12_N28
\ALUCOMP|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux1~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux1~0_combout\ & (\ALUCOMP|temp~6_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|temp~6_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Mux1~0_combout\,
	combout => \ALUCOMP|Mux1~1_combout\);

-- Location: LCCOMB_X42_Y12_N2
\PROGCOUNT|addr_out[30]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~18_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|temp~7_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|temp~7_combout\,
	datad => \ALUCOMP|Mux1~1_combout\,
	combout => \PROGCOUNT|addr_out[30]~18_combout\);

-- Location: LCCOMB_X42_Y15_N24
\PROGCOUNT|addr_out[31]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~33_combout\ = ((\MUXB|Mux0~1_combout\) # (!\regB|dt_out\(31))) # (!\MUXA|salida[31]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[31]~10_combout\,
	datab => \regB|dt_out\(31),
	datad => \MUXB|Mux0~1_combout\,
	combout => \PROGCOUNT|addr_out[31]~33_combout\);

-- Location: LCCOMB_X43_Y15_N28
\PROGCOUNT|addr_out[31]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~34_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((\PROGCOUNT|addr_out[31]~33_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((!\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \PROGCOUNT|addr_out[31]~33_combout\,
	combout => \PROGCOUNT|addr_out[31]~34_combout\);

-- Location: LCCOMB_X42_Y13_N16
\PROGCOUNT|addr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~feeder_combout\ = \PROGCOUNT|addr_out[31]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[31]~26_combout\,
	combout => \PROGCOUNT|addr_out[31]~feeder_combout\);

-- Location: LCFF_X42_Y12_N21
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[31]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: LCFF_X42_Y13_N17
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[31]~feeder_combout\,
	sdata => \regALU|dt_out\(31),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[30]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(31));

-- Location: LCCOMB_X42_Y13_N8
\MUXA|salida[31]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~10_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(31))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(31))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(31),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(31),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[31]~10_combout\);

-- Location: LCCOMB_X47_Y12_N30
\ALUCOMP|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~86_combout\ = \ALUCONTRL|op\(2) $ (((!\MUXB|Mux0~1_combout\ & \regB|dt_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux0~1_combout\,
	datac => \regB|dt_out\(31),
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~86_combout\);

-- Location: LCCOMB_X45_Y12_N16
\ALUCOMP|Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~96_combout\ = \MUXA|salida[31]~10_combout\ $ (\ALUCOMP|Add0~95\ $ (!\ALUCOMP|Add0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[31]~10_combout\,
	datad => \ALUCOMP|Add0~86_combout\,
	cin => \ALUCOMP|Add0~95\,
	combout => \ALUCOMP|Add0~96_combout\);

-- Location: LCCOMB_X42_Y12_N10
\PROGCOUNT|addr_out[31]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~36_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[31]~10_combout\) # ((\regB|dt_out\(31) & !\MUXB|Mux0~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\regB|dt_out\(31) & (\MUXA|salida[31]~10_combout\ & 
-- !\MUXB|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \regB|dt_out\(31),
	datac => \MUXA|salida[31]~10_combout\,
	datad => \MUXB|Mux0~1_combout\,
	combout => \PROGCOUNT|addr_out[31]~36_combout\);

-- Location: LCCOMB_X42_Y12_N30
\PROGCOUNT|addr_out[31]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~32_combout\ = (\ALUCOMP|Mux28~1_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (((\PROGCOUNT|addr_out[31]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \PROGCOUNT|addr_out[31]~36_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \PROGCOUNT|addr_out[31]~32_combout\);

-- Location: LCCOMB_X42_Y12_N20
\PROGCOUNT|addr_out[31]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~26_combout\ = (\ALUCOMP|Mux28~3_combout\ & (\PROGCOUNT|addr_out[31]~34_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & (\PROGCOUNT|addr_out[31]~32_combout\ & ((\PROGCOUNT|addr_out[31]~34_combout\) # (\ALUCOMP|Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \PROGCOUNT|addr_out[31]~34_combout\,
	datac => \ALUCOMP|Add0~96_combout\,
	datad => \PROGCOUNT|addr_out[31]~32_combout\,
	combout => \PROGCOUNT|addr_out[31]~26_combout\);

-- Location: LCCOMB_X42_Y12_N0
\PCwrite~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~8_combout\ = (!\PROGCOUNT|addr_out[31]~26_combout\ & ((\ALUCOMP|Mux28~3_combout\ & (\ALUCOMP|temp~5_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((!\ALUCOMP|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|temp~5_combout\,
	datac => \PROGCOUNT|addr_out[31]~26_combout\,
	datad => \ALUCOMP|Mux3~1_combout\,
	combout => \PCwrite~8_combout\);

-- Location: LCFF_X44_Y13_N11
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCCOMB_X42_Y14_N30
\PROGCOUNT|addr_out[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[4]~7_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(4)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux27~2_combout\,
	datad => \regALU|dt_out\(4),
	combout => \PROGCOUNT|addr_out[4]~7_combout\);

-- Location: LCFF_X44_Y14_N19
\INSTREG|func_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a2\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(2));

-- Location: LCFF_X42_Y14_N31
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[4]~7_combout\,
	sdata => \INSTREG|func_out\(2),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X47_Y12_N8
\MUXA|salida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~5_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(4)))) # (!\rst~combout\ & (\regA|dt_out\(4))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(4),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \PROGCOUNT|addr_out\(4),
	datad => \rst~combout\,
	combout => \MUXA|salida[4]~5_combout\);

-- Location: LCCOMB_X47_Y14_N30
\CONTROLU|ALUsrcB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[1]~0_combout\ = (!\rst~combout\ & ((\MUXB|Mux0~0_combout\) # (\CONTROLU|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \MUXB|Mux0~0_combout\,
	datad => \CONTROLU|Equal0~2_combout\,
	combout => \CONTROLU|ALUsrcB[1]~0_combout\);

-- Location: LCFF_X44_Y14_N25
\INSTREG|jump_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a4\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(4));

-- Location: LCCOMB_X44_Y14_N24
\MUXB|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux27~0_combout\ = (!\CONTROLU|ALUsrcB[0]~1_combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\ & ((\INSTREG|jump_out\(4)))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & (\regB|dt_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(4),
	datab => \CONTROLU|ALUsrcB[1]~0_combout\,
	datac => \INSTREG|jump_out\(4),
	datad => \CONTROLU|ALUsrcB[0]~1_combout\,
	combout => \MUXB|Mux27~0_combout\);

-- Location: LCCOMB_X44_Y13_N22
\ALUCOMP|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[4]~5_combout\) # ((\ALUCOMP|Mux28~1_combout\) # (\MUXB|Mux27~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[4]~5_combout\ & (!\ALUCOMP|Mux28~1_combout\ & 
-- \MUXB|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[4]~5_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXB|Mux27~0_combout\,
	combout => \ALUCOMP|Mux27~0_combout\);

-- Location: LCCOMB_X45_Y14_N4
\ALUCOMP|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~5_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux27~0_combout\,
	combout => \ALUCOMP|Add0~5_combout\);

-- Location: LCCOMB_X44_Y14_N8
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (!\CONTROLU|ALUsrcB[0]~1_combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\ & ((\INSTREG|func_out\(3)))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & (\regB|dt_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(3),
	datab => \CONTROLU|ALUsrcB[0]~1_combout\,
	datac => \INSTREG|func_out\(3),
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCCOMB_X45_Y14_N14
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \MUXB|Mux28~0_combout\,
	combout => \ALUCOMP|Add0~6_combout\);

-- Location: LCCOMB_X43_Y14_N22
\MUXA|salida[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~8_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(1)))) # (!\rst~combout\ & (\regA|dt_out\(1))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(1),
	datab => \PROGCOUNT|addr_out\(1),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[1]~8_combout\);

-- Location: LCCOMB_X44_Y15_N6
\MUXA|salida[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~9_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(0)))) # (!\rst~combout\ & (\regA|dt_out\(0))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(0),
	datab => \PROGCOUNT|addr_out\(0),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[0]~9_combout\);

-- Location: LCCOMB_X45_Y14_N16
\ALUCOMP|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~11_cout\ = CARRY((\ALUCONTRL|op~1_combout\) # (\CONTROLU|ALUop[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|Add0~11_cout\);

-- Location: LCCOMB_X45_Y14_N18
\ALUCOMP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~12_combout\ = (\ALUCOMP|Add0~9_combout\ & ((\MUXA|salida[0]~9_combout\ & (\ALUCOMP|Add0~11_cout\ & VCC)) # (!\MUXA|salida[0]~9_combout\ & (!\ALUCOMP|Add0~11_cout\)))) # (!\ALUCOMP|Add0~9_combout\ & ((\MUXA|salida[0]~9_combout\ & 
-- (!\ALUCOMP|Add0~11_cout\)) # (!\MUXA|salida[0]~9_combout\ & ((\ALUCOMP|Add0~11_cout\) # (GND)))))
-- \ALUCOMP|Add0~13\ = CARRY((\ALUCOMP|Add0~9_combout\ & (!\MUXA|salida[0]~9_combout\ & !\ALUCOMP|Add0~11_cout\)) # (!\ALUCOMP|Add0~9_combout\ & ((!\ALUCOMP|Add0~11_cout\) # (!\MUXA|salida[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~9_combout\,
	datab => \MUXA|salida[0]~9_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~11_cout\,
	combout => \ALUCOMP|Add0~12_combout\,
	cout => \ALUCOMP|Add0~13\);

-- Location: LCCOMB_X45_Y14_N20
\ALUCOMP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~14_combout\ = ((\ALUCOMP|Add0~8_combout\ $ (\MUXA|salida[1]~8_combout\ $ (!\ALUCOMP|Add0~13\)))) # (GND)
-- \ALUCOMP|Add0~15\ = CARRY((\ALUCOMP|Add0~8_combout\ & ((\MUXA|salida[1]~8_combout\) # (!\ALUCOMP|Add0~13\))) # (!\ALUCOMP|Add0~8_combout\ & (\MUXA|salida[1]~8_combout\ & !\ALUCOMP|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~8_combout\,
	datab => \MUXA|salida[1]~8_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~13\,
	combout => \ALUCOMP|Add0~14_combout\,
	cout => \ALUCOMP|Add0~15\);

-- Location: LCCOMB_X45_Y14_N22
\ALUCOMP|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~16_combout\ = (\ALUCOMP|Add0~7_combout\ & ((\MUXA|salida[2]~7_combout\ & (\ALUCOMP|Add0~15\ & VCC)) # (!\MUXA|salida[2]~7_combout\ & (!\ALUCOMP|Add0~15\)))) # (!\ALUCOMP|Add0~7_combout\ & ((\MUXA|salida[2]~7_combout\ & (!\ALUCOMP|Add0~15\)) 
-- # (!\MUXA|salida[2]~7_combout\ & ((\ALUCOMP|Add0~15\) # (GND)))))
-- \ALUCOMP|Add0~17\ = CARRY((\ALUCOMP|Add0~7_combout\ & (!\MUXA|salida[2]~7_combout\ & !\ALUCOMP|Add0~15\)) # (!\ALUCOMP|Add0~7_combout\ & ((!\ALUCOMP|Add0~15\) # (!\MUXA|salida[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~7_combout\,
	datab => \MUXA|salida[2]~7_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~15\,
	combout => \ALUCOMP|Add0~16_combout\,
	cout => \ALUCOMP|Add0~17\);

-- Location: LCCOMB_X45_Y14_N24
\ALUCOMP|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~18_combout\ = ((\MUXA|salida[3]~6_combout\ $ (\ALUCOMP|Add0~6_combout\ $ (!\ALUCOMP|Add0~17\)))) # (GND)
-- \ALUCOMP|Add0~19\ = CARRY((\MUXA|salida[3]~6_combout\ & ((\ALUCOMP|Add0~6_combout\) # (!\ALUCOMP|Add0~17\))) # (!\MUXA|salida[3]~6_combout\ & (\ALUCOMP|Add0~6_combout\ & !\ALUCOMP|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~6_combout\,
	datab => \ALUCOMP|Add0~6_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~17\,
	combout => \ALUCOMP|Add0~18_combout\,
	cout => \ALUCOMP|Add0~19\);

-- Location: LCCOMB_X45_Y14_N26
\ALUCOMP|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~20_combout\ = (\MUXA|salida[4]~5_combout\ & ((\ALUCOMP|Add0~5_combout\ & (\ALUCOMP|Add0~19\ & VCC)) # (!\ALUCOMP|Add0~5_combout\ & (!\ALUCOMP|Add0~19\)))) # (!\MUXA|salida[4]~5_combout\ & ((\ALUCOMP|Add0~5_combout\ & (!\ALUCOMP|Add0~19\)) # 
-- (!\ALUCOMP|Add0~5_combout\ & ((\ALUCOMP|Add0~19\) # (GND)))))
-- \ALUCOMP|Add0~21\ = CARRY((\MUXA|salida[4]~5_combout\ & (!\ALUCOMP|Add0~5_combout\ & !\ALUCOMP|Add0~19\)) # (!\MUXA|salida[4]~5_combout\ & ((!\ALUCOMP|Add0~19\) # (!\ALUCOMP|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~5_combout\,
	datab => \ALUCOMP|Add0~5_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~19\,
	combout => \ALUCOMP|Add0~20_combout\,
	cout => \ALUCOMP|Add0~21\);

-- Location: LCCOMB_X44_Y13_N24
\ALUCOMP|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux27~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux27~0_combout\ & (\ALUCOMP|Add0~20_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux27~0_combout\,
	datac => \ALUCOMP|Add0~20_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux27~1_combout\);

-- Location: LCCOMB_X44_Y13_N10
\ALUCOMP|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[4]~5_combout\)) # (!\MUXB|Mux27~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux27~0_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux27~1_combout\,
	datad => \MUXA|salida[4]~5_combout\,
	combout => \ALUCOMP|Mux27~2_combout\);

-- Location: LCFF_X39_Y14_N3
\REGFILE|MEM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~42_regout\);

-- Location: LCFF_X39_Y14_N9
\REGFILE|MEM~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~74_regout\);

-- Location: LCCOMB_X39_Y14_N8
\REGFILE|MEM~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~479_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~74_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~42_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~42_regout\,
	datac => \REGFILE|MEM~74_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~479_combout\);

-- Location: LCCOMB_X40_Y13_N24
\REGFILE|MEM~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~480_combout\ = (\REGFILE|MEM~479_combout\ & ((\REGFILE|MEM~138_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~479_combout\ & (((\REGFILE|MEM~106_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~138_regout\,
	datab => \REGFILE|MEM~106_regout\,
	datac => \REGFILE|MEM~479_combout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~480_combout\);

-- Location: LCFF_X48_Y12_N27
\REGFILE|MEM~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~266_regout\);

-- Location: LCFF_X49_Y12_N23
\REGFILE|MEM~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~170_regout\);

-- Location: LCFF_X49_Y12_N17
\REGFILE|MEM~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~234_regout\);

-- Location: LCCOMB_X49_Y12_N16
\REGFILE|MEM~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~477_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~234_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~170_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~170_regout\,
	datac => \REGFILE|MEM~234_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~477_combout\);

-- Location: LCCOMB_X48_Y12_N0
\REGFILE|MEM~202feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~202feeder_combout\ = \MUXMemReg|salida[6]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[6]~3_combout\,
	combout => \REGFILE|MEM~202feeder_combout\);

-- Location: LCFF_X48_Y12_N1
\REGFILE|MEM~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~202feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~202_regout\);

-- Location: LCCOMB_X48_Y12_N30
\REGFILE|MEM~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~478_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~477_combout\ & (\REGFILE|MEM~266_regout\)) # (!\REGFILE|MEM~477_combout\ & ((\REGFILE|MEM~202_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~266_regout\,
	datac => \REGFILE|MEM~477_combout\,
	datad => \REGFILE|MEM~202_regout\,
	combout => \REGFILE|MEM~478_combout\);

-- Location: LCCOMB_X47_Y12_N22
\REGFILE|MEM~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~481_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~478_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~480_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~480_combout\,
	datad => \REGFILE|MEM~478_combout\,
	combout => \REGFILE|MEM~481_combout\);

-- Location: LCFF_X47_Y12_N23
\regA|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(6));

-- Location: LCCOMB_X47_Y12_N20
\MUXA|salida[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~3_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(6))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(6)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(6),
	datab => \regA|dt_out\(6),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[6]~3_combout\);

-- Location: LCCOMB_X44_Y13_N30
\ALUCOMP|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~0_combout\ = (\MUXB|Mux25~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\MUXA|salida[6]~3_combout\ & !\ALUCOMP|Mux28~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[6]~3_combout\) # 
-- (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[6]~3_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux25~0_combout\);

-- Location: LCCOMB_X46_Y13_N16
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (\regB|dt_out\(6) & ((\MUXB|Mux16~1_combout\) # ((\INSTREG|jump_out\(6) & \MUXB|Mux16~0_combout\)))) # (!\regB|dt_out\(6) & (((\INSTREG|jump_out\(6) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(6),
	datab => \MUXB|Mux16~1_combout\,
	datac => \INSTREG|jump_out\(6),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCCOMB_X45_Y14_N8
\ALUCOMP|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~3_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Add0~3_combout\);

-- Location: LCCOMB_X45_Y14_N28
\ALUCOMP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~22_combout\ = ((\ALUCOMP|Add0~4_combout\ $ (\MUXA|salida[5]~4_combout\ $ (!\ALUCOMP|Add0~21\)))) # (GND)
-- \ALUCOMP|Add0~23\ = CARRY((\ALUCOMP|Add0~4_combout\ & ((\MUXA|salida[5]~4_combout\) # (!\ALUCOMP|Add0~21\))) # (!\ALUCOMP|Add0~4_combout\ & (\MUXA|salida[5]~4_combout\ & !\ALUCOMP|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~4_combout\,
	datab => \MUXA|salida[5]~4_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~21\,
	combout => \ALUCOMP|Add0~22_combout\,
	cout => \ALUCOMP|Add0~23\);

-- Location: LCCOMB_X45_Y14_N30
\ALUCOMP|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~24_combout\ = (\MUXA|salida[6]~3_combout\ & ((\ALUCOMP|Add0~3_combout\ & (\ALUCOMP|Add0~23\ & VCC)) # (!\ALUCOMP|Add0~3_combout\ & (!\ALUCOMP|Add0~23\)))) # (!\MUXA|salida[6]~3_combout\ & ((\ALUCOMP|Add0~3_combout\ & (!\ALUCOMP|Add0~23\)) # 
-- (!\ALUCOMP|Add0~3_combout\ & ((\ALUCOMP|Add0~23\) # (GND)))))
-- \ALUCOMP|Add0~25\ = CARRY((\MUXA|salida[6]~3_combout\ & (!\ALUCOMP|Add0~3_combout\ & !\ALUCOMP|Add0~23\)) # (!\MUXA|salida[6]~3_combout\ & ((!\ALUCOMP|Add0~23\) # (!\ALUCOMP|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~3_combout\,
	datab => \ALUCOMP|Add0~3_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~23\,
	combout => \ALUCOMP|Add0~24_combout\,
	cout => \ALUCOMP|Add0~25\);

-- Location: LCCOMB_X44_Y13_N28
\ALUCOMP|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux25~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux25~0_combout\ & (\ALUCOMP|Add0~24_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux25~0_combout\,
	datac => \ALUCOMP|Add0~24_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux25~1_combout\);

-- Location: LCCOMB_X44_Y13_N16
\ALUCOMP|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[6]~3_combout\)) # (!\MUXB|Mux25~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[6]~3_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux25~1_combout\,
	combout => \ALUCOMP|Mux25~2_combout\);

-- Location: LCCOMB_X43_Y13_N16
\PCwrite~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~5_combout\ = (!\ALUCOMP|Mux25~2_combout\ & !\ALUCOMP|Mux23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCOMP|Mux25~2_combout\,
	datad => \ALUCOMP|Mux23~2_combout\,
	combout => \PCwrite~5_combout\);

-- Location: LCCOMB_X42_Y11_N16
\PROGCOUNT|addr_out[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[12]~13_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(12))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(12),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux19~2_combout\,
	combout => \PROGCOUNT|addr_out[12]~13_combout\);

-- Location: LCFF_X42_Y11_N17
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[12]~13_combout\,
	sdata => \INSTREG|jump_out\(10),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X46_Y10_N10
\MUXA|salida[12]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~29_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(12))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(12))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(12),
	datab => \PROGCOUNT|addr_out\(12),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[12]~29_combout\);

-- Location: LCCOMB_X44_Y15_N14
\ALUCOMP|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~0_combout\ = (\ALUCOMP|Mux28~1_combout\ & (\ALUCONTRL|op[0]~0_combout\)) # (!\ALUCOMP|Mux28~1_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux19~0_combout\) # (\MUXA|salida[12]~29_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & 
-- (\MUXB|Mux19~0_combout\ & \MUXA|salida[12]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXB|Mux19~0_combout\,
	datad => \MUXA|salida[12]~29_combout\,
	combout => \ALUCOMP|Mux19~0_combout\);

-- Location: LCCOMB_X44_Y15_N28
\ALUCOMP|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux19~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux19~0_combout\ & (\ALUCOMP|Add0~48_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux19~0_combout\,
	datac => \ALUCOMP|Add0~48_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux19~1_combout\);

-- Location: LCCOMB_X44_Y15_N24
\ALUCOMP|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux19~0_combout\)) # (!\MUXA|salida[12]~29_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXA|salida[12]~29_combout\,
	datac => \MUXB|Mux19~0_combout\,
	datad => \ALUCOMP|Mux19~1_combout\,
	combout => \ALUCOMP|Mux19~2_combout\);

-- Location: LCCOMB_X43_Y13_N18
\PCwrite~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~6_combout\ = (!\ALUCOMP|Mux21~2_combout\ & (!\ALUCOMP|Mux19~2_combout\ & (!\ALUCOMP|Mux30~2_combout\ & !\ALUCOMP|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~2_combout\,
	datab => \ALUCOMP|Mux19~2_combout\,
	datac => \ALUCOMP|Mux30~2_combout\,
	datad => \ALUCOMP|Mux17~2_combout\,
	combout => \PCwrite~6_combout\);

-- Location: LCCOMB_X43_Y13_N0
\PCwrite~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~7_combout\ = (!\ALUCOMP|Mux29~2_combout\ & (!\ALUCOMP|Mux27~2_combout\ & (\PCwrite~5_combout\ & \PCwrite~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux29~2_combout\,
	datab => \ALUCOMP|Mux27~2_combout\,
	datac => \PCwrite~5_combout\,
	datad => \PCwrite~6_combout\,
	combout => \PCwrite~7_combout\);

-- Location: LCCOMB_X43_Y13_N14
\PCwrite~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~9_combout\ = (!\PROGCOUNT|addr_out[30]~18_combout\ & (\PCwrite~8_combout\ & \PCwrite~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out[30]~18_combout\,
	datac => \PCwrite~8_combout\,
	datad => \PCwrite~7_combout\,
	combout => \PCwrite~9_combout\);

-- Location: LCCOMB_X43_Y13_N2
\PCwrite~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~14_combout\ = (!\PROGCOUNT|addr_out[29]~25_combout\ & (\CONTROLU|ALUop[0]~0_combout\ & (\PCwrite~13_combout\ & \PCwrite~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out[29]~25_combout\,
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datac => \PCwrite~13_combout\,
	datad => \PCwrite~10_combout\,
	combout => \PCwrite~14_combout\);

-- Location: LCCOMB_X43_Y13_N28
PCwrite : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~combout\ = (\PCwrite~0_combout\) # ((\PCwrite~4_combout\ & (\PCwrite~9_combout\ & \PCwrite~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCwrite~0_combout\,
	datab => \PCwrite~4_combout\,
	datac => \PCwrite~9_combout\,
	datad => \PCwrite~14_combout\,
	combout => \PCwrite~combout\);

-- Location: LCFF_X43_Y14_N15
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[18]~21_combout\,
	sdata => \INSTREG|jump_out\(16),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(18));

-- Location: LCCOMB_X44_Y10_N18
\MUXA|salida[18]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~23_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(18)))) # (!\rst~combout\ & (\regA|dt_out\(18))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(18),
	datab => \PROGCOUNT|addr_out\(18),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[18]~23_combout\);

-- Location: LCCOMB_X44_Y12_N2
\ALUCOMP|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~1_combout\ = (\ALUCOMP|Mux13~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux28~1_combout\))) # (!\ALUCOMP|Mux13~0_combout\ & (\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux13~0_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Add0~60_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux13~1_combout\);

-- Location: LCCOMB_X44_Y12_N4
\ALUCOMP|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[18]~23_combout\)) # (!\MUXB|Mux13~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux13~0_combout\,
	datab => \MUXA|salida[18]~23_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux13~1_combout\,
	combout => \ALUCOMP|Mux13~2_combout\);

-- Location: LCFF_X44_Y12_N5
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCCOMB_X43_Y9_N8
\MUXREAD|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux13~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a18\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|MEM_rtl_0|auto_generated|ram_block1a18\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux13~0_combout\);

-- Location: LCFF_X43_Y9_N9
\MDR|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(18));

-- Location: LCCOMB_X42_Y10_N18
\MUXMemReg|salida[18]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[18]~15_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & (\regALU|dt_out\(18))) # (!\rst~combout\ & ((\MDR|dt_out\(18)))))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \regALU|dt_out\(18),
	datac => \MDR|dt_out\(18),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[18]~15_combout\);

-- Location: LCFF_X39_Y10_N17
\REGFILE|MEM~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~182_regout\);

-- Location: LCCOMB_X40_Y14_N2
\REGFILE|MEM~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~367_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~246_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~182_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~246_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~182_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~367_combout\);

-- Location: LCFF_X40_Y11_N23
\REGFILE|MEM~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~214_regout\);

-- Location: LCCOMB_X40_Y11_N22
\REGFILE|MEM~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~368_combout\ = (\REGFILE|MEM~367_combout\ & ((\REGFILE|MEM~278_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~367_combout\ & (((\REGFILE|MEM~214_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~278_regout\,
	datab => \REGFILE|MEM~367_combout\,
	datac => \REGFILE|MEM~214_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~368_combout\);

-- Location: LCFF_X39_Y10_N19
\REGFILE|MEM~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~150_regout\);

-- Location: LCFF_X39_Y12_N13
\REGFILE|MEM~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~118_regout\);

-- Location: LCCOMB_X39_Y12_N26
\REGFILE|MEM~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~370_combout\ = (\REGFILE|MEM~369_combout\ & (((\REGFILE|MEM~150_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~369_combout\ & (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~118_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~369_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~150_regout\,
	datad => \REGFILE|MEM~118_regout\,
	combout => \REGFILE|MEM~370_combout\);

-- Location: LCCOMB_X45_Y10_N30
\REGFILE|MEM~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~371_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~368_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~368_combout\,
	datad => \REGFILE|MEM~370_combout\,
	combout => \REGFILE|MEM~371_combout\);

-- Location: LCFF_X45_Y10_N31
\regB|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(18));

-- Location: LCFF_X49_Y10_N15
\INSTREG|jump_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a21\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(21));

-- Location: LCFF_X49_Y11_N25
\REGFILE|MEM~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~244_regout\);

-- Location: LCCOMB_X49_Y11_N24
\REGFILE|MEM~587\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~587_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~244_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~180_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~244_regout\,
	datad => \REGFILE|MEM~180_regout\,
	combout => \REGFILE|MEM~587_combout\);

-- Location: LCFF_X40_Y11_N13
\REGFILE|MEM~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~276_regout\);

-- Location: LCCOMB_X40_Y11_N12
\REGFILE|MEM~588\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~588_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~587_combout\ & (\REGFILE|MEM~276_regout\)) # (!\REGFILE|MEM~587_combout\ & ((\REGFILE|MEM~212_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~587_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~587_combout\,
	datac => \REGFILE|MEM~276_regout\,
	datad => \REGFILE|MEM~212_regout\,
	combout => \REGFILE|MEM~588_combout\);

-- Location: LCCOMB_X40_Y14_N24
\REGFILE|MEM~591\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~591_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~588_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~590_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~590_combout\,
	datab => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~588_combout\,
	combout => \REGFILE|MEM~591_combout\);

-- Location: LCFF_X40_Y14_N25
\regA|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(16));

-- Location: LCCOMB_X44_Y14_N16
\MUXA|salida[16]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~25_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(16))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(16)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(16),
	datab => \regA|dt_out\(16),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[16]~25_combout\);

-- Location: LCCOMB_X44_Y12_N6
\ALUCOMP|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Add0~58_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux14~0_combout\);

-- Location: LCCOMB_X44_Y12_N0
\ALUCOMP|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~3_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux14~2_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux14~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Mux14~2_combout\,
	datad => \ALUCOMP|Mux14~0_combout\,
	combout => \ALUCOMP|Mux14~3_combout\);

-- Location: LCFF_X44_Y12_N1
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCCOMB_X42_Y10_N0
\MUXMemReg|salida[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[17]~14_combout\ = (\rst~combout\ & (((\regALU|dt_out\(17))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(17))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MDR|dt_out\(17),
	datac => \regALU|dt_out\(17),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[17]~14_combout\);

-- Location: LCFF_X47_Y10_N27
\REGFILE|MEM~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~149_regout\);

-- Location: LCCOMB_X38_Y14_N22
\REGFILE|MEM~53feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~53feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~53feeder_combout\);

-- Location: LCFF_X38_Y14_N23
\REGFILE|MEM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~53feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~53_regout\);

-- Location: LCFF_X47_Y10_N21
\REGFILE|MEM~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~85_regout\);

-- Location: LCCOMB_X38_Y14_N0
\REGFILE|MEM~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~364_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~85_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~53_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~53_regout\,
	datad => \REGFILE|MEM~85_regout\,
	combout => \REGFILE|MEM~364_combout\);

-- Location: LCFF_X49_Y13_N31
\REGFILE|MEM~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~117_regout\);

-- Location: LCCOMB_X47_Y10_N0
\REGFILE|MEM~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~365_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~364_combout\ & (\REGFILE|MEM~149_regout\)) # (!\REGFILE|MEM~364_combout\ & ((\REGFILE|MEM~117_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~149_regout\,
	datac => \REGFILE|MEM~364_combout\,
	datad => \REGFILE|MEM~117_regout\,
	combout => \REGFILE|MEM~365_combout\);

-- Location: LCCOMB_X39_Y11_N8
\REGFILE|MEM~245feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~245feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~245feeder_combout\);

-- Location: LCFF_X39_Y11_N9
\REGFILE|MEM~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~245feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~245_regout\);

-- Location: LCFF_X49_Y11_N29
\REGFILE|MEM~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~181_regout\);

-- Location: LCCOMB_X39_Y11_N6
\REGFILE|MEM~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~362_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~245_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~181_regout\ & !\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~245_regout\,
	datac => \REGFILE|MEM~181_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~362_combout\);

-- Location: LCFF_X44_Y11_N19
\REGFILE|MEM~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~277_regout\);

-- Location: LCCOMB_X47_Y11_N4
\REGFILE|MEM~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~363_combout\ = (\REGFILE|MEM~362_combout\ & (((\REGFILE|MEM~277_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~362_combout\ & (\REGFILE|MEM~213_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~213_regout\,
	datab => \REGFILE|MEM~362_combout\,
	datac => \REGFILE|MEM~277_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~363_combout\);

-- Location: LCCOMB_X47_Y11_N22
\REGFILE|MEM~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~366_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~363_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~365_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~365_combout\,
	datac => \REGFILE|MEM~363_combout\,
	combout => \REGFILE|MEM~366_combout\);

-- Location: LCFF_X47_Y11_N23
\regB|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~366_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(17));

-- Location: LCCOMB_X43_Y9_N18
\MUXREAD|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux16~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a15\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|MEM_rtl_0|auto_generated|ram_block1a15\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux16~0_combout\);

-- Location: LCFF_X43_Y9_N19
\MDR|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(15));

-- Location: LCCOMB_X47_Y10_N8
\MUXMemReg|salida[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[15]~12_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & (\regALU|dt_out\(15))) # (!\rst~combout\ & ((\MDR|dt_out\(15)))))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(15),
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \MDR|dt_out\(15),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[15]~12_combout\);

-- Location: LCFF_X48_Y10_N1
\REGFILE|MEM~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~115_regout\);

-- Location: LCFF_X49_Y10_N19
\REGFILE|MEM~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~147_regout\);

-- Location: LCCOMB_X48_Y10_N0
\REGFILE|MEM~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~355_combout\ = (\REGFILE|MEM~354_combout\ & (((\REGFILE|MEM~147_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~354_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~115_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~354_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~115_regout\,
	datad => \REGFILE|MEM~147_regout\,
	combout => \REGFILE|MEM~355_combout\);

-- Location: LCFF_X40_Y11_N25
\REGFILE|MEM~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~211_regout\);

-- Location: LCFF_X40_Y11_N15
\REGFILE|MEM~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~275_regout\);

-- Location: LCCOMB_X40_Y11_N20
\REGFILE|MEM~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~353_combout\ = (\REGFILE|MEM~352_combout\ & (((\REGFILE|MEM~275_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~352_combout\ & (\REGFILE|MEM~211_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~352_combout\,
	datab => \REGFILE|MEM~211_regout\,
	datac => \REGFILE|MEM~275_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~353_combout\);

-- Location: LCCOMB_X47_Y11_N8
\REGFILE|MEM~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~356_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~353_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~355_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~355_combout\,
	datac => \REGFILE|MEM~353_combout\,
	combout => \REGFILE|MEM~356_combout\);

-- Location: LCFF_X47_Y11_N9
\regB|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(15));

-- Location: LCFF_X46_Y14_N31
\INSTREG|jump_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a14\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(14));

-- Location: LCCOMB_X46_Y14_N30
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\MUXB|Mux16~1_combout\ & ((\regB|dt_out\(14)) # ((\INSTREG|jump_out\(14) & \MUXB|Mux16~0_combout\)))) # (!\MUXB|Mux16~1_combout\ & (((\INSTREG|jump_out\(14) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~1_combout\,
	datab => \regB|dt_out\(14),
	datac => \INSTREG|jump_out\(14),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCCOMB_X43_Y15_N26
\ALUCOMP|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux17~0_combout\) # ((\ALUCOMP|Mux28~1_combout\) # (\MUXA|salida[14]~27_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux17~0_combout\ & (!\ALUCOMP|Mux28~1_combout\ & 
-- \MUXA|salida[14]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXA|salida[14]~27_combout\,
	combout => \ALUCOMP|Mux17~0_combout\);

-- Location: LCCOMB_X44_Y15_N22
\ALUCOMP|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~1_combout\ = (\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux17~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux17~0_combout\ & (\ALUCOMP|Add0~52_combout\)))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux17~0_combout\,
	datac => \ALUCOMP|Add0~52_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux17~1_combout\);

-- Location: LCCOMB_X44_Y15_N26
\ALUCOMP|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[14]~27_combout\)) # (!\MUXB|Mux17~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datac => \MUXA|salida[14]~27_combout\,
	datad => \ALUCOMP|Mux17~1_combout\,
	combout => \ALUCOMP|Mux17~2_combout\);

-- Location: LCFF_X44_Y15_N27
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCCOMB_X49_Y9_N6
\MUXMemReg|salida[14]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[14]~11_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(14)))) # (!\rst~combout\ & (\MDR|dt_out\(14))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(14),
	datab => \regALU|dt_out\(14),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[14]~11_combout\);

-- Location: LCFF_X48_Y14_N31
\REGFILE|MEM~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~274_regout\);

-- Location: LCFF_X49_Y11_N11
\REGFILE|MEM~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~178_regout\);

-- Location: LCFF_X49_Y11_N13
\REGFILE|MEM~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~242_regout\);

-- Location: LCCOMB_X49_Y11_N10
\REGFILE|MEM~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~347_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~242_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~178_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~178_regout\,
	datad => \REGFILE|MEM~242_regout\,
	combout => \REGFILE|MEM~347_combout\);

-- Location: LCCOMB_X47_Y15_N8
\REGFILE|MEM~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~348_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~347_combout\ & ((\REGFILE|MEM~274_regout\))) # (!\REGFILE|MEM~347_combout\ & (\REGFILE|MEM~210_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~210_regout\,
	datab => \REGFILE|MEM~274_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~347_combout\,
	combout => \REGFILE|MEM~348_combout\);

-- Location: LCFF_X48_Y10_N17
\REGFILE|MEM~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~114_regout\);

-- Location: LCCOMB_X49_Y9_N0
\REGFILE|MEM~50feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~50feeder_combout\ = \MUXMemReg|salida[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[14]~11_combout\,
	combout => \REGFILE|MEM~50feeder_combout\);

-- Location: LCFF_X49_Y9_N1
\REGFILE|MEM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~50feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~50_regout\);

-- Location: LCCOMB_X49_Y9_N30
\REGFILE|MEM~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~349_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~82_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~50_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~82_regout\,
	datab => \REGFILE|MEM~50_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~349_combout\);

-- Location: LCCOMB_X48_Y10_N16
\REGFILE|MEM~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~350_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~349_combout\ & (\REGFILE|MEM~146_regout\)) # (!\REGFILE|MEM~349_combout\ & ((\REGFILE|MEM~114_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~146_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~114_regout\,
	datad => \REGFILE|MEM~349_combout\,
	combout => \REGFILE|MEM~350_combout\);

-- Location: LCCOMB_X47_Y11_N26
\REGFILE|MEM~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~351_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~348_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~350_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~348_combout\,
	datad => \REGFILE|MEM~350_combout\,
	combout => \REGFILE|MEM~351_combout\);

-- Location: LCFF_X47_Y11_N27
\regB|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(14));

-- Location: LCCOMB_X42_Y9_N18
\MUXREAD|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux19~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a12\,
	combout => \MUXREAD|Mux19~0_combout\);

-- Location: LCFF_X42_Y9_N19
\MDR|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(12));

-- Location: LCCOMB_X47_Y15_N2
\MUXMemReg|salida[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[12]~9_combout\ = (\rst~combout\ & (\regALU|dt_out\(12))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(12)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(12),
	datab => \MDR|dt_out\(12),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[12]~9_combout\);

-- Location: LCFF_X48_Y10_N9
\REGFILE|MEM~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~112_regout\);

-- Location: LCFF_X48_Y9_N15
\REGFILE|MEM~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~80_regout\);

-- Location: LCCOMB_X48_Y9_N0
\REGFILE|MEM~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~339_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~80_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~48_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~48_regout\,
	datab => \REGFILE|MEM~80_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~339_combout\);

-- Location: LCCOMB_X48_Y10_N8
\REGFILE|MEM~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~340_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~339_combout\ & (\REGFILE|MEM~144_regout\)) # (!\REGFILE|MEM~339_combout\ & ((\REGFILE|MEM~112_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~144_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~112_regout\,
	datad => \REGFILE|MEM~339_combout\,
	combout => \REGFILE|MEM~340_combout\);

-- Location: LCFF_X46_Y10_N25
\REGFILE|MEM~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~272_regout\);

-- Location: LCFF_X49_Y14_N17
\REGFILE|MEM~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~208_regout\);

-- Location: LCCOMB_X45_Y9_N4
\REGFILE|MEM~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~338_combout\ = (\REGFILE|MEM~337_combout\ & (((\REGFILE|MEM~272_regout\)) # (!\INSTREG|jump_out\(16)))) # (!\REGFILE|MEM~337_combout\ & (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~208_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~337_combout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~272_regout\,
	datad => \REGFILE|MEM~208_regout\,
	combout => \REGFILE|MEM~338_combout\);

-- Location: LCCOMB_X46_Y13_N4
\REGFILE|MEM~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~341_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~338_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~340_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~338_combout\,
	combout => \REGFILE|MEM~341_combout\);

-- Location: LCFF_X46_Y13_N5
\regB|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(12));

-- Location: LCFF_X48_Y13_N23
\INSTREG|jump_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a23\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(23));

-- Location: LCFF_X49_Y9_N17
\REGFILE|MEM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~45_regout\);

-- Location: LCCOMB_X48_Y9_N16
\REGFILE|MEM~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~464_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~77_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~45_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~77_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~45_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~464_combout\);

-- Location: LCFF_X49_Y10_N23
\REGFILE|MEM~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~141_regout\);

-- Location: LCCOMB_X48_Y11_N10
\REGFILE|MEM~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~465_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~464_combout\ & (\REGFILE|MEM~141_regout\)) # (!\REGFILE|MEM~464_combout\ & ((\REGFILE|MEM~109_regout\))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~464_combout\,
	datac => \REGFILE|MEM~141_regout\,
	datad => \REGFILE|MEM~109_regout\,
	combout => \REGFILE|MEM~465_combout\);

-- Location: LCCOMB_X46_Y10_N22
\REGFILE|MEM~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~466_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~463_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~465_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~463_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~465_combout\,
	combout => \REGFILE|MEM~466_combout\);

-- Location: LCFF_X46_Y10_N23
\regA|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(9));

-- Location: LCCOMB_X46_Y10_N8
\MUXA|salida[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~0_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(9))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(9)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(9),
	datab => \regA|dt_out\(9),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[9]~0_combout\);

-- Location: LCCOMB_X46_Y13_N18
\ALUCOMP|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~1_combout\ = \MUXB|Mux23~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux23~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~1_combout\);

-- Location: LCCOMB_X46_Y14_N26
\ALUCOMP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~2_combout\ = \MUXB|Mux24~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux24~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~2_combout\);

-- Location: LCCOMB_X45_Y13_N0
\ALUCOMP|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~26_combout\ = ((\MUXA|salida[7]~2_combout\ $ (\ALUCOMP|Add0~2_combout\ $ (!\ALUCOMP|Add0~25\)))) # (GND)
-- \ALUCOMP|Add0~27\ = CARRY((\MUXA|salida[7]~2_combout\ & ((\ALUCOMP|Add0~2_combout\) # (!\ALUCOMP|Add0~25\))) # (!\MUXA|salida[7]~2_combout\ & (\ALUCOMP|Add0~2_combout\ & !\ALUCOMP|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[7]~2_combout\,
	datab => \ALUCOMP|Add0~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~25\,
	combout => \ALUCOMP|Add0~26_combout\,
	cout => \ALUCOMP|Add0~27\);

-- Location: LCCOMB_X45_Y13_N6
\ALUCOMP|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~44_combout\ = (\ALUCOMP|Add0~43_combout\ & ((\MUXA|salida[10]~31_combout\ & (\ALUCOMP|Add0~31\ & VCC)) # (!\MUXA|salida[10]~31_combout\ & (!\ALUCOMP|Add0~31\)))) # (!\ALUCOMP|Add0~43_combout\ & ((\MUXA|salida[10]~31_combout\ & 
-- (!\ALUCOMP|Add0~31\)) # (!\MUXA|salida[10]~31_combout\ & ((\ALUCOMP|Add0~31\) # (GND)))))
-- \ALUCOMP|Add0~45\ = CARRY((\ALUCOMP|Add0~43_combout\ & (!\MUXA|salida[10]~31_combout\ & !\ALUCOMP|Add0~31\)) # (!\ALUCOMP|Add0~43_combout\ & ((!\ALUCOMP|Add0~31\) # (!\MUXA|salida[10]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~43_combout\,
	datab => \MUXA|salida[10]~31_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~31\,
	combout => \ALUCOMP|Add0~44_combout\,
	cout => \ALUCOMP|Add0~45\);

-- Location: LCCOMB_X44_Y15_N12
\ALUCOMP|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~1_combout\ = (\ALUCOMP|Mux21~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Add0~44_combout\ & (\ALUCOMP|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Add0~44_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux21~1_combout\);

-- Location: LCCOMB_X44_Y15_N2
\ALUCOMP|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux21~0_combout\)) # (!\MUXA|salida[10]~31_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \MUXA|salida[10]~31_combout\,
	datac => \MUXB|Mux21~0_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux21~2_combout\);

-- Location: LCFF_X44_Y15_N3
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCCOMB_X42_Y14_N6
\PROGCOUNT|addr_out[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[10]~11_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(10))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(10),
	datad => \ALUCOMP|Mux21~2_combout\,
	combout => \PROGCOUNT|addr_out[10]~11_combout\);

-- Location: LCFF_X46_Y13_N1
\INSTREG|jump_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a8\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(8));

-- Location: LCFF_X42_Y14_N7
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[10]~11_combout\,
	sdata => \INSTREG|jump_out\(8),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X49_Y10_N28
\REGFILE|MEM~142feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~142feeder_combout\ = \MUXMemReg|salida[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[10]~7_combout\,
	combout => \REGFILE|MEM~142feeder_combout\);

-- Location: LCFF_X49_Y10_N29
\REGFILE|MEM~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~142feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~142_regout\);

-- Location: LCFF_X48_Y9_N9
\REGFILE|MEM~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~78_regout\);

-- Location: LCFF_X49_Y9_N21
\REGFILE|MEM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~46_regout\);

-- Location: LCCOMB_X48_Y9_N26
\REGFILE|MEM~619\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~619_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~78_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~46_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~78_regout\,
	datad => \REGFILE|MEM~46_regout\,
	combout => \REGFILE|MEM~619_combout\);

-- Location: LCCOMB_X48_Y11_N6
\REGFILE|MEM~620\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~620_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~619_combout\ & ((\REGFILE|MEM~142_regout\))) # (!\REGFILE|MEM~619_combout\ & (\REGFILE|MEM~110_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~619_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~110_regout\,
	datac => \REGFILE|MEM~142_regout\,
	datad => \REGFILE|MEM~619_combout\,
	combout => \REGFILE|MEM~620_combout\);

-- Location: LCFF_X49_Y14_N13
\REGFILE|MEM~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~206_regout\);

-- Location: LCFF_X48_Y12_N17
\REGFILE|MEM~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~270_regout\);

-- Location: LCCOMB_X48_Y12_N16
\REGFILE|MEM~618\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~618_combout\ = (\REGFILE|MEM~617_combout\ & (((\REGFILE|MEM~270_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~617_combout\ & (\REGFILE|MEM~206_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~617_combout\,
	datab => \REGFILE|MEM~206_regout\,
	datac => \REGFILE|MEM~270_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~618_combout\);

-- Location: LCCOMB_X44_Y15_N18
\REGFILE|MEM~621\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~621_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~618_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~620_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~620_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~618_combout\,
	combout => \REGFILE|MEM~621_combout\);

-- Location: LCFF_X44_Y15_N19
\regA|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(10));

-- Location: LCCOMB_X44_Y15_N20
\MUXA|salida[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~31_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(10))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(10)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(10),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(10),
	combout => \MUXA|salida[10]~31_combout\);

-- Location: LCCOMB_X44_Y11_N4
\ALUCOMP|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~46_combout\,
	combout => \ALUCOMP|Mux20~0_combout\);

-- Location: LCCOMB_X42_Y14_N24
\PROGCOUNT|addr_out[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[11]~12_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(11))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(11),
	datad => \ALUCOMP|Mux20~2_combout\,
	combout => \PROGCOUNT|addr_out[11]~12_combout\);

-- Location: LCFF_X46_Y14_N11
\INSTREG|jump_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a9\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(9));

-- Location: LCFF_X42_Y14_N25
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[11]~12_combout\,
	sdata => \INSTREG|jump_out\(9),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(11));

-- Location: LCCOMB_X46_Y10_N2
\MUXA|salida[11]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~30_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(11))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(11))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(11),
	datab => \PROGCOUNT|addr_out\(11),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[11]~30_combout\);

-- Location: LCCOMB_X46_Y15_N16
\ALUCOMP|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~1_combout\ = (\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~30_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXB|Mux20~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (!\ALUCOMP|Mux28~3_combout\ & 
-- \MUXA|salida[11]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \MUXB|Mux20~0_combout\,
	datad => \MUXA|salida[11]~30_combout\,
	combout => \ALUCOMP|Mux20~1_combout\);

-- Location: LCCOMB_X44_Y11_N10
\ALUCOMP|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux20~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux20~0_combout\)) # (!\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux20~0_combout\,
	datad => \ALUCOMP|Mux20~1_combout\,
	combout => \ALUCOMP|Mux20~2_combout\);

-- Location: LCFF_X44_Y11_N11
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCCOMB_X42_Y9_N20
\MUXREAD|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux20~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a11\,
	combout => \MUXREAD|Mux20~0_combout\);

-- Location: LCFF_X42_Y9_N21
\MDR|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(11));

-- Location: LCCOMB_X46_Y15_N24
\MUXMemReg|salida[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[11]~8_combout\ = (\rst~combout\ & (\regALU|dt_out\(11))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(11)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(11),
	datac => \MDR|dt_out\(11),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[11]~8_combout\);

-- Location: LCFF_X49_Y14_N23
\REGFILE|MEM~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~207_regout\);

-- Location: LCFF_X48_Y14_N17
\REGFILE|MEM~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~271_regout\);

-- Location: LCCOMB_X45_Y15_N20
\REGFILE|MEM~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~333_combout\ = (\REGFILE|MEM~332_combout\ & (((\REGFILE|MEM~271_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~332_combout\ & (\REGFILE|MEM~207_regout\ & (\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~332_combout\,
	datab => \REGFILE|MEM~207_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~271_regout\,
	combout => \REGFILE|MEM~333_combout\);

-- Location: LCCOMB_X48_Y9_N22
\REGFILE|MEM~79feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~79feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~79feeder_combout\);

-- Location: LCFF_X48_Y9_N23
\REGFILE|MEM~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~79feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~79_regout\);

-- Location: LCCOMB_X49_Y9_N14
\REGFILE|MEM~47feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~47feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~47feeder_combout\);

-- Location: LCFF_X49_Y9_N15
\REGFILE|MEM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~47feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~47_regout\);

-- Location: LCCOMB_X48_Y9_N20
\REGFILE|MEM~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~334_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~79_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~47_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~79_regout\,
	datac => \REGFILE|MEM~47_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~334_combout\);

-- Location: LCCOMB_X49_Y13_N16
\REGFILE|MEM~111feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~111feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~111feeder_combout\);

-- Location: LCFF_X49_Y13_N17
\REGFILE|MEM~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~111feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~111_regout\);

-- Location: LCFF_X43_Y9_N29
\REGFILE|MEM~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~143_regout\);

-- Location: LCCOMB_X45_Y9_N22
\REGFILE|MEM~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~335_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~334_combout\ & ((\REGFILE|MEM~143_regout\))) # (!\REGFILE|MEM~334_combout\ & (\REGFILE|MEM~111_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~334_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~334_combout\,
	datac => \REGFILE|MEM~111_regout\,
	datad => \REGFILE|MEM~143_regout\,
	combout => \REGFILE|MEM~335_combout\);

-- Location: LCCOMB_X45_Y15_N18
\REGFILE|MEM~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~336_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~333_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~335_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~333_combout\,
	datad => \REGFILE|MEM~335_combout\,
	combout => \REGFILE|MEM~336_combout\);

-- Location: LCFF_X46_Y14_N1
\regB|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~336_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(11));

-- Location: LCCOMB_X42_Y9_N22
\MUXREAD|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux21~0_combout\ = (!\MUXREAD|Mux27~0_combout\ & \MEM|MEM_rtl_0|auto_generated|ram_block1a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~0_combout\,
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a10\,
	combout => \MUXREAD|Mux21~0_combout\);

-- Location: LCFF_X42_Y9_N23
\MDR|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(10));

-- Location: LCCOMB_X45_Y9_N2
\MUXMemReg|salida[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[10]~7_combout\ = (\rst~combout\ & (\regALU|dt_out\(10))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(10)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(10),
	datab => \MDR|dt_out\(10),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[10]~7_combout\);

-- Location: LCFF_X48_Y11_N3
\REGFILE|MEM~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~110_regout\);

-- Location: LCCOMB_X48_Y11_N8
\REGFILE|MEM~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~330_combout\ = (\REGFILE|MEM~329_combout\ & (((\REGFILE|MEM~142_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~329_combout\ & (\REGFILE|MEM~110_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~329_combout\,
	datab => \REGFILE|MEM~110_regout\,
	datac => \REGFILE|MEM~142_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~330_combout\);

-- Location: LCCOMB_X49_Y11_N28
\REGFILE|MEM~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~331_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~328_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~330_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~328_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~330_combout\,
	combout => \REGFILE|MEM~331_combout\);

-- Location: LCFF_X46_Y14_N19
\regB|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~331_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(10));

-- Location: LCCOMB_X43_Y9_N0
\MUXREAD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux0~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a31\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux0~0_combout\);

-- Location: LCFF_X43_Y9_N1
\MDR|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(31));

-- Location: LCCOMB_X42_Y13_N12
\MUXMemReg|salida[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[31]~28_combout\ = (\rst~combout\ & (\regALU|dt_out\(31))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(31)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(31),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(31),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[31]~28_combout\);

-- Location: LCCOMB_X46_Y9_N10
\REGFILE|MEM~291feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~291feeder_combout\ = \MUXMemReg|salida[31]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[31]~28_combout\,
	combout => \REGFILE|MEM~291feeder_combout\);

-- Location: LCFF_X46_Y9_N11
\REGFILE|MEM~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~291feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~291_regout\);

-- Location: LCFF_X44_Y9_N3
\REGFILE|MEM~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~195_regout\);

-- Location: LCFF_X44_Y9_N13
\REGFILE|MEM~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~259_regout\);

-- Location: LCCOMB_X44_Y9_N2
\REGFILE|MEM~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~432_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~259_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~195_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~195_regout\,
	datad => \REGFILE|MEM~259_regout\,
	combout => \REGFILE|MEM~432_combout\);

-- Location: LCCOMB_X45_Y9_N10
\REGFILE|MEM~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~433_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~432_combout\ & ((\REGFILE|MEM~291_regout\))) # (!\REGFILE|MEM~432_combout\ & (\REGFILE|MEM~227_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~227_regout\,
	datab => \REGFILE|MEM~291_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~432_combout\,
	combout => \REGFILE|MEM~433_combout\);

-- Location: LCFF_X40_Y12_N11
\REGFILE|MEM~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~67_regout\);

-- Location: LCCOMB_X40_Y12_N10
\REGFILE|MEM~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~434_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~99_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~67_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~99_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~67_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~434_combout\);

-- Location: LCCOMB_X39_Y10_N26
\REGFILE|MEM~163feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~163feeder_combout\ = \MUXMemReg|salida[31]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[31]~28_combout\,
	combout => \REGFILE|MEM~163feeder_combout\);

-- Location: LCFF_X39_Y10_N27
\REGFILE|MEM~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~163feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~163_regout\);

-- Location: LCCOMB_X39_Y12_N4
\REGFILE|MEM~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~435_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~434_combout\ & ((\REGFILE|MEM~163_regout\))) # (!\REGFILE|MEM~434_combout\ & (\REGFILE|MEM~131_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~131_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~434_combout\,
	datad => \REGFILE|MEM~163_regout\,
	combout => \REGFILE|MEM~435_combout\);

-- Location: LCCOMB_X42_Y12_N14
\REGFILE|MEM~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~436_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~433_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~433_combout\,
	datad => \REGFILE|MEM~435_combout\,
	combout => \REGFILE|MEM~436_combout\);

-- Location: LCFF_X42_Y12_N15
\regB|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~436_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(31));

-- Location: LCCOMB_X42_Y12_N4
\MUXB|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~2_combout\ = (\regB|dt_out\(31) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(31),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y10_N20
\REGFILE|MEM~160feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~160feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~160feeder_combout\);

-- Location: LCFF_X39_Y10_N21
\REGFILE|MEM~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~160feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~160_regout\);

-- Location: LCCOMB_X47_Y10_N22
\REGFILE|MEM~96feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~96feeder_combout\ = \MUXMemReg|salida[28]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[28]~25_combout\,
	combout => \REGFILE|MEM~96feeder_combout\);

-- Location: LCFF_X47_Y10_N23
\REGFILE|MEM~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~96feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~96_regout\);

-- Location: LCCOMB_X40_Y12_N24
\REGFILE|MEM~529\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~529_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~96_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~64_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~96_regout\,
	datad => \REGFILE|MEM~64_regout\,
	combout => \REGFILE|MEM~529_combout\);

-- Location: LCCOMB_X39_Y12_N0
\REGFILE|MEM~530\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~530_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~529_combout\ & ((\REGFILE|MEM~160_regout\))) # (!\REGFILE|MEM~529_combout\ & (\REGFILE|MEM~128_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~128_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~160_regout\,
	datad => \REGFILE|MEM~529_combout\,
	combout => \REGFILE|MEM~530_combout\);

-- Location: LCCOMB_X44_Y13_N4
\REGFILE|MEM~531\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~531_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~528_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~530_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~528_combout\,
	datab => \REGFILE|MEM~530_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~531_combout\);

-- Location: LCFF_X44_Y13_N5
\regA|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~531_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(28));

-- Location: LCCOMB_X42_Y13_N28
\MUXA|salida[28]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~13_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(28))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(28)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datab => \rst~combout\,
	datac => \regA|dt_out\(28),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[28]~13_combout\);

-- Location: LCCOMB_X42_Y11_N26
\MUXB|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux6~0_combout\ = (\regB|dt_out\(25) & !\MUXB|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(25),
	datad => \MUXB|Mux0~1_combout\,
	combout => \MUXB|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y14_N0
\PROGCOUNT|addr_out[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[17]~29_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(17))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(17),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux14~3_combout\,
	combout => \PROGCOUNT|addr_out[17]~29_combout\);

-- Location: LCFF_X43_Y14_N1
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[17]~29_combout\,
	sdata => \INSTREG|jump_out\(15),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(17));

-- Location: LCCOMB_X39_Y11_N2
\REGFILE|MEM~582\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~582_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~245_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~181_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~245_regout\,
	datac => \REGFILE|MEM~181_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~582_combout\);

-- Location: LCCOMB_X47_Y11_N16
\REGFILE|MEM~583\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~583_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~582_combout\ & ((\REGFILE|MEM~277_regout\))) # (!\REGFILE|MEM~582_combout\ & (\REGFILE|MEM~213_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~582_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~213_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~277_regout\,
	datad => \REGFILE|MEM~582_combout\,
	combout => \REGFILE|MEM~583_combout\);

-- Location: LCCOMB_X47_Y10_N16
\REGFILE|MEM~585\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~585_combout\ = (\REGFILE|MEM~584_combout\ & ((\REGFILE|MEM~149_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~584_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~117_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~584_combout\,
	datab => \REGFILE|MEM~149_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~117_regout\,
	combout => \REGFILE|MEM~585_combout\);

-- Location: LCCOMB_X44_Y10_N22
\REGFILE|MEM~586\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~586_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~583_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~585_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~583_combout\,
	datad => \REGFILE|MEM~585_combout\,
	combout => \REGFILE|MEM~586_combout\);

-- Location: LCFF_X44_Y10_N23
\regA|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(17));

-- Location: LCCOMB_X43_Y14_N20
\MUXA|salida[17]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~24_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(17))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(17)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(17),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(17),
	combout => \MUXA|salida[17]~24_combout\);

-- Location: LCCOMB_X46_Y14_N10
\MUXB|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux22~0_combout\ = (\MUXB|Mux16~1_combout\ & ((\regB|dt_out\(9)) # ((\INSTREG|jump_out\(9) & \MUXB|Mux16~0_combout\)))) # (!\MUXB|Mux16~1_combout\ & (((\INSTREG|jump_out\(9) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~1_combout\,
	datab => \regB|dt_out\(9),
	datac => \INSTREG|jump_out\(9),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux22~0_combout\);

-- Location: LCFF_X39_Y14_N7
\REGFILE|MEM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~43_regout\);

-- Location: LCFF_X39_Y14_N13
\REGFILE|MEM~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~75_regout\);

-- Location: LCCOMB_X39_Y14_N12
\REGFILE|MEM~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~474_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~75_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~43_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~43_regout\,
	datac => \REGFILE|MEM~75_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~474_combout\);

-- Location: LCFF_X49_Y10_N25
\REGFILE|MEM~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~139_regout\);

-- Location: LCCOMB_X48_Y11_N0
\REGFILE|MEM~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~475_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~474_combout\ & ((\REGFILE|MEM~139_regout\))) # (!\REGFILE|MEM~474_combout\ & (\REGFILE|MEM~107_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~107_regout\,
	datac => \REGFILE|MEM~474_combout\,
	datad => \REGFILE|MEM~139_regout\,
	combout => \REGFILE|MEM~475_combout\);

-- Location: LCFF_X48_Y12_N19
\REGFILE|MEM~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~267_regout\);

-- Location: LCFF_X48_Y12_N21
\REGFILE|MEM~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~203_regout\);

-- Location: LCCOMB_X48_Y12_N4
\REGFILE|MEM~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~473_combout\ = (\REGFILE|MEM~472_combout\ & ((\REGFILE|MEM~267_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~472_combout\ & (((\REGFILE|MEM~203_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~472_combout\,
	datab => \REGFILE|MEM~267_regout\,
	datac => \REGFILE|MEM~203_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~473_combout\);

-- Location: LCCOMB_X47_Y12_N28
\REGFILE|MEM~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~476_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~473_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~475_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~475_combout\,
	datad => \REGFILE|MEM~473_combout\,
	combout => \REGFILE|MEM~476_combout\);

-- Location: LCFF_X47_Y12_N29
\regA|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(7));

-- Location: LCCOMB_X46_Y12_N30
\MUXA|salida[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~2_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(7))) # (!\rst~combout\ & ((\regA|dt_out\(7)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(7),
	datab => \regA|dt_out\(7),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[7]~2_combout\);

-- Location: LCFF_X46_Y14_N25
\INSTREG|jump_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(5));

-- Location: LCCOMB_X46_Y14_N24
\MUXB|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux26~0_combout\ = (!\CONTROLU|ALUsrcB[0]~1_combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\ & ((\INSTREG|jump_out\(5)))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & (\regB|dt_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(5),
	datab => \CONTROLU|ALUsrcB[0]~1_combout\,
	datac => \INSTREG|jump_out\(5),
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux26~0_combout\);

-- Location: LCCOMB_X44_Y14_N18
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (!\CONTROLU|ALUsrcB[0]~1_combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\ & ((\INSTREG|func_out\(2)))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & (\regB|dt_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(2),
	datab => \CONTROLU|ALUsrcB[0]~1_combout\,
	datac => \INSTREG|func_out\(2),
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X47_Y14_N2
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (!\CONTROLU|ALUsrcB[0]~1_combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\ & (\INSTREG|func_out\(1))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & ((\regB|dt_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \CONTROLU|ALUsrcB[0]~1_combout\,
	datac => \regB|dt_out\(1),
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCCOMB_X44_Y14_N14
\INSTREG|func_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|func_out[0]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \INSTREG|func_out[0]~feeder_combout\);

-- Location: LCFF_X44_Y14_N15
\INSTREG|func_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|func_out[0]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(0));

-- Location: LCCOMB_X44_Y14_N26
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (\CONTROLU|ALUsrcB[0]~1_combout\) # ((\CONTROLU|ALUsrcB[1]~0_combout\ & ((\INSTREG|func_out\(0)))) # (!\CONTROLU|ALUsrcB[1]~0_combout\ & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(0),
	datab => \INSTREG|func_out\(0),
	datac => \CONTROLU|ALUsrcB[1]~0_combout\,
	datad => \CONTROLU|ALUsrcB[0]~1_combout\,
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCCOMB_X43_Y12_N0
\ALUCOMP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~1_cout\ = CARRY((!\MUXA|salida[0]~9_combout\ & \MUXB|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~9_combout\,
	datab => \MUXB|Mux31~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|LessThan0~1_cout\);

-- Location: LCCOMB_X43_Y12_N2
\ALUCOMP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~3_cout\ = CARRY((\MUXA|salida[1]~8_combout\ & ((!\ALUCOMP|LessThan0~1_cout\) # (!\MUXB|Mux30~0_combout\))) # (!\MUXA|salida[1]~8_combout\ & (!\MUXB|Mux30~0_combout\ & !\ALUCOMP|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~8_combout\,
	datab => \MUXB|Mux30~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~1_cout\,
	cout => \ALUCOMP|LessThan0~3_cout\);

-- Location: LCCOMB_X43_Y12_N4
\ALUCOMP|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~5_cout\ = CARRY((\MUXA|salida[2]~7_combout\ & (\MUXB|Mux29~0_combout\ & !\ALUCOMP|LessThan0~3_cout\)) # (!\MUXA|salida[2]~7_combout\ & ((\MUXB|Mux29~0_combout\) # (!\ALUCOMP|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~7_combout\,
	datab => \MUXB|Mux29~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~3_cout\,
	cout => \ALUCOMP|LessThan0~5_cout\);

-- Location: LCCOMB_X43_Y12_N6
\ALUCOMP|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~7_cout\ = CARRY((\MUXA|salida[3]~6_combout\ & ((!\ALUCOMP|LessThan0~5_cout\) # (!\MUXB|Mux28~0_combout\))) # (!\MUXA|salida[3]~6_combout\ & (!\MUXB|Mux28~0_combout\ & !\ALUCOMP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~6_combout\,
	datab => \MUXB|Mux28~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~5_cout\,
	cout => \ALUCOMP|LessThan0~7_cout\);

-- Location: LCCOMB_X43_Y12_N8
\ALUCOMP|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~9_cout\ = CARRY((\MUXA|salida[4]~5_combout\ & (\MUXB|Mux27~0_combout\ & !\ALUCOMP|LessThan0~7_cout\)) # (!\MUXA|salida[4]~5_combout\ & ((\MUXB|Mux27~0_combout\) # (!\ALUCOMP|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~5_combout\,
	datab => \MUXB|Mux27~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~7_cout\,
	cout => \ALUCOMP|LessThan0~9_cout\);

-- Location: LCCOMB_X43_Y12_N10
\ALUCOMP|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~11_cout\ = CARRY((\MUXA|salida[5]~4_combout\ & ((!\ALUCOMP|LessThan0~9_cout\) # (!\MUXB|Mux26~0_combout\))) # (!\MUXA|salida[5]~4_combout\ & (!\MUXB|Mux26~0_combout\ & !\ALUCOMP|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~4_combout\,
	datab => \MUXB|Mux26~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~9_cout\,
	cout => \ALUCOMP|LessThan0~11_cout\);

-- Location: LCCOMB_X43_Y12_N12
\ALUCOMP|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~13_cout\ = CARRY((\MUXA|salida[6]~3_combout\ & (\MUXB|Mux25~0_combout\ & !\ALUCOMP|LessThan0~11_cout\)) # (!\MUXA|salida[6]~3_combout\ & ((\MUXB|Mux25~0_combout\) # (!\ALUCOMP|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~3_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~11_cout\,
	cout => \ALUCOMP|LessThan0~13_cout\);

-- Location: LCCOMB_X43_Y12_N14
\ALUCOMP|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~15_cout\ = CARRY((\MUXB|Mux24~0_combout\ & (\MUXA|salida[7]~2_combout\ & !\ALUCOMP|LessThan0~13_cout\)) # (!\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~2_combout\) # (!\ALUCOMP|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~13_cout\,
	cout => \ALUCOMP|LessThan0~15_cout\);

-- Location: LCCOMB_X43_Y12_N16
\ALUCOMP|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~17_cout\ = CARRY((\MUXA|salida[8]~1_combout\ & (\MUXB|Mux23~0_combout\ & !\ALUCOMP|LessThan0~15_cout\)) # (!\MUXA|salida[8]~1_combout\ & ((\MUXB|Mux23~0_combout\) # (!\ALUCOMP|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~1_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~15_cout\,
	cout => \ALUCOMP|LessThan0~17_cout\);

-- Location: LCCOMB_X43_Y12_N18
\ALUCOMP|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~19_cout\ = CARRY((\MUXA|salida[9]~0_combout\ & ((!\ALUCOMP|LessThan0~17_cout\) # (!\MUXB|Mux22~0_combout\))) # (!\MUXA|salida[9]~0_combout\ & (!\MUXB|Mux22~0_combout\ & !\ALUCOMP|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~0_combout\,
	datab => \MUXB|Mux22~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~17_cout\,
	cout => \ALUCOMP|LessThan0~19_cout\);

-- Location: LCCOMB_X43_Y12_N20
\ALUCOMP|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~21_cout\ = CARRY((\MUXB|Mux21~0_combout\ & ((!\ALUCOMP|LessThan0~19_cout\) # (!\MUXA|salida[10]~31_combout\))) # (!\MUXB|Mux21~0_combout\ & (!\MUXA|salida[10]~31_combout\ & !\ALUCOMP|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux21~0_combout\,
	datab => \MUXA|salida[10]~31_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~19_cout\,
	cout => \ALUCOMP|LessThan0~21_cout\);

-- Location: LCCOMB_X43_Y12_N22
\ALUCOMP|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~23_cout\ = CARRY((\MUXB|Mux20~0_combout\ & (\MUXA|salida[11]~30_combout\ & !\ALUCOMP|LessThan0~21_cout\)) # (!\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~30_combout\) # (!\ALUCOMP|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux20~0_combout\,
	datab => \MUXA|salida[11]~30_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~21_cout\,
	cout => \ALUCOMP|LessThan0~23_cout\);

-- Location: LCCOMB_X43_Y12_N24
\ALUCOMP|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~25_cout\ = CARRY((\MUXA|salida[12]~29_combout\ & (\MUXB|Mux19~0_combout\ & !\ALUCOMP|LessThan0~23_cout\)) # (!\MUXA|salida[12]~29_combout\ & ((\MUXB|Mux19~0_combout\) # (!\ALUCOMP|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~29_combout\,
	datab => \MUXB|Mux19~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~23_cout\,
	cout => \ALUCOMP|LessThan0~25_cout\);

-- Location: LCCOMB_X43_Y12_N26
\ALUCOMP|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~27_cout\ = CARRY((\MUXA|salida[13]~28_combout\ & ((!\ALUCOMP|LessThan0~25_cout\) # (!\MUXB|Mux18~0_combout\))) # (!\MUXA|salida[13]~28_combout\ & (!\MUXB|Mux18~0_combout\ & !\ALUCOMP|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~28_combout\,
	datab => \MUXB|Mux18~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~25_cout\,
	cout => \ALUCOMP|LessThan0~27_cout\);

-- Location: LCCOMB_X43_Y12_N28
\ALUCOMP|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~29_cout\ = CARRY((\MUXA|salida[14]~27_combout\ & (\MUXB|Mux17~0_combout\ & !\ALUCOMP|LessThan0~27_cout\)) # (!\MUXA|salida[14]~27_combout\ & ((\MUXB|Mux17~0_combout\) # (!\ALUCOMP|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~27_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~27_cout\,
	cout => \ALUCOMP|LessThan0~29_cout\);

-- Location: LCCOMB_X43_Y12_N30
\ALUCOMP|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~31_cout\ = CARRY((\MUXA|salida[15]~26_combout\ & ((!\ALUCOMP|LessThan0~29_cout\) # (!\MUXB|Mux16~2_combout\))) # (!\MUXA|salida[15]~26_combout\ & (!\MUXB|Mux16~2_combout\ & !\ALUCOMP|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~26_combout\,
	datab => \MUXB|Mux16~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~29_cout\,
	cout => \ALUCOMP|LessThan0~31_cout\);

-- Location: LCCOMB_X43_Y11_N0
\ALUCOMP|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~33_cout\ = CARRY((\MUXA|salida[16]~25_combout\ & (\MUXB|Mux15~0_combout\ & !\ALUCOMP|LessThan0~31_cout\)) # (!\MUXA|salida[16]~25_combout\ & ((\MUXB|Mux15~0_combout\) # (!\ALUCOMP|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~25_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~31_cout\,
	cout => \ALUCOMP|LessThan0~33_cout\);

-- Location: LCCOMB_X43_Y11_N2
\ALUCOMP|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~35_cout\ = CARRY((\MUXB|Mux14~0_combout\ & (\MUXA|salida[17]~24_combout\ & !\ALUCOMP|LessThan0~33_cout\)) # (!\MUXB|Mux14~0_combout\ & ((\MUXA|salida[17]~24_combout\) # (!\ALUCOMP|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux14~0_combout\,
	datab => \MUXA|salida[17]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~33_cout\,
	cout => \ALUCOMP|LessThan0~35_cout\);

-- Location: LCCOMB_X43_Y11_N4
\ALUCOMP|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~37_cout\ = CARRY((\MUXB|Mux13~0_combout\ & ((!\ALUCOMP|LessThan0~35_cout\) # (!\MUXA|salida[18]~23_combout\))) # (!\MUXB|Mux13~0_combout\ & (!\MUXA|salida[18]~23_combout\ & !\ALUCOMP|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux13~0_combout\,
	datab => \MUXA|salida[18]~23_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~35_cout\,
	cout => \ALUCOMP|LessThan0~37_cout\);

-- Location: LCCOMB_X43_Y11_N6
\ALUCOMP|LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~39_cout\ = CARRY((\MUXB|Mux12~0_combout\ & (\MUXA|salida[19]~22_combout\ & !\ALUCOMP|LessThan0~37_cout\)) # (!\MUXB|Mux12~0_combout\ & ((\MUXA|salida[19]~22_combout\) # (!\ALUCOMP|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux12~0_combout\,
	datab => \MUXA|salida[19]~22_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~37_cout\,
	cout => \ALUCOMP|LessThan0~39_cout\);

-- Location: LCCOMB_X43_Y11_N8
\ALUCOMP|LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~41_cout\ = CARRY((\MUXA|salida[20]~21_combout\ & (\MUXB|Mux11~0_combout\ & !\ALUCOMP|LessThan0~39_cout\)) # (!\MUXA|salida[20]~21_combout\ & ((\MUXB|Mux11~0_combout\) # (!\ALUCOMP|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~21_combout\,
	datab => \MUXB|Mux11~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~39_cout\,
	cout => \ALUCOMP|LessThan0~41_cout\);

-- Location: LCCOMB_X43_Y11_N10
\ALUCOMP|LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~43_cout\ = CARRY((\MUXB|Mux10~0_combout\ & (\MUXA|salida[21]~20_combout\ & !\ALUCOMP|LessThan0~41_cout\)) # (!\MUXB|Mux10~0_combout\ & ((\MUXA|salida[21]~20_combout\) # (!\ALUCOMP|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux10~0_combout\,
	datab => \MUXA|salida[21]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~41_cout\,
	cout => \ALUCOMP|LessThan0~43_cout\);

-- Location: LCCOMB_X43_Y11_N12
\ALUCOMP|LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~45_cout\ = CARRY((\MUXA|salida[22]~19_combout\ & (\MUXB|Mux9~0_combout\ & !\ALUCOMP|LessThan0~43_cout\)) # (!\MUXA|salida[22]~19_combout\ & ((\MUXB|Mux9~0_combout\) # (!\ALUCOMP|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~19_combout\,
	datab => \MUXB|Mux9~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~43_cout\,
	cout => \ALUCOMP|LessThan0~45_cout\);

-- Location: LCCOMB_X43_Y11_N14
\ALUCOMP|LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~47_cout\ = CARRY((\MUXB|Mux8~0_combout\ & (\MUXA|salida[23]~18_combout\ & !\ALUCOMP|LessThan0~45_cout\)) # (!\MUXB|Mux8~0_combout\ & ((\MUXA|salida[23]~18_combout\) # (!\ALUCOMP|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux8~0_combout\,
	datab => \MUXA|salida[23]~18_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~45_cout\,
	cout => \ALUCOMP|LessThan0~47_cout\);

-- Location: LCCOMB_X43_Y11_N16
\ALUCOMP|LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~49_cout\ = CARRY((\MUXB|Mux7~0_combout\ & ((!\ALUCOMP|LessThan0~47_cout\) # (!\MUXA|salida[24]~17_combout\))) # (!\MUXB|Mux7~0_combout\ & (!\MUXA|salida[24]~17_combout\ & !\ALUCOMP|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux7~0_combout\,
	datab => \MUXA|salida[24]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~47_cout\,
	cout => \ALUCOMP|LessThan0~49_cout\);

-- Location: LCCOMB_X43_Y11_N18
\ALUCOMP|LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~51_cout\ = CARRY((\MUXA|salida[25]~16_combout\ & ((!\ALUCOMP|LessThan0~49_cout\) # (!\MUXB|Mux6~0_combout\))) # (!\MUXA|salida[25]~16_combout\ & (!\MUXB|Mux6~0_combout\ & !\ALUCOMP|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~16_combout\,
	datab => \MUXB|Mux6~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~49_cout\,
	cout => \ALUCOMP|LessThan0~51_cout\);

-- Location: LCCOMB_X43_Y11_N20
\ALUCOMP|LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~53_cout\ = CARRY((\MUXA|salida[26]~15_combout\ & (\MUXB|Mux5~0_combout\ & !\ALUCOMP|LessThan0~51_cout\)) # (!\MUXA|salida[26]~15_combout\ & ((\MUXB|Mux5~0_combout\) # (!\ALUCOMP|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~15_combout\,
	datab => \MUXB|Mux5~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~51_cout\,
	cout => \ALUCOMP|LessThan0~53_cout\);

-- Location: LCCOMB_X43_Y11_N22
\ALUCOMP|LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~55_cout\ = CARRY((\MUXB|Mux4~0_combout\ & (\MUXA|salida[27]~14_combout\ & !\ALUCOMP|LessThan0~53_cout\)) # (!\MUXB|Mux4~0_combout\ & ((\MUXA|salida[27]~14_combout\) # (!\ALUCOMP|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux4~0_combout\,
	datab => \MUXA|salida[27]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~53_cout\,
	cout => \ALUCOMP|LessThan0~55_cout\);

-- Location: LCCOMB_X43_Y11_N24
\ALUCOMP|LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~57_cout\ = CARRY((\MUXB|Mux3~0_combout\ & ((!\ALUCOMP|LessThan0~55_cout\) # (!\MUXA|salida[28]~13_combout\))) # (!\MUXB|Mux3~0_combout\ & (!\MUXA|salida[28]~13_combout\ & !\ALUCOMP|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux3~0_combout\,
	datab => \MUXA|salida[28]~13_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~55_cout\,
	cout => \ALUCOMP|LessThan0~57_cout\);

-- Location: LCCOMB_X43_Y11_N26
\ALUCOMP|LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~59_cout\ = CARRY((\MUXA|salida[29]~12_combout\ & ((!\ALUCOMP|LessThan0~57_cout\) # (!\MUXB|Mux2~0_combout\))) # (!\MUXA|salida[29]~12_combout\ & (!\MUXB|Mux2~0_combout\ & !\ALUCOMP|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~12_combout\,
	datab => \MUXB|Mux2~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~57_cout\,
	cout => \ALUCOMP|LessThan0~59_cout\);

-- Location: LCCOMB_X43_Y11_N28
\ALUCOMP|LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~61_cout\ = CARRY((\MUXB|Mux1~0_combout\ & ((!\ALUCOMP|LessThan0~59_cout\) # (!\MUXA|salida[30]~11_combout\))) # (!\MUXB|Mux1~0_combout\ & (!\MUXA|salida[30]~11_combout\ & !\ALUCOMP|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux1~0_combout\,
	datab => \MUXA|salida[30]~11_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~59_cout\,
	cout => \ALUCOMP|LessThan0~61_cout\);

-- Location: LCCOMB_X43_Y11_N30
\ALUCOMP|LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~62_combout\ = (\MUXA|salida[31]~10_combout\ & ((\ALUCOMP|LessThan0~61_cout\) # (!\MUXB|Mux0~2_combout\))) # (!\MUXA|salida[31]~10_combout\ & (\ALUCOMP|LessThan0~61_cout\ & !\MUXB|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[31]~10_combout\,
	datad => \MUXB|Mux0~2_combout\,
	cin => \ALUCOMP|LessThan0~61_cout\,
	combout => \ALUCOMP|LessThan0~62_combout\);

-- Location: LCCOMB_X44_Y11_N18
\ALUCOMP|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~30_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux22~0_combout\);

-- Location: LCCOMB_X44_Y11_N24
\ALUCOMP|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|Mux22~1_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux22~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux22~1_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|Mux22~0_combout\,
	combout => \ALUCOMP|Mux22~2_combout\);

-- Location: LCFF_X44_Y11_N25
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCCOMB_X43_Y9_N16
\MUXREAD|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux22~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a9\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux22~0_combout\);

-- Location: LCFF_X43_Y9_N17
\MDR|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(9));

-- Location: LCCOMB_X44_Y10_N2
\MUXMemReg|salida[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[9]~6_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & (\regALU|dt_out\(9))) # (!\rst~combout\ & ((\MDR|dt_out\(9)))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \rst~combout\,
	datac => \regALU|dt_out\(9),
	datad => \MDR|dt_out\(9),
	combout => \MUXMemReg|salida[9]~6_combout\);

-- Location: LCFF_X48_Y11_N31
\REGFILE|MEM~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~109_regout\);

-- Location: LCCOMB_X48_Y11_N20
\REGFILE|MEM~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~325_combout\ = (\REGFILE|MEM~324_combout\ & (((\REGFILE|MEM~141_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~324_combout\ & (\REGFILE|MEM~109_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~324_combout\,
	datab => \REGFILE|MEM~109_regout\,
	datac => \REGFILE|MEM~141_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~325_combout\);

-- Location: LCFF_X48_Y12_N3
\REGFILE|MEM~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~269_regout\);

-- Location: LCFF_X48_Y12_N25
\REGFILE|MEM~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~205_regout\);

-- Location: LCCOMB_X48_Y12_N24
\REGFILE|MEM~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~323_combout\ = (\REGFILE|MEM~322_combout\ & ((\REGFILE|MEM~269_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~322_combout\ & (((\REGFILE|MEM~205_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~322_combout\,
	datab => \REGFILE|MEM~269_regout\,
	datac => \REGFILE|MEM~205_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~323_combout\);

-- Location: LCCOMB_X46_Y12_N2
\REGFILE|MEM~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~326_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~323_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~325_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~323_combout\,
	combout => \REGFILE|MEM~326_combout\);

-- Location: LCFF_X46_Y12_N3
\regB|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(9));

-- Location: LCCOMB_X43_Y9_N10
\MUXREAD|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux23~0_combout\ = (\MUXREAD|Mux27~0_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\))) # (!\MUXREAD|Mux27~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a8\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux23~0_combout\);

-- Location: LCFF_X43_Y9_N11
\MDR|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(8));

-- Location: LCCOMB_X42_Y13_N24
\MUXMemReg|salida[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[8]~5_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(8)))) # (!\rst~combout\ & (\MDR|dt_out\(8))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \rst~combout\,
	datac => \MDR|dt_out\(8),
	datad => \regALU|dt_out\(8),
	combout => \MUXMemReg|salida[8]~5_combout\);

-- Location: LCFF_X49_Y12_N11
\REGFILE|MEM~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~172_regout\);

-- Location: LCFF_X49_Y12_N29
\REGFILE|MEM~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~236_regout\);

-- Location: LCCOMB_X49_Y12_N10
\REGFILE|MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~317_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~236_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~172_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~172_regout\,
	datad => \REGFILE|MEM~236_regout\,
	combout => \REGFILE|MEM~317_combout\);

-- Location: LCCOMB_X42_Y10_N8
\REGFILE|MEM~268feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~268feeder_combout\ = \MUXMemReg|salida[8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[8]~5_combout\,
	combout => \REGFILE|MEM~268feeder_combout\);

-- Location: LCFF_X42_Y10_N9
\REGFILE|MEM~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~268feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~268_regout\);

-- Location: LCCOMB_X48_Y13_N2
\REGFILE|MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~318_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~317_combout\ & ((\REGFILE|MEM~268_regout\))) # (!\REGFILE|MEM~317_combout\ & (\REGFILE|MEM~204_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~204_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~317_combout\,
	datad => \REGFILE|MEM~268_regout\,
	combout => \REGFILE|MEM~318_combout\);

-- Location: LCCOMB_X46_Y13_N2
\REGFILE|MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~321_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~318_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~320_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~320_combout\,
	datab => \REGFILE|MEM~318_combout\,
	datac => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~321_combout\);

-- Location: LCFF_X46_Y13_N3
\regB|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(8));

-- Location: LCFF_X46_Y14_N21
\INSTREG|jump_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a7\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(7));

-- Location: LCCOMB_X46_Y14_N20
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\MUXB|Mux16~1_combout\ & ((\regB|dt_out\(7)) # ((\INSTREG|jump_out\(7) & \MUXB|Mux16~0_combout\)))) # (!\MUXB|Mux16~1_combout\ & (((\INSTREG|jump_out\(7) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~1_combout\,
	datab => \regB|dt_out\(7),
	datac => \INSTREG|jump_out\(7),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCCOMB_X44_Y13_N2
\ALUCOMP|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~1_combout\ = (\MUXA|salida[7]~2_combout\ & ((\MUXB|Mux24~0_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXA|salida[7]~2_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux24~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[7]~2_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \MUXB|Mux24~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux24~1_combout\);

-- Location: LCCOMB_X44_Y13_N8
\ALUCOMP|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Add0~26_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux24~0_combout\);

-- Location: LCCOMB_X44_Y13_N20
\ALUCOMP|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux24~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux24~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux24~1_combout\,
	datac => \ALUCOMP|Mux24~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux24~2_combout\);

-- Location: LCFF_X44_Y13_N21
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCCOMB_X40_Y13_N26
\MUXMemReg|salida[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[7]~4_combout\ = (\CONTROLU|Equal0~4_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(7)))) # (!\rst~combout\ & (\MDR|dt_out\(7))))) # (!\CONTROLU|Equal0~4_combout\ & (((\regALU|dt_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(7),
	datab => \regALU|dt_out\(7),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[7]~4_combout\);

-- Location: LCCOMB_X48_Y11_N18
\REGFILE|MEM~107feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~107feeder_combout\ = \MUXMemReg|salida[7]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[7]~4_combout\,
	combout => \REGFILE|MEM~107feeder_combout\);

-- Location: LCFF_X48_Y11_N19
\REGFILE|MEM~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~107feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~107_regout\);

-- Location: LCCOMB_X39_Y14_N6
\REGFILE|MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~314_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~75_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~43_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~75_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~43_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~314_combout\);

-- Location: LCCOMB_X48_Y11_N24
\REGFILE|MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~315_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~314_combout\ & ((\REGFILE|MEM~139_regout\))) # (!\REGFILE|MEM~314_combout\ & (\REGFILE|MEM~107_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~107_regout\,
	datac => \REGFILE|MEM~314_combout\,
	datad => \REGFILE|MEM~139_regout\,
	combout => \REGFILE|MEM~315_combout\);

-- Location: LCCOMB_X47_Y11_N12
\REGFILE|MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~316_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~313_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~313_combout\,
	datab => \REGFILE|MEM~315_combout\,
	datac => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~316_combout\);

-- Location: LCFF_X47_Y11_N13
\regB|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(7));

-- Location: LCFF_X46_Y13_N17
\INSTREG|jump_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a6\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(6));

-- Location: LCFF_X47_Y13_N27
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[8]~9_combout\,
	sdata => \INSTREG|jump_out\(6),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X42_Y11_N22
\PROGCOUNT|addr_out[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[13]~14_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(13))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(13),
	datad => \ALUCOMP|Mux18~2_combout\,
	combout => \PROGCOUNT|addr_out[13]~14_combout\);

-- Location: LCFF_X42_Y11_N23
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[13]~14_combout\,
	sdata => \INSTREG|jump_out\(11),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(13));

-- Location: LCCOMB_X43_Y14_N26
\CONTROLU|IorD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IorD~4_combout\ = \NEWST|CS\(1) $ (\NEWST|CS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|IorD~4_combout\);

-- Location: LCCOMB_X43_Y14_N4
\CONTROLU|IorD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IorD~9_combout\ = (!\NEWST|CS\(3) & (\NEWST|CS\(0) & (!\rst~combout\ & \CONTROLU|IorD~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(0),
	datac => \rst~combout\,
	datad => \CONTROLU|IorD~4_combout\,
	combout => \CONTROLU|IorD~9_combout\);

-- Location: LCCOMB_X42_Y11_N6
\ADDRDEC|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~14_combout\ = (\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(12))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(12),
	datac => \PROGCOUNT|addr_out\(12),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~14_combout\);

-- Location: LCCOMB_X42_Y11_N8
\ADDRDEC|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~15_combout\ = (\ADDRDEC|Equal0~14_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(13)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(13),
	datac => \regALU|dt_out\(13),
	datad => \ADDRDEC|Equal0~14_combout\,
	combout => \ADDRDEC|Equal0~15_combout\);

-- Location: LCCOMB_X44_Y11_N22
\ALUCOMP|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~1_combout\ = (\MUXA|salida[15]~26_combout\ & ((\MUXB|Mux16~2_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXA|salida[15]~26_combout\ & (\ALUCONTRL|op[0]~0_combout\ & (!\ALUCOMP|Mux28~3_combout\ & 
-- \MUXB|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~26_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \MUXB|Mux16~2_combout\,
	combout => \ALUCOMP|Mux16~1_combout\);

-- Location: LCCOMB_X44_Y11_N20
\ALUCOMP|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~54_combout\,
	combout => \ALUCOMP|Mux16~0_combout\);

-- Location: LCCOMB_X44_Y11_N2
\ALUCOMP|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux16~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux16~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux16~1_combout\,
	datac => \ALUCOMP|Mux16~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux16~2_combout\);

-- Location: LCCOMB_X42_Y11_N30
\PROGCOUNT|addr_out[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[15]~16_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(15))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(15),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux16~2_combout\,
	combout => \PROGCOUNT|addr_out[15]~16_combout\);

-- Location: LCFF_X42_Y11_N31
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[15]~16_combout\,
	sdata => \INSTREG|jump_out\(13),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(15));

-- Location: LCCOMB_X42_Y11_N0
\PROGCOUNT|addr_out[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[14]~15_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(14))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(14),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux17~2_combout\,
	combout => \PROGCOUNT|addr_out[14]~15_combout\);

-- Location: LCFF_X42_Y11_N1
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[14]~15_combout\,
	sdata => \INSTREG|jump_out\(12),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X42_Y11_N14
\ADDRDEC|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~16_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(14)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(14),
	datac => \regALU|dt_out\(14),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~16_combout\);

-- Location: LCCOMB_X42_Y11_N4
\ADDRDEC|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~17_combout\ = (\ADDRDEC|Equal0~16_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(15))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(15),
	datab => \PROGCOUNT|addr_out\(15),
	datac => \ADDRDEC|Equal0~16_combout\,
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~17_combout\);

-- Location: LCFF_X44_Y12_N27
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCCOMB_X42_Y11_N24
\PROGCOUNT|addr_out[16]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[16]~17_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(16)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux15~2_combout\,
	datad => \regALU|dt_out\(16),
	combout => \PROGCOUNT|addr_out[16]~17_combout\);

-- Location: LCFF_X42_Y11_N25
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[16]~17_combout\,
	sdata => \INSTREG|jump_out\(14),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(16));

-- Location: LCCOMB_X42_Y11_N18
\ADDRDEC|Equal0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~18_combout\ = (\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(16))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(16),
	datac => \PROGCOUNT|addr_out\(16),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~18_combout\);

-- Location: LCCOMB_X42_Y11_N20
\ADDRDEC|Equal0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~19_combout\ = (\ADDRDEC|Equal0~18_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(30))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \regALU|dt_out\(30),
	datac => \PROGCOUNT|addr_out\(30),
	datad => \ADDRDEC|Equal0~18_combout\,
	combout => \ADDRDEC|Equal0~19_combout\);

-- Location: LCCOMB_X43_Y10_N18
\ADDRDEC|Equal0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~22_combout\ = (\ADDRDEC|Equal0~21_combout\ & (\ADDRDEC|Equal0~15_combout\ & (\ADDRDEC|Equal0~17_combout\ & \ADDRDEC|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal0~21_combout\,
	datab => \ADDRDEC|Equal0~15_combout\,
	datac => \ADDRDEC|Equal0~17_combout\,
	datad => \ADDRDEC|Equal0~19_combout\,
	combout => \ADDRDEC|Equal0~22_combout\);

-- Location: LCCOMB_X47_Y13_N12
\PROGCOUNT|addr_out[27]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[27]~0_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(27))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(27),
	datad => \ALUCOMP|Mux4~2_combout\,
	combout => \PROGCOUNT|addr_out[27]~0_combout\);

-- Location: LCCOMB_X48_Y13_N8
\INSTREG|jump_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[25]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a25\,
	combout => \INSTREG|jump_out[25]~feeder_combout\);

-- Location: LCFF_X48_Y13_N9
\INSTREG|jump_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[25]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(25));

-- Location: LCFF_X47_Y13_N13
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[27]~0_combout\,
	sdata => \INSTREG|jump_out\(25),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(27));

-- Location: LCCOMB_X43_Y10_N26
\ADDRDEC|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~1_combout\ = (\PROGCOUNT|addr_out\(25)) # ((\PROGCOUNT|addr_out\(27)) # (\PROGCOUNT|addr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(25),
	datac => \PROGCOUNT|addr_out\(27),
	datad => \PROGCOUNT|addr_out\(26),
	combout => \ADDRDEC|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y10_N8
\ADDRDEC|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~2_combout\ = (\regALU|dt_out\(26)) # ((\regALU|dt_out\(25)) # (\regALU|dt_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(26),
	datab => \regALU|dt_out\(25),
	datac => \regALU|dt_out\(27),
	combout => \ADDRDEC|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y10_N14
\ADDRDEC|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~3_combout\ = (!\MUXPC|salida[1]~1_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\ADDRDEC|Equal0~2_combout\))) # (!\CONTROLU|IorD~9_combout\ & (!\ADDRDEC|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \ADDRDEC|Equal0~1_combout\,
	datac => \ADDRDEC|Equal0~2_combout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \ADDRDEC|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y13_N4
\PROGCOUNT|addr_out[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[9]~10_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(9)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux22~2_combout\,
	datab => \regALU|dt_out\(9),
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[9]~10_combout\);

-- Location: LCFF_X43_Y13_N5
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[9]~10_combout\,
	sdata => \INSTREG|jump_out\(7),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X42_Y10_N14
\ADDRDEC|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~0_combout\ = (!\MUXPC|salida[2]~0_combout\ & ((\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(9)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(9),
	datac => \regALU|dt_out\(9),
	datad => \MUXPC|salida[2]~0_combout\,
	combout => \ADDRDEC|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y10_N16
\ADDRDEC|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~4_combout\ = (!\MUXPC|salida[3]~2_combout\ & (!\MUXPC|salida[0]~3_combout\ & (\ADDRDEC|Equal0~3_combout\ & \ADDRDEC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[3]~2_combout\,
	datab => \MUXPC|salida[0]~3_combout\,
	datac => \ADDRDEC|Equal0~3_combout\,
	datad => \ADDRDEC|Equal0~0_combout\,
	combout => \ADDRDEC|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y13_N10
\PROGCOUNT|addr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~feeder_combout\ = \PROGCOUNT|addr_out[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[28]~28_combout\,
	combout => \PROGCOUNT|addr_out[28]~feeder_combout\);

-- Location: LCFF_X42_Y13_N11
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[28]~feeder_combout\,
	sdata => \regALU|dt_out\(28),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[30]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X43_Y14_N18
\PROGCOUNT|addr_out[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[5]~27_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(5)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datad => \regALU|dt_out\(5),
	combout => \PROGCOUNT|addr_out[5]~27_combout\);

-- Location: LCFF_X43_Y14_N19
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[5]~27_combout\,
	sdata => \INSTREG|func_out\(3),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(5));

-- Location: LCCOMB_X43_Y14_N6
\ADDRDEC|Equal0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~27_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(5)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(5),
	datac => \CONTROLU|IorD~9_combout\,
	datad => \regALU|dt_out\(5),
	combout => \ADDRDEC|Equal0~27_combout\);

-- Location: LCCOMB_X42_Y10_N4
\ADDRDEC|Equal0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~28_combout\ = (\ADDRDEC|Equal0~27_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(28))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \regALU|dt_out\(28),
	datac => \PROGCOUNT|addr_out\(28),
	datad => \ADDRDEC|Equal0~27_combout\,
	combout => \ADDRDEC|Equal0~28_combout\);

-- Location: LCCOMB_X47_Y13_N24
\ADDRDEC|Equal0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~23_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(20)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(20),
	datac => \regALU|dt_out\(20),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~23_combout\);

-- Location: LCCOMB_X47_Y13_N6
\ADDRDEC|Equal0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~24_combout\ = (\ADDRDEC|Equal0~23_combout\ & ((\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(24)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(24),
	datab => \regALU|dt_out\(24),
	datac => \ADDRDEC|Equal0~23_combout\,
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~24_combout\);

-- Location: LCCOMB_X42_Y13_N0
\ADDRDEC|Equal0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~25_combout\ = (\CONTROLU|IorD~9_combout\ & ((!\regALU|dt_out\(29)))) # (!\CONTROLU|IorD~9_combout\ & (!\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(29),
	datac => \regALU|dt_out\(29),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \ADDRDEC|Equal0~25_combout\);

-- Location: LCCOMB_X42_Y13_N18
\ADDRDEC|Equal0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~26_combout\ = (\ADDRDEC|Equal0~25_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(31))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(31),
	datab => \CONTROLU|IorD~9_combout\,
	datac => \PROGCOUNT|addr_out\(31),
	datad => \ADDRDEC|Equal0~25_combout\,
	combout => \ADDRDEC|Equal0~26_combout\);

-- Location: LCCOMB_X43_Y10_N28
\ADDRDEC|Equal0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~30_combout\ = (\ADDRDEC|Equal0~29_combout\ & (\ADDRDEC|Equal0~28_combout\ & (\ADDRDEC|Equal0~24_combout\ & \ADDRDEC|Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal0~29_combout\,
	datab => \ADDRDEC|Equal0~28_combout\,
	datac => \ADDRDEC|Equal0~24_combout\,
	datad => \ADDRDEC|Equal0~26_combout\,
	combout => \ADDRDEC|Equal0~30_combout\);

-- Location: LCCOMB_X43_Y10_N6
\ADDRDEC|Equal0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~31_combout\ = (\ADDRDEC|Equal0~13_combout\ & (\ADDRDEC|Equal0~22_combout\ & (\ADDRDEC|Equal0~4_combout\ & \ADDRDEC|Equal0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal0~13_combout\,
	datab => \ADDRDEC|Equal0~22_combout\,
	datac => \ADDRDEC|Equal0~4_combout\,
	datad => \ADDRDEC|Equal0~30_combout\,
	combout => \ADDRDEC|Equal0~31_combout\);

-- Location: LCCOMB_X43_Y10_N10
\ADDRDEC|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~0_combout\ = (\ADDRDEC|Equal0~31_combout\ & ((\CONTROLU|IorD~9_combout\ & (\regALU|dt_out\(8))) # (!\CONTROLU|IorD~9_combout\ & ((\PROGCOUNT|addr_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \regALU|dt_out\(8),
	datac => \PROGCOUNT|addr_out\(8),
	datad => \ADDRDEC|Equal0~31_combout\,
	combout => \ADDRDEC|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y9_N14
\MUXREAD|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux27~0_combout\ = (\CONTROLU|Equal0~0_combout\ & (\rst~combout\ & ((\ADDRDEC|Equal0~32_combout\) # (\ADDRDEC|Equal1~0_combout\)))) # (!\CONTROLU|Equal0~0_combout\ & (((\ADDRDEC|Equal0~32_combout\) # (\ADDRDEC|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~0_combout\,
	datab => \rst~combout\,
	datac => \ADDRDEC|Equal0~32_combout\,
	datad => \ADDRDEC|Equal1~0_combout\,
	combout => \MUXREAD|Mux27~0_combout\);

-- Location: LCCOMB_X42_Y9_N10
\MUXREAD|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux25~0_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a6\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM_rtl_0|auto_generated|ram_block1a6\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux25~0_combout\);

-- Location: LCFF_X42_Y9_N11
\MDR|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(6));

-- Location: LCCOMB_X47_Y15_N16
\MUXMemReg|salida[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[6]~3_combout\ = (\rst~combout\ & (\regALU|dt_out\(6))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(6)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(6),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(6),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[6]~3_combout\);

-- Location: LCFF_X40_Y13_N15
\REGFILE|MEM~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~106_regout\);

-- Location: LCFF_X40_Y13_N13
\REGFILE|MEM~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~138_regout\);

-- Location: LCCOMB_X40_Y13_N14
\REGFILE|MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~310_combout\ = (\REGFILE|MEM~309_combout\ & (((\REGFILE|MEM~138_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~309_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~106_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~309_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~106_regout\,
	datad => \REGFILE|MEM~138_regout\,
	combout => \REGFILE|MEM~310_combout\);

-- Location: LCCOMB_X49_Y12_N22
\REGFILE|MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~307_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~234_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~170_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~234_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~170_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~307_combout\);

-- Location: LCCOMB_X48_Y12_N26
\REGFILE|MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~308_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~307_combout\ & ((\REGFILE|MEM~266_regout\))) # (!\REGFILE|MEM~307_combout\ & (\REGFILE|MEM~202_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~202_regout\,
	datac => \REGFILE|MEM~266_regout\,
	datad => \REGFILE|MEM~307_combout\,
	combout => \REGFILE|MEM~308_combout\);

-- Location: LCCOMB_X46_Y13_N28
\REGFILE|MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~311_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~308_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~310_combout\,
	datad => \REGFILE|MEM~308_combout\,
	combout => \REGFILE|MEM~311_combout\);

-- Location: LCFF_X46_Y13_N29
\regB|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(6));

-- Location: LCFF_X46_Y14_N9
\INSTREG|jump_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a11\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(11));

-- Location: LCCOMB_X49_Y14_N26
\CONTROLU|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~7_combout\ = (\NEWST|CS\(1) & (\NEWST|CS\(2) & (!\NEWST|CS\(3) & \NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y10_N4
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\CONTROLU|Equal0~7_combout\ & ((\rst~combout\ & (\INSTREG|jump_out\(16))) # (!\rst~combout\ & ((\INSTREG|jump_out\(11)))))) # (!\CONTROLU|Equal0~7_combout\ & (\INSTREG|jump_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(11),
	datac => \CONTROLU|Equal0~7_combout\,
	datad => \rst~combout\,
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCCOMB_X49_Y10_N14
\REGFILE|MEM~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~452_combout\ = (!\rst~combout\ & (\MUXRegDst|salida[0]~0_combout\ & \CONTROLU|RegWr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MUXRegDst|salida[0]~0_combout\,
	datad => \CONTROLU|RegWr~0_combout\,
	combout => \REGFILE|MEM~452_combout\);

-- Location: LCCOMB_X49_Y10_N16
\REGFILE|MEM~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~453_combout\ = (!\MUXRegDst|salida[1]~2_combout\ & (\MUXRegDst|salida[2]~1_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \MUXRegDst|salida[2]~1_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~453_combout\);

-- Location: LCFF_X49_Y14_N11
\REGFILE|MEM~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~201_regout\);

-- Location: LCFF_X49_Y12_N1
\REGFILE|MEM~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~233_regout\);

-- Location: LCCOMB_X49_Y12_N0
\REGFILE|MEM~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~482_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~233_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~169_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~169_regout\,
	datac => \REGFILE|MEM~233_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~482_combout\);

-- Location: LCFF_X48_Y12_N23
\REGFILE|MEM~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~265_regout\);

-- Location: LCCOMB_X48_Y12_N8
\REGFILE|MEM~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~483_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~482_combout\ & ((\REGFILE|MEM~265_regout\))) # (!\REGFILE|MEM~482_combout\ & (\REGFILE|MEM~201_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~201_regout\,
	datac => \REGFILE|MEM~482_combout\,
	datad => \REGFILE|MEM~265_regout\,
	combout => \REGFILE|MEM~483_combout\);

-- Location: LCFF_X40_Y13_N29
\REGFILE|MEM~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[5]~2_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~137_regout\);

-- Location: LCFF_X39_Y14_N31
\REGFILE|MEM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~41_regout\);

-- Location: LCFF_X39_Y14_N21
\REGFILE|MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~73_regout\);

-- Location: LCCOMB_X39_Y14_N20
\REGFILE|MEM~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~484_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~73_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~41_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~41_regout\,
	datac => \REGFILE|MEM~73_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~484_combout\);

-- Location: LCFF_X40_Y13_N3
\REGFILE|MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~105_regout\);

-- Location: LCCOMB_X40_Y13_N18
\REGFILE|MEM~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~485_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~484_combout\ & (\REGFILE|MEM~137_regout\)) # (!\REGFILE|MEM~484_combout\ & ((\REGFILE|MEM~105_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~484_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~137_regout\,
	datac => \REGFILE|MEM~484_combout\,
	datad => \REGFILE|MEM~105_regout\,
	combout => \REGFILE|MEM~485_combout\);

-- Location: LCCOMB_X47_Y12_N14
\REGFILE|MEM~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~486_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~483_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~485_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~483_combout\,
	datac => \REGFILE|MEM~485_combout\,
	combout => \REGFILE|MEM~486_combout\);

-- Location: LCFF_X47_Y12_N15
\regA|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(5));

-- Location: LCCOMB_X47_Y12_N4
\MUXA|salida[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~4_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(5))) # (!\rst~combout\ & ((\regA|dt_out\(5)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(5),
	datad => \rst~combout\,
	combout => \MUXA|salida[5]~4_combout\);

-- Location: LCCOMB_X45_Y15_N8
\ALUCOMP|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~1_combout\ = (\MUXB|Mux26~0_combout\ & ((\MUXA|salida[5]~4_combout\) # ((!\ALUCOMP|Mux28~3_combout\ & \ALUCONTRL|op[0]~0_combout\)))) # (!\MUXB|Mux26~0_combout\ & (\MUXA|salida[5]~4_combout\ & (!\ALUCOMP|Mux28~3_combout\ & 
-- \ALUCONTRL|op[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux26~0_combout\,
	datab => \MUXA|salida[5]~4_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux26~1_combout\);

-- Location: LCCOMB_X44_Y11_N30
\ALUCOMP|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~22_combout\,
	combout => \ALUCOMP|Mux26~0_combout\);

-- Location: LCCOMB_X44_Y11_N0
\ALUCOMP|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux26~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux26~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux26~1_combout\,
	datad => \ALUCOMP|Mux26~0_combout\,
	combout => \ALUCOMP|Mux26~2_combout\);

-- Location: LCFF_X44_Y11_N1
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCCOMB_X40_Y13_N28
\MUXMemReg|salida[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[5]~2_combout\ = (\rst~combout\ & (((\regALU|dt_out\(5))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(5))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(5),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \regALU|dt_out\(5),
	combout => \MUXMemReg|salida[5]~2_combout\);

-- Location: LCFF_X49_Y12_N15
\REGFILE|MEM~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~169_regout\);

-- Location: LCCOMB_X49_Y12_N14
\REGFILE|MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~302_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~233_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~169_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~169_regout\,
	datad => \REGFILE|MEM~233_regout\,
	combout => \REGFILE|MEM~302_combout\);

-- Location: LCCOMB_X48_Y12_N22
\REGFILE|MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~303_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~302_combout\ & (\REGFILE|MEM~265_regout\)) # (!\REGFILE|MEM~302_combout\ & ((\REGFILE|MEM~201_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~302_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~302_combout\,
	datac => \REGFILE|MEM~265_regout\,
	datad => \REGFILE|MEM~201_regout\,
	combout => \REGFILE|MEM~303_combout\);

-- Location: LCCOMB_X45_Y15_N30
\REGFILE|MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~306_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~303_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~305_combout\,
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~303_combout\,
	combout => \REGFILE|MEM~306_combout\);

-- Location: LCFF_X46_Y14_N5
\regB|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~306_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(5));

-- Location: LCCOMB_X40_Y9_N22
\MUXREAD|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux27~1_combout\ = (\MEM|MEM_rtl_0|auto_generated|ram_block1a4\ & !\MUXREAD|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a4\,
	datac => \MUXREAD|Mux27~0_combout\,
	combout => \MUXREAD|Mux27~1_combout\);

-- Location: LCFF_X40_Y9_N23
\MDR|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(4));

-- Location: LCCOMB_X40_Y13_N16
\MUXMemReg|salida[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[4]~1_combout\ = (\rst~combout\ & (\regALU|dt_out\(4))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(4)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(4),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \MDR|dt_out\(4),
	combout => \MUXMemReg|salida[4]~1_combout\);

-- Location: LCFF_X39_Y14_N27
\REGFILE|MEM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~40_regout\);

-- Location: LCCOMB_X39_Y14_N26
\REGFILE|MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~299_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~72_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~40_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~72_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~40_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~299_combout\);

-- Location: LCFF_X40_Y13_N9
\REGFILE|MEM~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~104_regout\);

-- Location: LCCOMB_X40_Y13_N4
\REGFILE|MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~300_combout\ = (\REGFILE|MEM~299_combout\ & ((\REGFILE|MEM~136_regout\) # ((!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~299_combout\ & (((\REGFILE|MEM~104_regout\ & \INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~136_regout\,
	datab => \REGFILE|MEM~299_combout\,
	datac => \REGFILE|MEM~104_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~300_combout\);

-- Location: LCCOMB_X44_Y14_N30
\REGFILE|MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~301_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~298_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~298_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~300_combout\,
	combout => \REGFILE|MEM~301_combout\);

-- Location: LCFF_X44_Y14_N31
\regB|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(4));

-- Location: LCFF_X49_Y10_N31
\INSTREG|jump_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a18\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(18));

-- Location: LCCOMB_X39_Y13_N8
\MUXMemReg|salida[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[2]~31_combout\ = (\rst~combout\ & (((\regALU|dt_out\(2))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(2))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(2),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(2),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[2]~31_combout\);

-- Location: LCFF_X48_Y10_N25
\REGFILE|MEM~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~102_regout\);

-- Location: LCFF_X48_Y10_N3
\REGFILE|MEM~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~70_regout\);

-- Location: LCFF_X47_Y9_N5
\REGFILE|MEM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~38_regout\);

-- Location: LCCOMB_X47_Y9_N10
\REGFILE|MEM~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~449_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~70_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~38_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~70_regout\,
	datac => \REGFILE|MEM~38_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~449_combout\);

-- Location: LCCOMB_X48_Y10_N24
\REGFILE|MEM~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~450_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~449_combout\ & (!\REGFILE|MEM~134_regout\)) # (!\REGFILE|MEM~449_combout\ & ((\REGFILE|MEM~102_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~134_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~102_regout\,
	datad => \REGFILE|MEM~449_combout\,
	combout => \REGFILE|MEM~450_combout\);

-- Location: LCCOMB_X44_Y14_N12
\REGFILE|MEM~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~451_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~448_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~450_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~448_combout\,
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~450_combout\,
	combout => \REGFILE|MEM~451_combout\);

-- Location: LCFF_X44_Y14_N13
\regB|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(4),
	combout => \key~combout\(4));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(7),
	combout => \key~combout\(7));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(5),
	combout => \key~combout\(5));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(2),
	combout => \key~combout\(2));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: LCCOMB_X38_Y10_N26
\MUXREAD|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~6_combout\ = (\key~combout\(6) & (!\key~combout\(5) & (!\key~combout\(2) & !\key~combout\(1)))) # (!\key~combout\(6) & ((\key~combout\(5) & (!\key~combout\(2) & !\key~combout\(1))) # (!\key~combout\(5) & (\key~combout\(2) $ 
-- (\key~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(5),
	datac => \key~combout\(2),
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux30~6_combout\);

-- Location: LCCOMB_X38_Y10_N30
\MUXREAD|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~3_combout\ = (!\key~combout\(8) & (!\key~combout\(7) & \MUXREAD|Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(8),
	datac => \key~combout\(7),
	datad => \MUXREAD|Mux30~6_combout\,
	combout => \MUXREAD|Mux30~3_combout\);

-- Location: LCCOMB_X38_Y10_N16
\MUXREAD|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~14_combout\ = (!\key~combout\(3) & (!\key~combout\(4) & (!\key~combout\(0) & \MUXREAD|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(4),
	datac => \key~combout\(0),
	datad => \MUXREAD|Mux30~3_combout\,
	combout => \MUXREAD|Mux30~14_combout\);

-- Location: LCCOMB_X44_Y14_N2
\MUXREAD|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~13_combout\ = (!\ADDRDEC|addressSel[0]~1_combout\ & ((\ADDRDEC|addressSel[1]~0_combout\ & (\MEM|MEM_rtl_0|auto_generated|ram_block1a1\)) # (!\ADDRDEC|addressSel[1]~0_combout\ & ((\MUXREAD|Mux30~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|addressSel[0]~1_combout\,
	datab => \MEM|MEM_rtl_0|auto_generated|ram_block1a1\,
	datac => \ADDRDEC|addressSel[1]~0_combout\,
	datad => \MUXREAD|Mux30~14_combout\,
	combout => \MUXREAD|Mux30~13_combout\);

-- Location: LCFF_X44_Y14_N3
\MDR|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux30~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(1));

-- Location: LCCOMB_X40_Y14_N30
\MUXMemReg|salida[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[1]~30_combout\ = (\rst~combout\ & (\regALU|dt_out\(1))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & ((\MDR|dt_out\(1)))) # (!\CONTROLU|Equal0~4_combout\ & (\regALU|dt_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(1),
	datac => \MDR|dt_out\(1),
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXMemReg|salida[1]~30_combout\);

-- Location: LCFF_X49_Y12_N3
\REGFILE|MEM~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~165_regout\);

-- Location: LCFF_X49_Y12_N13
\REGFILE|MEM~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~229_regout\);

-- Location: LCCOMB_X49_Y12_N2
\REGFILE|MEM~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~442_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~229_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~165_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~165_regout\,
	datad => \REGFILE|MEM~229_regout\,
	combout => \REGFILE|MEM~442_combout\);

-- Location: LCFF_X48_Y12_N13
\REGFILE|MEM~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~197_regout\);

-- Location: LCCOMB_X48_Y12_N12
\REGFILE|MEM~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~443_combout\ = (\REGFILE|MEM~442_combout\ & ((\REGFILE|MEM~261_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~442_combout\ & (((\REGFILE|MEM~197_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~261_regout\,
	datab => \REGFILE|MEM~442_combout\,
	datac => \REGFILE|MEM~197_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~443_combout\);

-- Location: LCCOMB_X48_Y11_N22
\REGFILE|MEM~626\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~626_combout\ = !\MUXMemReg|salida[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[1]~30_combout\,
	combout => \REGFILE|MEM~626_combout\);

-- Location: LCFF_X48_Y11_N23
\REGFILE|MEM~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~626_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~133_regout\);

-- Location: LCCOMB_X48_Y11_N4
\REGFILE|MEM~101feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~101feeder_combout\ = \MUXMemReg|salida[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[1]~30_combout\,
	combout => \REGFILE|MEM~101feeder_combout\);

-- Location: LCFF_X48_Y11_N5
\REGFILE|MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~101feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~101_regout\);

-- Location: LCCOMB_X48_Y11_N16
\REGFILE|MEM~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~445_combout\ = (\REGFILE|MEM~444_combout\ & (((!\INSTREG|jump_out\(17))) # (!\REGFILE|MEM~133_regout\))) # (!\REGFILE|MEM~444_combout\ & (((\REGFILE|MEM~101_regout\ & \INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~444_combout\,
	datab => \REGFILE|MEM~133_regout\,
	datac => \REGFILE|MEM~101_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~445_combout\);

-- Location: LCCOMB_X47_Y11_N24
\REGFILE|MEM~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~446_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~443_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~443_combout\,
	datac => \REGFILE|MEM~445_combout\,
	combout => \REGFILE|MEM~446_combout\);

-- Location: LCFF_X47_Y11_N25
\regB|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(1));

-- Location: LCFF_X46_Y13_N15
\INSTREG|jump_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a13\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(13));

-- Location: LCCOMB_X49_Y10_N30
\MUXRegDst|salida[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[2]~1_combout\ = (\CONTROLU|Equal0~7_combout\ & ((\rst~combout\ & ((\INSTREG|jump_out\(18)))) # (!\rst~combout\ & (\INSTREG|jump_out\(13))))) # (!\CONTROLU|Equal0~7_combout\ & (((\INSTREG|jump_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~7_combout\,
	datab => \INSTREG|jump_out\(13),
	datac => \INSTREG|jump_out\(18),
	datad => \rst~combout\,
	combout => \MUXRegDst|salida[2]~1_combout\);

-- Location: LCCOMB_X49_Y10_N26
\REGFILE|MEM~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~457_combout\ = (\MUXRegDst|salida[1]~2_combout\ & (\MUXRegDst|salida[2]~1_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[1]~2_combout\,
	datab => \MUXRegDst|salida[2]~1_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~457_combout\);

-- Location: LCFF_X40_Y11_N9
\REGFILE|MEM~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~263_regout\);

-- Location: LCFF_X40_Y11_N7
\REGFILE|MEM~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~199_regout\);

-- Location: LCFF_X49_Y12_N9
\REGFILE|MEM~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~231_regout\);

-- Location: LCFF_X49_Y12_N27
\REGFILE|MEM~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~167_regout\);

-- Location: LCCOMB_X49_Y12_N8
\REGFILE|MEM~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~492_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~231_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~167_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~231_regout\,
	datad => \REGFILE|MEM~167_regout\,
	combout => \REGFILE|MEM~492_combout\);

-- Location: LCCOMB_X40_Y11_N6
\REGFILE|MEM~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~493_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~492_combout\ & (\REGFILE|MEM~263_regout\)) # (!\REGFILE|MEM~492_combout\ & ((\REGFILE|MEM~199_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~492_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~263_regout\,
	datac => \REGFILE|MEM~199_regout\,
	datad => \REGFILE|MEM~492_combout\,
	combout => \REGFILE|MEM~493_combout\);

-- Location: LCCOMB_X40_Y12_N8
\REGFILE|MEM~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~496_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~493_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~495_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~495_combout\,
	datab => \REGFILE|MEM~493_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~496_combout\);

-- Location: LCFF_X46_Y12_N19
\regA|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~496_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(3));

-- Location: LCCOMB_X46_Y12_N18
\MUXA|salida[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~6_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(3))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(3)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \rst~combout\,
	datac => \regA|dt_out\(3),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[3]~6_combout\);

-- Location: LCCOMB_X45_Y11_N18
\ALUCOMP|Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~5_combout\ = (\MUXB|Mux28~0_combout\ & ((\MUXA|salida[3]~6_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux28~3_combout\)))) # (!\MUXB|Mux28~0_combout\ & (\MUXA|salida[3]~6_combout\ & (\ALUCONTRL|op[0]~0_combout\ & 
-- !\ALUCOMP|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux28~0_combout\,
	datab => \MUXA|salida[3]~6_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Mux28~3_combout\,
	combout => \ALUCOMP|Mux28~5_combout\);

-- Location: LCCOMB_X44_Y11_N12
\ALUCOMP|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~4_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~18_combout\,
	combout => \ALUCOMP|Mux28~4_combout\);

-- Location: LCCOMB_X44_Y11_N8
\ALUCOMP|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~6_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux28~5_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux28~4_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux28~5_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux28~4_combout\,
	combout => \ALUCOMP|Mux28~6_combout\);

-- Location: LCFF_X44_Y11_N9
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux28~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCCOMB_X47_Y13_N20
\PROGCOUNT|addr_out[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[3]~20_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(3))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(3),
	datad => \ALUCOMP|Mux28~6_combout\,
	combout => \PROGCOUNT|addr_out[3]~20_combout\);

-- Location: LCFF_X46_Y14_N13
\INSTREG|func_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a1\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(1));

-- Location: LCFF_X47_Y13_N21
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[3]~20_combout\,
	sdata => \INSTREG|func_out\(1),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X43_Y10_N20
\MUXPC|salida[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[3]~2_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(3)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datac => \PROGCOUNT|addr_out\(3),
	datad => \regALU|dt_out\(3),
	combout => \MUXPC|salida[3]~2_combout\);

-- Location: LCCOMB_X48_Y13_N0
\INSTREG|jump_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[22]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a22\,
	combout => \INSTREG|jump_out[22]~feeder_combout\);

-- Location: LCFF_X48_Y13_N1
\INSTREG|jump_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[22]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(22));

-- Location: LCCOMB_X48_Y10_N2
\REGFILE|MEM~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~499_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~70_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~38_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~70_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~499_combout\);

-- Location: LCCOMB_X49_Y10_N6
\REGFILE|MEM~627\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~627_combout\ = !\MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~627_combout\);

-- Location: LCFF_X49_Y10_N7
\REGFILE|MEM~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~627_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~134_regout\);

-- Location: LCCOMB_X48_Y10_N12
\REGFILE|MEM~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~500_combout\ = (\REGFILE|MEM~499_combout\ & (((!\REGFILE|MEM~134_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~499_combout\ & (\REGFILE|MEM~102_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~102_regout\,
	datab => \REGFILE|MEM~499_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~134_regout\,
	combout => \REGFILE|MEM~500_combout\);

-- Location: LCCOMB_X49_Y9_N8
\REGFILE|MEM~166feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~166feeder_combout\ = \MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~166feeder_combout\);

-- Location: LCFF_X49_Y9_N9
\REGFILE|MEM~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~166feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~166_regout\);

-- Location: LCFF_X44_Y9_N9
\REGFILE|MEM~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~230_regout\);

-- Location: LCCOMB_X44_Y9_N8
\REGFILE|MEM~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~497_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~230_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~166_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~166_regout\,
	datac => \REGFILE|MEM~230_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~497_combout\);

-- Location: LCCOMB_X42_Y10_N26
\REGFILE|MEM~262feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~262feeder_combout\ = \MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~262feeder_combout\);

-- Location: LCFF_X42_Y10_N27
\REGFILE|MEM~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~262feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~262_regout\);

-- Location: LCCOMB_X48_Y13_N12
\REGFILE|MEM~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~498_combout\ = (\REGFILE|MEM~497_combout\ & (((\REGFILE|MEM~262_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~497_combout\ & (\REGFILE|MEM~198_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~198_regout\,
	datab => \REGFILE|MEM~497_combout\,
	datac => \REGFILE|MEM~262_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~498_combout\);

-- Location: LCCOMB_X47_Y12_N12
\REGFILE|MEM~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~501_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~498_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~500_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~500_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~498_combout\,
	combout => \REGFILE|MEM~501_combout\);

-- Location: LCFF_X46_Y12_N25
\regA|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~501_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(2));

-- Location: LCCOMB_X46_Y12_N24
\MUXA|salida[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~7_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(2))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(2)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(2),
	datab => \rst~combout\,
	datac => \regA|dt_out\(2),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[2]~7_combout\);

-- Location: LCCOMB_X45_Y11_N30
\ALUCOMP|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~16_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux29~0_combout\);

-- Location: LCCOMB_X44_Y11_N6
\ALUCOMP|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (!\ALUCOMP|Mux29~1_combout\)) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux29~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux29~1_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|Mux29~0_combout\,
	combout => \ALUCOMP|Mux29~2_combout\);

-- Location: LCFF_X44_Y11_N7
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCCOMB_X43_Y13_N22
\PROGCOUNT|addr_out[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[2]~19_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(2)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux29~2_combout\,
	datab => \regALU|dt_out\(2),
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[2]~19_combout\);

-- Location: LCFF_X43_Y13_N23
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[2]~19_combout\,
	sdata => \INSTREG|func_out\(0),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(2));

-- Location: LCCOMB_X42_Y10_N28
\MUXPC|salida[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[2]~0_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(2)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(2),
	datac => \regALU|dt_out\(2),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \MUXPC|salida[2]~0_combout\);

-- Location: LCFF_X44_Y14_N9
\INSTREG|func_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a3\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(3));

-- Location: LCCOMB_X43_Y15_N14
\ALUCOMP|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~2_combout\ = (\INSTREG|func_out\(2) & (((\ALUCONTRL|op\(2))))) # (!\INSTREG|func_out\(2) & (!\ALUCONTRL|op\(2) & ((\INSTREG|func_out\(3)) # (\INSTREG|func_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(2),
	datab => \INSTREG|func_out\(3),
	datac => \ALUCONTRL|op\(2),
	datad => \INSTREG|func_out\(0),
	combout => \ALUCOMP|Mux28~2_combout\);

-- Location: LCCOMB_X43_Y15_N4
\ALUCOMP|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~3_combout\ = (!\rst~combout\ & (\ALUCOMP|Mux28~2_combout\ & \CONTROLU|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \ALUCOMP|Mux28~2_combout\,
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \ALUCOMP|Mux28~3_combout\);

-- Location: LCCOMB_X44_Y13_N0
\ALUCOMP|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~1_combout\ = (\ALUCOMP|Mux30~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCOMP|Mux30~0_combout\ & (\ALUCOMP|Add0~14_combout\ & (\ALUCOMP|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux30~0_combout\,
	datab => \ALUCOMP|Add0~14_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux30~1_combout\);

-- Location: LCCOMB_X44_Y13_N14
\ALUCOMP|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXA|salida[1]~8_combout\)) # (!\MUXB|Mux30~0_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux30~0_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \MUXA|salida[1]~8_combout\,
	datad => \ALUCOMP|Mux30~1_combout\,
	combout => \ALUCOMP|Mux30~2_combout\);

-- Location: LCCOMB_X43_Y14_N2
\JUMPMUX|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux30~0_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(1)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux30~2_combout\,
	datac => \CONTROLU|PCsrc[1]~0_combout\,
	datad => \regALU|dt_out\(1),
	combout => \JUMPMUX|Mux30~0_combout\);

-- Location: LCFF_X43_Y14_N3
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \JUMPMUX|Mux30~0_combout\,
	aclr => \rst~combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X43_Y14_N16
\MUXPC|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[1]~1_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(1)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(1),
	datac => \CONTROLU|IorD~9_combout\,
	datad => \regALU|dt_out\(1),
	combout => \MUXPC|salida[1]~1_combout\);

-- Location: LCFF_X49_Y14_N7
\INSTREG|op_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a30\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(4));

-- Location: LCCOMB_X49_Y14_N18
\INSTREG|op_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|op_out[3]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a29\,
	combout => \INSTREG|op_out[3]~feeder_combout\);

-- Location: LCFF_X49_Y14_N19
\INSTREG|op_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|op_out[3]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(3));

-- Location: LCFF_X49_Y14_N25
\INSTREG|op_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a26\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(0));

-- Location: LCCOMB_X48_Y14_N0
\CONTROLU|nxt_st[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[0]~15_combout\ = (\INSTREG|op_out\(5) & (((\INSTREG|op_out\(0) & !\CONTROLU|Equal0~2_combout\)))) # (!\INSTREG|op_out\(5) & (!\INSTREG|op_out\(3) & (!\INSTREG|op_out\(0) & \CONTROLU|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \INSTREG|op_out\(3),
	datac => \INSTREG|op_out\(0),
	datad => \CONTROLU|Equal0~2_combout\,
	combout => \CONTROLU|nxt_st[0]~15_combout\);

-- Location: LCCOMB_X48_Y14_N4
\CONTROLU|nxt_st[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[0]~16_combout\ = (\INSTREG|op_out\(1) & (!\INSTREG|op_out\(4) & (!\INSTREG|op_out\(2) & \CONTROLU|nxt_st[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(1),
	datab => \INSTREG|op_out\(4),
	datac => \INSTREG|op_out\(2),
	datad => \CONTROLU|nxt_st[0]~15_combout\,
	combout => \CONTROLU|nxt_st[0]~16_combout\);

-- Location: LCCOMB_X48_Y14_N26
\CONTROLU|nxt_st[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(0) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[0]~16_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(0),
	datac => \CONTROLU|nxt_st[0]~16_combout\,
	datad => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	combout => \CONTROLU|nxt_st\(0));

-- Location: LCCOMB_X48_Y14_N30
\CONTROLU|NextSt[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~17_combout\ = (\CONTROLU|Equal0~1_combout\) # ((\NEWST|CS[0]~0_combout\ & \CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~1_combout\,
	datab => \NEWST|CS[0]~0_combout\,
	datad => \CONTROLU|nxt_st\(0),
	combout => \CONTROLU|NextSt[0]~17_combout\);

-- Location: LCCOMB_X47_Y14_N14
\CONTROLU|NextSt[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~18_combout\ = (!\rst~combout\ & ((\CONTROLU|NextSt[0]~20_combout\) # (\CONTROLU|NextSt[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|NextSt[0]~20_combout\,
	datac => \rst~combout\,
	datad => \CONTROLU|NextSt[0]~17_combout\,
	combout => \CONTROLU|NextSt[0]~18_combout\);

-- Location: LCFF_X47_Y14_N15
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X47_Y14_N26
\CONTROLU|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~3_combout\ = (\NEWST|CS\(2) & (!\NEWST|CS\(0) & (!\NEWST|CS\(3) & \NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y14_N12
\ALUCONTRL|op[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op\(2) = (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\) # ((\CONTROLU|Equal0~3_combout\ & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \CONTROLU|Equal0~3_combout\,
	datac => \INSTREG|func_out\(1),
	datad => \rst~combout\,
	combout => \ALUCONTRL|op\(2));

-- Location: LCCOMB_X43_Y15_N0
\ALUCOMP|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~0_combout\ = (\rst~combout\) # ((!\INSTREG|func_out\(2)) # (!\CONTROLU|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~3_combout\,
	datac => \INSTREG|func_out\(2),
	combout => \ALUCOMP|Mux28~0_combout\);

-- Location: LCCOMB_X43_Y15_N24
\ALUCOMP|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op\(2))) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCONTRL|op\(2),
	datad => \ALUCOMP|Mux28~0_combout\,
	combout => \ALUCOMP|Mux28~1_combout\);

-- Location: LCCOMB_X43_Y15_N8
\ALUCOMP|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~1_combout\ = (\MUXB|Mux31~0_combout\ & ((\MUXA|salida[0]~9_combout\) # ((!\ALUCOMP|Mux28~3_combout\ & \ALUCONTRL|op[0]~0_combout\)))) # (!\MUXB|Mux31~0_combout\ & (!\ALUCOMP|Mux28~3_combout\ & (\ALUCONTRL|op[0]~0_combout\ & 
-- \MUXA|salida[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux31~0_combout\,
	datab => \ALUCOMP|Mux28~3_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \MUXA|salida[0]~9_combout\,
	combout => \ALUCOMP|Mux31~1_combout\);

-- Location: LCCOMB_X43_Y15_N2
\ALUCOMP|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Add0~12_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux31~0_combout\);

-- Location: LCCOMB_X43_Y15_N16
\ALUCOMP|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\ALUCOMP|Mux31~1_combout\)))) # (!\ALUCOMP|Mux28~3_combout\ & ((\ALUCOMP|Mux28~1_combout\ & ((\ALUCOMP|Mux31~0_combout\))) # (!\ALUCOMP|Mux28~1_combout\ & (\ALUCOMP|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~3_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Mux31~1_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux31~2_combout\);

-- Location: LCFF_X43_Y15_N17
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCCOMB_X43_Y15_N22
\JUMPMUX|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux31~0_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(0)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \ALUCOMP|Mux31~2_combout\,
	datad => \regALU|dt_out\(0),
	combout => \JUMPMUX|Mux31~0_combout\);

-- Location: LCFF_X43_Y15_N23
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \JUMPMUX|Mux31~0_combout\,
	aclr => \rst~combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X43_Y10_N22
\MUXPC|salida[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[0]~3_combout\ = (\CONTROLU|IorD~9_combout\ & (\regALU|dt_out\(0))) # (!\CONTROLU|IorD~9_combout\ & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(0),
	datac => \PROGCOUNT|addr_out\(0),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \MUXPC|salida[0]~3_combout\);

-- Location: LCCOMB_X47_Y9_N0
\INSTREG|jump_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[17]~feeder_combout\ = \MEM|MEM_rtl_0|auto_generated|ram_block1a17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|MEM_rtl_0|auto_generated|ram_block1a17\,
	combout => \INSTREG|jump_out[17]~feeder_combout\);

-- Location: LCFF_X47_Y9_N1
\INSTREG|jump_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[17]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(17));

-- Location: LCCOMB_X43_Y15_N10
\MUXMemReg|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[0]~0_combout\ = (\rst~combout\ & (((\regALU|dt_out\(0))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~4_combout\ & (\MDR|dt_out\(0))) # (!\CONTROLU|Equal0~4_combout\ & ((\regALU|dt_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(0),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \regALU|dt_out\(0),
	combout => \MUXMemReg|salida[0]~0_combout\);

-- Location: LCCOMB_X40_Y13_N6
\REGFILE|MEM~624\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~624_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~624_combout\);

-- Location: LCFF_X40_Y13_N7
\REGFILE|MEM~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~624_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~132_regout\);

-- Location: LCCOMB_X40_Y13_N0
\REGFILE|MEM~622\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~622_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~622_combout\);

-- Location: LCFF_X40_Y13_N1
\REGFILE|MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~622_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~100_regout\);

-- Location: LCCOMB_X39_Y14_N18
\REGFILE|MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~295_combout\ = (\REGFILE|MEM~294_combout\ & (((!\REGFILE|MEM~132_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~294_combout\ & (\INSTREG|jump_out\(17) & ((!\REGFILE|MEM~100_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~294_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~132_regout\,
	datad => \REGFILE|MEM~100_regout\,
	combout => \REGFILE|MEM~295_combout\);

-- Location: LCCOMB_X42_Y10_N22
\REGFILE|MEM~196feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~196feeder_combout\ = \MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~196feeder_combout\);

-- Location: LCFF_X42_Y10_N23
\REGFILE|MEM~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~196feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~196_regout\);

-- Location: LCCOMB_X44_Y9_N4
\REGFILE|MEM~228feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~228feeder_combout\ = \MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~228feeder_combout\);

-- Location: LCFF_X44_Y9_N5
\REGFILE|MEM~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~228feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~228_regout\);

-- Location: LCCOMB_X49_Y9_N12
\REGFILE|MEM~164feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~164feeder_combout\ = \MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~164feeder_combout\);

-- Location: LCFF_X49_Y9_N13
\REGFILE|MEM~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~164feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~164_regout\);

-- Location: LCCOMB_X44_Y9_N30
\REGFILE|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~292_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~228_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((!\INSTREG|jump_out\(16) & \REGFILE|MEM~164_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~228_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~164_regout\,
	combout => \REGFILE|MEM~292_combout\);

-- Location: LCCOMB_X42_Y10_N10
\REGFILE|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~293_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~292_combout\ & (\REGFILE|MEM~260_regout\)) # (!\REGFILE|MEM~292_combout\ & ((\REGFILE|MEM~196_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~260_regout\,
	datab => \REGFILE|MEM~196_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~292_combout\,
	combout => \REGFILE|MEM~293_combout\);

-- Location: LCCOMB_X44_Y14_N28
\REGFILE|MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~296_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~293_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~295_combout\,
	datad => \REGFILE|MEM~293_combout\,
	combout => \REGFILE|MEM~296_combout\);

-- Location: LCFF_X44_Y14_N29
\regB|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(0));

-- Location: LCFF_X49_Y14_N5
\INSTREG|op_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a28\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(2));

-- Location: LCFF_X48_Y14_N7
\INSTREG|op_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a31\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(5));

-- Location: LCFF_X48_Y14_N13
\INSTREG|op_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a27\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(1));

-- Location: LCCOMB_X49_Y14_N12
\CONTROLU|nxt_st[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~12_combout\ = (\INSTREG|op_out\(0) & ((!\INSTREG|op_out\(1)) # (!\INSTREG|op_out\(5)))) # (!\INSTREG|op_out\(0) & ((\INSTREG|op_out\(5)) # (\INSTREG|op_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(0),
	datab => \INSTREG|op_out\(5),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|nxt_st[1]~12_combout\);

-- Location: LCCOMB_X48_Y14_N12
\CONTROLU|nxt_st[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~10_combout\ = (\INSTREG|op_out\(0) & (\INSTREG|op_out\(5) & (\INSTREG|op_out\(1) & !\CONTROLU|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(0),
	datab => \INSTREG|op_out\(5),
	datac => \INSTREG|op_out\(1),
	datad => \CONTROLU|Equal0~2_combout\,
	combout => \CONTROLU|nxt_st[2]~10_combout\);

-- Location: LCCOMB_X48_Y14_N22
\CONTROLU|nxt_st[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~13_combout\ = (\INSTREG|op_out\(3) & (\CONTROLU|Equal0~2_combout\ & (!\CONTROLU|nxt_st[1]~12_combout\))) # (!\INSTREG|op_out\(3) & ((\CONTROLU|nxt_st[2]~10_combout\) # ((\CONTROLU|Equal0~2_combout\ & 
-- !\CONTROLU|nxt_st[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(3),
	datab => \CONTROLU|Equal0~2_combout\,
	datac => \CONTROLU|nxt_st[1]~12_combout\,
	datad => \CONTROLU|nxt_st[2]~10_combout\,
	combout => \CONTROLU|nxt_st[1]~13_combout\);

-- Location: LCCOMB_X48_Y14_N18
\CONTROLU|nxt_st[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~14_combout\ = (!\INSTREG|op_out\(4) & (!\INSTREG|op_out\(2) & \CONTROLU|nxt_st[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(4),
	datac => \INSTREG|op_out\(2),
	datad => \CONTROLU|nxt_st[1]~13_combout\,
	combout => \CONTROLU|nxt_st[1]~14_combout\);

-- Location: LCCOMB_X48_Y14_N20
\CONTROLU|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(1) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[1]~14_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(1),
	datac => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	datad => \CONTROLU|nxt_st[1]~14_combout\,
	combout => \CONTROLU|nxt_st\(1));

-- Location: LCCOMB_X47_Y14_N18
\CONTROLU|NextSt[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~19_combout\ = (\CONTROLU|nxt_st[1]~4_combout\ & ((\CONTROLU|NextSt[0]~20_combout\) # ((\NEWST|CS[0]~0_combout\ & \CONTROLU|nxt_st\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st[1]~4_combout\,
	datab => \CONTROLU|NextSt[0]~20_combout\,
	datac => \NEWST|CS[0]~0_combout\,
	datad => \CONTROLU|nxt_st\(1),
	combout => \CONTROLU|NextSt[1]~19_combout\);

-- Location: LCFF_X47_Y14_N19
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X49_Y14_N10
\CONTROLU|nxt_st[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~7_combout\ = (!\INSTREG|op_out\(2) & !\INSTREG|op_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|op_out\(2),
	datad => \INSTREG|op_out\(4),
	combout => \CONTROLU|nxt_st[2]~7_combout\);

-- Location: LCCOMB_X49_Y14_N14
\CONTROLU|nxt_st[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~8_combout\ = (!\INSTREG|op_out\(0) & !\INSTREG|op_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(0),
	datad => \INSTREG|op_out\(3),
	combout => \CONTROLU|nxt_st[2]~8_combout\);

-- Location: LCCOMB_X48_Y14_N8
\CONTROLU|nxt_st[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~9_combout\ = (!\INSTREG|op_out\(1) & (!\INSTREG|op_out\(5) & (\CONTROLU|nxt_st[2]~8_combout\ & \CONTROLU|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(1),
	datab => \INSTREG|op_out\(5),
	datac => \CONTROLU|nxt_st[2]~8_combout\,
	datad => \CONTROLU|Equal0~2_combout\,
	combout => \CONTROLU|nxt_st[2]~9_combout\);

-- Location: LCCOMB_X48_Y14_N14
\CONTROLU|nxt_st[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~11_combout\ = (\CONTROLU|nxt_st[2]~7_combout\ & ((\CONTROLU|nxt_st[2]~9_combout\) # ((\INSTREG|op_out\(3) & \CONTROLU|nxt_st[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(3),
	datab => \CONTROLU|nxt_st[2]~7_combout\,
	datac => \CONTROLU|nxt_st[2]~9_combout\,
	datad => \CONTROLU|nxt_st[2]~10_combout\,
	combout => \CONTROLU|nxt_st[2]~11_combout\);

-- Location: LCCOMB_X48_Y14_N28
\CONTROLU|nxt_st[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(2) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[2]~11_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(2),
	datac => \CONTROLU|nxt_st[2]~11_combout\,
	datad => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	combout => \CONTROLU|nxt_st\(2));

-- Location: LCCOMB_X48_Y14_N24
\CONTROLU|NextSt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt~10_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(2) & ((\NEWST|CS\(1)) # (\CONTROLU|nxt_st\(2))))) # (!\NEWST|CS\(0) & (\NEWST|CS\(1) & ((\NEWST|CS\(2)) # (\CONTROLU|nxt_st\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(1),
	datad => \CONTROLU|nxt_st\(2),
	combout => \CONTROLU|NextSt~10_combout\);

-- Location: LCCOMB_X47_Y14_N6
\CONTROLU|NextSt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt~21_combout\ = (!\NEWST|CS\(3) & \CONTROLU|NextSt~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(3),
	datad => \CONTROLU|NextSt~10_combout\,
	combout => \CONTROLU|NextSt~21_combout\);

-- Location: LCFF_X47_Y14_N7
\NEWST|CS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt~21_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(2));

-- Location: LCCOMB_X48_Y14_N10
\CONTROLU|nxt_st[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(3) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st[3]~5_combout\)) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st[3]~5_combout\,
	datac => \CONTROLU|nxt_st\(3),
	datad => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	combout => \CONTROLU|nxt_st\(3));

-- Location: LCCOMB_X48_Y14_N2
\CONTROLU|NextSt[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[3]~14_combout\ = (\NEWST|CS\(3) & (\NEWST|CS\(1) & (!\NEWST|CS\(0)))) # (!\NEWST|CS\(3) & (\CONTROLU|nxt_st\(3) & (\NEWST|CS\(1) $ (\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(0),
	datad => \CONTROLU|nxt_st\(3),
	combout => \CONTROLU|NextSt[3]~14_combout\);

-- Location: LCCOMB_X47_Y14_N8
\CONTROLU|NextSt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[3]~22_combout\ = (!\NEWST|CS\(2) & (!\rst~combout\ & \CONTROLU|NextSt[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(2),
	datac => \rst~combout\,
	datad => \CONTROLU|NextSt[3]~14_combout\,
	combout => \CONTROLU|NextSt[3]~22_combout\);

-- Location: LCFF_X47_Y14_N9
\NEWST|CS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(3));

-- Location: LCCOMB_X47_Y14_N4
\CONTROLU|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~1_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (!\NEWST|CS\(0) & !\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y14_N16
\MUXB|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~1_combout\ = (\rst~combout\) # ((!\CONTROLU|Equal0~1_combout\ & (!\CONTROLU|Equal0~2_combout\ & !\MUXB|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~1_combout\,
	datac => \CONTROLU|Equal0~2_combout\,
	datad => \MUXB|Mux0~0_combout\,
	combout => \MUXB|Mux16~1_combout\);

-- Location: LCCOMB_X46_Y13_N0
\MUXB|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux23~0_combout\ = (\regB|dt_out\(8) & ((\MUXB|Mux16~1_combout\) # ((\INSTREG|jump_out\(8) & \MUXB|Mux16~0_combout\)))) # (!\regB|dt_out\(8) & (((\INSTREG|jump_out\(8) & \MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(8),
	datab => \MUXB|Mux16~1_combout\,
	datac => \INSTREG|jump_out\(8),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux23~0_combout\);

-- Location: LCCOMB_X47_Y13_N16
\MUXA|salida[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~1_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(8))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(8))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(8),
	datab => \PROGCOUNT|addr_out\(8),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[8]~1_combout\);

-- Location: LCCOMB_X44_Y13_N26
\ALUCOMP|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux23~0_combout\) # ((\ALUCOMP|Mux28~1_combout\) # (\MUXA|salida[8]~1_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXB|Mux23~0_combout\ & (!\ALUCOMP|Mux28~1_combout\ & 
-- \MUXA|salida[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \MUXA|salida[8]~1_combout\,
	combout => \ALUCOMP|Mux23~0_combout\);

-- Location: LCCOMB_X44_Y13_N12
\ALUCOMP|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~1_combout\ = (\ALUCOMP|Mux23~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux28~1_combout\)))) # (!\ALUCOMP|Mux23~0_combout\ & (\ALUCOMP|Add0~28_combout\ & (\ALUCOMP|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~28_combout\,
	datab => \ALUCOMP|Mux23~0_combout\,
	datac => \ALUCOMP|Mux28~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux23~1_combout\);

-- Location: LCCOMB_X44_Y13_N18
\ALUCOMP|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~2_combout\ = (\ALUCOMP|Mux28~3_combout\ & (((!\MUXB|Mux23~0_combout\)) # (!\MUXA|salida[8]~1_combout\))) # (!\ALUCOMP|Mux28~3_combout\ & (((\ALUCOMP|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~1_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datac => \ALUCOMP|Mux28~3_combout\,
	datad => \ALUCOMP|Mux23~1_combout\,
	combout => \ALUCOMP|Mux23~2_combout\);

-- Location: LCFF_X44_Y13_N19
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCCOMB_X43_Y10_N24
\ADDRDEC|Equal0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal0~32_combout\ = (\ADDRDEC|Equal0~31_combout\ & ((\CONTROLU|IorD~9_combout\ & (!\regALU|dt_out\(8))) # (!\CONTROLU|IorD~9_combout\ & ((!\PROGCOUNT|addr_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \regALU|dt_out\(8),
	datac => \PROGCOUNT|addr_out\(8),
	datad => \ADDRDEC|Equal0~31_combout\,
	combout => \ADDRDEC|Equal0~32_combout\);

-- Location: LCCOMB_X42_Y10_N6
\ADDRDEC|writeMemory~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|writeMemory~0_combout\ = (!\rst~combout\ & (!\ADDRDEC|Equal0~32_combout\ & \CONTROLU|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \ADDRDEC|Equal0~32_combout\,
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \ADDRDEC|writeMemory~0_combout\);

-- Location: LCFF_X49_Y10_N21
\INSTREG|jump_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|MEM_rtl_0|auto_generated|ram_block1a16\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(16));

-- Location: LCCOMB_X49_Y12_N26
\REGFILE|MEM~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~437_combout\ = (\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16)) # ((\REGFILE|MEM~231_regout\)))) # (!\INSTREG|jump_out\(17) & (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~167_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~167_regout\,
	datad => \REGFILE|MEM~231_regout\,
	combout => \REGFILE|MEM~437_combout\);

-- Location: LCCOMB_X40_Y11_N8
\REGFILE|MEM~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~438_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~437_combout\ & (\REGFILE|MEM~263_regout\)) # (!\REGFILE|MEM~437_combout\ & ((\REGFILE|MEM~199_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~437_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~437_combout\,
	datac => \REGFILE|MEM~263_regout\,
	datad => \REGFILE|MEM~199_regout\,
	combout => \REGFILE|MEM~438_combout\);

-- Location: LCCOMB_X44_Y14_N22
\REGFILE|MEM~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~441_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~438_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~440_combout\,
	datab => \REGFILE|MEM~438_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~441_combout\);

-- Location: LCFF_X44_Y14_N23
\regB|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(3));

-- Location: LCCOMB_X44_Y10_N0
\ADDRDEC|dev1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|dev1~0_combout\ = (!\rst~combout\ & (\CONTROLU|Equal0~0_combout\ & \ADDRDEC|Equal0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \ADDRDEC|Equal0~32_combout\,
	combout => \ADDRDEC|dev1~0_combout\);

-- Location: LCFF_X44_Y13_N9
\REG7SEG|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(3));

-- Location: LCFF_X45_Y10_N5
\REG7SEG|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(0));

-- Location: LCCOMB_X39_Y13_N2
\SEG7WR|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~11_combout\ = (!\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|Equal0~11_combout\);

-- Location: LCFF_X45_Y10_N21
\REG7SEG|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(25));

-- Location: LCFF_X45_Y10_N15
\REG7SEG|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(26));

-- Location: LCCOMB_X45_Y10_N0
\REG7SEG|dt_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[27]~feeder_combout\ = \regB|dt_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(27),
	combout => \REG7SEG|dt_out[27]~feeder_combout\);

-- Location: LCFF_X45_Y10_N1
\REG7SEG|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[27]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(27));

-- Location: LCCOMB_X45_Y10_N14
\SEG7WR|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~8_combout\ = (!\REG7SEG|dt_out\(24) & (!\REG7SEG|dt_out\(25) & (!\REG7SEG|dt_out\(26) & !\REG7SEG|dt_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(24),
	datab => \REG7SEG|dt_out\(25),
	datac => \REG7SEG|dt_out\(26),
	datad => \REG7SEG|dt_out\(27),
	combout => \SEG7WR|Equal0~8_combout\);

-- Location: LCFF_X46_Y12_N9
\REG7SEG|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(31));

-- Location: LCFF_X46_Y12_N27
\REG7SEG|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(28));

-- Location: LCFF_X46_Y12_N13
\REG7SEG|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(30));

-- Location: LCCOMB_X46_Y12_N26
\SEG7WR|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~9_combout\ = (!\REG7SEG|dt_out\(29) & (!\REG7SEG|dt_out\(31) & (!\REG7SEG|dt_out\(28) & !\REG7SEG|dt_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(29),
	datab => \REG7SEG|dt_out\(31),
	datac => \REG7SEG|dt_out\(28),
	datad => \REG7SEG|dt_out\(30),
	combout => \SEG7WR|Equal0~9_combout\);

-- Location: LCFF_X45_Y10_N29
\REG7SEG|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(22));

-- Location: LCFF_X45_Y10_N17
\REG7SEG|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(20));

-- Location: LCFF_X45_Y10_N23
\REG7SEG|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(21));

-- Location: LCCOMB_X45_Y10_N16
\SEG7WR|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~7_combout\ = (!\REG7SEG|dt_out\(23) & (!\REG7SEG|dt_out\(22) & (!\REG7SEG|dt_out\(20) & !\REG7SEG|dt_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(23),
	datab => \REG7SEG|dt_out\(22),
	datac => \REG7SEG|dt_out\(20),
	datad => \REG7SEG|dt_out\(21),
	combout => \SEG7WR|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y13_N20
\SEG7WR|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~10_combout\ = (\SEG7WR|Equal0~8_combout\ & (\SEG7WR|Equal0~9_combout\ & \SEG7WR|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7WR|Equal0~8_combout\,
	datac => \SEG7WR|Equal0~9_combout\,
	datad => \SEG7WR|Equal0~7_combout\,
	combout => \SEG7WR|Equal0~10_combout\);

-- Location: LCCOMB_X40_Y10_N26
\REG7SEG|dt_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[2]~feeder_combout\ = \regB|dt_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(2),
	combout => \REG7SEG|dt_out[2]~feeder_combout\);

-- Location: LCFF_X40_Y10_N27
\REG7SEG|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[2]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(2));

-- Location: LCCOMB_X39_Y13_N28
\SEG7WR|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal4~0_combout\ = (\SEG7WR|Equal0~6_combout\ & (\SEG7WR|Equal0~11_combout\ & (\SEG7WR|Equal0~10_combout\ & \REG7SEG|dt_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~6_combout\,
	datab => \SEG7WR|Equal0~11_combout\,
	datac => \SEG7WR|Equal0~10_combout\,
	datad => \REG7SEG|dt_out\(2),
	combout => \SEG7WR|Equal4~0_combout\);

-- Location: LCCOMB_X39_Y13_N4
\REG7SEG|dt_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[1]~feeder_combout\ = \regB|dt_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(1),
	combout => \REG7SEG|dt_out[1]~feeder_combout\);

-- Location: LCFF_X39_Y13_N5
\REG7SEG|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[1]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(1));

-- Location: LCCOMB_X39_Y13_N18
\SEG7WR|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal1~0_combout\ = (\SEG7WR|Equal0~6_combout\ & (\SEG7WR|Equal0~10_combout\ & \REG7SEG|dt_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~6_combout\,
	datac => \SEG7WR|Equal0~10_combout\,
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y13_N2
\SEG7WR|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal12~0_combout\ = (\REG7SEG|dt_out\(3) & (!\REG7SEG|dt_out\(1) & (\REG7SEG|dt_out\(2) & \SEG7WR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|Equal12~0_combout\);

-- Location: LCCOMB_X29_Y13_N12
\SEG7WR|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr6~0_combout\ = (!\REG7SEG|dt_out\(2) & (\SEG7WR|Equal1~0_combout\ & (\REG7SEG|dt_out\(3) $ (!\REG7SEG|dt_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|WideOr6~0_combout\);

-- Location: LCCOMB_X29_Y13_N4
\SEG7WR|WideOr6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr6~combout\ = (\SEG7WR|Equal12~0_combout\) # ((\SEG7WR|WideOr6~0_combout\) # ((\SEG7WR|Equal4~0_combout\ & !\REG7SEG|dt_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal4~0_combout\,
	datab => \SEG7WR|Equal12~0_combout\,
	datac => \REG7SEG|dt_out\(1),
	datad => \SEG7WR|WideOr6~0_combout\,
	combout => \SEG7WR|WideOr6~combout\);

-- Location: LCCOMB_X29_Y13_N28
\SEG7WR|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal14~0_combout\ = (\REG7SEG|dt_out\(3) & (\REG7SEG|dt_out\(1) & (\REG7SEG|dt_out\(2) & \SEG7WR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|Equal14~0_combout\);

-- Location: LCCOMB_X39_Y13_N30
\SEG7WR|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~13_combout\ = (\SEG7WR|Equal0~6_combout\ & (\SEG7WR|Equal0~9_combout\ & (\SEG7WR|Equal0~8_combout\ & \SEG7WR|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~6_combout\,
	datab => \SEG7WR|Equal0~9_combout\,
	datac => \SEG7WR|Equal0~8_combout\,
	datad => \SEG7WR|Equal0~7_combout\,
	combout => \SEG7WR|Equal0~13_combout\);

-- Location: LCCOMB_X39_Y13_N26
\SEG7WR|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal11~0_combout\ = (\REG7SEG|dt_out\(2) & (\SEG7WR|Equal0~13_combout\ & (\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(2),
	datab => \SEG7WR|Equal0~13_combout\,
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|Equal11~0_combout\);

-- Location: LCCOMB_X29_Y13_N22
\SEG7WR|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr4~0_combout\ = (!\SEG7WR|Equal14~0_combout\ & !\SEG7WR|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7WR|Equal14~0_combout\,
	datad => \SEG7WR|Equal11~0_combout\,
	combout => \SEG7WR|WideOr4~0_combout\);

-- Location: LCCOMB_X29_Y13_N6
\SEG7WR|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr5~0_combout\ = (\SEG7WR|Equal1~0_combout\ & ((\REG7SEG|dt_out\(3) & (\REG7SEG|dt_out\(1) & !\REG7SEG|dt_out\(2))) # (!\REG7SEG|dt_out\(3) & (!\REG7SEG|dt_out\(1) & \REG7SEG|dt_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|WideOr5~0_combout\);

-- Location: LCCOMB_X29_Y13_N8
\SEG7WR|WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr5~1_combout\ = ((\SEG7WR|WideOr5~0_combout\) # ((\SEG7WR|Equal4~0_combout\ & \REG7SEG|dt_out\(1)))) # (!\SEG7WR|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal4~0_combout\,
	datab => \SEG7WR|WideOr4~0_combout\,
	datac => \REG7SEG|dt_out\(1),
	datad => \SEG7WR|WideOr5~0_combout\,
	combout => \SEG7WR|WideOr5~1_combout\);

-- Location: LCCOMB_X40_Y10_N30
\REG7SEG|dt_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[13]~feeder_combout\ = \regB|dt_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(13),
	combout => \REG7SEG|dt_out[13]~feeder_combout\);

-- Location: LCFF_X40_Y10_N31
\REG7SEG|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[13]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(13));

-- Location: LCFF_X40_Y10_N29
\REG7SEG|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(15));

-- Location: LCFF_X45_Y10_N13
\REG7SEG|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(14));

-- Location: LCCOMB_X40_Y10_N28
\SEG7WR|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~4_combout\ = (!\REG7SEG|dt_out\(12) & (!\REG7SEG|dt_out\(13) & (!\REG7SEG|dt_out\(15) & !\REG7SEG|dt_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(12),
	datab => \REG7SEG|dt_out\(13),
	datac => \REG7SEG|dt_out\(15),
	datad => \REG7SEG|dt_out\(14),
	combout => \SEG7WR|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y10_N2
\REG7SEG|dt_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[7]~feeder_combout\ = \regB|dt_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(7),
	combout => \REG7SEG|dt_out[7]~feeder_combout\);

-- Location: LCFF_X45_Y10_N3
\REG7SEG|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[7]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(7));

-- Location: LCFF_X45_Y10_N25
\REG7SEG|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(5));

-- Location: LCCOMB_X45_Y10_N6
\REG7SEG|dt_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[4]~feeder_combout\ = \regB|dt_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(4),
	combout => \REG7SEG|dt_out[4]~feeder_combout\);

-- Location: LCFF_X45_Y10_N7
\REG7SEG|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[4]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(4));

-- Location: LCCOMB_X45_Y10_N24
\SEG7WR|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~2_combout\ = (!\REG7SEG|dt_out\(6) & (!\REG7SEG|dt_out\(7) & (!\REG7SEG|dt_out\(5) & !\REG7SEG|dt_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(6),
	datab => \REG7SEG|dt_out\(7),
	datac => \REG7SEG|dt_out\(5),
	datad => \REG7SEG|dt_out\(4),
	combout => \SEG7WR|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y10_N18
\REG7SEG|dt_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[16]~feeder_combout\ = \regB|dt_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(16),
	combout => \REG7SEG|dt_out[16]~feeder_combout\);

-- Location: LCFF_X40_Y10_N19
\REG7SEG|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[16]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(16));

-- Location: LCFF_X40_Y10_N11
\REG7SEG|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(19));

-- Location: LCFF_X45_Y10_N11
\REG7SEG|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(17));

-- Location: LCCOMB_X40_Y10_N10
\SEG7WR|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~5_combout\ = (!\REG7SEG|dt_out\(18) & (!\REG7SEG|dt_out\(16) & (!\REG7SEG|dt_out\(19) & !\REG7SEG|dt_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(18),
	datab => \REG7SEG|dt_out\(16),
	datac => \REG7SEG|dt_out\(19),
	datad => \REG7SEG|dt_out\(17),
	combout => \SEG7WR|Equal0~5_combout\);

-- Location: LCCOMB_X40_Y10_N16
\SEG7WR|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~6_combout\ = (\SEG7WR|Equal0~3_combout\ & (\SEG7WR|Equal0~4_combout\ & (\SEG7WR|Equal0~2_combout\ & \SEG7WR|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~3_combout\,
	datab => \SEG7WR|Equal0~4_combout\,
	datac => \SEG7WR|Equal0~2_combout\,
	datad => \SEG7WR|Equal0~5_combout\,
	combout => \SEG7WR|Equal0~6_combout\);

-- Location: LCCOMB_X39_Y13_N12
\SEG7WR|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal2~0_combout\ = (\REG7SEG|dt_out\(1) & !\REG7SEG|dt_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REG7SEG|dt_out\(1),
	datad => \REG7SEG|dt_out\(2),
	combout => \SEG7WR|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y13_N10
\SEG7WR|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal2~1_combout\ = (\SEG7WR|Equal0~10_combout\ & (\SEG7WR|Equal0~11_combout\ & (\SEG7WR|Equal0~6_combout\ & \SEG7WR|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~10_combout\,
	datab => \SEG7WR|Equal0~11_combout\,
	datac => \SEG7WR|Equal0~6_combout\,
	datad => \SEG7WR|Equal2~0_combout\,
	combout => \SEG7WR|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y13_N18
\SEG7WR|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr4~combout\ = (\SEG7WR|Equal14~0_combout\) # ((\SEG7WR|Equal2~1_combout\) # (\SEG7WR|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7WR|Equal14~0_combout\,
	datac => \SEG7WR|Equal2~1_combout\,
	datad => \SEG7WR|Equal11~0_combout\,
	combout => \SEG7WR|WideOr4~combout\);

-- Location: LCCOMB_X29_Y13_N24
\SEG7WR|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr0~0_combout\ = (\REG7SEG|dt_out\(3)) # ((\REG7SEG|dt_out\(1) $ (\REG7SEG|dt_out\(2))) # (!\SEG7WR|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\SEG7WR|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr3~combout\ = ((\SEG7WR|Equal14~0_combout\) # ((\SEG7WR|Equal4~0_combout\ & !\REG7SEG|dt_out\(1)))) # (!\SEG7WR|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal4~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|WideOr0~0_combout\,
	datad => \SEG7WR|Equal14~0_combout\,
	combout => \SEG7WR|WideOr3~combout\);

-- Location: LCCOMB_X29_Y13_N0
\SEG7WR|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr2~0_combout\ = (\SEG7WR|Equal1~0_combout\ & ((\REG7SEG|dt_out\(3) & (!\REG7SEG|dt_out\(1) & !\REG7SEG|dt_out\(2))) # (!\REG7SEG|dt_out\(3) & (\REG7SEG|dt_out\(1) $ (\REG7SEG|dt_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y13_N30
\SEG7WR|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr2~1_combout\ = ((\SEG7WR|WideOr2~0_combout\) # ((!\REG7SEG|dt_out\(1) & \SEG7WR|Equal4~0_combout\))) # (!\SEG7WR|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|WideOr0~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|Equal4~0_combout\,
	datad => \SEG7WR|WideOr2~0_combout\,
	combout => \SEG7WR|WideOr2~1_combout\);

-- Location: LCCOMB_X29_Y13_N16
\SEG7WR|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~2_combout\ = (!\REG7SEG|dt_out\(3) & (\SEG7WR|Equal1~0_combout\ & ((\REG7SEG|dt_out\(1)) # (!\REG7SEG|dt_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(3),
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \SEG7WR|Equal1~0_combout\,
	combout => \SEG7WR|WideOr1~2_combout\);

-- Location: LCCOMB_X39_Y13_N0
\SEG7WR|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~3_combout\ = (!\REG7SEG|dt_out\(2) & (\SEG7WR|Equal0~13_combout\ & (\REG7SEG|dt_out\(1) & !\REG7SEG|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(2),
	datab => \SEG7WR|Equal0~13_combout\,
	datac => \REG7SEG|dt_out\(1),
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|WideOr1~3_combout\);

-- Location: LCCOMB_X29_Y13_N26
\SEG7WR|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~combout\ = (\SEG7WR|Equal12~0_combout\) # ((\SEG7WR|WideOr1~2_combout\) # (\SEG7WR|WideOr1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7WR|Equal12~0_combout\,
	datac => \SEG7WR|WideOr1~2_combout\,
	datad => \SEG7WR|WideOr1~3_combout\,
	combout => \SEG7WR|WideOr1~combout\);

-- Location: LCCOMB_X39_Y13_N24
\SEG7WR|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~12_combout\ = (!\REG7SEG|dt_out\(2) & (\SEG7WR|Equal0~13_combout\ & (!\REG7SEG|dt_out\(1) & \SEG7WR|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(2),
	datab => \SEG7WR|Equal0~13_combout\,
	datac => \REG7SEG|dt_out\(1),
	datad => \SEG7WR|Equal0~11_combout\,
	combout => \SEG7WR|Equal0~12_combout\);

-- Location: LCCOMB_X29_Y13_N20
\SEG7WR|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr0~combout\ = ((\SEG7WR|Equal0~12_combout\) # ((\SEG7WR|Equal11~0_combout\ & !\REG7SEG|dt_out\(1)))) # (!\SEG7WR|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|WideOr0~0_combout\,
	datab => \SEG7WR|Equal11~0_combout\,
	datac => \REG7SEG|dt_out\(1),
	datad => \SEG7WR|Equal0~12_combout\,
	combout => \SEG7WR|WideOr0~combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7exit[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SEG7WR|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7exit(6));
END structure;


