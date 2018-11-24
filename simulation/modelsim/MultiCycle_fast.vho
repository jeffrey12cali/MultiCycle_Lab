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

-- DATE "11/23/2018 19:23:26"

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
SIGNAL \CONTROLU|nxt_st[1]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCOMP|Add0~11_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~56_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~70_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~91_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[25]~23_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[24]~22_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[23]~21_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[17]~15_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[14]~12_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~5_combout\ : std_logic;
SIGNAL \SEG7WR|Equal1~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal2~0_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~1_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~7_combout\ : std_logic;
SIGNAL \REGFILE|MEM~196_regout\ : std_logic;
SIGNAL \REGFILE|MEM~228_regout\ : std_logic;
SIGNAL \REGFILE|MEM~292_combout\ : std_logic;
SIGNAL \REGFILE|MEM~293_combout\ : std_logic;
SIGNAL \REGFILE|MEM~100_regout\ : std_logic;
SIGNAL \ALUCOMP|Add0~0_combout\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \MUXA|salida[1]~7_combout\ : std_logic;
SIGNAL \ALUCONTRL|op~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~0_combout\ : std_logic;
SIGNAL \MUXB|Mux7~0_combout\ : std_logic;
SIGNAL \MUXB|Mux12~0_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~23_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~26_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~32_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~58_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~59_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~69_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~75_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~78_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~84_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~87_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~90_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~93_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~38_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~99_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~43_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~4_combout\ : std_logic;
SIGNAL \REGFILE|MEM~264_regout\ : std_logic;
SIGNAL \REGFILE|MEM~104_regout\ : std_logic;
SIGNAL \REGFILE|MEM~299_combout\ : std_logic;
SIGNAL \REGFILE|MEM~300_combout\ : std_logic;
SIGNAL \REGFILE|MEM~201_regout\ : std_logic;
SIGNAL \REGFILE|MEM~302_combout\ : std_logic;
SIGNAL \REGFILE|MEM~303_combout\ : std_logic;
SIGNAL \REGFILE|MEM~235_regout\ : std_logic;
SIGNAL \REGFILE|MEM~171_regout\ : std_logic;
SIGNAL \REGFILE|MEM~312_combout\ : std_logic;
SIGNAL \REGFILE|MEM~313_combout\ : std_logic;
SIGNAL \REGFILE|MEM~236_regout\ : std_logic;
SIGNAL \REGFILE|MEM~108_regout\ : std_logic;
SIGNAL \REGFILE|MEM~76_regout\ : std_logic;
SIGNAL \REGFILE|MEM~44_regout\ : std_logic;
SIGNAL \REGFILE|MEM~319_combout\ : std_logic;
SIGNAL \REGFILE|MEM~140_regout\ : std_logic;
SIGNAL \REGFILE|MEM~320_combout\ : std_logic;
SIGNAL \REGFILE|MEM~206_regout\ : std_logic;
SIGNAL \REGFILE|MEM~238_regout\ : std_logic;
SIGNAL \REGFILE|MEM~174_regout\ : std_logic;
SIGNAL \REGFILE|MEM~327_combout\ : std_logic;
SIGNAL \REGFILE|MEM~270_regout\ : std_logic;
SIGNAL \REGFILE|MEM~328_combout\ : std_logic;
SIGNAL \REGFILE|MEM~78_regout\ : std_logic;
SIGNAL \REGFILE|MEM~46_regout\ : std_logic;
SIGNAL \REGFILE|MEM~329_combout\ : std_logic;
SIGNAL \REGFILE|MEM~332_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111_regout\ : std_logic;
SIGNAL \REGFILE|MEM~337_combout\ : std_logic;
SIGNAL \REGFILE|MEM~48_regout\ : std_logic;
SIGNAL \REGFILE|MEM~339_combout\ : std_logic;
SIGNAL \REGFILE|MEM~144_regout\ : std_logic;
SIGNAL \REGFILE|MEM~340_combout\ : std_logic;
SIGNAL \REGFILE|MEM~241_regout\ : std_logic;
SIGNAL \REGFILE|MEM~177_regout\ : std_logic;
SIGNAL \REGFILE|MEM~342_combout\ : std_logic;
SIGNAL \REGFILE|MEM~81_regout\ : std_logic;
SIGNAL \REGFILE|MEM~344_combout\ : std_logic;
SIGNAL \REGFILE|MEM~178_regout\ : std_logic;
SIGNAL \REGFILE|MEM~274_regout\ : std_logic;
SIGNAL \REGFILE|MEM~84_regout\ : std_logic;
SIGNAL \REGFILE|MEM~52_regout\ : std_logic;
SIGNAL \REGFILE|MEM~359_combout\ : std_logic;
SIGNAL \REGFILE|MEM~360_combout\ : std_logic;
SIGNAL \REGFILE|MEM~213_regout\ : std_logic;
SIGNAL \REGFILE|MEM~245_regout\ : std_logic;
SIGNAL \REGFILE|MEM~181_regout\ : std_logic;
SIGNAL \REGFILE|MEM~362_combout\ : std_logic;
SIGNAL \REGFILE|MEM~277_regout\ : std_logic;
SIGNAL \REGFILE|MEM~363_combout\ : std_logic;
SIGNAL \REGFILE|MEM~248_regout\ : std_logic;
SIGNAL \REGFILE|MEM~184_regout\ : std_logic;
SIGNAL \REGFILE|MEM~377_combout\ : std_logic;
SIGNAL \REGFILE|MEM~378_combout\ : std_logic;
SIGNAL \REGFILE|MEM~88_regout\ : std_logic;
SIGNAL \REGFILE|MEM~56_regout\ : std_logic;
SIGNAL \REGFILE|MEM~379_combout\ : std_logic;
SIGNAL \REGFILE|MEM~217_regout\ : std_logic;
SIGNAL \REGFILE|MEM~249_regout\ : std_logic;
SIGNAL \REGFILE|MEM~185_regout\ : std_logic;
SIGNAL \REGFILE|MEM~382_combout\ : std_logic;
SIGNAL \REGFILE|MEM~281_regout\ : std_logic;
SIGNAL \REGFILE|MEM~383_combout\ : std_logic;
SIGNAL \REGFILE|MEM~89_regout\ : std_logic;
SIGNAL \REGFILE|MEM~57_regout\ : std_logic;
SIGNAL \REGFILE|MEM~384_combout\ : std_logic;
SIGNAL \REGFILE|MEM~250_regout\ : std_logic;
SIGNAL \REGFILE|MEM~186_regout\ : std_logic;
SIGNAL \REGFILE|MEM~387_combout\ : std_logic;
SIGNAL \REGFILE|MEM~392_combout\ : std_logic;
SIGNAL \REGFILE|MEM~283_regout\ : std_logic;
SIGNAL \REGFILE|MEM~393_combout\ : std_logic;
SIGNAL \REGFILE|MEM~394_combout\ : std_logic;
SIGNAL \REGFILE|MEM~399_combout\ : std_logic;
SIGNAL \REGFILE|MEM~400_combout\ : std_logic;
SIGNAL \REGFILE|MEM~93_regout\ : std_logic;
SIGNAL \REGFILE|MEM~61_regout\ : std_logic;
SIGNAL \REGFILE|MEM~404_combout\ : std_logic;
SIGNAL \REGFILE|MEM~222_regout\ : std_logic;
SIGNAL \REGFILE|MEM~409_combout\ : std_logic;
SIGNAL \REGFILE|MEM~127_regout\ : std_logic;
SIGNAL \REGFILE|MEM~95_regout\ : std_logic;
SIGNAL \REGFILE|MEM~63_regout\ : std_logic;
SIGNAL \REGFILE|MEM~414_combout\ : std_logic;
SIGNAL \REGFILE|MEM~159_regout\ : std_logic;
SIGNAL \REGFILE|MEM~415_combout\ : std_logic;
SIGNAL \REGFILE|MEM~419_combout\ : std_logic;
SIGNAL \REGFILE|MEM~97_regout\ : std_logic;
SIGNAL \REGFILE|MEM~98_regout\ : std_logic;
SIGNAL \REGFILE|MEM~66_regout\ : std_logic;
SIGNAL \REGFILE|MEM~429_combout\ : std_logic;
SIGNAL \REGFILE|MEM~430_combout\ : std_logic;
SIGNAL \REGFILE|MEM~195_regout\ : std_logic;
SIGNAL \REGFILE|MEM~163_regout\ : std_logic;
SIGNAL \REGFILE|MEM~199_regout\ : std_logic;
SIGNAL \REGFILE|MEM~103_regout\ : std_logic;
SIGNAL \REGFILE|MEM~71_regout\ : std_logic;
SIGNAL \REGFILE|MEM~39_regout\ : std_logic;
SIGNAL \REGFILE|MEM~439_combout\ : std_logic;
SIGNAL \REGFILE|MEM~135_regout\ : std_logic;
SIGNAL \REGFILE|MEM~440_combout\ : std_logic;
SIGNAL \REGFILE|MEM~197_regout\ : std_logic;
SIGNAL \REGFILE|MEM~229_regout\ : std_logic;
SIGNAL \REGFILE|MEM~165_regout\ : std_logic;
SIGNAL \REGFILE|MEM~442_combout\ : std_logic;
SIGNAL \REGFILE|MEM~261_regout\ : std_logic;
SIGNAL \REGFILE|MEM~443_combout\ : std_logic;
SIGNAL \REGFILE|MEM~101_regout\ : std_logic;
SIGNAL \REGFILE|MEM~102_regout\ : std_logic;
SIGNAL \REGFILE|MEM~38_regout\ : std_logic;
SIGNAL \MUXRegDst|salida[2]~1_combout\ : std_logic;
SIGNAL \PCwrite~5_combout\ : std_logic;
SIGNAL \REGFILE|MEM~462_combout\ : std_logic;
SIGNAL \REGFILE|MEM~464_combout\ : std_logic;
SIGNAL \REGFILE|MEM~465_combout\ : std_logic;
SIGNAL \REGFILE|MEM~467_combout\ : std_logic;
SIGNAL \REGFILE|MEM~469_combout\ : std_logic;
SIGNAL \REGFILE|MEM~472_combout\ : std_logic;
SIGNAL \REGFILE|MEM~473_combout\ : std_logic;
SIGNAL \REGFILE|MEM~474_combout\ : std_logic;
SIGNAL \REGFILE|MEM~475_combout\ : std_logic;
SIGNAL \REGFILE|MEM~476_combout\ : std_logic;
SIGNAL \REGFILE|MEM~482_combout\ : std_logic;
SIGNAL \REGFILE|MEM~483_combout\ : std_logic;
SIGNAL \REGFILE|MEM~487_combout\ : std_logic;
SIGNAL \REGFILE|MEM~488_combout\ : std_logic;
SIGNAL \REGFILE|MEM~489_combout\ : std_logic;
SIGNAL \REGFILE|MEM~490_combout\ : std_logic;
SIGNAL \REGFILE|MEM~491_combout\ : std_logic;
SIGNAL \REGFILE|MEM~492_combout\ : std_logic;
SIGNAL \REGFILE|MEM~493_combout\ : std_logic;
SIGNAL \REGFILE|MEM~494_combout\ : std_logic;
SIGNAL \REGFILE|MEM~495_combout\ : std_logic;
SIGNAL \REGFILE|MEM~496_combout\ : std_logic;
SIGNAL \REGFILE|MEM~497_combout\ : std_logic;
SIGNAL \REGFILE|MEM~498_combout\ : std_logic;
SIGNAL \REGFILE|MEM~499_combout\ : std_logic;
SIGNAL \REGFILE|MEM~500_combout\ : std_logic;
SIGNAL \REGFILE|MEM~501_combout\ : std_logic;
SIGNAL \REGFILE|MEM~514_combout\ : std_logic;
SIGNAL \REGFILE|MEM~519_combout\ : std_logic;
SIGNAL \REGFILE|MEM~529_combout\ : std_logic;
SIGNAL \REGFILE|MEM~530_combout\ : std_logic;
SIGNAL \REGFILE|MEM~539_combout\ : std_logic;
SIGNAL \REGFILE|MEM~540_combout\ : std_logic;
SIGNAL \REGFILE|MEM~552_combout\ : std_logic;
SIGNAL \REGFILE|MEM~553_combout\ : std_logic;
SIGNAL \REGFILE|MEM~554_combout\ : std_logic;
SIGNAL \REGFILE|MEM~557_combout\ : std_logic;
SIGNAL \REGFILE|MEM~558_combout\ : std_logic;
SIGNAL \REGFILE|MEM~559_combout\ : std_logic;
SIGNAL \REGFILE|MEM~560_combout\ : std_logic;
SIGNAL \REGFILE|MEM~561_combout\ : std_logic;
SIGNAL \REGFILE|MEM~562_combout\ : std_logic;
SIGNAL \REGFILE|MEM~564_combout\ : std_logic;
SIGNAL \REGFILE|MEM~567_combout\ : std_logic;
SIGNAL \REGFILE|MEM~568_combout\ : std_logic;
SIGNAL \REGFILE|MEM~569_combout\ : std_logic;
SIGNAL \REGFILE|MEM~570_combout\ : std_logic;
SIGNAL \REGFILE|MEM~571_combout\ : std_logic;
SIGNAL \REGFILE|MEM~577_combout\ : std_logic;
SIGNAL \REGFILE|MEM~578_combout\ : std_logic;
SIGNAL \REGFILE|MEM~579_combout\ : std_logic;
SIGNAL \REGFILE|MEM~580_combout\ : std_logic;
SIGNAL \REGFILE|MEM~581_combout\ : std_logic;
SIGNAL \REGFILE|MEM~584_combout\ : std_logic;
SIGNAL \REGFILE|MEM~587_combout\ : std_logic;
SIGNAL \REGFILE|MEM~589_combout\ : std_logic;
SIGNAL \REGFILE|MEM~590_combout\ : std_logic;
SIGNAL \REGFILE|MEM~592_combout\ : std_logic;
SIGNAL \REGFILE|MEM~593_combout\ : std_logic;
SIGNAL \REGFILE|MEM~594_combout\ : std_logic;
SIGNAL \REGFILE|MEM~595_combout\ : std_logic;
SIGNAL \REGFILE|MEM~596_combout\ : std_logic;
SIGNAL \REGFILE|MEM~597_combout\ : std_logic;
SIGNAL \REGFILE|MEM~612_combout\ : std_logic;
SIGNAL \REGFILE|MEM~613_combout\ : std_logic;
SIGNAL \REGFILE|MEM~614_combout\ : std_logic;
SIGNAL \REGFILE|MEM~615_combout\ : std_logic;
SIGNAL \REGFILE|MEM~616_combout\ : std_logic;
SIGNAL \REGFILE|MEM~617_combout\ : std_logic;
SIGNAL \REGFILE|MEM~618_combout\ : std_logic;
SIGNAL \REGFILE|MEM~619_combout\ : std_logic;
SIGNAL \REGFILE|MEM~620_combout\ : std_logic;
SIGNAL \REGFILE|MEM~621_combout\ : std_logic;
SIGNAL \KEYBOARD|Equal6~0_combout\ : std_logic;
SIGNAL \KEYBOARD|Equal0~0_combout\ : std_logic;
SIGNAL \KEYBOARD|Equal0~1_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~0_combout\ : std_logic;
SIGNAL \MEM|MEM~276_regout\ : std_logic;
SIGNAL \MEM|MEM~116_regout\ : std_logic;
SIGNAL \MEM|MEM~84_regout\ : std_logic;
SIGNAL \MEM|MEM~52_regout\ : std_logic;
SIGNAL \MEM|MEM~294_combout\ : std_logic;
SIGNAL \MEM|MEM~148_regout\ : std_logic;
SIGNAL \MEM|MEM~295_combout\ : std_logic;
SIGNAL \MEM|MEM~245_regout\ : std_logic;
SIGNAL \MEM|MEM~277_regout\ : std_logic;
SIGNAL \MEM|MEM~149_regout\ : std_logic;
SIGNAL \MEM|MEM~246_regout\ : std_logic;
SIGNAL \MEM|MEM~278_regout\ : std_logic;
SIGNAL \MEM|MEM~86_regout\ : std_logic;
SIGNAL \MEM|MEM~54_regout\ : std_logic;
SIGNAL \MEM|MEM~304_combout\ : std_logic;
SIGNAL \MEM|MEM~229_regout\ : std_logic;
SIGNAL \MEM|MEM~261_regout\ : std_logic;
SIGNAL \MEM|MEM~101_regout\ : std_logic;
SIGNAL \MEM|MEM~69_regout\ : std_logic;
SIGNAL \MEM|MEM~37_regout\ : std_logic;
SIGNAL \MEM|MEM~309_combout\ : std_logic;
SIGNAL \MEM|MEM~133_regout\ : std_logic;
SIGNAL \MEM|MEM~310_combout\ : std_logic;
SIGNAL \MEM|MEM~236_regout\ : std_logic;
SIGNAL \MEM|MEM~172_regout\ : std_logic;
SIGNAL \MEM|MEM~312_combout\ : std_logic;
SIGNAL \MEM|MEM~76_regout\ : std_logic;
SIGNAL \MEM|MEM~44_regout\ : std_logic;
SIGNAL \MEM|MEM~314_combout\ : std_logic;
SIGNAL \MEM|MEM~235_regout\ : std_logic;
SIGNAL \MEM|MEM~171_regout\ : std_logic;
SIGNAL \MEM|MEM~317_combout\ : std_logic;
SIGNAL \MEM|MEM~139_regout\ : std_logic;
SIGNAL \MEM|MEM~266_regout\ : std_logic;
SIGNAL \MEM|MEM~74_regout\ : std_logic;
SIGNAL \MEM|MEM~42_regout\ : std_logic;
SIGNAL \MEM|MEM~324_combout\ : std_logic;
SIGNAL \MEM|MEM~265_regout\ : std_logic;
SIGNAL \MEM|MEM~105_regout\ : std_logic;
SIGNAL \MEM|MEM~73_regout\ : std_logic;
SIGNAL \MEM|MEM~41_regout\ : std_logic;
SIGNAL \MEM|MEM~329_combout\ : std_logic;
SIGNAL \MEM|MEM~137_regout\ : std_logic;
SIGNAL \MEM|MEM~330_combout\ : std_logic;
SIGNAL \MEM|MEM~264_regout\ : std_logic;
SIGNAL \MEM|MEM~136_regout\ : std_logic;
SIGNAL \MEM|MEM~263_regout\ : std_logic;
SIGNAL \MEM|MEM~135_regout\ : std_logic;
SIGNAL \MEM|MEM~230_regout\ : std_logic;
SIGNAL \MEM|MEM~166_regout\ : std_logic;
SIGNAL \MEM|MEM~342_combout\ : std_logic;
SIGNAL \MEM|MEM~70_regout\ : std_logic;
SIGNAL \MEM|MEM~38_regout\ : std_logic;
SIGNAL \MEM|MEM~344_combout\ : std_logic;
SIGNAL \MEM|MEM~260_regout\ : std_logic;
SIGNAL \MEM|MEM~100_regout\ : std_logic;
SIGNAL \MEM|MEM~68_regout\ : std_logic;
SIGNAL \MEM|MEM~36_regout\ : std_logic;
SIGNAL \MEM|MEM~349_combout\ : std_logic;
SIGNAL \MEM|MEM~132_regout\ : std_logic;
SIGNAL \MEM|MEM~350_combout\ : std_logic;
SIGNAL \MEM|MEM~275_regout\ : std_logic;
SIGNAL \MEM|MEM~83_regout\ : std_logic;
SIGNAL \MEM|MEM~51_regout\ : std_logic;
SIGNAL \MEM|MEM~354_combout\ : std_logic;
SIGNAL \MEM|MEM~274_regout\ : std_logic;
SIGNAL \MEM|MEM~146_regout\ : std_logic;
SIGNAL \MEM|MEM~209_regout\ : std_logic;
SIGNAL \MEM|MEM~241_regout\ : std_logic;
SIGNAL \MEM|MEM~177_regout\ : std_logic;
SIGNAL \MEM|MEM~362_combout\ : std_logic;
SIGNAL \MEM|MEM~273_regout\ : std_logic;
SIGNAL \MEM|MEM~363_combout\ : std_logic;
SIGNAL \MEM|MEM~81_regout\ : std_logic;
SIGNAL \MEM|MEM~49_regout\ : std_logic;
SIGNAL \MEM|MEM~364_combout\ : std_logic;
SIGNAL \MEM|MEM~208_regout\ : std_logic;
SIGNAL \MEM|MEM~240_regout\ : std_logic;
SIGNAL \MEM|MEM~176_regout\ : std_logic;
SIGNAL \MEM|MEM~367_combout\ : std_logic;
SIGNAL \MEM|MEM~272_regout\ : std_logic;
SIGNAL \MEM|MEM~368_combout\ : std_logic;
SIGNAL \MEM|MEM~80_regout\ : std_logic;
SIGNAL \MEM|MEM~48_regout\ : std_logic;
SIGNAL \MEM|MEM~369_combout\ : std_logic;
SIGNAL \MEM|MEM~239_regout\ : std_logic;
SIGNAL \MEM|MEM~175_regout\ : std_logic;
SIGNAL \MEM|MEM~372_combout\ : std_logic;
SIGNAL \MEM|MEM~143_regout\ : std_logic;
SIGNAL \MEM|MEM~238_regout\ : std_logic;
SIGNAL \MEM|MEM~174_regout\ : std_logic;
SIGNAL \MEM|MEM~377_combout\ : std_logic;
SIGNAL \MEM|MEM~78_regout\ : std_logic;
SIGNAL \MEM|MEM~46_regout\ : std_logic;
SIGNAL \MEM|MEM~379_combout\ : std_logic;
SIGNAL \MEM|MEM~237_regout\ : std_logic;
SIGNAL \MEM|MEM~269_regout\ : std_logic;
SIGNAL \MEM|MEM~77_regout\ : std_logic;
SIGNAL \MEM|MEM~45_regout\ : std_logic;
SIGNAL \MEM|MEM~384_combout\ : std_logic;
SIGNAL \MUXREAD|Mux22~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux20~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux17~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux16~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux15~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux12~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux10~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux8~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux5~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux1~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~1_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux28~3_combout\ : std_logic;
SIGNAL \MEM|MEM~217_regout\ : std_logic;
SIGNAL \MEM|MEM~249_regout\ : std_logic;
SIGNAL \MEM|MEM~185_regout\ : std_logic;
SIGNAL \MEM|MEM~395_combout\ : std_logic;
SIGNAL \MEM|MEM~281_regout\ : std_logic;
SIGNAL \MEM|MEM~396_combout\ : std_logic;
SIGNAL \MEM|MEM~89_regout\ : std_logic;
SIGNAL \MEM|MEM~57_regout\ : std_logic;
SIGNAL \MEM|MEM~397_combout\ : std_logic;
SIGNAL \MEM|MEM~218_regout\ : std_logic;
SIGNAL \MEM|MEM~250_regout\ : std_logic;
SIGNAL \MEM|MEM~186_regout\ : std_logic;
SIGNAL \MEM|MEM~400_combout\ : std_logic;
SIGNAL \MEM|MEM~282_regout\ : std_logic;
SIGNAL \MEM|MEM~401_combout\ : std_logic;
SIGNAL \MEM|MEM~90_regout\ : std_logic;
SIGNAL \MEM|MEM~58_regout\ : std_logic;
SIGNAL \MEM|MEM~402_combout\ : std_logic;
SIGNAL \MEM|MEM~251_regout\ : std_logic;
SIGNAL \MEM|MEM~187_regout\ : std_logic;
SIGNAL \MEM|MEM~405_combout\ : std_logic;
SIGNAL \MEM|MEM~91_regout\ : std_logic;
SIGNAL \MEM|MEM~155_regout\ : std_logic;
SIGNAL \MEM|MEM~253_regout\ : std_logic;
SIGNAL \MEM|MEM~189_regout\ : std_logic;
SIGNAL \MEM|MEM~410_combout\ : std_logic;
SIGNAL \MEM|MEM~93_regout\ : std_logic;
SIGNAL \MEM|MEM~61_regout\ : std_logic;
SIGNAL \MEM|MEM~412_combout\ : std_logic;
SIGNAL \MEM|MEM~252_regout\ : std_logic;
SIGNAL \MEM|MEM~188_regout\ : std_logic;
SIGNAL \MEM|MEM~415_combout\ : std_logic;
SIGNAL \MEM|MEM~92_regout\ : std_logic;
SIGNAL \MEM|MEM~60_regout\ : std_logic;
SIGNAL \MEM|MEM~417_combout\ : std_logic;
SIGNAL \MEM|MEM~248_regout\ : std_logic;
SIGNAL \MEM|MEM~184_regout\ : std_logic;
SIGNAL \MEM|MEM~420_combout\ : std_logic;
SIGNAL \MEM|MEM~152_regout\ : std_logic;
SIGNAL \MEM|MEM~247_regout\ : std_logic;
SIGNAL \MEM|MEM~279_regout\ : std_logic;
SIGNAL \MEM|MEM~254_regout\ : std_logic;
SIGNAL \MEM|MEM~190_regout\ : std_logic;
SIGNAL \MEM|MEM~430_combout\ : std_logic;
SIGNAL \MEM|MEM~94_regout\ : std_logic;
SIGNAL \MEM|MEM~62_regout\ : std_logic;
SIGNAL \MEM|MEM~432_combout\ : std_logic;
SIGNAL \MEM|MEM~255_regout\ : std_logic;
SIGNAL \MEM|MEM~95_regout\ : std_logic;
SIGNAL \MEM|MEM~256_regout\ : std_logic;
SIGNAL \MEM|MEM~288_regout\ : std_logic;
SIGNAL \MEM|MEM~96_regout\ : std_logic;
SIGNAL \MEM|MEM~64_regout\ : std_logic;
SIGNAL \MEM|MEM~442_combout\ : std_logic;
SIGNAL \MEM|MEM~257_regout\ : std_logic;
SIGNAL \MEM|MEM~289_regout\ : std_logic;
SIGNAL \MEM|MEM~97_regout\ : std_logic;
SIGNAL \MEM|MEM~65_regout\ : std_logic;
SIGNAL \MEM|MEM~447_combout\ : std_logic;
SIGNAL \MEM|MEM~291_regout\ : std_logic;
SIGNAL \MEM|MEM~99_regout\ : std_logic;
SIGNAL \MEM|MEM~67_regout\ : std_logic;
SIGNAL \MEM|MEM~452_combout\ : std_logic;
SIGNAL \MEM|MEM~258_regout\ : std_logic;
SIGNAL \MEM|MEM~130_regout\ : std_logic;
SIGNAL \SEG7WR|Equal0~13_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~14_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~7_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~15_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~3_combout\ : std_logic;
SIGNAL \REGFILE|MEM~622_combout\ : std_logic;
SIGNAL \MEM|MEM~460_combout\ : std_logic;
SIGNAL \MEM|MEM~461_combout\ : std_logic;
SIGNAL \MEM|MEM~462_combout\ : std_logic;
SIGNAL \MEM|MEM~463_combout\ : std_logic;
SIGNAL \MEM|MEM~464_combout\ : std_logic;
SIGNAL \MEM|MEM~465_combout\ : std_logic;
SIGNAL \MEM|MEM~466_combout\ : std_logic;
SIGNAL \MEM|MEM~467_combout\ : std_logic;
SIGNAL \MEM|MEM~469_combout\ : std_logic;
SIGNAL \MEM|MEM~470_combout\ : std_logic;
SIGNAL \MEM|MEM~471_combout\ : std_logic;
SIGNAL \MEM|MEM~473_combout\ : std_logic;
SIGNAL \MEM|MEM~474_combout\ : std_logic;
SIGNAL \MEM|MEM~475_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \MEM|MEM~266feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~139feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[9]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[13]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~274feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[17]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~149feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[18]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[22]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~155feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[27]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~288feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~289feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~291feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~135feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~264feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~201feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~108feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~270feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~206feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~274feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~178feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~84feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~277feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~213feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~181feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~245feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~56feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~88feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~61feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~93feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~222feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~127feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~159feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~39feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~103feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~199feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~261feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~101feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~229feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~102feeder_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \NEWST|CS[3]~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~4_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~6_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~6clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|Equal0~7_combout\ : std_logic;
SIGNAL \CONTROLU|PCsrc[1]~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~5_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~3_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[1]~0_combout\ : std_logic;
SIGNAL \MUXB|Mux16~1_combout\ : std_logic;
SIGNAL \MUXREAD|Mux23~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[8]~5_combout\ : std_logic;
SIGNAL \MUXREAD|Mux14~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[17]~14_combout\ : std_logic;
SIGNAL \REGFILE|MEM~149feeder_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[1]~3_combout\ : std_logic;
SIGNAL \MUXB|Mux15~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[16]~14_combout\ : std_logic;
SIGNAL \MUXB|Mux16~0_combout\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~44_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~1_combout\ : std_logic;
SIGNAL \CONTROLU|ALUop[0]~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[12]~10_combout\ : std_logic;
SIGNAL \MUXB|Mux21~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~0_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcA~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[10]~8_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|MemWr~0_combout\ : std_logic;
SIGNAL \ADDRDEC|writeMemory~0_combout\ : std_logic;
SIGNAL \MEM|MEM~388_combout\ : std_logic;
SIGNAL \MEM|MEM~233_regout\ : std_logic;
SIGNAL \MEM|MEM~389_combout\ : std_logic;
SIGNAL \MEM|MEM~169_regout\ : std_logic;
SIGNAL \MEM|MEM~327_combout\ : std_logic;
SIGNAL \MEM|MEM~387_combout\ : std_logic;
SIGNAL \MEM|MEM~201_regout\ : std_logic;
SIGNAL \MEM|MEM~328_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~6_combout\ : std_logic;
SIGNAL \MEM|MEM~165_regout\ : std_logic;
SIGNAL \MEM|MEM~307_combout\ : std_logic;
SIGNAL \MEM|MEM~197_regout\ : std_logic;
SIGNAL \MEM|MEM~308_combout\ : std_logic;
SIGNAL \MEM|MEM~311_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~8_combout\ : std_logic;
SIGNAL \CONTROLU|MemRd~0_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[0]~2_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[1]~1_combout\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~7_combout\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~10_cout\ : std_logic;
SIGNAL \ALUCOMP|Add0~12\ : std_logic;
SIGNAL \ALUCOMP|Add0~14\ : std_logic;
SIGNAL \ALUCOMP|Add0~15_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~44_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~45_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~154feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~394_combout\ : std_logic;
SIGNAL \MEM|MEM~154_regout\ : std_logic;
SIGNAL \MEM|MEM~391_combout\ : std_logic;
SIGNAL \MEM|MEM~122_regout\ : std_logic;
SIGNAL \MEM|MEM~403_combout\ : std_logic;
SIGNAL \MEM|MEM~404_combout\ : std_logic;
SIGNAL \MUXREAD|Mux9~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[22]~19_combout\ : std_logic;
SIGNAL \REGFILE|MEM~282feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~282_regout\ : std_logic;
SIGNAL \REGFILE|MEM~218feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~453_combout\ : std_logic;
SIGNAL \REGFILE|MEM~218_regout\ : std_logic;
SIGNAL \REGFILE|MEM~388_combout\ : std_logic;
SIGNAL \REGFILE|MEM~154_regout\ : std_logic;
SIGNAL \CONTROLU|RegWr~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~454_combout\ : std_logic;
SIGNAL \REGFILE|MEM~460_combout\ : std_logic;
SIGNAL \REGFILE|MEM~58_regout\ : std_logic;
SIGNAL \REGFILE|MEM~459_combout\ : std_logic;
SIGNAL \REGFILE|MEM~90_regout\ : std_logic;
SIGNAL \REGFILE|MEM~389_combout\ : std_logic;
SIGNAL \REGFILE|MEM~458_combout\ : std_logic;
SIGNAL \REGFILE|MEM~122_regout\ : std_logic;
SIGNAL \REGFILE|MEM~390_combout\ : std_logic;
SIGNAL \REGFILE|MEM~391_combout\ : std_logic;
SIGNAL \MUXB|Mux9~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~72_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[21]~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~62_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~63_combout\ : std_logic;
SIGNAL \MUXB|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~54_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~55_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~50_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[15]~12_combout\ : std_logic;
SIGNAL \REGFILE|MEM~211feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~211_regout\ : std_logic;
SIGNAL \REGFILE|MEM~179feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~456_combout\ : std_logic;
SIGNAL \REGFILE|MEM~179_regout\ : std_logic;
SIGNAL \REGFILE|MEM~243feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~455_combout\ : std_logic;
SIGNAL \REGFILE|MEM~243_regout\ : std_logic;
SIGNAL \REGFILE|MEM~352_combout\ : std_logic;
SIGNAL \REGFILE|MEM~353_combout\ : std_logic;
SIGNAL \REGFILE|MEM~51_regout\ : std_logic;
SIGNAL \REGFILE|MEM~83_regout\ : std_logic;
SIGNAL \REGFILE|MEM~354_combout\ : std_logic;
SIGNAL \REGFILE|MEM~147feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~147_regout\ : std_logic;
SIGNAL \REGFILE|MEM~115feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~115_regout\ : std_logic;
SIGNAL \REGFILE|MEM~355_combout\ : std_logic;
SIGNAL \REGFILE|MEM~356_combout\ : std_logic;
SIGNAL \MEM|MEM~147_regout\ : std_logic;
SIGNAL \MEM|MEM~115_regout\ : std_logic;
SIGNAL \MEM|MEM~355_combout\ : std_logic;
SIGNAL \MEM|MEM~243_regout\ : std_logic;
SIGNAL \MEM|MEM~179_regout\ : std_logic;
SIGNAL \MEM|MEM~352_combout\ : std_logic;
SIGNAL \MEM|MEM~211_regout\ : std_logic;
SIGNAL \MEM|MEM~353_combout\ : std_logic;
SIGNAL \MEM|MEM~356_combout\ : std_logic;
SIGNAL \MUXB|Mux16~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~46\ : std_logic;
SIGNAL \ALUCOMP|Add0~48_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[15]~13_combout\ : std_logic;
SIGNAL \MEM|MEM~113_regout\ : std_logic;
SIGNAL \MEM|MEM~145_regout\ : std_logic;
SIGNAL \MEM|MEM~365_combout\ : std_logic;
SIGNAL \MEM|MEM~366_combout\ : std_logic;
SIGNAL \REGFILE|MEM~187_regout\ : std_logic;
SIGNAL \REGFILE|MEM~251_regout\ : std_logic;
SIGNAL \INSTREG|jump_out[22]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~547_combout\ : std_logic;
SIGNAL \REGFILE|MEM~219_regout\ : std_logic;
SIGNAL \REGFILE|MEM~548_combout\ : std_logic;
SIGNAL \REGFILE|MEM~155feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~155_regout\ : std_logic;
SIGNAL \REGFILE|MEM~59_regout\ : std_logic;
SIGNAL \REGFILE|MEM~91_regout\ : std_logic;
SIGNAL \REGFILE|MEM~549_combout\ : std_logic;
SIGNAL \REGFILE|MEM~550_combout\ : std_logic;
SIGNAL \REGFILE|MEM~551_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~74\ : std_logic;
SIGNAL \ALUCOMP|Add0~76_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~0_combout\ : std_logic;
SIGNAL \MUXB|Mux8~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[23]~20_combout\ : std_logic;
SIGNAL \REGFILE|MEM~123_regout\ : std_logic;
SIGNAL \REGFILE|MEM~395_combout\ : std_logic;
SIGNAL \REGFILE|MEM~396_combout\ : std_logic;
SIGNAL \MEM|MEM~390_combout\ : std_logic;
SIGNAL \MEM|MEM~283_regout\ : std_logic;
SIGNAL \MEM|MEM~219_regout\ : std_logic;
SIGNAL \MEM|MEM~406_combout\ : std_logic;
SIGNAL \MEM|MEM~123_regout\ : std_logic;
SIGNAL \MEM|MEM~468_combout\ : std_logic;
SIGNAL \MEM|MEM~393_combout\ : std_logic;
SIGNAL \MEM|MEM~59_regout\ : std_logic;
SIGNAL \MEM|MEM~407_combout\ : std_logic;
SIGNAL \MEM|MEM~408_combout\ : std_logic;
SIGNAL \MEM|MEM~409_combout\ : std_logic;
SIGNAL \REGFILE|MEM~275feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~275_regout\ : std_logic;
SIGNAL \REGFILE|MEM~588_combout\ : std_logic;
SIGNAL \REGFILE|MEM~591_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~49\ : std_logic;
SIGNAL \ALUCOMP|Add0~53\ : std_logic;
SIGNAL \ALUCOMP|Add0~57\ : std_logic;
SIGNAL \ALUCOMP|Add0~60_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[18]~16_combout\ : std_logic;
SIGNAL \REGFILE|MEM~182_regout\ : std_logic;
SIGNAL \REGFILE|MEM~246_regout\ : std_logic;
SIGNAL \REGFILE|MEM~572_combout\ : std_logic;
SIGNAL \REGFILE|MEM~278feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~278_regout\ : std_logic;
SIGNAL \REGFILE|MEM~573_combout\ : std_logic;
SIGNAL \REGFILE|MEM~150_regout\ : std_logic;
SIGNAL \REGFILE|MEM~118feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~118_regout\ : std_logic;
SIGNAL \REGFILE|MEM~86_regout\ : std_logic;
SIGNAL \REGFILE|MEM~574_combout\ : std_logic;
SIGNAL \REGFILE|MEM~575_combout\ : std_logic;
SIGNAL \REGFILE|MEM~576_combout\ : std_logic;
SIGNAL \MUXA|salida[18]~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~61\ : std_logic;
SIGNAL \ALUCOMP|Add0~64_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[19]~16_combout\ : std_logic;
SIGNAL \REGFILE|MEM~183_regout\ : std_logic;
SIGNAL \REGFILE|MEM~247feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~247_regout\ : std_logic;
SIGNAL \REGFILE|MEM~372_combout\ : std_logic;
SIGNAL \REGFILE|MEM~215feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~215_regout\ : std_logic;
SIGNAL \REGFILE|MEM~279_regout\ : std_logic;
SIGNAL \REGFILE|MEM~373_combout\ : std_logic;
SIGNAL \REGFILE|MEM~119feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~119_regout\ : std_logic;
SIGNAL \REGFILE|MEM~151_regout\ : std_logic;
SIGNAL \REGFILE|MEM~87feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~87_regout\ : std_logic;
SIGNAL \REGFILE|MEM~55feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~55_regout\ : std_logic;
SIGNAL \REGFILE|MEM~374_combout\ : std_logic;
SIGNAL \REGFILE|MEM~375_combout\ : std_logic;
SIGNAL \REGFILE|MEM~376_combout\ : std_logic;
SIGNAL \MEM|MEM~183_regout\ : std_logic;
SIGNAL \MEM|MEM~425_combout\ : std_logic;
SIGNAL \MEM|MEM~215_regout\ : std_logic;
SIGNAL \MEM|MEM~426_combout\ : std_logic;
SIGNAL \MEM|MEM~392_combout\ : std_logic;
SIGNAL \MEM|MEM~87_regout\ : std_logic;
SIGNAL \MEM|MEM~55_regout\ : std_logic;
SIGNAL \MEM|MEM~427_combout\ : std_logic;
SIGNAL \MEM|MEM~119_regout\ : std_logic;
SIGNAL \MEM|MEM~151_regout\ : std_logic;
SIGNAL \MEM|MEM~428_combout\ : std_logic;
SIGNAL \MEM|MEM~429_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~19_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[20]~18_combout\ : std_logic;
SIGNAL \REGFILE|MEM~280_regout\ : std_logic;
SIGNAL \REGFILE|MEM~216feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~216_regout\ : std_logic;
SIGNAL \REGFILE|MEM~563_combout\ : std_logic;
SIGNAL \REGFILE|MEM~152_regout\ : std_logic;
SIGNAL \REGFILE|MEM~565_combout\ : std_logic;
SIGNAL \REGFILE|MEM~566_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~65\ : std_logic;
SIGNAL \ALUCOMP|Add0~67_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~2_combout\ : std_logic;
SIGNAL \MEM|MEM~120_regout\ : std_logic;
SIGNAL \MEM|MEM~88_regout\ : std_logic;
SIGNAL \MEM|MEM~56_regout\ : std_logic;
SIGNAL \MEM|MEM~422_combout\ : std_logic;
SIGNAL \MEM|MEM~423_combout\ : std_logic;
SIGNAL \MEM|MEM~280_regout\ : std_logic;
SIGNAL \MEM|MEM~216_regout\ : std_logic;
SIGNAL \MEM|MEM~421_combout\ : std_logic;
SIGNAL \MEM|MEM~424_combout\ : std_logic;
SIGNAL \MUXREAD|Mux11~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[20]~17_combout\ : std_logic;
SIGNAL \REGFILE|MEM~120_regout\ : std_logic;
SIGNAL \REGFILE|MEM~380_combout\ : std_logic;
SIGNAL \REGFILE|MEM~381_combout\ : std_logic;
SIGNAL \MUXB|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~66_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~68\ : std_logic;
SIGNAL \ALUCOMP|Add0~71\ : std_logic;
SIGNAL \ALUCOMP|Add0~73_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~2_combout\ : std_logic;
SIGNAL \MUXB|Mux3~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~34_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~36_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~35_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~26_combout\ : std_logic;
SIGNAL \PCwrite~4_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[4]~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~0_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~3_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[9]~7_combout\ : std_logic;
SIGNAL \MUXREAD|Mux24~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[7]~4_combout\ : std_logic;
SIGNAL \REGFILE|MEM~43_regout\ : std_logic;
SIGNAL \REGFILE|MEM~75_regout\ : std_logic;
SIGNAL \REGFILE|MEM~314_combout\ : std_logic;
SIGNAL \REGFILE|MEM~139_regout\ : std_logic;
SIGNAL \REGFILE|MEM~107_regout\ : std_logic;
SIGNAL \REGFILE|MEM~315_combout\ : std_logic;
SIGNAL \REGFILE|MEM~316_combout\ : std_logic;
SIGNAL \MEM|MEM~107_regout\ : std_logic;
SIGNAL \MEM|MEM~75_regout\ : std_logic;
SIGNAL \MEM|MEM~43_regout\ : std_logic;
SIGNAL \MEM|MEM~319_combout\ : std_logic;
SIGNAL \MEM|MEM~320_combout\ : std_logic;
SIGNAL \MEM|MEM~203_regout\ : std_logic;
SIGNAL \MEM|MEM~267feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~267_regout\ : std_logic;
SIGNAL \MEM|MEM~318_combout\ : std_logic;
SIGNAL \MEM|MEM~321_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~31_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[8]~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux25~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[6]~4_combout\ : std_logic;
SIGNAL \MUXREAD|Mux27~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[4]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~232_regout\ : std_logic;
SIGNAL \REGFILE|MEM~168_regout\ : std_logic;
SIGNAL \REGFILE|MEM~297_combout\ : std_logic;
SIGNAL \REGFILE|MEM~200_regout\ : std_logic;
SIGNAL \REGFILE|MEM~298_combout\ : std_logic;
SIGNAL \REGFILE|MEM~301_combout\ : std_logic;
SIGNAL \MEM|MEM~72_regout\ : std_logic;
SIGNAL \MEM|MEM~40_regout\ : std_logic;
SIGNAL \MEM|MEM~334_combout\ : std_logic;
SIGNAL \MEM|MEM~104_regout\ : std_logic;
SIGNAL \MEM|MEM~335_combout\ : std_logic;
SIGNAL \MEM|MEM~232_regout\ : std_logic;
SIGNAL \MEM|MEM~168_regout\ : std_logic;
SIGNAL \MEM|MEM~332_combout\ : std_logic;
SIGNAL \MEM|MEM~200_regout\ : std_logic;
SIGNAL \MEM|MEM~333_combout\ : std_logic;
SIGNAL \MEM|MEM~336_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~2_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~4_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[5]~3_combout\ : std_logic;
SIGNAL \REGFILE|MEM~73_regout\ : std_logic;
SIGNAL \REGFILE|MEM~479_combout\ : std_logic;
SIGNAL \REGFILE|MEM~480_combout\ : std_logic;
SIGNAL \REGFILE|MEM~169_regout\ : std_logic;
SIGNAL \REGFILE|MEM~233_regout\ : std_logic;
SIGNAL \REGFILE|MEM~477_combout\ : std_logic;
SIGNAL \REGFILE|MEM~265_regout\ : std_logic;
SIGNAL \REGFILE|MEM~478_combout\ : std_logic;
SIGNAL \REGFILE|MEM~481_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~3_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[3]~1_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~16\ : std_logic;
SIGNAL \ALUCOMP|Add0~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[3]~29_combout\ : std_logic;
SIGNAL \REGFILE|MEM~263feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~263_regout\ : std_logic;
SIGNAL \REGFILE|MEM~231feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~231_regout\ : std_logic;
SIGNAL \REGFILE|MEM~167_regout\ : std_logic;
SIGNAL \REGFILE|MEM~437_combout\ : std_logic;
SIGNAL \REGFILE|MEM~438_combout\ : std_logic;
SIGNAL \REGFILE|MEM~441_combout\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~18\ : std_logic;
SIGNAL \ALUCOMP|Add0~20\ : std_logic;
SIGNAL \ALUCOMP|Add0~22\ : std_logic;
SIGNAL \ALUCOMP|Add0~23_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~6_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[6]~3_combout\ : std_logic;
SIGNAL \REGFILE|MEM~266_regout\ : std_logic;
SIGNAL \REGFILE|MEM~234_regout\ : std_logic;
SIGNAL \REGFILE|MEM~170_regout\ : std_logic;
SIGNAL \REGFILE|MEM~307_combout\ : std_logic;
SIGNAL \REGFILE|MEM~202_regout\ : std_logic;
SIGNAL \REGFILE|MEM~308_combout\ : std_logic;
SIGNAL \REGFILE|MEM~106_regout\ : std_logic;
SIGNAL \REGFILE|MEM~74feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~74_regout\ : std_logic;
SIGNAL \REGFILE|MEM~42_regout\ : std_logic;
SIGNAL \REGFILE|MEM~309_combout\ : std_logic;
SIGNAL \REGFILE|MEM~138_regout\ : std_logic;
SIGNAL \REGFILE|MEM~310_combout\ : std_logic;
SIGNAL \REGFILE|MEM~311_combout\ : std_logic;
SIGNAL \MEM|MEM~138_regout\ : std_logic;
SIGNAL \MEM|MEM~106_regout\ : std_logic;
SIGNAL \MEM|MEM~325_combout\ : std_logic;
SIGNAL \MEM|MEM~202_regout\ : std_logic;
SIGNAL \MEM|MEM~234_regout\ : std_logic;
SIGNAL \MEM|MEM~170_regout\ : std_logic;
SIGNAL \MEM|MEM~322_combout\ : std_logic;
SIGNAL \MEM|MEM~323_combout\ : std_logic;
SIGNAL \MEM|MEM~326_combout\ : std_logic;
SIGNAL \REGFILE|MEM~204feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~204_regout\ : std_logic;
SIGNAL \REGFILE|MEM~463_combout\ : std_logic;
SIGNAL \REGFILE|MEM~466_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~24\ : std_logic;
SIGNAL \ALUCOMP|Add0~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[7]~5_combout\ : std_logic;
SIGNAL \REGFILE|MEM~267_regout\ : std_logic;
SIGNAL \REGFILE|MEM~203_regout\ : std_logic;
SIGNAL \REGFILE|MEM~468_combout\ : std_logic;
SIGNAL \REGFILE|MEM~470_combout\ : std_logic;
SIGNAL \REGFILE|MEM~471_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~26\ : std_logic;
SIGNAL \ALUCOMP|Add0~28\ : std_logic;
SIGNAL \ALUCOMP|Add0~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~4_combout\ : std_logic;
SIGNAL \ADDRDEC|addressSel[0]~0_combout\ : std_logic;
SIGNAL \MUXREAD|Mux29~13_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[2]~31_combout\ : std_logic;
SIGNAL \REGFILE|MEM~70feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~70_regout\ : std_logic;
SIGNAL \REGFILE|MEM~449_combout\ : std_logic;
SIGNAL \REGFILE|MEM~627_combout\ : std_logic;
SIGNAL \REGFILE|MEM~134_regout\ : std_logic;
SIGNAL \REGFILE|MEM~450_combout\ : std_logic;
SIGNAL \REGFILE|MEM~166_regout\ : std_logic;
SIGNAL \REGFILE|MEM~230_regout\ : std_logic;
SIGNAL \REGFILE|MEM~447_combout\ : std_logic;
SIGNAL \REGFILE|MEM~262feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~262_regout\ : std_logic;
SIGNAL \REGFILE|MEM~198_regout\ : std_logic;
SIGNAL \REGFILE|MEM~448_combout\ : std_logic;
SIGNAL \REGFILE|MEM~451_combout\ : std_logic;
SIGNAL \MEM|MEM~134feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~134_regout\ : std_logic;
SIGNAL \MEM|MEM~102_regout\ : std_logic;
SIGNAL \MEM|MEM~345_combout\ : std_logic;
SIGNAL \MEM|MEM~262_regout\ : std_logic;
SIGNAL \MEM|MEM~198_regout\ : std_logic;
SIGNAL \MEM|MEM~343_combout\ : std_logic;
SIGNAL \MEM|MEM~346_combout\ : std_logic;
SIGNAL \REGFILE|MEM~40_regout\ : std_logic;
SIGNAL \REGFILE|MEM~72feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~72_regout\ : std_logic;
SIGNAL \REGFILE|MEM~484_combout\ : std_logic;
SIGNAL \REGFILE|MEM~136_regout\ : std_logic;
SIGNAL \REGFILE|MEM~485_combout\ : std_logic;
SIGNAL \REGFILE|MEM~486_combout\ : std_logic;
SIGNAL \MUXA|salida[4]~4_combout\ : std_logic;
SIGNAL \MUXB|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~2_combout\ : std_logic;
SIGNAL \PCwrite~3_combout\ : std_logic;
SIGNAL \REGFILE|MEM~284_regout\ : std_logic;
SIGNAL \REGFILE|MEM~220feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~220_regout\ : std_logic;
SIGNAL \REGFILE|MEM~188_regout\ : std_logic;
SIGNAL \REGFILE|MEM~397_combout\ : std_logic;
SIGNAL \REGFILE|MEM~398_combout\ : std_logic;
SIGNAL \REGFILE|MEM~401_combout\ : std_logic;
SIGNAL \MEM|MEM~156_regout\ : std_logic;
SIGNAL \MEM|MEM~124_regout\ : std_logic;
SIGNAL \MEM|MEM~418_combout\ : std_logic;
SIGNAL \MEM|MEM~284_regout\ : std_logic;
SIGNAL \MEM|MEM~220_regout\ : std_logic;
SIGNAL \MEM|MEM~416_combout\ : std_logic;
SIGNAL \MEM|MEM~419_combout\ : std_logic;
SIGNAL \MUXREAD|Mux7~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[24]~21_combout\ : std_logic;
SIGNAL \REGFILE|MEM~252_regout\ : std_logic;
SIGNAL \REGFILE|MEM~542_combout\ : std_logic;
SIGNAL \REGFILE|MEM~543_combout\ : std_logic;
SIGNAL \REGFILE|MEM~124_regout\ : std_logic;
SIGNAL \REGFILE|MEM~60_regout\ : std_logic;
SIGNAL \REGFILE|MEM~92_regout\ : std_logic;
SIGNAL \REGFILE|MEM~544_combout\ : std_logic;
SIGNAL \REGFILE|MEM~156_regout\ : std_logic;
SIGNAL \REGFILE|MEM~545_combout\ : std_logic;
SIGNAL \REGFILE|MEM~546_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~77\ : std_logic;
SIGNAL \ALUCOMP|Add0~79_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~2_combout\ : std_logic;
SIGNAL \PCwrite~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM~225feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~225_regout\ : std_logic;
SIGNAL \REGFILE|MEM~193_regout\ : std_logic;
SIGNAL \REGFILE|MEM~422_combout\ : std_logic;
SIGNAL \REGFILE|MEM~423_combout\ : std_logic;
SIGNAL \REGFILE|MEM~161feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~161_regout\ : std_logic;
SIGNAL \REGFILE|MEM~65_regout\ : std_logic;
SIGNAL \REGFILE|MEM~424_combout\ : std_logic;
SIGNAL \REGFILE|MEM~425_combout\ : std_logic;
SIGNAL \REGFILE|MEM~426_combout\ : std_logic;
SIGNAL \MEM|MEM~161_regout\ : std_logic;
SIGNAL \MEM|MEM~129_regout\ : std_logic;
SIGNAL \MEM|MEM~448_combout\ : std_logic;
SIGNAL \MEM|MEM~225_regout\ : std_logic;
SIGNAL \MEM|MEM~193_regout\ : std_logic;
SIGNAL \MEM|MEM~445_combout\ : std_logic;
SIGNAL \MEM|MEM~446_combout\ : std_logic;
SIGNAL \MEM|MEM~449_combout\ : std_logic;
SIGNAL \MUXREAD|Mux2~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[29]~26_combout\ : std_logic;
SIGNAL \REGFILE|MEM~289feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~289_regout\ : std_logic;
SIGNAL \REGFILE|MEM~257_regout\ : std_logic;
SIGNAL \REGFILE|MEM~517_combout\ : std_logic;
SIGNAL \REGFILE|MEM~518_combout\ : std_logic;
SIGNAL \REGFILE|MEM~129_regout\ : std_logic;
SIGNAL \REGFILE|MEM~520_combout\ : std_logic;
SIGNAL \REGFILE|MEM~521_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~feeder_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~11_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~feeder_combout\ : std_logic;
SIGNAL \MUXREAD|Mux3~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[28]~25_combout\ : std_logic;
SIGNAL \REGFILE|MEM~160_regout\ : std_logic;
SIGNAL \REGFILE|MEM~96_regout\ : std_logic;
SIGNAL \REGFILE|MEM~64_regout\ : std_logic;
SIGNAL \REGFILE|MEM~524_combout\ : std_logic;
SIGNAL \REGFILE|MEM~128_regout\ : std_logic;
SIGNAL \REGFILE|MEM~525_combout\ : std_logic;
SIGNAL \REGFILE|MEM~256_regout\ : std_logic;
SIGNAL \REGFILE|MEM~192_regout\ : std_logic;
SIGNAL \REGFILE|MEM~522_combout\ : std_logic;
SIGNAL \REGFILE|MEM~288_regout\ : std_logic;
SIGNAL \REGFILE|MEM~224_regout\ : std_logic;
SIGNAL \REGFILE|MEM~523_combout\ : std_logic;
SIGNAL \REGFILE|MEM~526_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~12_combout\ : std_logic;
SIGNAL \MEM|MEM~287_regout\ : std_logic;
SIGNAL \MEM|MEM~223_regout\ : std_logic;
SIGNAL \MEM|MEM~191_regout\ : std_logic;
SIGNAL \MEM|MEM~435_combout\ : std_logic;
SIGNAL \MEM|MEM~436_combout\ : std_logic;
SIGNAL \MEM|MEM~159_regout\ : std_logic;
SIGNAL \MEM|MEM~127_regout\ : std_logic;
SIGNAL \MEM|MEM~472_combout\ : std_logic;
SIGNAL \MEM|MEM~63_regout\ : std_logic;
SIGNAL \MEM|MEM~437_combout\ : std_logic;
SIGNAL \MEM|MEM~438_combout\ : std_logic;
SIGNAL \MEM|MEM~439_combout\ : std_logic;
SIGNAL \MUXREAD|Mux4~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[27]~24_combout\ : std_logic;
SIGNAL \REGFILE|MEM~191_regout\ : std_logic;
SIGNAL \REGFILE|MEM~255_regout\ : std_logic;
SIGNAL \REGFILE|MEM~412_combout\ : std_logic;
SIGNAL \REGFILE|MEM~287_regout\ : std_logic;
SIGNAL \REGFILE|MEM~223feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~223_regout\ : std_logic;
SIGNAL \REGFILE|MEM~413_combout\ : std_logic;
SIGNAL \REGFILE|MEM~416_combout\ : std_logic;
SIGNAL \MUXB|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~0_combout\ : std_logic;
SIGNAL \MEM|MEM~285_regout\ : std_logic;
SIGNAL \MEM|MEM~221_regout\ : std_logic;
SIGNAL \MEM|MEM~411_combout\ : std_logic;
SIGNAL \MEM|MEM~157feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~157_regout\ : std_logic;
SIGNAL \MEM|MEM~125_regout\ : std_logic;
SIGNAL \MEM|MEM~413_combout\ : std_logic;
SIGNAL \MEM|MEM~414_combout\ : std_logic;
SIGNAL \MUXREAD|Mux6~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[25]~22_combout\ : std_logic;
SIGNAL \REGFILE|MEM~285_regout\ : std_logic;
SIGNAL \REGFILE|MEM~189_regout\ : std_logic;
SIGNAL \REGFILE|MEM~253_regout\ : std_logic;
SIGNAL \REGFILE|MEM~402_combout\ : std_logic;
SIGNAL \REGFILE|MEM~221feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~221_regout\ : std_logic;
SIGNAL \REGFILE|MEM~403_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125_regout\ : std_logic;
SIGNAL \REGFILE|MEM~157_regout\ : std_logic;
SIGNAL \REGFILE|MEM~405_combout\ : std_logic;
SIGNAL \REGFILE|MEM~406_combout\ : std_logic;
SIGNAL \MUXB|Mux6~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~81_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~80\ : std_logic;
SIGNAL \ALUCOMP|Add0~83\ : std_logic;
SIGNAL \ALUCOMP|Add0~85_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[26]~24_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[26]~23_combout\ : std_logic;
SIGNAL \REGFILE|MEM~126feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~126_regout\ : std_logic;
SIGNAL \REGFILE|MEM~62_regout\ : std_logic;
SIGNAL \REGFILE|MEM~94_regout\ : std_logic;
SIGNAL \REGFILE|MEM~534_combout\ : std_logic;
SIGNAL \REGFILE|MEM~535_combout\ : std_logic;
SIGNAL \REGFILE|MEM~286feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~286_regout\ : std_logic;
SIGNAL \REGFILE|MEM~254_regout\ : std_logic;
SIGNAL \REGFILE|MEM~190_regout\ : std_logic;
SIGNAL \REGFILE|MEM~532_combout\ : std_logic;
SIGNAL \REGFILE|MEM~533_combout\ : std_logic;
SIGNAL \REGFILE|MEM~536_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~86\ : std_logic;
SIGNAL \ALUCOMP|Add0~88_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[27]~25_combout\ : std_logic;
SIGNAL \INSTREG|jump_out[25]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~527_combout\ : std_logic;
SIGNAL \REGFILE|MEM~528_combout\ : std_logic;
SIGNAL \REGFILE|MEM~531_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~89\ : std_logic;
SIGNAL \ALUCOMP|Add0~92\ : std_logic;
SIGNAL \ALUCOMP|Add0~94_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~47_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~37_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~39_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[29]~27_combout\ : std_logic;
SIGNAL \REGFILE|MEM~537_combout\ : std_logic;
SIGNAL \REGFILE|MEM~538_combout\ : std_logic;
SIGNAL \REGFILE|MEM~541_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~82_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~2_combout\ : std_logic;
SIGNAL \PCwrite~7_combout\ : std_logic;
SIGNAL \PCwrite~8_combout\ : std_logic;
SIGNAL \PCwrite~9_combout\ : std_logic;
SIGNAL \PCwrite~10_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[28]~46_combout\ : std_logic;
SIGNAL \REGFILE|MEM~291feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~291_regout\ : std_logic;
SIGNAL \REGFILE|MEM~259_regout\ : std_logic;
SIGNAL \REGFILE|MEM~507_combout\ : std_logic;
SIGNAL \REGFILE|MEM~508_combout\ : std_logic;
SIGNAL \REGFILE|MEM~99_regout\ : std_logic;
SIGNAL \REGFILE|MEM~67_regout\ : std_logic;
SIGNAL \REGFILE|MEM~509_combout\ : std_logic;
SIGNAL \REGFILE|MEM~131feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~131_regout\ : std_logic;
SIGNAL \REGFILE|MEM~510_combout\ : std_logic;
SIGNAL \REGFILE|MEM~511_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~9_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[30]~27_combout\ : std_logic;
SIGNAL \REGFILE|MEM~226_regout\ : std_logic;
SIGNAL \REGFILE|MEM~290_regout\ : std_logic;
SIGNAL \REGFILE|MEM~258_regout\ : std_logic;
SIGNAL \REGFILE|MEM~194_regout\ : std_logic;
SIGNAL \REGFILE|MEM~427_combout\ : std_logic;
SIGNAL \REGFILE|MEM~428_combout\ : std_logic;
SIGNAL \REGFILE|MEM~431_combout\ : std_logic;
SIGNAL \MUXB|Mux1~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~96_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~95\ : std_logic;
SIGNAL \ALUCOMP|Add0~98\ : std_logic;
SIGNAL \ALUCOMP|Add0~100_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~48_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[31]~29_combout\ : std_logic;
SIGNAL \MEM|MEM~259_regout\ : std_logic;
SIGNAL \MEM|MEM~195_regout\ : std_logic;
SIGNAL \MEM|MEM~450_combout\ : std_logic;
SIGNAL \MEM|MEM~227_regout\ : std_logic;
SIGNAL \MEM|MEM~451_combout\ : std_logic;
SIGNAL \MEM|MEM~163feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~163_regout\ : std_logic;
SIGNAL \MEM|MEM~131_regout\ : std_logic;
SIGNAL \MEM|MEM~453_combout\ : std_logic;
SIGNAL \MEM|MEM~454_combout\ : std_logic;
SIGNAL \MUXREAD|Mux0~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[31]~28_combout\ : std_logic;
SIGNAL \REGFILE|MEM~227feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~227_regout\ : std_logic;
SIGNAL \REGFILE|MEM~432_combout\ : std_logic;
SIGNAL \REGFILE|MEM~433_combout\ : std_logic;
SIGNAL \REGFILE|MEM~434_combout\ : std_logic;
SIGNAL \REGFILE|MEM~435_combout\ : std_logic;
SIGNAL \REGFILE|MEM~436_combout\ : std_logic;
SIGNAL \MUXB|Mux0~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~512_combout\ : std_logic;
SIGNAL \REGFILE|MEM~513_combout\ : std_logic;
SIGNAL \REGFILE|MEM~162_regout\ : std_logic;
SIGNAL \REGFILE|MEM~130_regout\ : std_logic;
SIGNAL \REGFILE|MEM~515_combout\ : std_logic;
SIGNAL \REGFILE|MEM~516_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~10_combout\ : std_logic;
SIGNAL \MUXB|Mux2~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~158feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~158_regout\ : std_logic;
SIGNAL \REGFILE|MEM~410_combout\ : std_logic;
SIGNAL \REGFILE|MEM~407_combout\ : std_logic;
SIGNAL \REGFILE|MEM~408_combout\ : std_logic;
SIGNAL \REGFILE|MEM~411_combout\ : std_logic;
SIGNAL \MUXB|Mux5~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[22]~20_combout\ : std_logic;
SIGNAL \REGFILE|MEM~555_combout\ : std_logic;
SIGNAL \REGFILE|MEM~556_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~18_combout\ : std_logic;
SIGNAL \MUXB|Mux10~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[19]~17_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~21_combout\ : std_logic;
SIGNAL \MUXB|Mux14~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[13]~11_combout\ : std_logic;
SIGNAL \MUXB|Mux20~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[11]~9_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[9]~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM~109_regout\ : std_logic;
SIGNAL \REGFILE|MEM~45_regout\ : std_logic;
SIGNAL \REGFILE|MEM~77_regout\ : std_logic;
SIGNAL \REGFILE|MEM~324_combout\ : std_logic;
SIGNAL \REGFILE|MEM~141_regout\ : std_logic;
SIGNAL \REGFILE|MEM~325_combout\ : std_logic;
SIGNAL \REGFILE|MEM~237_regout\ : std_logic;
SIGNAL \REGFILE|MEM~173_regout\ : std_logic;
SIGNAL \REGFILE|MEM~322_combout\ : std_logic;
SIGNAL \REGFILE|MEM~205_regout\ : std_logic;
SIGNAL \REGFILE|MEM~269_regout\ : std_logic;
SIGNAL \REGFILE|MEM~323_combout\ : std_logic;
SIGNAL \REGFILE|MEM~326_combout\ : std_logic;
SIGNAL \MEM|MEM~173_regout\ : std_logic;
SIGNAL \MEM|MEM~382_combout\ : std_logic;
SIGNAL \MEM|MEM~205_regout\ : std_logic;
SIGNAL \MEM|MEM~383_combout\ : std_logic;
SIGNAL \MEM|MEM~141_regout\ : std_logic;
SIGNAL \MEM|MEM~109_regout\ : std_logic;
SIGNAL \MEM|MEM~385_combout\ : std_logic;
SIGNAL \MEM|MEM~386_combout\ : std_logic;
SIGNAL \REGFILE|MEM~143_regout\ : std_logic;
SIGNAL \REGFILE|MEM~47feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~47_regout\ : std_logic;
SIGNAL \REGFILE|MEM~609_combout\ : std_logic;
SIGNAL \REGFILE|MEM~610_combout\ : std_logic;
SIGNAL \REGFILE|MEM~175_regout\ : std_logic;
SIGNAL \REGFILE|MEM~239_regout\ : std_logic;
SIGNAL \REGFILE|MEM~607_combout\ : std_logic;
SIGNAL \REGFILE|MEM~608_combout\ : std_logic;
SIGNAL \REGFILE|MEM~611_combout\ : std_logic;
SIGNAL \MUXA|salida[11]~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~31\ : std_logic;
SIGNAL \ALUCOMP|Add0~34\ : std_logic;
SIGNAL \ALUCOMP|Add0~36_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[11]~8_combout\ : std_logic;
SIGNAL \REGFILE|MEM~207_regout\ : std_logic;
SIGNAL \REGFILE|MEM~271feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~271_regout\ : std_logic;
SIGNAL \REGFILE|MEM~333_combout\ : std_logic;
SIGNAL \REGFILE|MEM~79feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~79_regout\ : std_logic;
SIGNAL \REGFILE|MEM~334_combout\ : std_logic;
SIGNAL \REGFILE|MEM~335_combout\ : std_logic;
SIGNAL \REGFILE|MEM~336_combout\ : std_logic;
SIGNAL \MEM|MEM~47_regout\ : std_logic;
SIGNAL \MEM|MEM~79_regout\ : std_logic;
SIGNAL \MEM|MEM~374_combout\ : std_logic;
SIGNAL \MEM|MEM~111_regout\ : std_logic;
SIGNAL \MEM|MEM~375_combout\ : std_logic;
SIGNAL \MEM|MEM~271_regout\ : std_logic;
SIGNAL \MEM|MEM~207_regout\ : std_logic;
SIGNAL \MEM|MEM~373_combout\ : std_logic;
SIGNAL \MEM|MEM~376_combout\ : std_logic;
SIGNAL \REGFILE|MEM~145_regout\ : std_logic;
SIGNAL \REGFILE|MEM~113_regout\ : std_logic;
SIGNAL \REGFILE|MEM~49_regout\ : std_logic;
SIGNAL \REGFILE|MEM~599_combout\ : std_logic;
SIGNAL \REGFILE|MEM~600_combout\ : std_logic;
SIGNAL \REGFILE|MEM~209_regout\ : std_logic;
SIGNAL \REGFILE|MEM~598_combout\ : std_logic;
SIGNAL \REGFILE|MEM~601_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~27_combout\ : std_logic;
SIGNAL \MUXB|Mux22~0_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
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
SIGNAL \ALUCOMP|Mux29~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~2_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[2]~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[2]~2_combout\ : std_logic;
SIGNAL \MEM|MEM~331_combout\ : std_logic;
SIGNAL \MUXREAD|Mux26~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[5]~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~105_regout\ : std_logic;
SIGNAL \REGFILE|MEM~137_regout\ : std_logic;
SIGNAL \REGFILE|MEM~41_regout\ : std_logic;
SIGNAL \REGFILE|MEM~304_combout\ : std_logic;
SIGNAL \REGFILE|MEM~305_combout\ : std_logic;
SIGNAL \REGFILE|MEM~306_combout\ : std_logic;
SIGNAL \MUXB|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~2_combout\ : std_logic;
SIGNAL \PCwrite~0_combout\ : std_logic;
SIGNAL \PCwrite~1_combout\ : std_logic;
SIGNAL \PCwrite~2_combout\ : std_logic;
SIGNAL \PCwrite~combout\ : std_logic;
SIGNAL \MUXA|salida[10]~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux21~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[10]~7_combout\ : std_logic;
SIGNAL \REGFILE|MEM~110_regout\ : std_logic;
SIGNAL \REGFILE|MEM~142feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~142_regout\ : std_logic;
SIGNAL \REGFILE|MEM~330_combout\ : std_logic;
SIGNAL \REGFILE|MEM~331_combout\ : std_logic;
SIGNAL \MEM|MEM~142_regout\ : std_logic;
SIGNAL \MEM|MEM~110_regout\ : std_logic;
SIGNAL \MEM|MEM~380_combout\ : std_logic;
SIGNAL \MEM|MEM~270_regout\ : std_logic;
SIGNAL \MEM|MEM~206_regout\ : std_logic;
SIGNAL \MEM|MEM~378_combout\ : std_logic;
SIGNAL \MEM|MEM~381_combout\ : std_logic;
SIGNAL \REGFILE|MEM~112_regout\ : std_logic;
SIGNAL \REGFILE|MEM~80feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~80_regout\ : std_logic;
SIGNAL \REGFILE|MEM~604_combout\ : std_logic;
SIGNAL \REGFILE|MEM~605_combout\ : std_logic;
SIGNAL \REGFILE|MEM~240_regout\ : std_logic;
SIGNAL \REGFILE|MEM~176_regout\ : std_logic;
SIGNAL \REGFILE|MEM~602_combout\ : std_logic;
SIGNAL \REGFILE|MEM~603_combout\ : std_logic;
SIGNAL \REGFILE|MEM~606_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~28_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37\ : std_logic;
SIGNAL \ALUCOMP|Add0~39_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux19~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[12]~9_combout\ : std_logic;
SIGNAL \REGFILE|MEM~272feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~272_regout\ : std_logic;
SIGNAL \REGFILE|MEM~208_regout\ : std_logic;
SIGNAL \REGFILE|MEM~338_combout\ : std_logic;
SIGNAL \REGFILE|MEM~341_combout\ : std_logic;
SIGNAL \MEM|MEM~144_regout\ : std_logic;
SIGNAL \MEM|MEM~112_regout\ : std_logic;
SIGNAL \MEM|MEM~370_combout\ : std_logic;
SIGNAL \MEM|MEM~371_combout\ : std_logic;
SIGNAL \MUXB|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~38_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~40\ : std_logic;
SIGNAL \ALUCOMP|Add0~42_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~2_combout\ : std_logic;
SIGNAL \MUXREAD|Mux18~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[13]~10_combout\ : std_logic;
SIGNAL \REGFILE|MEM~273feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~273_regout\ : std_logic;
SIGNAL \REGFILE|MEM~343_combout\ : std_logic;
SIGNAL \REGFILE|MEM~345_combout\ : std_logic;
SIGNAL \REGFILE|MEM~346_combout\ : std_logic;
SIGNAL \MUXB|Mux18~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43\ : std_logic;
SIGNAL \ALUCOMP|Add0~45_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[14]~11_combout\ : std_logic;
SIGNAL \REGFILE|MEM~242_regout\ : std_logic;
SIGNAL \REGFILE|MEM~347_combout\ : std_logic;
SIGNAL \REGFILE|MEM~210feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~210_regout\ : std_logic;
SIGNAL \REGFILE|MEM~348_combout\ : std_logic;
SIGNAL \REGFILE|MEM~146_regout\ : std_logic;
SIGNAL \REGFILE|MEM~114_regout\ : std_logic;
SIGNAL \REGFILE|MEM~50_regout\ : std_logic;
SIGNAL \REGFILE|MEM~82feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~82_regout\ : std_logic;
SIGNAL \REGFILE|MEM~349_combout\ : std_logic;
SIGNAL \REGFILE|MEM~350_combout\ : std_logic;
SIGNAL \REGFILE|MEM~351_combout\ : std_logic;
SIGNAL \MEM|MEM~210_regout\ : std_logic;
SIGNAL \MEM|MEM~242_regout\ : std_logic;
SIGNAL \MEM|MEM~178_regout\ : std_logic;
SIGNAL \MEM|MEM~357_combout\ : std_logic;
SIGNAL \MEM|MEM~358_combout\ : std_logic;
SIGNAL \MEM|MEM~114_regout\ : std_logic;
SIGNAL \MEM|MEM~82_regout\ : std_logic;
SIGNAL \MEM|MEM~50_regout\ : std_logic;
SIGNAL \MEM|MEM~359_combout\ : std_logic;
SIGNAL \MEM|MEM~360_combout\ : std_logic;
SIGNAL \MEM|MEM~361_combout\ : std_logic;
SIGNAL \REGFILE|MEM~180_regout\ : std_logic;
SIGNAL \REGFILE|MEM~244_regout\ : std_logic;
SIGNAL \REGFILE|MEM~582_combout\ : std_logic;
SIGNAL \REGFILE|MEM~583_combout\ : std_logic;
SIGNAL \REGFILE|MEM~148_regout\ : std_logic;
SIGNAL \REGFILE|MEM~116_regout\ : std_logic;
SIGNAL \REGFILE|MEM~585_combout\ : std_logic;
SIGNAL \REGFILE|MEM~586_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~52_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[16]~13_combout\ : std_logic;
SIGNAL \REGFILE|MEM~276_regout\ : std_logic;
SIGNAL \REGFILE|MEM~212feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~212_regout\ : std_logic;
SIGNAL \REGFILE|MEM~357_combout\ : std_logic;
SIGNAL \REGFILE|MEM~358_combout\ : std_logic;
SIGNAL \REGFILE|MEM~361_combout\ : std_logic;
SIGNAL \MEM|MEM~212_regout\ : std_logic;
SIGNAL \MEM|MEM~180_regout\ : std_logic;
SIGNAL \MEM|MEM~244_regout\ : std_logic;
SIGNAL \MEM|MEM~292_combout\ : std_logic;
SIGNAL \MEM|MEM~293_combout\ : std_logic;
SIGNAL \MEM|MEM~296_combout\ : std_logic;
SIGNAL \INSTREG|jump_out[16]~feeder_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~6_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~452_combout\ : std_logic;
SIGNAL \REGFILE|MEM~461_combout\ : std_logic;
SIGNAL \REGFILE|MEM~149_regout\ : std_logic;
SIGNAL \REGFILE|MEM~117feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~117_regout\ : std_logic;
SIGNAL \REGFILE|MEM~53_regout\ : std_logic;
SIGNAL \REGFILE|MEM~85_regout\ : std_logic;
SIGNAL \REGFILE|MEM~364_combout\ : std_logic;
SIGNAL \REGFILE|MEM~365_combout\ : std_logic;
SIGNAL \REGFILE|MEM~366_combout\ : std_logic;
SIGNAL \MEM|MEM~213_regout\ : std_logic;
SIGNAL \MEM|MEM~181_regout\ : std_logic;
SIGNAL \MEM|MEM~297_combout\ : std_logic;
SIGNAL \MEM|MEM~298_combout\ : std_logic;
SIGNAL \MEM|MEM~53_regout\ : std_logic;
SIGNAL \MEM|MEM~85_regout\ : std_logic;
SIGNAL \MEM|MEM~299_combout\ : std_logic;
SIGNAL \MEM|MEM~117_regout\ : std_logic;
SIGNAL \MEM|MEM~300_combout\ : std_logic;
SIGNAL \MEM|MEM~301_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[1]~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~457_combout\ : std_logic;
SIGNAL \REGFILE|MEM~268_regout\ : std_logic;
SIGNAL \REGFILE|MEM~172feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~172_regout\ : std_logic;
SIGNAL \REGFILE|MEM~317_combout\ : std_logic;
SIGNAL \REGFILE|MEM~318_combout\ : std_logic;
SIGNAL \REGFILE|MEM~321_combout\ : std_logic;
SIGNAL \MEM|MEM~140feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~140_regout\ : std_logic;
SIGNAL \MEM|MEM~108_regout\ : std_logic;
SIGNAL \MEM|MEM~315_combout\ : std_logic;
SIGNAL \MEM|MEM~268_regout\ : std_logic;
SIGNAL \MEM|MEM~204_regout\ : std_logic;
SIGNAL \MEM|MEM~313_combout\ : std_logic;
SIGNAL \MEM|MEM~316_combout\ : std_logic;
SIGNAL \MUXB|Mux23~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~2_combout\ : std_logic;
SIGNAL \ADDRDEC|addressSel[1]~1_combout\ : std_logic;
SIGNAL \MUXREAD|Mux31~14_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[0]~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~624_combout\ : std_logic;
SIGNAL \REGFILE|MEM~36_regout\ : std_logic;
SIGNAL \REGFILE|MEM~623_combout\ : std_logic;
SIGNAL \REGFILE|MEM~68_regout\ : std_logic;
SIGNAL \REGFILE|MEM~294_combout\ : std_logic;
SIGNAL \REGFILE|MEM~625_combout\ : std_logic;
SIGNAL \REGFILE|MEM~132_regout\ : std_logic;
SIGNAL \REGFILE|MEM~295_combout\ : std_logic;
SIGNAL \REGFILE|MEM~296_combout\ : std_logic;
SIGNAL \MEM|MEM~196_regout\ : std_logic;
SIGNAL \MEM|MEM~228_regout\ : std_logic;
SIGNAL \MEM|MEM~164_regout\ : std_logic;
SIGNAL \MEM|MEM~347_combout\ : std_logic;
SIGNAL \MEM|MEM~348_combout\ : std_logic;
SIGNAL \MEM|MEM~351_combout\ : std_logic;
SIGNAL \ALUCONTRL|op[0]~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[21]~18_combout\ : std_logic;
SIGNAL \REGFILE|MEM~121feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~121_regout\ : std_logic;
SIGNAL \REGFILE|MEM~153feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~153_regout\ : std_logic;
SIGNAL \REGFILE|MEM~385_combout\ : std_logic;
SIGNAL \REGFILE|MEM~386_combout\ : std_logic;
SIGNAL \MEM|MEM~153_regout\ : std_logic;
SIGNAL \MEM|MEM~121_regout\ : std_logic;
SIGNAL \MEM|MEM~398_combout\ : std_logic;
SIGNAL \MEM|MEM~399_combout\ : std_logic;
SIGNAL \REGFILE|MEM~504_combout\ : std_logic;
SIGNAL \REGFILE|MEM~505_combout\ : std_logic;
SIGNAL \REGFILE|MEM~260_regout\ : std_logic;
SIGNAL \REGFILE|MEM~164_regout\ : std_logic;
SIGNAL \REGFILE|MEM~502_combout\ : std_logic;
SIGNAL \REGFILE|MEM~503_combout\ : std_logic;
SIGNAL \REGFILE|MEM~506_combout\ : std_logic;
SIGNAL \MUXA|salida[0]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~2_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux31~0_combout\ : std_logic;
SIGNAL \CONTROLU|IorD~4_combout\ : std_logic;
SIGNAL \CONTROLU|IorD~9_combout\ : std_logic;
SIGNAL \MUXPC|salida[0]~0_combout\ : std_logic;
SIGNAL \MEM|MEM~199_regout\ : std_logic;
SIGNAL \MEM|MEM~231_regout\ : std_logic;
SIGNAL \MEM|MEM~167_regout\ : std_logic;
SIGNAL \MEM|MEM~337_combout\ : std_logic;
SIGNAL \MEM|MEM~338_combout\ : std_logic;
SIGNAL \MEM|MEM~103_regout\ : std_logic;
SIGNAL \MEM|MEM~71_regout\ : std_logic;
SIGNAL \MEM|MEM~39_regout\ : std_logic;
SIGNAL \MEM|MEM~339_combout\ : std_logic;
SIGNAL \MEM|MEM~340_combout\ : std_logic;
SIGNAL \MEM|MEM~341_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~2_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux30~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[1]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~417_combout\ : std_logic;
SIGNAL \REGFILE|MEM~418_combout\ : std_logic;
SIGNAL \REGFILE|MEM~420_combout\ : std_logic;
SIGNAL \REGFILE|MEM~421_combout\ : std_logic;
SIGNAL \MEM|MEM~192_regout\ : std_logic;
SIGNAL \MEM|MEM~440_combout\ : std_logic;
SIGNAL \MEM|MEM~224_regout\ : std_logic;
SIGNAL \MEM|MEM~441_combout\ : std_logic;
SIGNAL \MEM|MEM~160feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~160_regout\ : std_logic;
SIGNAL \MEM|MEM~128_regout\ : std_logic;
SIGNAL \MEM|MEM~443_combout\ : std_logic;
SIGNAL \MEM|MEM~444_combout\ : std_logic;
SIGNAL \MEM|MEM~290_regout\ : std_logic;
SIGNAL \MEM|MEM~226_regout\ : std_logic;
SIGNAL \MEM|MEM~194_regout\ : std_logic;
SIGNAL \MEM|MEM~455_combout\ : std_logic;
SIGNAL \MEM|MEM~456_combout\ : std_logic;
SIGNAL \MEM|MEM~98_regout\ : std_logic;
SIGNAL \MEM|MEM~66_regout\ : std_logic;
SIGNAL \MEM|MEM~457_combout\ : std_logic;
SIGNAL \MEM|MEM~162_regout\ : std_logic;
SIGNAL \MEM|MEM~458_combout\ : std_logic;
SIGNAL \MEM|MEM~459_combout\ : std_logic;
SIGNAL \MEM|MEM~286_regout\ : std_logic;
SIGNAL \MEM|MEM~222_regout\ : std_logic;
SIGNAL \MEM|MEM~431_combout\ : std_logic;
SIGNAL \MEM|MEM~126_regout\ : std_logic;
SIGNAL \MEM|MEM~158_regout\ : std_logic;
SIGNAL \MEM|MEM~433_combout\ : std_logic;
SIGNAL \MEM|MEM~434_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[0]~15_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[0]~16_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~17_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~18_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~7_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~8_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~9_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~10_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~11_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt~10_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt~21_combout\ : std_logic;
SIGNAL \CONTROLU|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[3]~5_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[3]~14_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[3]~22_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~20_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~12_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~13_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~14_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~19_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~1_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~40_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~42_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~41_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~97_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[30]~28_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~2_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~5_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~6_combout\ : std_logic;
SIGNAL \ADDRDEC|Equal1~9_combout\ : std_logic;
SIGNAL \MUXREAD|Mux27~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux13~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[18]~15_combout\ : std_logic;
SIGNAL \REGFILE|MEM~54feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~54_regout\ : std_logic;
SIGNAL \REGFILE|MEM~369_combout\ : std_logic;
SIGNAL \REGFILE|MEM~370_combout\ : std_logic;
SIGNAL \REGFILE|MEM~214_regout\ : std_logic;
SIGNAL \REGFILE|MEM~367_combout\ : std_logic;
SIGNAL \REGFILE|MEM~368_combout\ : std_logic;
SIGNAL \REGFILE|MEM~371_combout\ : std_logic;
SIGNAL \MEM|MEM~150feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~150_regout\ : std_logic;
SIGNAL \MEM|MEM~118_regout\ : std_logic;
SIGNAL \MEM|MEM~305_combout\ : std_logic;
SIGNAL \MEM|MEM~214_regout\ : std_logic;
SIGNAL \MEM|MEM~182_regout\ : std_logic;
SIGNAL \MEM|MEM~302_combout\ : std_logic;
SIGNAL \MEM|MEM~303_combout\ : std_logic;
SIGNAL \MEM|MEM~306_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~6_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~3_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~14_combout\ : std_logic;
SIGNAL \MUXREAD|Mux30~13_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[1]~30_combout\ : std_logic;
SIGNAL \REGFILE|MEM~37_regout\ : std_logic;
SIGNAL \REGFILE|MEM~69_regout\ : std_logic;
SIGNAL \REGFILE|MEM~444_combout\ : std_logic;
SIGNAL \REGFILE|MEM~626_combout\ : std_logic;
SIGNAL \REGFILE|MEM~133_regout\ : std_logic;
SIGNAL \REGFILE|MEM~445_combout\ : std_logic;
SIGNAL \REGFILE|MEM~446_combout\ : std_logic;
SIGNAL \regB|dt_out[1]~feeder_combout\ : std_logic;
SIGNAL \ADDRDEC|dev1~0_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr6~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal12~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~11_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[4]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[5]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~2_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[12]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~4_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[11]~feeder_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[8]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~3_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~6_combout\ : std_logic;
SIGNAL \SEG7WR|Equal4~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr6~combout\ : std_logic;
SIGNAL \SEG7WR|Equal11~0_combout\ : std_logic;
SIGNAL \SEG7WR|Equal14~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr4~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr5~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr5~1_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[25]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~8_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[29]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~9_combout\ : std_logic;
SIGNAL \REG7SEG|dt_out[21]~feeder_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~7_combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~10_combout\ : std_logic;
SIGNAL \SEG7WR|Equal2~1_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr4~combout\ : std_logic;
SIGNAL \SEG7WR|WideOr0~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr3~combout\ : std_logic;
SIGNAL \SEG7WR|WideOr2~0_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr2~1_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~3_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~2_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr1~combout\ : std_logic;
SIGNAL \SEG7WR|Equal0~12_combout\ : std_logic;
SIGNAL \SEG7WR|WideOr0~combout\ : std_logic;
SIGNAL \INSTREG|jump_out\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALUCONTRL|op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INSTREG|func_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \MEM|dataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INSTREG|op_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MDR|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG7SEG|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regA|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regB|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_key <= key;
seg7exit <= ww_seg7exit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CONTROLU|nxt_st[1]~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|nxt_st[1]~6_combout\);
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: LCCOMB_X44_Y13_N18
\ALUCOMP|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~11_combout\ = (\MUXA|salida[0]~8_combout\ & ((\ALUCOMP|Add0~8_combout\ & (\ALUCOMP|Add0~10_cout\ & VCC)) # (!\ALUCOMP|Add0~8_combout\ & (!\ALUCOMP|Add0~10_cout\)))) # (!\MUXA|salida[0]~8_combout\ & ((\ALUCOMP|Add0~8_combout\ & 
-- (!\ALUCOMP|Add0~10_cout\)) # (!\ALUCOMP|Add0~8_combout\ & ((\ALUCOMP|Add0~10_cout\) # (GND)))))
-- \ALUCOMP|Add0~12\ = CARRY((\MUXA|salida[0]~8_combout\ & (!\ALUCOMP|Add0~8_combout\ & !\ALUCOMP|Add0~10_cout\)) # (!\MUXA|salida[0]~8_combout\ & ((!\ALUCOMP|Add0~10_cout\) # (!\ALUCOMP|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~8_combout\,
	datab => \ALUCOMP|Add0~8_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~10_cout\,
	combout => \ALUCOMP|Add0~11_combout\,
	cout => \ALUCOMP|Add0~12\);

-- Location: LCFF_X47_Y15_N9
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[25]~23_combout\,
	sdata => \INSTREG|jump_out\(23),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(25));

-- Location: LCFF_X47_Y15_N31
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[24]~22_combout\,
	sdata => \INSTREG|jump_out\(22),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(24));

-- Location: LCFF_X49_Y11_N29
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[23]~21_combout\,
	sdata => \INSTREG|jump_out\(21),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(23));

-- Location: LCFF_X49_Y11_N15
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[17]~15_combout\,
	sdata => \INSTREG|jump_out\(15),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(17));

-- Location: LCFF_X47_Y14_N9
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[14]~12_combout\,
	sdata => \INSTREG|jump_out\(12),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X44_Y12_N20
\ALUCOMP|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~56_combout\ = ((\MUXA|salida[17]~23_combout\ $ (\ALUCOMP|Add0~55_combout\ $ (!\ALUCOMP|Add0~53\)))) # (GND)
-- \ALUCOMP|Add0~57\ = CARRY((\MUXA|salida[17]~23_combout\ & ((\ALUCOMP|Add0~55_combout\) # (!\ALUCOMP|Add0~53\))) # (!\MUXA|salida[17]~23_combout\ & (\ALUCOMP|Add0~55_combout\ & !\ALUCOMP|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~23_combout\,
	datab => \ALUCOMP|Add0~55_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~53\,
	combout => \ALUCOMP|Add0~56_combout\,
	cout => \ALUCOMP|Add0~57\);

-- Location: LCCOMB_X44_Y12_N28
\ALUCOMP|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~70_combout\ = ((\ALUCOMP|Add0~69_combout\ $ (\MUXA|salida[21]~19_combout\ $ (!\ALUCOMP|Add0~68\)))) # (GND)
-- \ALUCOMP|Add0~71\ = CARRY((\ALUCOMP|Add0~69_combout\ & ((\MUXA|salida[21]~19_combout\) # (!\ALUCOMP|Add0~68\))) # (!\ALUCOMP|Add0~69_combout\ & (\MUXA|salida[21]~19_combout\ & !\ALUCOMP|Add0~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~69_combout\,
	datab => \MUXA|salida[21]~19_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~68\,
	combout => \ALUCOMP|Add0~70_combout\,
	cout => \ALUCOMP|Add0~71\);

-- Location: LCCOMB_X44_Y11_N10
\ALUCOMP|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~91_combout\ = (\ALUCOMP|Add0~90_combout\ & ((\MUXA|salida[28]~12_combout\ & (\ALUCOMP|Add0~89\ & VCC)) # (!\MUXA|salida[28]~12_combout\ & (!\ALUCOMP|Add0~89\)))) # (!\ALUCOMP|Add0~90_combout\ & ((\MUXA|salida[28]~12_combout\ & 
-- (!\ALUCOMP|Add0~89\)) # (!\MUXA|salida[28]~12_combout\ & ((\ALUCOMP|Add0~89\) # (GND)))))
-- \ALUCOMP|Add0~92\ = CARRY((\ALUCOMP|Add0~90_combout\ & (!\MUXA|salida[28]~12_combout\ & !\ALUCOMP|Add0~89\)) # (!\ALUCOMP|Add0~90_combout\ & ((!\ALUCOMP|Add0~89\) # (!\MUXA|salida[28]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~90_combout\,
	datab => \MUXA|salida[28]~12_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~89\,
	combout => \ALUCOMP|Add0~91_combout\,
	cout => \ALUCOMP|Add0~92\);

-- Location: LCCOMB_X47_Y15_N8
\PROGCOUNT|addr_out[25]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[25]~23_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(25))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(25),
	datad => \ALUCOMP|Mux6~2_combout\,
	combout => \PROGCOUNT|addr_out[25]~23_combout\);

-- Location: LCCOMB_X47_Y15_N30
\PROGCOUNT|addr_out[24]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[24]~22_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(24))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(24),
	datad => \ALUCOMP|Mux7~2_combout\,
	combout => \PROGCOUNT|addr_out[24]~22_combout\);

-- Location: LCCOMB_X49_Y11_N28
\PROGCOUNT|addr_out[23]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[23]~21_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(23))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(23),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux8~2_combout\,
	combout => \PROGCOUNT|addr_out[23]~21_combout\);

-- Location: LCCOMB_X49_Y11_N14
\PROGCOUNT|addr_out[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[17]~15_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(17))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(17),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux14~2_combout\,
	combout => \PROGCOUNT|addr_out[17]~15_combout\);

-- Location: LCCOMB_X47_Y14_N8
\PROGCOUNT|addr_out[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[14]~12_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(14)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux17~2_combout\,
	datad => \regALU|dt_out\(14),
	combout => \PROGCOUNT|addr_out[14]~12_combout\);

-- Location: LCFF_X37_Y11_N29
\REG7SEG|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(6));

-- Location: LCFF_X36_Y11_N25
\REG7SEG|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[9]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(9));

-- Location: LCFF_X37_Y11_N25
\REG7SEG|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[13]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(13));

-- Location: LCFF_X37_Y11_N27
\REG7SEG|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(16));

-- Location: LCFF_X37_Y11_N1
\REG7SEG|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[17]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(17));

-- Location: LCFF_X37_Y11_N7
\REG7SEG|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[18]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(18));

-- Location: LCFF_X37_Y11_N17
\REG7SEG|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(19));

-- Location: LCCOMB_X37_Y11_N16
\SEG7WR|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~5_combout\ = (!\REG7SEG|dt_out\(18) & (!\REG7SEG|dt_out\(17) & (!\REG7SEG|dt_out\(19) & !\REG7SEG|dt_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(18),
	datab => \REG7SEG|dt_out\(17),
	datac => \REG7SEG|dt_out\(19),
	datad => \REG7SEG|dt_out\(16),
	combout => \SEG7WR|Equal0~5_combout\);

-- Location: LCFF_X37_Y11_N3
\REG7SEG|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[22]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(22));

-- Location: LCFF_X36_Y11_N7
\REG7SEG|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[27]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(27));

-- Location: LCFF_X37_Y12_N15
\REG7SEG|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(30));

-- Location: LCCOMB_X37_Y12_N26
\SEG7WR|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal1~0_combout\ = (\SEG7WR|Equal0~6_combout\ & (\REG7SEG|dt_out\(0) & \SEG7WR|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~6_combout\,
	datac => \REG7SEG|dt_out\(0),
	datad => \SEG7WR|Equal0~10_combout\,
	combout => \SEG7WR|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y12_N10
\SEG7WR|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal2~0_combout\ = (!\REG7SEG|dt_out\(2) & \REG7SEG|dt_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG7SEG|dt_out\(2),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y14_N6
\ADDRDEC|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~1_combout\ = (!\regALU|dt_out\(5) & (!\regALU|dt_out\(7) & (!\regALU|dt_out\(6) & !\regALU|dt_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(5),
	datab => \regALU|dt_out\(7),
	datac => \regALU|dt_out\(6),
	datad => \regALU|dt_out\(4),
	combout => \ADDRDEC|Equal1~1_combout\);

-- Location: LCFF_X48_Y11_N31
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCFF_X44_Y11_N21
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCCOMB_X47_Y15_N10
\ADDRDEC|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~7_combout\ = (!\regALU|dt_out\(26) & (!\regALU|dt_out\(25) & (!\regALU|dt_out\(28) & !\regALU|dt_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(26),
	datab => \regALU|dt_out\(25),
	datac => \regALU|dt_out\(28),
	datad => \regALU|dt_out\(27),
	combout => \ADDRDEC|Equal1~7_combout\);

-- Location: LCFF_X48_Y15_N17
\REGFILE|MEM~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[0]~0_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~196_regout\);

-- Location: LCFF_X49_Y8_N25
\REGFILE|MEM~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[0]~0_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~228_regout\);

-- Location: LCCOMB_X49_Y8_N24
\REGFILE|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~292_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~228_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~164_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~228_regout\,
	datad => \REGFILE|MEM~164_regout\,
	combout => \REGFILE|MEM~292_combout\);

-- Location: LCCOMB_X48_Y15_N30
\REGFILE|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~293_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~292_combout\ & ((\REGFILE|MEM~260_regout\))) # (!\REGFILE|MEM~292_combout\ & (\REGFILE|MEM~196_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~196_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~260_regout\,
	datad => \REGFILE|MEM~292_combout\,
	combout => \REGFILE|MEM~293_combout\);

-- Location: LCFF_X49_Y12_N5
\REGFILE|MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~622_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~100_regout\);

-- Location: LCCOMB_X43_Y12_N30
\ALUCOMP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~0_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux23~0_combout\,
	combout => \ALUCOMP|Add0~0_combout\);

-- Location: LCCOMB_X44_Y13_N14
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\INSTREG|jump_out\(7) & ((\MUXB|Mux16~0_combout\) # ((\MUXB|Mux16~1_combout\ & \regB|dt_out\(7))))) # (!\INSTREG|jump_out\(7) & (\MUXB|Mux16~1_combout\ & (\regB|dt_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(7),
	datab => \MUXB|Mux16~1_combout\,
	datac => \regB|dt_out\(7),
	datad => \MUXB|Mux16~0_combout\,
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCCOMB_X43_Y13_N16
\ALUCOMP|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~1_combout\ = \MUXB|Mux24~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux24~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~1_combout\);

-- Location: LCCOMB_X44_Y13_N6
\ALUCOMP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~2_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Add0~2_combout\);

-- Location: LCFF_X45_Y9_N25
\regA|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(6));

-- Location: LCCOMB_X43_Y13_N14
\ALUCOMP|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~3_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux26~0_combout\,
	combout => \ALUCOMP|Add0~3_combout\);

-- Location: LCCOMB_X44_Y13_N12
\ALUCOMP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~4_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux27~0_combout\,
	combout => \ALUCOMP|Add0~4_combout\);

-- Location: LCFF_X47_Y12_N7
\regA|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(3));

-- Location: LCCOMB_X44_Y13_N10
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Add0~6_combout\);

-- Location: LCFF_X45_Y14_N19
\regA|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(2));

-- Location: LCFF_X46_Y10_N17
\regA|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~501_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(1));

-- Location: LCCOMB_X46_Y10_N2
\MUXA|salida[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~7_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(1))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(1))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(1),
	datab => \PROGCOUNT|addr_out\(1),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[1]~7_combout\);

-- Location: LCCOMB_X45_Y13_N26
\ALUCONTRL|op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op~0_combout\ = (\INSTREG|func_out\(1) & (!\rst~combout\ & \CONTROLU|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|func_out\(1),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~2_combout\,
	combout => \ALUCONTRL|op~0_combout\);

-- Location: LCCOMB_X43_Y11_N10
\ALUCOMP|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~0_combout\ = (\rst~combout\) # ((!\INSTREG|func_out\(2)) # (!\CONTROLU|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~2_combout\,
	datad => \INSTREG|func_out\(2),
	combout => \ALUCOMP|Mux25~0_combout\);

-- Location: LCCOMB_X44_Y15_N20
\ALUCOMP|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~0_combout\ = (\MUXB|Mux23~0_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXA|salida[8]~0_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXB|Mux23~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXA|salida[8]~0_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux23~0_combout\,
	datab => \MUXA|salida[8]~0_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux23~0_combout\);

-- Location: LCCOMB_X43_Y13_N6
\MUXB|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux7~0_combout\ = (\regB|dt_out\(24) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \rst~combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \regB|dt_out\(24),
	combout => \MUXB|Mux7~0_combout\);

-- Location: LCFF_X44_Y10_N11
\regA|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(21));

-- Location: LCFF_X46_Y15_N13
\regA|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(19));

-- Location: LCCOMB_X45_Y15_N8
\MUXB|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux12~0_combout\ = (\regB|dt_out\(19) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \regB|dt_out\(19),
	combout => \MUXB|Mux12~0_combout\);

-- Location: LCFF_X44_Y10_N27
\regA|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(17));

-- Location: LCCOMB_X44_Y10_N24
\MUXA|salida[17]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~23_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(17))) # (!\rst~combout\ & ((\regA|dt_out\(17)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(17),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \rst~combout\,
	datad => \regA|dt_out\(17),
	combout => \MUXA|salida[17]~23_combout\);

-- Location: LCFF_X43_Y12_N3
\regA|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~596_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(14));

-- Location: LCCOMB_X43_Y12_N2
\MUXA|salida[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~26_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(14))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(14)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(14),
	datac => \regA|dt_out\(14),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[14]~26_combout\);

-- Location: LCFF_X44_Y9_N15
\regA|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(10));

-- Location: LCFF_X45_Y10_N21
\regA|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(9));

-- Location: LCCOMB_X46_Y10_N8
\ALUCOMP|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~1_combout\ = (\MUXA|salida[1]~7_combout\ & ((\MUXB|Mux30~0_combout\) # ((!\ALUCOMP|Mux25~3_combout\ & \ALUCONTRL|op[0]~1_combout\)))) # (!\MUXA|salida[1]~7_combout\ & (!\ALUCOMP|Mux25~3_combout\ & (\ALUCONTRL|op[0]~1_combout\ & 
-- \MUXB|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \MUXA|salida[1]~7_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \MUXB|Mux30~0_combout\,
	combout => \ALUCOMP|Mux30~1_combout\);

-- Location: LCCOMB_X45_Y14_N10
\ALUCOMP|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~0_combout\ = (\ALUCOMP|Mux25~1_combout\ & (((\ALUCONTRL|op[0]~1_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & ((\MUXB|Mux29~0_combout\ & ((\MUXA|salida[2]~6_combout\) # (\ALUCONTRL|op[0]~1_combout\))) # (!\MUXB|Mux29~0_combout\ & 
-- (\MUXA|salida[2]~6_combout\ & \ALUCONTRL|op[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \MUXB|Mux29~0_combout\,
	datac => \MUXA|salida[2]~6_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux29~0_combout\);

-- Location: LCCOMB_X44_Y14_N24
\ALUCOMP|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~1_combout\ = (\MUXA|salida[7]~1_combout\ & ((\MUXB|Mux24~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[7]~1_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXB|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXA|salida[7]~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXB|Mux24~0_combout\,
	combout => \ALUCOMP|Mux24~1_combout\);

-- Location: LCCOMB_X45_Y13_N2
\ALUCOMP|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~29_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux22~0_combout\,
	combout => \ALUCOMP|Add0~29_combout\);

-- Location: LCCOMB_X44_Y14_N8
\ALUCOMP|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~1_combout\ = (\MUXB|Mux22~0_combout\ & ((\MUXA|salida[9]~31_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXB|Mux22~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXA|salida[9]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXB|Mux22~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXA|salida[9]~31_combout\,
	combout => \ALUCOMP|Mux22~1_combout\);

-- Location: LCCOMB_X44_Y9_N20
\ALUCOMP|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~32_combout\ = \MUXB|Mux21~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux21~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~32_combout\);

-- Location: LCCOMB_X43_Y14_N28
\ALUCOMP|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~0_combout\ = (\MUXB|Mux19~0_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXA|salida[12]~28_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXB|Mux19~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXA|salida[12]~28_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux19~0_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXA|salida[12]~28_combout\,
	datad => \ALUCOMP|Mux25~1_combout\,
	combout => \ALUCOMP|Mux19~0_combout\);

-- Location: LCCOMB_X46_Y10_N10
\ALUCOMP|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~1_combout\ = (\MUXA|salida[13]~27_combout\ & ((\MUXB|Mux18~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[13]~27_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXB|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~27_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXB|Mux18~0_combout\,
	combout => \ALUCOMP|Mux18~1_combout\);

-- Location: LCCOMB_X43_Y12_N6
\ALUCOMP|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|Mux25~1_combout\) # ((\MUXA|salida[14]~26_combout\) # (\MUXB|Mux17~0_combout\)))) # (!\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~1_combout\ & (\MUXA|salida[14]~26_combout\ & 
-- \MUXB|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \MUXA|salida[14]~26_combout\,
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|Mux17~0_combout\);

-- Location: LCCOMB_X44_Y10_N14
\ALUCOMP|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~47_combout\ = \MUXB|Mux16~2_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux16~2_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~47_combout\);

-- Location: LCCOMB_X48_Y11_N12
\ALUCOMP|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~1_combout\ = (\MUXA|salida[17]~23_combout\ & ((\MUXB|Mux14~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[17]~23_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (\MUXB|Mux14~0_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~23_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXB|Mux14~0_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux14~1_combout\);

-- Location: LCCOMB_X45_Y14_N6
\ALUCOMP|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~58_combout\ = ((\CONTROLU|Equal0~4_combout\ & !\rst~combout\)) # (!\regB|dt_out\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(18),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \ALUCOMP|Add0~58_combout\);

-- Location: LCCOMB_X45_Y14_N20
\ALUCOMP|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~59_combout\ = \ALUCONTRL|op\(2) $ (((!\ALUCOMP|Add0~58_combout\ & ((\CONTROLU|ALUsrcB[1]~3_combout\) # (\rst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~58_combout\,
	datab => \CONTROLU|ALUsrcB[1]~3_combout\,
	datac => \rst~combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~59_combout\);

-- Location: LCCOMB_X48_Y11_N16
\ALUCOMP|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~1_combout\ = (\MUXB|Mux12~0_combout\ & ((\MUXA|salida[19]~21_combout\) # ((!\ALUCOMP|Mux25~3_combout\ & \ALUCONTRL|op[0]~1_combout\)))) # (!\MUXB|Mux12~0_combout\ & (\MUXA|salida[19]~21_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \ALUCONTRL|op[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux12~0_combout\,
	datab => \MUXA|salida[19]~21_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux12~1_combout\);

-- Location: LCCOMB_X43_Y13_N18
\ALUCOMP|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~69_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux10~0_combout\,
	combout => \ALUCOMP|Add0~69_combout\);

-- Location: LCCOMB_X48_Y11_N6
\ALUCOMP|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~1_combout\ = (\MUXA|salida[21]~19_combout\ & ((\MUXB|Mux10~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[21]~19_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (\MUXB|Mux10~0_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~19_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXB|Mux10~0_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux10~1_combout\);

-- Location: LCCOMB_X43_Y12_N24
\ALUCOMP|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\MUXA|salida[22]~18_combout\) # ((\ALUCOMP|Mux25~1_combout\) # (\MUXB|Mux9~0_combout\)))) # (!\ALUCONTRL|op[0]~1_combout\ & (\MUXA|salida[22]~18_combout\ & (!\ALUCOMP|Mux25~1_combout\ & 
-- \MUXB|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXA|salida[22]~18_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \MUXB|Mux9~0_combout\,
	combout => \ALUCOMP|Mux9~0_combout\);

-- Location: LCCOMB_X47_Y11_N28
\ALUCOMP|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~75_combout\ = \MUXB|Mux8~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux8~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~75_combout\);

-- Location: LCCOMB_X43_Y13_N24
\ALUCOMP|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~78_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux7~0_combout\,
	combout => \ALUCOMP|Add0~78_combout\);

-- Location: LCCOMB_X48_Y11_N20
\ALUCOMP|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~0_combout\ = (\MUXA|salida[24]~16_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((!\ALUCOMP|Mux25~1_combout\ & \MUXB|Mux7~0_combout\)))) # (!\MUXA|salida[24]~16_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|Mux25~1_combout\) # 
-- (\MUXB|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[24]~16_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \MUXB|Mux7~0_combout\,
	combout => \ALUCOMP|Mux7~0_combout\);

-- Location: LCCOMB_X46_Y11_N22
\ALUCOMP|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~84_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux5~0_combout\,
	combout => \ALUCOMP|Add0~84_combout\);

-- Location: LCCOMB_X44_Y15_N26
\ALUCOMP|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~87_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux4~0_combout\,
	combout => \ALUCOMP|Add0~87_combout\);

-- Location: LCCOMB_X43_Y13_N2
\ALUCOMP|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~90_combout\ = \MUXB|Mux3~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux3~0_combout\,
	datac => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~90_combout\);

-- Location: LCCOMB_X47_Y11_N22
\ALUCOMP|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~93_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux2~0_combout\,
	combout => \ALUCOMP|Add0~93_combout\);

-- Location: LCCOMB_X43_Y11_N6
\PROGCOUNT|addr_out[29]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~38_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[29]~11_combout\)) # (!\MUXB|Mux2~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux25~1_combout\ & ((\MUXB|Mux2~0_combout\) # (\MUXA|salida[29]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux2~0_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \MUXA|salida[29]~11_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \PROGCOUNT|addr_out[29]~38_combout\);

-- Location: LCCOMB_X46_Y11_N16
\ALUCOMP|Add0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~99_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \MUXB|Mux0~0_combout\,
	combout => \ALUCOMP|Add0~99_combout\);

-- Location: LCCOMB_X43_Y11_N30
\PROGCOUNT|addr_out[31]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~43_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux0~0_combout\)) # (!\MUXA|salida[31]~9_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\) # ((\MUXA|salida[31]~9_combout\ & \MUXB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[31]~9_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \MUXB|Mux0~0_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \PROGCOUNT|addr_out[31]~43_combout\);

-- Location: LCCOMB_X45_Y16_N0
\CONTROLU|nxt_st[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~4_combout\ = (!\CONTROLU|Equal0~4_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \rst~combout\,
	combout => \CONTROLU|nxt_st[1]~4_combout\);

-- Location: LCFF_X47_Y10_N11
\REGFILE|MEM~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~264feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~264_regout\);

-- Location: LCFF_X49_Y16_N17
\REGFILE|MEM~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~104_regout\);

-- Location: LCCOMB_X47_Y10_N4
\REGFILE|MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~299_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~72_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~40_regout\,
	datad => \REGFILE|MEM~72_regout\,
	combout => \REGFILE|MEM~299_combout\);

-- Location: LCCOMB_X47_Y10_N2
\REGFILE|MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~300_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~299_combout\ & (\REGFILE|MEM~136_regout\)) # (!\REGFILE|MEM~299_combout\ & ((\REGFILE|MEM~104_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~136_regout\,
	datac => \REGFILE|MEM~299_combout\,
	datad => \REGFILE|MEM~104_regout\,
	combout => \REGFILE|MEM~300_combout\);

-- Location: LCFF_X48_Y15_N25
\REGFILE|MEM~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~201feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~201_regout\);

-- Location: LCCOMB_X49_Y8_N30
\REGFILE|MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~302_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~233_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~169_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~233_regout\,
	datac => \REGFILE|MEM~169_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~302_combout\);

-- Location: LCCOMB_X48_Y15_N26
\REGFILE|MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~303_combout\ = (\REGFILE|MEM~302_combout\ & (((\REGFILE|MEM~265_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~302_combout\ & (\REGFILE|MEM~201_regout\ & (\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~201_regout\,
	datab => \REGFILE|MEM~302_combout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~265_regout\,
	combout => \REGFILE|MEM~303_combout\);

-- Location: LCFF_X49_Y8_N17
\REGFILE|MEM~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~235_regout\);

-- Location: LCFF_X49_Y8_N3
\REGFILE|MEM~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~171_regout\);

-- Location: LCCOMB_X49_Y8_N2
\REGFILE|MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~312_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~235_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~171_regout\ & !\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~235_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~171_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~312_combout\);

-- Location: LCCOMB_X47_Y10_N8
\REGFILE|MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~313_combout\ = (\REGFILE|MEM~312_combout\ & (((\REGFILE|MEM~267_regout\)) # (!\INSTREG|jump_out\(16)))) # (!\REGFILE|MEM~312_combout\ & (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~203_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~312_combout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~267_regout\,
	datad => \REGFILE|MEM~203_regout\,
	combout => \REGFILE|MEM~313_combout\);

-- Location: LCFF_X47_Y8_N11
\REGFILE|MEM~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~236_regout\);

-- Location: LCFF_X49_Y12_N3
\REGFILE|MEM~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~108feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~108_regout\);

-- Location: LCFF_X48_Y12_N5
\REGFILE|MEM~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~76_regout\);

-- Location: LCFF_X48_Y10_N23
\REGFILE|MEM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~44_regout\);

-- Location: LCCOMB_X48_Y12_N4
\REGFILE|MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~319_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~76_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~44_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~44_regout\,
	datac => \REGFILE|MEM~76_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~319_combout\);

-- Location: LCFF_X48_Y10_N1
\REGFILE|MEM~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~140_regout\);

-- Location: LCCOMB_X49_Y12_N8
\REGFILE|MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~320_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~319_combout\ & (\REGFILE|MEM~140_regout\)) # (!\REGFILE|MEM~319_combout\ & ((\REGFILE|MEM~108_regout\))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~319_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~319_combout\,
	datac => \REGFILE|MEM~140_regout\,
	datad => \REGFILE|MEM~108_regout\,
	combout => \REGFILE|MEM~320_combout\);

-- Location: LCFF_X44_Y9_N31
\REGFILE|MEM~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~206feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~206_regout\);

-- Location: LCFF_X49_Y8_N21
\REGFILE|MEM~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~238_regout\);

-- Location: LCFF_X49_Y8_N11
\REGFILE|MEM~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~174_regout\);

-- Location: LCCOMB_X49_Y8_N20
\REGFILE|MEM~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~327_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~238_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~174_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~238_regout\,
	datad => \REGFILE|MEM~174_regout\,
	combout => \REGFILE|MEM~327_combout\);

-- Location: LCFF_X47_Y9_N17
\REGFILE|MEM~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~270feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~270_regout\);

-- Location: LCCOMB_X44_Y9_N12
\REGFILE|MEM~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~328_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~327_combout\ & ((\REGFILE|MEM~270_regout\))) # (!\REGFILE|MEM~327_combout\ & (\REGFILE|MEM~206_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~206_regout\,
	datac => \REGFILE|MEM~327_combout\,
	datad => \REGFILE|MEM~270_regout\,
	combout => \REGFILE|MEM~328_combout\);

-- Location: LCFF_X45_Y8_N17
\REGFILE|MEM~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~78_regout\);

-- Location: LCFF_X48_Y8_N9
\REGFILE|MEM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~46_regout\);

-- Location: LCCOMB_X44_Y8_N4
\REGFILE|MEM~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~329_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~78_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~46_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~78_regout\,
	datad => \REGFILE|MEM~46_regout\,
	combout => \REGFILE|MEM~329_combout\);

-- Location: LCCOMB_X49_Y8_N14
\REGFILE|MEM~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~332_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~239_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~175_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~239_regout\,
	datac => \REGFILE|MEM~175_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~332_combout\);

-- Location: LCFF_X43_Y9_N21
\REGFILE|MEM~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~111feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~111_regout\);

-- Location: LCCOMB_X43_Y10_N24
\REGFILE|MEM~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~337_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~240_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~240_regout\,
	datad => \REGFILE|MEM~176_regout\,
	combout => \REGFILE|MEM~337_combout\);

-- Location: LCFF_X48_Y8_N19
\REGFILE|MEM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~48_regout\);

-- Location: LCCOMB_X44_Y8_N10
\REGFILE|MEM~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~339_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~80_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~48_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~48_regout\,
	datab => \REGFILE|MEM~80_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~339_combout\);

-- Location: LCFF_X43_Y9_N17
\REGFILE|MEM~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~144_regout\);

-- Location: LCCOMB_X43_Y9_N14
\REGFILE|MEM~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~340_combout\ = (\REGFILE|MEM~339_combout\ & ((\REGFILE|MEM~144_regout\) # ((!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~339_combout\ & (((\INSTREG|jump_out\(17) & \REGFILE|MEM~112_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~144_regout\,
	datab => \REGFILE|MEM~339_combout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~112_regout\,
	combout => \REGFILE|MEM~340_combout\);

-- Location: LCFF_X46_Y8_N9
\REGFILE|MEM~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~241_regout\);

-- Location: LCFF_X46_Y8_N23
\REGFILE|MEM~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~177_regout\);

-- Location: LCCOMB_X46_Y8_N8
\REGFILE|MEM~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~342_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~241_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~177_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~241_regout\,
	datad => \REGFILE|MEM~177_regout\,
	combout => \REGFILE|MEM~342_combout\);

-- Location: LCFF_X45_Y8_N13
\REGFILE|MEM~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~81_regout\);

-- Location: LCCOMB_X45_Y8_N12
\REGFILE|MEM~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~344_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~81_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~49_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~81_regout\,
	datad => \REGFILE|MEM~49_regout\,
	combout => \REGFILE|MEM~344_combout\);

-- Location: LCFF_X46_Y8_N5
\REGFILE|MEM~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~178feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~178_regout\);

-- Location: LCFF_X47_Y9_N19
\REGFILE|MEM~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~274feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~274_regout\);

-- Location: LCFF_X49_Y7_N9
\REGFILE|MEM~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~84feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~84_regout\);

-- Location: LCFF_X45_Y8_N9
\REGFILE|MEM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~52_regout\);

-- Location: LCCOMB_X45_Y8_N8
\REGFILE|MEM~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~359_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~84_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~52_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~52_regout\,
	datad => \REGFILE|MEM~84_regout\,
	combout => \REGFILE|MEM~359_combout\);

-- Location: LCCOMB_X47_Y8_N22
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

-- Location: LCFF_X49_Y7_N3
\REGFILE|MEM~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~213feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~213_regout\);

-- Location: LCFF_X44_Y8_N3
\REGFILE|MEM~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~245feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~245_regout\);

-- Location: LCFF_X46_Y8_N29
\REGFILE|MEM~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~181feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~181_regout\);

-- Location: LCCOMB_X44_Y8_N16
\REGFILE|MEM~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~362_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16)) # (\REGFILE|MEM~245_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~181_regout\ & (!\INSTREG|jump_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~181_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~245_regout\,
	combout => \REGFILE|MEM~362_combout\);

-- Location: LCFF_X42_Y10_N27
\REGFILE|MEM~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~277feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~277_regout\);

-- Location: LCCOMB_X44_Y8_N30
\REGFILE|MEM~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~363_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~362_combout\ & ((\REGFILE|MEM~277_regout\))) # (!\REGFILE|MEM~362_combout\ & (\REGFILE|MEM~213_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~213_regout\,
	datac => \REGFILE|MEM~362_combout\,
	datad => \REGFILE|MEM~277_regout\,
	combout => \REGFILE|MEM~363_combout\);

-- Location: LCFF_X46_Y8_N13
\REGFILE|MEM~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~248_regout\);

-- Location: LCFF_X46_Y8_N27
\REGFILE|MEM~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~184_regout\);

-- Location: LCCOMB_X46_Y8_N26
\REGFILE|MEM~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~377_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~248_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~184_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~184_regout\,
	datad => \REGFILE|MEM~248_regout\,
	combout => \REGFILE|MEM~377_combout\);

-- Location: LCCOMB_X42_Y9_N24
\REGFILE|MEM~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~378_combout\ = (\REGFILE|MEM~377_combout\ & (((\REGFILE|MEM~280_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~377_combout\ & (\REGFILE|MEM~216_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~216_regout\,
	datab => \REGFILE|MEM~280_regout\,
	datac => \REGFILE|MEM~377_combout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~378_combout\);

-- Location: LCFF_X49_Y15_N31
\REGFILE|MEM~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~88feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~88_regout\);

-- Location: LCFF_X49_Y15_N5
\REGFILE|MEM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~56feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~56_regout\);

-- Location: LCCOMB_X49_Y15_N10
\REGFILE|MEM~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~379_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~88_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~56_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~56_regout\,
	datad => \REGFILE|MEM~88_regout\,
	combout => \REGFILE|MEM~379_combout\);

-- Location: LCFF_X49_Y7_N29
\REGFILE|MEM~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~217_regout\);

-- Location: LCFF_X46_Y8_N25
\REGFILE|MEM~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~249_regout\);

-- Location: LCFF_X46_Y8_N11
\REGFILE|MEM~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~185_regout\);

-- Location: LCCOMB_X46_Y8_N10
\REGFILE|MEM~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~382_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~249_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~185_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~249_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~185_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~382_combout\);

-- Location: LCFF_X42_Y9_N27
\REGFILE|MEM~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~281_regout\);

-- Location: LCCOMB_X43_Y8_N12
\REGFILE|MEM~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~383_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~382_combout\ & (\REGFILE|MEM~281_regout\)) # (!\REGFILE|MEM~382_combout\ & ((\REGFILE|MEM~217_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~281_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~382_combout\,
	datad => \REGFILE|MEM~217_regout\,
	combout => \REGFILE|MEM~383_combout\);

-- Location: LCFF_X49_Y15_N21
\REGFILE|MEM~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~89_regout\);

-- Location: LCFF_X49_Y15_N7
\REGFILE|MEM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[21]~18_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~57_regout\);

-- Location: LCCOMB_X49_Y15_N6
\REGFILE|MEM~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~384_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~89_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~57_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~89_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~57_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~384_combout\);

-- Location: LCFF_X43_Y10_N5
\REGFILE|MEM~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~250_regout\);

-- Location: LCFF_X43_Y10_N23
\REGFILE|MEM~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~186_regout\);

-- Location: LCCOMB_X43_Y10_N22
\REGFILE|MEM~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~387_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~250_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~186_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~250_regout\,
	datac => \REGFILE|MEM~186_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~387_combout\);

-- Location: LCCOMB_X43_Y10_N14
\REGFILE|MEM~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~392_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~251_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~187_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~187_regout\,
	datad => \REGFILE|MEM~251_regout\,
	combout => \REGFILE|MEM~392_combout\);

-- Location: LCFF_X42_Y10_N17
\REGFILE|MEM~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~283_regout\);

-- Location: LCCOMB_X42_Y10_N10
\REGFILE|MEM~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~393_combout\ = (\REGFILE|MEM~392_combout\ & ((\REGFILE|MEM~283_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~392_combout\ & (((\INSTREG|jump_out\(16) & \REGFILE|MEM~219_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~283_regout\,
	datab => \REGFILE|MEM~392_combout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~219_regout\,
	combout => \REGFILE|MEM~393_combout\);

-- Location: LCCOMB_X49_Y15_N26
\REGFILE|MEM~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~394_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~91_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~59_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~59_regout\,
	datad => \REGFILE|MEM~91_regout\,
	combout => \REGFILE|MEM~394_combout\);

-- Location: LCCOMB_X49_Y9_N10
\REGFILE|MEM~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~399_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~92_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~60_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~60_regout\,
	datad => \REGFILE|MEM~92_regout\,
	combout => \REGFILE|MEM~399_combout\);

-- Location: LCCOMB_X48_Y13_N26
\REGFILE|MEM~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~400_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~399_combout\ & ((\REGFILE|MEM~156_regout\))) # (!\REGFILE|MEM~399_combout\ & (\REGFILE|MEM~124_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~124_regout\,
	datac => \REGFILE|MEM~399_combout\,
	datad => \REGFILE|MEM~156_regout\,
	combout => \REGFILE|MEM~400_combout\);

-- Location: LCFF_X49_Y9_N29
\REGFILE|MEM~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~93feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~93_regout\);

-- Location: LCFF_X49_Y9_N3
\REGFILE|MEM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~61feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~61_regout\);

-- Location: LCCOMB_X48_Y9_N2
\REGFILE|MEM~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~404_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~93_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~61_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~93_regout\,
	datad => \REGFILE|MEM~61_regout\,
	combout => \REGFILE|MEM~404_combout\);

-- Location: LCFF_X42_Y13_N13
\REGFILE|MEM~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~222feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~222_regout\);

-- Location: LCCOMB_X49_Y9_N14
\REGFILE|MEM~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~409_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~94_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~62_regout\,
	datad => \REGFILE|MEM~94_regout\,
	combout => \REGFILE|MEM~409_combout\);

-- Location: LCFF_X49_Y16_N5
\REGFILE|MEM~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~127feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~127_regout\);

-- Location: LCFF_X49_Y9_N17
\REGFILE|MEM~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~95_regout\);

-- Location: LCFF_X49_Y9_N19
\REGFILE|MEM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~63_regout\);

-- Location: LCCOMB_X49_Y9_N18
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

-- Location: LCFF_X49_Y14_N21
\REGFILE|MEM~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~159feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~159_regout\);

-- Location: LCCOMB_X46_Y16_N24
\REGFILE|MEM~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~415_combout\ = (\REGFILE|MEM~414_combout\ & ((\REGFILE|MEM~159_regout\) # ((!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~414_combout\ & (((\INSTREG|jump_out\(17) & \REGFILE|MEM~127_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~159_regout\,
	datab => \REGFILE|MEM~414_combout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~127_regout\,
	combout => \REGFILE|MEM~415_combout\);

-- Location: LCCOMB_X49_Y9_N30
\REGFILE|MEM~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~419_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~96_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~64_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~96_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~64_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~419_combout\);

-- Location: LCFF_X49_Y15_N17
\REGFILE|MEM~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~97_regout\);

-- Location: LCFF_X48_Y12_N13
\REGFILE|MEM~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~98_regout\);

-- Location: LCFF_X48_Y9_N15
\REGFILE|MEM~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~66_regout\);

-- Location: LCCOMB_X48_Y12_N18
\REGFILE|MEM~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~429_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~98_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~98_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~66_regout\,
	combout => \REGFILE|MEM~429_combout\);

-- Location: LCCOMB_X49_Y12_N22
\REGFILE|MEM~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~430_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~429_combout\ & (\REGFILE|MEM~162_regout\)) # (!\REGFILE|MEM~429_combout\ & ((\REGFILE|MEM~130_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~162_regout\,
	datac => \REGFILE|MEM~130_regout\,
	datad => \REGFILE|MEM~429_combout\,
	combout => \REGFILE|MEM~430_combout\);

-- Location: LCFF_X48_Y12_N29
\REGFILE|MEM~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~195_regout\);

-- Location: LCFF_X48_Y10_N7
\REGFILE|MEM~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~163_regout\);

-- Location: LCFF_X49_Y14_N13
\REGFILE|MEM~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~199feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~199_regout\);

-- Location: LCFF_X49_Y12_N31
\REGFILE|MEM~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~103feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~103_regout\);

-- Location: LCFF_X48_Y12_N23
\REGFILE|MEM~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~71_regout\);

-- Location: LCFF_X48_Y9_N1
\REGFILE|MEM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~39feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~39_regout\);

-- Location: LCCOMB_X48_Y12_N22
\REGFILE|MEM~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~439_combout\ = (\INSTREG|jump_out\(16) & (((\REGFILE|MEM~71_regout\) # (\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~39_regout\ & ((!\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~39_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~71_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~439_combout\);

-- Location: LCFF_X49_Y10_N11
\REGFILE|MEM~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[3]~29_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~135_regout\);

-- Location: LCCOMB_X48_Y12_N0
\REGFILE|MEM~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~440_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~439_combout\ & ((\REGFILE|MEM~135_regout\))) # (!\REGFILE|MEM~439_combout\ & (\REGFILE|MEM~103_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~439_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~103_regout\,
	datac => \REGFILE|MEM~135_regout\,
	datad => \REGFILE|MEM~439_combout\,
	combout => \REGFILE|MEM~440_combout\);

-- Location: LCFF_X46_Y9_N19
\REGFILE|MEM~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~197_regout\);

-- Location: LCFF_X48_Y9_N11
\REGFILE|MEM~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~229feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~229_regout\);

-- Location: LCFF_X46_Y9_N5
\REGFILE|MEM~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~165_regout\);

-- Location: LCCOMB_X46_Y9_N4
\REGFILE|MEM~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~442_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~229_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~165_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~165_regout\,
	datad => \REGFILE|MEM~229_regout\,
	combout => \REGFILE|MEM~442_combout\);

-- Location: LCFF_X48_Y14_N19
\REGFILE|MEM~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~261feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~261_regout\);

-- Location: LCCOMB_X46_Y9_N10
\REGFILE|MEM~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~443_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~442_combout\ & (\REGFILE|MEM~261_regout\)) # (!\REGFILE|MEM~442_combout\ & ((\REGFILE|MEM~197_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~261_regout\,
	datac => \REGFILE|MEM~442_combout\,
	datad => \REGFILE|MEM~197_regout\,
	combout => \REGFILE|MEM~443_combout\);

-- Location: LCFF_X47_Y9_N25
\REGFILE|MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~101feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~101_regout\);

-- Location: LCFF_X47_Y9_N21
\REGFILE|MEM~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~102feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~102_regout\);

-- Location: LCFF_X48_Y9_N17
\REGFILE|MEM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[2]~31_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~38_regout\);

-- Location: LCCOMB_X46_Y16_N14
\MUXRegDst|salida[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[2]~1_combout\ = (\rst~combout\ & (((\INSTREG|jump_out\(18))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~6_combout\ & (\INSTREG|jump_out\(13))) # (!\CONTROLU|Equal0~6_combout\ & ((\INSTREG|jump_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(13),
	datab => \rst~combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \CONTROLU|Equal0~6_combout\,
	combout => \MUXRegDst|salida[2]~1_combout\);

-- Location: LCCOMB_X47_Y11_N16
\PCwrite~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~5_combout\ = (!\ALUCOMP|Mux10~2_combout\ & (!\ALUCOMP|Mux12~2_combout\ & (!\ALUCOMP|Mux14~2_combout\ & !\ALUCOMP|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux10~2_combout\,
	datab => \ALUCOMP|Mux12~2_combout\,
	datac => \ALUCOMP|Mux14~2_combout\,
	datad => \ALUCOMP|Mux8~2_combout\,
	combout => \PCwrite~5_combout\);

-- Location: LCCOMB_X47_Y9_N10
\REGFILE|MEM~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~462_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~236_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~172_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~172_regout\,
	datad => \REGFILE|MEM~236_regout\,
	combout => \REGFILE|MEM~462_combout\);

-- Location: LCCOMB_X48_Y10_N22
\REGFILE|MEM~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~464_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~76_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~44_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~76_regout\,
	datac => \REGFILE|MEM~44_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~464_combout\);

-- Location: LCCOMB_X48_Y10_N0
\REGFILE|MEM~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~465_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~464_combout\ & ((\REGFILE|MEM~140_regout\))) # (!\REGFILE|MEM~464_combout\ & (\REGFILE|MEM~108_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~464_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~108_regout\,
	datac => \REGFILE|MEM~140_regout\,
	datad => \REGFILE|MEM~464_combout\,
	combout => \REGFILE|MEM~465_combout\);

-- Location: LCCOMB_X49_Y8_N16
\REGFILE|MEM~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~467_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~235_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~171_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~171_regout\,
	datac => \REGFILE|MEM~235_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~467_combout\);

-- Location: LCCOMB_X48_Y10_N10
\REGFILE|MEM~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~469_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~75_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~43_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~75_regout\,
	datac => \REGFILE|MEM~43_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~469_combout\);

-- Location: LCCOMB_X49_Y8_N6
\REGFILE|MEM~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~472_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~234_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~170_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~234_regout\,
	datac => \REGFILE|MEM~170_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~472_combout\);

-- Location: LCCOMB_X45_Y9_N8
\REGFILE|MEM~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~473_combout\ = (\REGFILE|MEM~472_combout\ & ((\REGFILE|MEM~266_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~472_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~202_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~472_combout\,
	datab => \REGFILE|MEM~266_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~202_regout\,
	combout => \REGFILE|MEM~473_combout\);

-- Location: LCCOMB_X48_Y10_N26
\REGFILE|MEM~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~474_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~74_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~42_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~74_regout\,
	datac => \REGFILE|MEM~42_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~474_combout\);

-- Location: LCCOMB_X48_Y10_N16
\REGFILE|MEM~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~475_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~474_combout\ & ((\REGFILE|MEM~138_regout\))) # (!\REGFILE|MEM~474_combout\ & (\REGFILE|MEM~106_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~106_regout\,
	datac => \REGFILE|MEM~138_regout\,
	datad => \REGFILE|MEM~474_combout\,
	combout => \REGFILE|MEM~475_combout\);

-- Location: LCCOMB_X45_Y9_N24
\REGFILE|MEM~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~476_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~473_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~475_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~473_combout\,
	datac => \REGFILE|MEM~475_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~476_combout\);

-- Location: LCCOMB_X49_Y8_N18
\REGFILE|MEM~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~482_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~232_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~168_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~232_regout\,
	datac => \REGFILE|MEM~168_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~482_combout\);

-- Location: LCCOMB_X47_Y10_N6
\REGFILE|MEM~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~483_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~482_combout\ & (\REGFILE|MEM~264_regout\)) # (!\REGFILE|MEM~482_combout\ & ((\REGFILE|MEM~200_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~264_regout\,
	datab => \REGFILE|MEM~200_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~482_combout\,
	combout => \REGFILE|MEM~483_combout\);

-- Location: LCCOMB_X48_Y9_N6
\REGFILE|MEM~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~487_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~231_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~167_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~231_regout\,
	datac => \REGFILE|MEM~167_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~487_combout\);

-- Location: LCCOMB_X47_Y12_N24
\REGFILE|MEM~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~488_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~487_combout\ & ((\REGFILE|MEM~263_regout\))) # (!\REGFILE|MEM~487_combout\ & (\REGFILE|MEM~199_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~487_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~199_regout\,
	datab => \REGFILE|MEM~263_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~487_combout\,
	combout => \REGFILE|MEM~488_combout\);

-- Location: LCCOMB_X48_Y12_N16
\REGFILE|MEM~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~489_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~71_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~39_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~39_regout\,
	datab => \REGFILE|MEM~71_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~489_combout\);

-- Location: LCCOMB_X48_Y12_N6
\REGFILE|MEM~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~490_combout\ = (\REGFILE|MEM~489_combout\ & (((\REGFILE|MEM~135_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~489_combout\ & (\REGFILE|MEM~103_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~489_combout\,
	datab => \REGFILE|MEM~103_regout\,
	datac => \REGFILE|MEM~135_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~490_combout\);

-- Location: LCCOMB_X47_Y12_N6
\REGFILE|MEM~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~491_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~488_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~490_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~488_combout\,
	datab => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~490_combout\,
	combout => \REGFILE|MEM~491_combout\);

-- Location: LCCOMB_X47_Y12_N22
\REGFILE|MEM~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~492_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~230_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~166_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~230_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~166_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~492_combout\);

-- Location: LCCOMB_X48_Y14_N24
\REGFILE|MEM~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~493_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~492_combout\ & (\REGFILE|MEM~262_regout\)) # (!\REGFILE|MEM~492_combout\ & ((\REGFILE|MEM~198_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~492_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~492_combout\,
	datac => \REGFILE|MEM~262_regout\,
	datad => \REGFILE|MEM~198_regout\,
	combout => \REGFILE|MEM~493_combout\);

-- Location: LCCOMB_X47_Y9_N14
\REGFILE|MEM~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~494_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~70_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~38_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~70_regout\,
	combout => \REGFILE|MEM~494_combout\);

-- Location: LCCOMB_X47_Y9_N12
\REGFILE|MEM~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~495_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~494_combout\ & ((!\REGFILE|MEM~134_regout\))) # (!\REGFILE|MEM~494_combout\ & (\REGFILE|MEM~102_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~102_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~494_combout\,
	datad => \REGFILE|MEM~134_regout\,
	combout => \REGFILE|MEM~495_combout\);

-- Location: LCCOMB_X45_Y14_N18
\REGFILE|MEM~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~496_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~493_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~495_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~493_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~495_combout\,
	combout => \REGFILE|MEM~496_combout\);

-- Location: LCCOMB_X46_Y9_N30
\REGFILE|MEM~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~497_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~229_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~165_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~229_regout\,
	datab => \REGFILE|MEM~165_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~497_combout\);

-- Location: LCCOMB_X46_Y9_N24
\REGFILE|MEM~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~498_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~497_combout\ & ((\REGFILE|MEM~261_regout\))) # (!\REGFILE|MEM~497_combout\ & (\REGFILE|MEM~197_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~497_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~197_regout\,
	datac => \REGFILE|MEM~261_regout\,
	datad => \REGFILE|MEM~497_combout\,
	combout => \REGFILE|MEM~498_combout\);

-- Location: LCCOMB_X49_Y9_N22
\REGFILE|MEM~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~499_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~69_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~37_regout\,
	datad => \REGFILE|MEM~69_regout\,
	combout => \REGFILE|MEM~499_combout\);

-- Location: LCCOMB_X47_Y9_N30
\REGFILE|MEM~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~500_combout\ = (\REGFILE|MEM~499_combout\ & (((!\REGFILE|MEM~133_regout\)) # (!\INSTREG|jump_out\(22)))) # (!\REGFILE|MEM~499_combout\ & (\INSTREG|jump_out\(22) & (\REGFILE|MEM~101_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~499_combout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~101_regout\,
	datad => \REGFILE|MEM~133_regout\,
	combout => \REGFILE|MEM~500_combout\);

-- Location: LCCOMB_X46_Y10_N16
\REGFILE|MEM~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~501_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~498_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~500_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~498_combout\,
	datab => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~500_combout\,
	combout => \REGFILE|MEM~501_combout\);

-- Location: LCCOMB_X48_Y12_N12
\REGFILE|MEM~514\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~514_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~98_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~98_regout\,
	datad => \REGFILE|MEM~66_regout\,
	combout => \REGFILE|MEM~514_combout\);

-- Location: LCCOMB_X49_Y15_N16
\REGFILE|MEM~519\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~519_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~97_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~65_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~97_regout\,
	datad => \REGFILE|MEM~65_regout\,
	combout => \REGFILE|MEM~519_combout\);

-- Location: LCCOMB_X49_Y9_N16
\REGFILE|MEM~529\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~529_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~95_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~63_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~95_regout\,
	datad => \REGFILE|MEM~63_regout\,
	combout => \REGFILE|MEM~529_combout\);

-- Location: LCCOMB_X46_Y16_N12
\REGFILE|MEM~530\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~530_combout\ = (\REGFILE|MEM~529_combout\ & ((\REGFILE|MEM~159_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~529_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~127_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~159_regout\,
	datab => \REGFILE|MEM~529_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~127_regout\,
	combout => \REGFILE|MEM~530_combout\);

-- Location: LCCOMB_X48_Y9_N18
\REGFILE|MEM~539\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~539_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~93_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~61_regout\)))))

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
	combout => \REGFILE|MEM~539_combout\);

-- Location: LCCOMB_X48_Y13_N12
\REGFILE|MEM~540\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~540_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~539_combout\ & ((\REGFILE|MEM~157_regout\))) # (!\REGFILE|MEM~539_combout\ & (\REGFILE|MEM~125_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~125_regout\,
	datac => \REGFILE|MEM~539_combout\,
	datad => \REGFILE|MEM~157_regout\,
	combout => \REGFILE|MEM~540_combout\);

-- Location: LCCOMB_X43_Y10_N4
\REGFILE|MEM~552\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~552_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~250_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~186_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~250_regout\,
	datad => \REGFILE|MEM~186_regout\,
	combout => \REGFILE|MEM~552_combout\);

-- Location: LCCOMB_X42_Y9_N30
\REGFILE|MEM~553\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~553_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~552_combout\ & ((\REGFILE|MEM~282_regout\))) # (!\REGFILE|MEM~552_combout\ & (\REGFILE|MEM~218_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~218_regout\,
	datab => \REGFILE|MEM~282_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~552_combout\,
	combout => \REGFILE|MEM~553_combout\);

-- Location: LCCOMB_X49_Y15_N28
\REGFILE|MEM~554\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~554_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~90_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~58_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~58_regout\,
	datac => \REGFILE|MEM~90_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~554_combout\);

-- Location: LCCOMB_X46_Y8_N24
\REGFILE|MEM~557\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~557_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~249_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~185_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~249_regout\,
	datad => \REGFILE|MEM~185_regout\,
	combout => \REGFILE|MEM~557_combout\);

-- Location: LCCOMB_X43_Y8_N16
\REGFILE|MEM~558\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~558_combout\ = (\REGFILE|MEM~557_combout\ & ((\REGFILE|MEM~281_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~557_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~217_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~281_regout\,
	datab => \REGFILE|MEM~557_combout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~217_regout\,
	combout => \REGFILE|MEM~558_combout\);

-- Location: LCCOMB_X49_Y15_N20
\REGFILE|MEM~559\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~559_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~89_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~57_regout\ & ((!\INSTREG|jump_out\(22)))))

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
	combout => \REGFILE|MEM~559_combout\);

-- Location: LCCOMB_X45_Y8_N18
\REGFILE|MEM~560\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~560_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~559_combout\ & ((\REGFILE|MEM~153_regout\))) # (!\REGFILE|MEM~559_combout\ & (\REGFILE|MEM~121_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~121_regout\,
	datac => \REGFILE|MEM~559_combout\,
	datad => \REGFILE|MEM~153_regout\,
	combout => \REGFILE|MEM~560_combout\);

-- Location: LCCOMB_X44_Y10_N10
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

-- Location: LCCOMB_X46_Y8_N12
\REGFILE|MEM~562\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~562_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~248_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~184_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~184_regout\,
	datac => \REGFILE|MEM~248_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~562_combout\);

-- Location: LCCOMB_X49_Y15_N8
\REGFILE|MEM~564\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~564_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~88_regout\) # ((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~56_regout\ & !\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~88_regout\,
	datac => \REGFILE|MEM~56_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~564_combout\);

-- Location: LCCOMB_X47_Y8_N0
\REGFILE|MEM~567\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~567_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~247_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~183_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~183_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~247_regout\,
	combout => \REGFILE|MEM~567_combout\);

-- Location: LCCOMB_X46_Y9_N22
\REGFILE|MEM~568\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~568_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~567_combout\ & ((\REGFILE|MEM~279_regout\))) # (!\REGFILE|MEM~567_combout\ & (\REGFILE|MEM~215_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~567_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~567_combout\,
	datac => \REGFILE|MEM~215_regout\,
	datad => \REGFILE|MEM~279_regout\,
	combout => \REGFILE|MEM~568_combout\);

-- Location: LCCOMB_X49_Y15_N22
\REGFILE|MEM~569\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~569_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~87_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~55_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~87_regout\,
	datad => \REGFILE|MEM~55_regout\,
	combout => \REGFILE|MEM~569_combout\);

-- Location: LCCOMB_X46_Y15_N18
\REGFILE|MEM~570\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~570_combout\ = (\REGFILE|MEM~569_combout\ & (((\REGFILE|MEM~151_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~569_combout\ & (\REGFILE|MEM~119_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~569_combout\,
	datab => \REGFILE|MEM~119_regout\,
	datac => \REGFILE|MEM~151_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~570_combout\);

-- Location: LCCOMB_X46_Y15_N12
\REGFILE|MEM~571\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~571_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~568_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~570_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~568_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~570_combout\,
	combout => \REGFILE|MEM~571_combout\);

-- Location: LCCOMB_X44_Y8_N26
\REGFILE|MEM~577\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~577_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~245_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~181_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~181_regout\,
	datad => \REGFILE|MEM~245_regout\,
	combout => \REGFILE|MEM~577_combout\);

-- Location: LCCOMB_X44_Y8_N24
\REGFILE|MEM~578\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~578_combout\ = (\REGFILE|MEM~577_combout\ & ((\REGFILE|MEM~277_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~577_combout\ & (((\REGFILE|MEM~213_regout\ & \INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~277_regout\,
	datab => \REGFILE|MEM~577_combout\,
	datac => \REGFILE|MEM~213_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~578_combout\);

-- Location: LCCOMB_X45_Y8_N6
\REGFILE|MEM~579\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~579_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~85_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~53_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~53_regout\,
	datac => \REGFILE|MEM~85_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~579_combout\);

-- Location: LCCOMB_X44_Y8_N22
\REGFILE|MEM~580\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~580_combout\ = (\REGFILE|MEM~579_combout\ & ((\REGFILE|MEM~149_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~579_combout\ & (((\REGFILE|MEM~117_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~579_combout\,
	datab => \REGFILE|MEM~149_regout\,
	datac => \REGFILE|MEM~117_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~580_combout\);

-- Location: LCCOMB_X44_Y10_N26
\REGFILE|MEM~581\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~581_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~578_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~580_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~578_combout\,
	datab => \REGFILE|MEM~580_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~581_combout\);

-- Location: LCCOMB_X45_Y8_N24
\REGFILE|MEM~584\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~584_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~84_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~52_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~52_regout\,
	datad => \REGFILE|MEM~84_regout\,
	combout => \REGFILE|MEM~584_combout\);

-- Location: LCCOMB_X44_Y8_N20
\REGFILE|MEM~587\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~587_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~243_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~179_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~179_regout\,
	datad => \REGFILE|MEM~243_regout\,
	combout => \REGFILE|MEM~587_combout\);

-- Location: LCCOMB_X45_Y8_N0
\REGFILE|MEM~589\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~589_combout\ = (\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22)) # ((\REGFILE|MEM~83_regout\)))) # (!\INSTREG|jump_out\(21) & (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~51_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~83_regout\,
	datad => \REGFILE|MEM~51_regout\,
	combout => \REGFILE|MEM~589_combout\);

-- Location: LCCOMB_X46_Y15_N20
\REGFILE|MEM~590\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~590_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~589_combout\ & (\REGFILE|MEM~147_regout\)) # (!\REGFILE|MEM~589_combout\ & ((\REGFILE|MEM~115_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~589_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~147_regout\,
	datac => \REGFILE|MEM~589_combout\,
	datad => \REGFILE|MEM~115_regout\,
	combout => \REGFILE|MEM~590_combout\);

-- Location: LCCOMB_X45_Y8_N2
\REGFILE|MEM~592\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~592_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21)) # (\REGFILE|MEM~242_regout\)))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~178_regout\ & (!\INSTREG|jump_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~178_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~242_regout\,
	combout => \REGFILE|MEM~592_combout\);

-- Location: LCCOMB_X43_Y8_N18
\REGFILE|MEM~593\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~593_combout\ = (\REGFILE|MEM~592_combout\ & ((\REGFILE|MEM~274_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~592_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~210_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~274_regout\,
	datab => \REGFILE|MEM~592_combout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~210_regout\,
	combout => \REGFILE|MEM~593_combout\);

-- Location: LCCOMB_X45_Y8_N4
\REGFILE|MEM~594\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~594_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~82_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~50_regout\))))

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
	combout => \REGFILE|MEM~594_combout\);

-- Location: LCCOMB_X47_Y8_N20
\REGFILE|MEM~595\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~595_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~594_combout\ & (\REGFILE|MEM~146_regout\)) # (!\REGFILE|MEM~594_combout\ & ((\REGFILE|MEM~114_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~594_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~146_regout\,
	datac => \REGFILE|MEM~114_regout\,
	datad => \REGFILE|MEM~594_combout\,
	combout => \REGFILE|MEM~595_combout\);

-- Location: LCCOMB_X43_Y8_N4
\REGFILE|MEM~596\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~596_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~593_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~595_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~593_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~595_combout\,
	combout => \REGFILE|MEM~596_combout\);

-- Location: LCCOMB_X46_Y8_N22
\REGFILE|MEM~597\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~597_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~241_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~177_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~241_regout\,
	datac => \REGFILE|MEM~177_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~597_combout\);

-- Location: LCCOMB_X49_Y8_N10
\REGFILE|MEM~612\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~612_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~238_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~174_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~238_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~174_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~612_combout\);

-- Location: LCCOMB_X44_Y9_N26
\REGFILE|MEM~613\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~613_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~612_combout\ & ((\REGFILE|MEM~270_regout\))) # (!\REGFILE|MEM~612_combout\ & (\REGFILE|MEM~206_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~612_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~206_regout\,
	datac => \REGFILE|MEM~612_combout\,
	datad => \REGFILE|MEM~270_regout\,
	combout => \REGFILE|MEM~613_combout\);

-- Location: LCCOMB_X45_Y8_N16
\REGFILE|MEM~614\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~614_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~78_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~46_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~46_regout\,
	datac => \REGFILE|MEM~78_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~614_combout\);

-- Location: LCCOMB_X43_Y9_N8
\REGFILE|MEM~615\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~615_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~614_combout\ & ((\REGFILE|MEM~142_regout\))) # (!\REGFILE|MEM~614_combout\ & (\REGFILE|MEM~110_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~614_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~110_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~614_combout\,
	datad => \REGFILE|MEM~142_regout\,
	combout => \REGFILE|MEM~615_combout\);

-- Location: LCCOMB_X44_Y9_N14
\REGFILE|MEM~616\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~616_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~613_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~615_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~613_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~615_combout\,
	combout => \REGFILE|MEM~616_combout\);

-- Location: LCCOMB_X49_Y8_N26
\REGFILE|MEM~617\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~617_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~237_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~173_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~173_regout\,
	datad => \REGFILE|MEM~237_regout\,
	combout => \REGFILE|MEM~617_combout\);

-- Location: LCCOMB_X47_Y10_N20
\REGFILE|MEM~618\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~618_combout\ = (\REGFILE|MEM~617_combout\ & (((\REGFILE|MEM~269_regout\)) # (!\INSTREG|jump_out\(21)))) # (!\REGFILE|MEM~617_combout\ & (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~205_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~617_combout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~269_regout\,
	datad => \REGFILE|MEM~205_regout\,
	combout => \REGFILE|MEM~618_combout\);

-- Location: LCCOMB_X48_Y10_N18
\REGFILE|MEM~619\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~619_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~77_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~45_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~45_regout\,
	datad => \REGFILE|MEM~77_regout\,
	combout => \REGFILE|MEM~619_combout\);

-- Location: LCCOMB_X48_Y10_N20
\REGFILE|MEM~620\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~620_combout\ = (\REGFILE|MEM~619_combout\ & (((\REGFILE|MEM~141_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~619_combout\ & (\REGFILE|MEM~109_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~109_regout\,
	datab => \REGFILE|MEM~619_combout\,
	datac => \REGFILE|MEM~141_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~620_combout\);

-- Location: LCCOMB_X45_Y10_N20
\REGFILE|MEM~621\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~621_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~618_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~620_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~620_combout\,
	datad => \REGFILE|MEM~618_combout\,
	combout => \REGFILE|MEM~621_combout\);

-- Location: LCFF_X49_Y13_N7
\INSTREG|op_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(31),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(5));

-- Location: LCFF_X48_Y14_N1
\MDR|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(9));

-- Location: LCFF_X44_Y10_N21
\MDR|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(11));

-- Location: LCFF_X44_Y9_N25
\MDR|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(14));

-- Location: LCFF_X44_Y10_N7
\MDR|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(15));

-- Location: LCFF_X42_Y11_N7
\MDR|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(16));

-- Location: LCFF_X42_Y11_N9
\MDR|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(19));

-- Location: LCFF_X42_Y14_N7
\MDR|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(21));

-- Location: LCFF_X48_Y14_N15
\MDR|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(23));

-- Location: LCFF_X49_Y10_N27
\MDR|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(26));

-- Location: LCFF_X49_Y10_N5
\MDR|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(30));

-- Location: LCFF_X49_Y10_N7
\MDR|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(3));

-- Location: LCCOMB_X26_Y11_N28
\KEYBOARD|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \KEYBOARD|Equal6~0_combout\ = (!\key~combout\(4) & (!\key~combout\(3) & !\key~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datac => \key~combout\(3),
	datad => \key~combout\(1),
	combout => \KEYBOARD|Equal6~0_combout\);

-- Location: LCCOMB_X26_Y11_N18
\KEYBOARD|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \KEYBOARD|Equal0~0_combout\ = (\key~combout\(8) & (!\key~combout\(7) & (!\key~combout\(6) & !\key~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(8),
	datab => \key~combout\(7),
	datac => \key~combout\(6),
	datad => \key~combout\(5),
	combout => \KEYBOARD|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y11_N20
\KEYBOARD|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \KEYBOARD|Equal0~1_combout\ = (!\key~combout\(0) & (\KEYBOARD|Equal6~0_combout\ & (\KEYBOARD|Equal0~0_combout\ & !\key~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \KEYBOARD|Equal6~0_combout\,
	datac => \KEYBOARD|Equal0~0_combout\,
	datad => \key~combout\(2),
	combout => \KEYBOARD|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y11_N26
\MUXREAD|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~0_combout\ = (!\key~combout\(0) & (!\key~combout\(2) & (!\key~combout\(8) & \KEYBOARD|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(2),
	datac => \key~combout\(8),
	datad => \KEYBOARD|Equal6~0_combout\,
	combout => \MUXREAD|Mux28~0_combout\);

-- Location: LCFF_X40_Y13_N7
\MEM|MEM~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~276_regout\);

-- Location: LCFF_X40_Y12_N11
\MEM|MEM~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~116_regout\);

-- Location: LCFF_X44_Y10_N19
\MEM|MEM~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~460_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~84_regout\);

-- Location: LCFF_X40_Y10_N17
\MEM|MEM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~461_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~52_regout\);

-- Location: LCCOMB_X40_Y10_N2
\MEM|MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~294_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~84_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~52_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~52_regout\,
	datab => \MEM|MEM~84_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~294_combout\);

-- Location: LCFF_X39_Y12_N13
\MEM|MEM~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~148_regout\);

-- Location: LCCOMB_X40_Y12_N10
\MEM|MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~295_combout\ = (\MEM|MEM~294_combout\ & ((\MEM|MEM~148_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~294_combout\ & (((\MEM|MEM~116_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~148_regout\,
	datab => \MEM|MEM~294_combout\,
	datac => \MEM|MEM~116_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~295_combout\);

-- Location: LCFF_X40_Y14_N5
\MEM|MEM~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~245_regout\);

-- Location: LCFF_X40_Y13_N15
\MEM|MEM~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~277_regout\);

-- Location: LCFF_X39_Y12_N15
\MEM|MEM~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~149feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~149_regout\);

-- Location: LCFF_X40_Y14_N9
\MEM|MEM~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~246_regout\);

-- Location: LCFF_X40_Y13_N11
\MEM|MEM~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~278_regout\);

-- Location: LCFF_X40_Y11_N25
\MEM|MEM~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~86_regout\);

-- Location: LCFF_X40_Y11_N15
\MEM|MEM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~54_regout\);

-- Location: LCCOMB_X40_Y11_N14
\MEM|MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~304_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~86_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~54_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~86_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~54_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~304_combout\);

-- Location: LCFF_X40_Y14_N29
\MEM|MEM~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~229_regout\);

-- Location: LCFF_X39_Y9_N11
\MEM|MEM~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~261_regout\);

-- Location: LCFF_X40_Y12_N13
\MEM|MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~101_regout\);

-- Location: LCFF_X40_Y11_N5
\MEM|MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~69_regout\);

-- Location: LCFF_X40_Y11_N3
\MEM|MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~37_regout\);

-- Location: LCCOMB_X40_Y11_N2
\MEM|MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~309_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~69_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~37_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~69_regout\,
	datac => \MEM|MEM~37_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~309_combout\);

-- Location: LCFF_X39_Y12_N27
\MEM|MEM~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~133_regout\);

-- Location: LCCOMB_X40_Y12_N12
\MEM|MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~310_combout\ = (\MEM|MEM~309_combout\ & ((\MEM|MEM~133_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~309_combout\ & (((\MEM|MEM~101_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~309_combout\,
	datab => \MEM|MEM~133_regout\,
	datac => \MEM|MEM~101_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~310_combout\);

-- Location: LCFF_X40_Y14_N21
\MEM|MEM~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~236_regout\);

-- Location: LCFF_X40_Y14_N27
\MEM|MEM~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~172_regout\);

-- Location: LCCOMB_X40_Y14_N26
\MEM|MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~312_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~236_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~172_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~236_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~172_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~312_combout\);

-- Location: LCFF_X40_Y11_N1
\MEM|MEM~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~76_regout\);

-- Location: LCFF_X40_Y11_N19
\MEM|MEM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~462_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~44_regout\);

-- Location: LCCOMB_X40_Y11_N0
\MEM|MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~314_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~76_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~44_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~44_regout\,
	datac => \MEM|MEM~76_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~314_combout\);

-- Location: LCFF_X40_Y14_N1
\MEM|MEM~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~235_regout\);

-- Location: LCFF_X40_Y14_N7
\MEM|MEM~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~171_regout\);

-- Location: LCCOMB_X40_Y14_N6
\MEM|MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~317_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~235_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~171_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~235_regout\,
	datac => \MEM|MEM~171_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~317_combout\);

-- Location: LCFF_X38_Y11_N31
\MEM|MEM~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~139feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~139_regout\);

-- Location: LCFF_X38_Y14_N15
\MEM|MEM~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~266feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~266_regout\);

-- Location: LCFF_X40_Y11_N29
\MEM|MEM~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~74_regout\);

-- Location: LCFF_X40_Y11_N11
\MEM|MEM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~42_regout\);

-- Location: LCCOMB_X40_Y11_N10
\MEM|MEM~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~324_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~74_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~42_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~74_regout\,
	datac => \MEM|MEM~42_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~324_combout\);

-- Location: LCFF_X37_Y13_N11
\MEM|MEM~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~265_regout\);

-- Location: LCFF_X38_Y11_N5
\MEM|MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~105_regout\);

-- Location: LCFF_X37_Y10_N1
\MEM|MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~73_regout\);

-- Location: LCFF_X37_Y10_N23
\MEM|MEM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~41_regout\);

-- Location: LCCOMB_X37_Y10_N22
\MEM|MEM~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~329_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~73_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~41_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~73_regout\,
	datac => \MEM|MEM~41_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~329_combout\);

-- Location: LCFF_X38_Y11_N15
\MEM|MEM~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~137_regout\);

-- Location: LCCOMB_X38_Y11_N4
\MEM|MEM~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~330_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~329_combout\ & (\MEM|MEM~137_regout\)) # (!\MEM|MEM~329_combout\ & ((\MEM|MEM~105_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~137_regout\,
	datac => \MEM|MEM~105_regout\,
	datad => \MEM|MEM~329_combout\,
	combout => \MEM|MEM~330_combout\);

-- Location: LCFF_X38_Y14_N7
\MEM|MEM~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~264_regout\);

-- Location: LCFF_X38_Y11_N7
\MEM|MEM~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~136_regout\);

-- Location: LCFF_X39_Y9_N7
\MEM|MEM~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~263_regout\);

-- Location: LCFF_X38_Y11_N13
\MEM|MEM~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~135feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~135_regout\);

-- Location: LCFF_X39_Y13_N17
\MEM|MEM~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~230_regout\);

-- Location: LCFF_X39_Y13_N27
\MEM|MEM~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~166_regout\);

-- Location: LCCOMB_X39_Y13_N26
\MEM|MEM~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~342_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~230_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~166_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~230_regout\,
	datac => \MEM|MEM~166_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~342_combout\);

-- Location: LCFF_X39_Y10_N13
\MEM|MEM~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~70_regout\);

-- Location: LCFF_X39_Y10_N15
\MEM|MEM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~38_regout\);

-- Location: LCCOMB_X39_Y10_N14
\MEM|MEM~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~344_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\) # ((\MEM|MEM~70_regout\)))) # (!\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~38_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~38_regout\,
	datad => \MEM|MEM~70_regout\,
	combout => \MEM|MEM~344_combout\);

-- Location: LCFF_X42_Y10_N1
\MEM|MEM~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~260_regout\);

-- Location: LCFF_X38_Y10_N21
\MEM|MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~100_regout\);

-- Location: LCFF_X39_Y10_N17
\MEM|MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~68_regout\);

-- Location: LCFF_X39_Y10_N7
\MEM|MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~36_regout\);

-- Location: LCCOMB_X39_Y10_N6
\MEM|MEM~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~349_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~68_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~36_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~68_regout\,
	datac => \MEM|MEM~36_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~349_combout\);

-- Location: LCFF_X38_Y10_N31
\MEM|MEM~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~132_regout\);

-- Location: LCCOMB_X38_Y10_N20
\MEM|MEM~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~350_combout\ = (\MEM|MEM~349_combout\ & (((\MEM|MEM~132_regout\)) # (!\MUXPC|salida[1]~1_combout\))) # (!\MEM|MEM~349_combout\ & (\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~100_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~349_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~100_regout\,
	datad => \MEM|MEM~132_regout\,
	combout => \MEM|MEM~350_combout\);

-- Location: LCFF_X38_Y14_N11
\MEM|MEM~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~275_regout\);

-- Location: LCFF_X39_Y10_N1
\MEM|MEM~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~83_regout\);

-- Location: LCFF_X39_Y10_N3
\MEM|MEM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~51_regout\);

-- Location: LCCOMB_X39_Y10_N2
\MEM|MEM~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~354_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\) # ((\MEM|MEM~83_regout\)))) # (!\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~51_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~51_regout\,
	datad => \MEM|MEM~83_regout\,
	combout => \MEM|MEM~354_combout\);

-- Location: LCFF_X42_Y10_N3
\MEM|MEM~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~274feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~274_regout\);

-- Location: LCFF_X38_Y10_N7
\MEM|MEM~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~146_regout\);

-- Location: LCFF_X37_Y13_N29
\MEM|MEM~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~209_regout\);

-- Location: LCFF_X36_Y13_N25
\MEM|MEM~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~241_regout\);

-- Location: LCFF_X36_Y13_N31
\MEM|MEM~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~177_regout\);

-- Location: LCCOMB_X36_Y13_N30
\MEM|MEM~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~362_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~241_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~177_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~241_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~177_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~362_combout\);

-- Location: LCFF_X37_Y13_N15
\MEM|MEM~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~273_regout\);

-- Location: LCCOMB_X37_Y13_N28
\MEM|MEM~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~363_combout\ = (\MEM|MEM~362_combout\ & ((\MEM|MEM~273_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~362_combout\ & (((\MEM|MEM~209_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~362_combout\,
	datab => \MEM|MEM~273_regout\,
	datac => \MEM|MEM~209_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~363_combout\);

-- Location: LCFF_X37_Y10_N17
\MEM|MEM~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~81_regout\);

-- Location: LCFF_X37_Y10_N3
\MEM|MEM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~49_regout\);

-- Location: LCCOMB_X37_Y10_N2
\MEM|MEM~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~364_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~81_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~49_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~81_regout\,
	datac => \MEM|MEM~49_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~364_combout\);

-- Location: LCFF_X37_Y13_N13
\MEM|MEM~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~208_regout\);

-- Location: LCFF_X36_Y13_N13
\MEM|MEM~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~240_regout\);

-- Location: LCFF_X36_Y13_N23
\MEM|MEM~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~176_regout\);

-- Location: LCCOMB_X36_Y13_N22
\MEM|MEM~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~367_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~240_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~240_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~176_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~367_combout\);

-- Location: LCFF_X37_Y13_N31
\MEM|MEM~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~272_regout\);

-- Location: LCCOMB_X37_Y13_N12
\MEM|MEM~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~368_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~367_combout\ & (\MEM|MEM~272_regout\)) # (!\MEM|MEM~367_combout\ & ((\MEM|MEM~208_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~272_regout\,
	datac => \MEM|MEM~208_regout\,
	datad => \MEM|MEM~367_combout\,
	combout => \MEM|MEM~368_combout\);

-- Location: LCFF_X37_Y10_N5
\MEM|MEM~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~80_regout\);

-- Location: LCFF_X37_Y10_N15
\MEM|MEM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~48_regout\);

-- Location: LCCOMB_X37_Y10_N14
\MEM|MEM~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~369_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~80_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~48_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~80_regout\,
	datac => \MEM|MEM~48_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~369_combout\);

-- Location: LCFF_X36_Y13_N21
\MEM|MEM~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~239_regout\);

-- Location: LCFF_X36_Y13_N11
\MEM|MEM~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~175_regout\);

-- Location: LCCOMB_X36_Y13_N10
\MEM|MEM~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~372_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~239_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~175_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~239_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~175_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~372_combout\);

-- Location: LCFF_X38_Y11_N25
\MEM|MEM~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~143_regout\);

-- Location: LCFF_X36_Y13_N17
\MEM|MEM~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~238_regout\);

-- Location: LCFF_X36_Y13_N3
\MEM|MEM~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~174_regout\);

-- Location: LCCOMB_X36_Y13_N2
\MEM|MEM~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~377_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~238_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~174_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~238_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~174_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~377_combout\);

-- Location: LCFF_X37_Y10_N13
\MEM|MEM~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~78_regout\);

-- Location: LCFF_X37_Y10_N31
\MEM|MEM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~46_regout\);

-- Location: LCCOMB_X37_Y10_N30
\MEM|MEM~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~379_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~78_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~46_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~78_regout\,
	datac => \MEM|MEM~46_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~379_combout\);

-- Location: LCFF_X36_Y13_N9
\MEM|MEM~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~237_regout\);

-- Location: LCFF_X42_Y10_N21
\MEM|MEM~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~269_regout\);

-- Location: LCFF_X40_Y10_N21
\MEM|MEM~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~463_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~77_regout\);

-- Location: LCFF_X39_Y10_N19
\MEM|MEM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~464_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~45_regout\);

-- Location: LCCOMB_X40_Y10_N26
\MEM|MEM~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~384_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~77_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~45_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~77_regout\,
	datab => \MEM|MEM~45_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~384_combout\);

-- Location: LCCOMB_X48_Y14_N0
\MUXREAD|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux22~0_combout\ = (\MUXREAD|Mux27~3_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\))) # (!\MUXREAD|Mux27~3_combout\ & (\MEM|dataOut\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(9),
	datab => \MUXREAD|Mux27~3_combout\,
	datad => \ADDRDEC|addressSel[1]~1_combout\,
	combout => \MUXREAD|Mux22~0_combout\);

-- Location: LCCOMB_X44_Y10_N20
\MUXREAD|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux20~0_combout\ = (\MEM|dataOut\(11) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(11),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux20~0_combout\);

-- Location: LCCOMB_X44_Y9_N24
\MUXREAD|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux17~0_combout\ = (\MEM|dataOut\(14) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(14),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux17~0_combout\);

-- Location: LCCOMB_X44_Y10_N6
\MUXREAD|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux16~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(15),
	combout => \MUXREAD|Mux16~0_combout\);

-- Location: LCCOMB_X42_Y11_N6
\MUXREAD|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux15~0_combout\ = (\MUXREAD|Mux27~3_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\))) # (!\MUXREAD|Mux27~3_combout\ & (\MEM|dataOut\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux27~3_combout\,
	datab => \MEM|dataOut\(16),
	datad => \ADDRDEC|addressSel[1]~1_combout\,
	combout => \MUXREAD|Mux15~0_combout\);

-- Location: LCCOMB_X42_Y11_N8
\MUXREAD|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux12~0_combout\ = (\MEM|dataOut\(19) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(19),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux12~0_combout\);

-- Location: LCCOMB_X42_Y14_N6
\MUXREAD|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux10~0_combout\ = (\MUXREAD|Mux27~3_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\))) # (!\MUXREAD|Mux27~3_combout\ & (\MEM|dataOut\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(21),
	datac => \MUXREAD|Mux27~3_combout\,
	datad => \ADDRDEC|addressSel[1]~1_combout\,
	combout => \MUXREAD|Mux10~0_combout\);

-- Location: LCCOMB_X48_Y14_N14
\MUXREAD|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux8~0_combout\ = (\MUXREAD|Mux27~3_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\))) # (!\MUXREAD|Mux27~3_combout\ & (\MEM|dataOut\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux27~3_combout\,
	datab => \MEM|dataOut\(23),
	datad => \ADDRDEC|addressSel[1]~1_combout\,
	combout => \MUXREAD|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y10_N26
\MUXREAD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux5~0_combout\ = (\MUXREAD|Mux27~3_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\))) # (!\MUXREAD|Mux27~3_combout\ & (\MEM|dataOut\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(26),
	datac => \ADDRDEC|addressSel[1]~1_combout\,
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y10_N4
\MUXREAD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux1~0_combout\ = (\MEM|dataOut\(30) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(30),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\MUXREAD|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~1_combout\ = (!\key~combout\(5) & (\key~combout\(7) & (!\key~combout\(6) & \MUXREAD|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \key~combout\(7),
	datac => \key~combout\(6),
	datad => \MUXREAD|Mux28~0_combout\,
	combout => \MUXREAD|Mux28~1_combout\);

-- Location: LCCOMB_X42_Y11_N16
\MUXREAD|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~2_combout\ = (\ADDRDEC|addressSel[1]~1_combout\ & (\MEM|dataOut\(3))) # (!\ADDRDEC|addressSel[1]~1_combout\ & (((\KEYBOARD|Equal0~1_combout\) # (\MUXREAD|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(3),
	datab => \KEYBOARD|Equal0~1_combout\,
	datac => \MUXREAD|Mux28~1_combout\,
	datad => \ADDRDEC|addressSel[1]~1_combout\,
	combout => \MUXREAD|Mux28~2_combout\);

-- Location: LCCOMB_X49_Y10_N6
\MUXREAD|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux28~3_combout\ = (\MUXREAD|Mux28~2_combout\ & \ADDRDEC|addressSel[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux28~2_combout\,
	datad => \ADDRDEC|addressSel[0]~0_combout\,
	combout => \MUXREAD|Mux28~3_combout\);

-- Location: LCFF_X37_Y13_N25
\MEM|MEM~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~217_regout\);

-- Location: LCFF_X36_Y13_N1
\MEM|MEM~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~249_regout\);

-- Location: LCFF_X36_Y13_N19
\MEM|MEM~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~185_regout\);

-- Location: LCCOMB_X36_Y13_N18
\MEM|MEM~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~395_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~249_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~185_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~249_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~185_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~395_combout\);

-- Location: LCFF_X37_Y13_N7
\MEM|MEM~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~281_regout\);

-- Location: LCCOMB_X37_Y13_N24
\MEM|MEM~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~396_combout\ = (\MEM|MEM~395_combout\ & ((\MEM|MEM~281_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~395_combout\ & (((\MEM|MEM~217_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~281_regout\,
	datab => \MEM|MEM~395_combout\,
	datac => \MEM|MEM~217_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~396_combout\);

-- Location: LCFF_X37_Y10_N21
\MEM|MEM~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~465_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~89_regout\);

-- Location: LCFF_X37_Y10_N19
\MEM|MEM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~466_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~57_regout\);

-- Location: LCCOMB_X37_Y10_N8
\MEM|MEM~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~397_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~89_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~57_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~57_regout\,
	datac => \MEM|MEM~89_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~397_combout\);

-- Location: LCFF_X37_Y12_N13
\MEM|MEM~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~218_regout\);

-- Location: LCFF_X38_Y9_N1
\MEM|MEM~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~250_regout\);

-- Location: LCFF_X38_Y9_N27
\MEM|MEM~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~186_regout\);

-- Location: LCCOMB_X38_Y9_N26
\MEM|MEM~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~400_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~250_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~186_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~250_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~186_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~400_combout\);

-- Location: LCFF_X38_Y12_N31
\MEM|MEM~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~282_regout\);

-- Location: LCCOMB_X37_Y12_N12
\MEM|MEM~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~401_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~400_combout\ & (\MEM|MEM~282_regout\)) # (!\MEM|MEM~400_combout\ & ((\MEM|MEM~218_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~282_regout\,
	datac => \MEM|MEM~218_regout\,
	datad => \MEM|MEM~400_combout\,
	combout => \MEM|MEM~401_combout\);

-- Location: LCFF_X37_Y10_N11
\MEM|MEM~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~90_regout\);

-- Location: LCFF_X37_Y10_N29
\MEM|MEM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~58_regout\);

-- Location: LCCOMB_X37_Y10_N28
\MEM|MEM~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~402_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~90_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~58_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~90_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~58_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~402_combout\);

-- Location: LCFF_X38_Y9_N9
\MEM|MEM~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~251_regout\);

-- Location: LCFF_X38_Y9_N7
\MEM|MEM~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~187_regout\);

-- Location: LCCOMB_X38_Y9_N6
\MEM|MEM~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~405_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~251_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~187_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~251_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~187_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~405_combout\);

-- Location: LCFF_X36_Y10_N13
\MEM|MEM~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~467_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~91_regout\);

-- Location: LCFF_X38_Y11_N11
\MEM|MEM~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~155feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~155_regout\);

-- Location: LCFF_X38_Y9_N5
\MEM|MEM~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~253_regout\);

-- Location: LCFF_X38_Y9_N15
\MEM|MEM~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~189_regout\);

-- Location: LCCOMB_X38_Y9_N14
\MEM|MEM~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~410_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~253_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~189_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~253_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~189_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~410_combout\);

-- Location: LCFF_X40_Y10_N29
\MEM|MEM~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~93_regout\);

-- Location: LCFF_X40_Y10_N7
\MEM|MEM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~61_regout\);

-- Location: LCCOMB_X40_Y10_N6
\MEM|MEM~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~412_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~93_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~61_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~93_regout\,
	datac => \MEM|MEM~61_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~412_combout\);

-- Location: LCFF_X38_Y9_N25
\MEM|MEM~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~252_regout\);

-- Location: LCFF_X38_Y9_N3
\MEM|MEM~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~188_regout\);

-- Location: LCCOMB_X38_Y9_N2
\MEM|MEM~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~415_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~252_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~188_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~252_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~188_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~415_combout\);

-- Location: LCFF_X36_Y10_N19
\MEM|MEM~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~92_regout\);

-- Location: LCFF_X36_Y10_N29
\MEM|MEM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~60_regout\);

-- Location: LCCOMB_X36_Y10_N28
\MEM|MEM~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~417_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~92_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~60_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~92_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~60_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~417_combout\);

-- Location: LCFF_X36_Y13_N29
\MEM|MEM~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~248_regout\);

-- Location: LCFF_X36_Y13_N15
\MEM|MEM~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~184_regout\);

-- Location: LCCOMB_X36_Y13_N14
\MEM|MEM~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~420_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~248_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~184_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~248_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~184_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~420_combout\);

-- Location: LCFF_X39_Y12_N17
\MEM|MEM~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~152_regout\);

-- Location: LCFF_X38_Y9_N17
\MEM|MEM~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~247_regout\);

-- Location: LCFF_X40_Y13_N25
\MEM|MEM~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~279_regout\);

-- Location: LCFF_X38_Y9_N13
\MEM|MEM~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~254_regout\);

-- Location: LCFF_X38_Y9_N11
\MEM|MEM~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~190_regout\);

-- Location: LCCOMB_X38_Y9_N10
\MEM|MEM~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~430_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~254_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~190_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~254_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~190_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~430_combout\);

-- Location: LCFF_X36_Y10_N3
\MEM|MEM~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~469_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~94_regout\);

-- Location: LCFF_X36_Y10_N25
\MEM|MEM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~470_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~62_regout\);

-- Location: LCCOMB_X36_Y10_N10
\MEM|MEM~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~432_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~94_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~62_regout\,
	datab => \MEM|MEM~94_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~432_combout\);

-- Location: LCFF_X38_Y9_N29
\MEM|MEM~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~255_regout\);

-- Location: LCFF_X36_Y10_N21
\MEM|MEM~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~471_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~95_regout\);

-- Location: LCFF_X40_Y14_N25
\MEM|MEM~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~256_regout\);

-- Location: LCFF_X42_Y10_N19
\MEM|MEM~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~288feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~288_regout\);

-- Location: LCFF_X39_Y10_N9
\MEM|MEM~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~96_regout\);

-- Location: LCFF_X39_Y10_N11
\MEM|MEM~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~64_regout\);

-- Location: LCCOMB_X39_Y10_N10
\MEM|MEM~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~442_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~96_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~64_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~96_regout\,
	datac => \MEM|MEM~64_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~442_combout\);

-- Location: LCFF_X38_Y9_N21
\MEM|MEM~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~257_regout\);

-- Location: LCFF_X42_Y10_N5
\MEM|MEM~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~289feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~289_regout\);

-- Location: LCFF_X37_Y10_N7
\MEM|MEM~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~473_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~97_regout\);

-- Location: LCFF_X37_Y10_N25
\MEM|MEM~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~65_regout\);

-- Location: LCCOMB_X37_Y10_N24
\MEM|MEM~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~447_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)) # (!\MEM|MEM~97_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~65_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~97_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~65_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~447_combout\);

-- Location: LCFF_X42_Y10_N15
\MEM|MEM~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~291feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~291_regout\);

-- Location: LCFF_X40_Y10_N13
\MEM|MEM~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~474_combout\,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~99_regout\);

-- Location: LCFF_X40_Y10_N31
\MEM|MEM~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~475_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~67_regout\);

-- Location: LCCOMB_X40_Y10_N24
\MEM|MEM~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~452_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~99_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~67_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~99_regout\,
	datab => \MEM|MEM~67_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~452_combout\);

-- Location: LCFF_X36_Y13_N5
\MEM|MEM~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~258_regout\);

-- Location: LCFF_X38_Y12_N15
\MEM|MEM~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~130_regout\);

-- Location: LCCOMB_X36_Y11_N10
\SEG7WR|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~13_combout\ = (\SEG7WR|Equal0~8_combout\ & (\SEG7WR|Equal0~7_combout\ & (\SEG7WR|Equal0~9_combout\ & \SEG7WR|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~8_combout\,
	datab => \SEG7WR|Equal0~7_combout\,
	datac => \SEG7WR|Equal0~9_combout\,
	datad => \SEG7WR|Equal0~6_combout\,
	combout => \SEG7WR|Equal0~13_combout\);

-- Location: LCCOMB_X26_Y11_N12
\MUXREAD|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~6_combout\ = (\key~combout\(4) & (!\key~combout\(6) & (!\key~combout\(3) & !\key~combout\(5)))) # (!\key~combout\(4) & ((\key~combout\(6) & (!\key~combout\(3) & !\key~combout\(5))) # (!\key~combout\(6) & (\key~combout\(3) $ 
-- (\key~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \key~combout\(6),
	datac => \key~combout\(3),
	datad => \key~combout\(5),
	combout => \MUXREAD|Mux29~6_combout\);

-- Location: LCCOMB_X26_Y11_N22
\MUXREAD|Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~14_combout\ = (!\key~combout\(0) & (!\key~combout\(2) & (\MUXREAD|Mux29~3_combout\ & !\key~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \key~combout\(2),
	datac => \MUXREAD|Mux29~3_combout\,
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux29~14_combout\);

-- Location: LCCOMB_X26_Y11_N8
\MUXREAD|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~3_combout\ = (!\key~combout\(7) & (!\key~combout\(8) & \MUXREAD|Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(7),
	datac => \key~combout\(8),
	datad => \MUXREAD|Mux29~6_combout\,
	combout => \MUXREAD|Mux29~3_combout\);

-- Location: LCCOMB_X26_Y11_N14
\MUXREAD|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~6_combout\ = (\key~combout\(4) & (!\key~combout\(6) & (!\key~combout\(8) & !\key~combout\(0)))) # (!\key~combout\(4) & ((\key~combout\(6) & (!\key~combout\(8) & !\key~combout\(0))) # (!\key~combout\(6) & (\key~combout\(8) $ 
-- (\key~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \key~combout\(6),
	datac => \key~combout\(8),
	datad => \key~combout\(0),
	combout => \MUXREAD|Mux31~6_combout\);

-- Location: LCCOMB_X26_Y11_N0
\MUXREAD|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~7_combout\ = (!\key~combout\(4) & (!\key~combout\(6) & (!\key~combout\(8) & !\key~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \key~combout\(6),
	datac => \key~combout\(8),
	datad => \key~combout\(0),
	combout => \MUXREAD|Mux31~7_combout\);

-- Location: LCCOMB_X26_Y11_N6
\MUXREAD|Mux31~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~15_combout\ = (!\key~combout\(3) & (!\key~combout\(1) & (\MUXREAD|Mux31~3_combout\ & !\key~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(1),
	datac => \MUXREAD|Mux31~3_combout\,
	datad => \key~combout\(5),
	combout => \MUXREAD|Mux31~15_combout\);

-- Location: LCCOMB_X26_Y11_N24
\MUXREAD|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~3_combout\ = (!\key~combout\(7) & ((\key~combout\(2) & ((\MUXREAD|Mux31~7_combout\))) # (!\key~combout\(2) & (\MUXREAD|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(2),
	datac => \MUXREAD|Mux31~6_combout\,
	datad => \MUXREAD|Mux31~7_combout\,
	combout => \MUXREAD|Mux31~3_combout\);

-- Location: LCCOMB_X49_Y12_N4
\REGFILE|MEM~622\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~622_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~622_combout\);

-- Location: LCCOMB_X44_Y10_N18
\MEM|MEM~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~460_combout\ = !\regB|dt_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(16),
	combout => \MEM|MEM~460_combout\);

-- Location: LCCOMB_X40_Y10_N16
\MEM|MEM~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~461_combout\ = !\regB|dt_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(16),
	combout => \MEM|MEM~461_combout\);

-- Location: LCCOMB_X40_Y11_N18
\MEM|MEM~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~462_combout\ = !\regB|dt_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(8),
	combout => \MEM|MEM~462_combout\);

-- Location: LCCOMB_X40_Y10_N20
\MEM|MEM~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~463_combout\ = !\regB|dt_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(9),
	combout => \MEM|MEM~463_combout\);

-- Location: LCCOMB_X39_Y10_N18
\MEM|MEM~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~464_combout\ = !\regB|dt_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(9),
	combout => \MEM|MEM~464_combout\);

-- Location: LCCOMB_X37_Y10_N20
\MEM|MEM~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~465_combout\ = !\regB|dt_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(21),
	combout => \MEM|MEM~465_combout\);

-- Location: LCCOMB_X37_Y10_N18
\MEM|MEM~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~466_combout\ = !\regB|dt_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(21),
	combout => \MEM|MEM~466_combout\);

-- Location: LCCOMB_X36_Y10_N12
\MEM|MEM~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~467_combout\ = !\regB|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(23),
	combout => \MEM|MEM~467_combout\);

-- Location: LCCOMB_X36_Y10_N2
\MEM|MEM~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~469_combout\ = !\regB|dt_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(26),
	combout => \MEM|MEM~469_combout\);

-- Location: LCCOMB_X36_Y10_N24
\MEM|MEM~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~470_combout\ = !\regB|dt_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(26),
	combout => \MEM|MEM~470_combout\);

-- Location: LCCOMB_X36_Y10_N20
\MEM|MEM~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~471_combout\ = !\regB|dt_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(27),
	combout => \MEM|MEM~471_combout\);

-- Location: LCCOMB_X37_Y10_N6
\MEM|MEM~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~473_combout\ = !\regB|dt_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(29),
	combout => \MEM|MEM~473_combout\);

-- Location: LCCOMB_X40_Y10_N12
\MEM|MEM~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~474_combout\ = !\regB|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(31),
	combout => \MEM|MEM~474_combout\);

-- Location: LCCOMB_X40_Y10_N30
\MEM|MEM~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~475_combout\ = !\regB|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|dt_out\(31),
	combout => \MEM|MEM~475_combout\);

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

-- Location: LCCOMB_X38_Y14_N14
\MEM|MEM~266feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~266feeder_combout\ = \regB|dt_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(6),
	combout => \MEM|MEM~266feeder_combout\);

-- Location: LCCOMB_X38_Y11_N30
\MEM|MEM~139feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~139feeder_combout\ = \regB|dt_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(7),
	combout => \MEM|MEM~139feeder_combout\);

-- Location: LCCOMB_X36_Y11_N24
\REG7SEG|dt_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[9]~feeder_combout\ = \regB|dt_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(9),
	combout => \REG7SEG|dt_out[9]~feeder_combout\);

-- Location: LCCOMB_X37_Y11_N24
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

-- Location: LCCOMB_X42_Y10_N2
\MEM|MEM~274feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~274feeder_combout\ = \regB|dt_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(14),
	combout => \MEM|MEM~274feeder_combout\);

-- Location: LCCOMB_X37_Y11_N0
\REG7SEG|dt_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[17]~feeder_combout\ = \regB|dt_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(17),
	combout => \REG7SEG|dt_out[17]~feeder_combout\);

-- Location: LCCOMB_X39_Y12_N14
\MEM|MEM~149feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~149feeder_combout\ = \regB|dt_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(17),
	combout => \MEM|MEM~149feeder_combout\);

-- Location: LCCOMB_X37_Y11_N6
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

-- Location: LCCOMB_X37_Y11_N2
\REG7SEG|dt_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[22]~feeder_combout\ = \regB|dt_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(22),
	combout => \REG7SEG|dt_out[22]~feeder_combout\);

-- Location: LCCOMB_X38_Y11_N10
\MEM|MEM~155feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~155feeder_combout\ = \regB|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(23),
	combout => \MEM|MEM~155feeder_combout\);

-- Location: LCCOMB_X36_Y11_N6
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

-- Location: LCCOMB_X42_Y10_N18
\MEM|MEM~288feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~288feeder_combout\ = \regB|dt_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(28),
	combout => \MEM|MEM~288feeder_combout\);

-- Location: LCCOMB_X42_Y10_N4
\MEM|MEM~289feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~289feeder_combout\ = \regB|dt_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(29),
	combout => \MEM|MEM~289feeder_combout\);

-- Location: LCCOMB_X42_Y10_N14
\MEM|MEM~291feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~291feeder_combout\ = \regB|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(31),
	combout => \MEM|MEM~291feeder_combout\);

-- Location: LCCOMB_X38_Y11_N12
\MEM|MEM~135feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~135feeder_combout\ = \regB|dt_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(3),
	combout => \MEM|MEM~135feeder_combout\);

-- Location: LCCOMB_X47_Y10_N10
\REGFILE|MEM~264feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~264feeder_combout\ = \MUXMemReg|salida[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[4]~1_combout\,
	combout => \REGFILE|MEM~264feeder_combout\);

-- Location: LCCOMB_X48_Y15_N24
\REGFILE|MEM~201feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~201feeder_combout\ = \MUXMemReg|salida[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[5]~2_combout\,
	combout => \REGFILE|MEM~201feeder_combout\);

-- Location: LCCOMB_X49_Y12_N2
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

-- Location: LCCOMB_X47_Y9_N16
\REGFILE|MEM~270feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~270feeder_combout\ = \MUXMemReg|salida[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[10]~7_combout\,
	combout => \REGFILE|MEM~270feeder_combout\);

-- Location: LCCOMB_X44_Y9_N30
\REGFILE|MEM~206feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~206feeder_combout\ = \MUXMemReg|salida[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[10]~7_combout\,
	combout => \REGFILE|MEM~206feeder_combout\);

-- Location: LCCOMB_X43_Y9_N20
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

-- Location: LCCOMB_X47_Y9_N18
\REGFILE|MEM~274feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~274feeder_combout\ = \MUXMemReg|salida[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[14]~11_combout\,
	combout => \REGFILE|MEM~274feeder_combout\);

-- Location: LCCOMB_X46_Y8_N4
\REGFILE|MEM~178feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~178feeder_combout\ = \MUXMemReg|salida[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[14]~11_combout\,
	combout => \REGFILE|MEM~178feeder_combout\);

-- Location: LCCOMB_X49_Y7_N8
\REGFILE|MEM~84feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~84feeder_combout\ = \MUXMemReg|salida[16]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[16]~13_combout\,
	combout => \REGFILE|MEM~84feeder_combout\);

-- Location: LCCOMB_X42_Y10_N26
\REGFILE|MEM~277feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~277feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~277feeder_combout\);

-- Location: LCCOMB_X49_Y7_N2
\REGFILE|MEM~213feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~213feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~213feeder_combout\);

-- Location: LCCOMB_X46_Y8_N28
\REGFILE|MEM~181feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~181feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~181feeder_combout\);

-- Location: LCCOMB_X44_Y8_N2
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

-- Location: LCCOMB_X49_Y15_N4
\REGFILE|MEM~56feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~56feeder_combout\ = \MUXMemReg|salida[20]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[20]~17_combout\,
	combout => \REGFILE|MEM~56feeder_combout\);

-- Location: LCCOMB_X49_Y15_N30
\REGFILE|MEM~88feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~88feeder_combout\ = \MUXMemReg|salida[20]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[20]~17_combout\,
	combout => \REGFILE|MEM~88feeder_combout\);

-- Location: LCCOMB_X49_Y9_N2
\REGFILE|MEM~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~61feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~61feeder_combout\);

-- Location: LCCOMB_X49_Y9_N28
\REGFILE|MEM~93feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~93feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~93feeder_combout\);

-- Location: LCCOMB_X42_Y13_N12
\REGFILE|MEM~222feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~222feeder_combout\ = \MUXMemReg|salida[26]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[26]~23_combout\,
	combout => \REGFILE|MEM~222feeder_combout\);

-- Location: LCCOMB_X49_Y16_N4
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

-- Location: LCCOMB_X49_Y14_N20
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

-- Location: LCCOMB_X48_Y9_N0
\REGFILE|MEM~39feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~39feeder_combout\ = \MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~39feeder_combout\);

-- Location: LCCOMB_X49_Y12_N30
\REGFILE|MEM~103feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~103feeder_combout\ = \MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~103feeder_combout\);

-- Location: LCCOMB_X49_Y14_N12
\REGFILE|MEM~199feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~199feeder_combout\ = \MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~199feeder_combout\);

-- Location: LCCOMB_X48_Y14_N18
\REGFILE|MEM~261feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~261feeder_combout\ = \MUXMemReg|salida[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[1]~30_combout\,
	combout => \REGFILE|MEM~261feeder_combout\);

-- Location: LCCOMB_X47_Y9_N24
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

-- Location: LCCOMB_X48_Y9_N10
\REGFILE|MEM~229feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~229feeder_combout\ = \MUXMemReg|salida[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[1]~30_combout\,
	combout => \REGFILE|MEM~229feeder_combout\);

-- Location: LCCOMB_X47_Y9_N20
\REGFILE|MEM~102feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~102feeder_combout\ = \MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~102feeder_combout\);

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

-- Location: LCCOMB_X45_Y16_N10
\NEWST|CS[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NEWST|CS[3]~0_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (\NEWST|CS\(1) $ (\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \NEWST|CS[3]~0_combout\);

-- Location: LCCOMB_X46_Y13_N14
\CONTROLU|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~4_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (!\NEWST|CS\(1) & !\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y16_N8
\CONTROLU|nxt_st[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~6_combout\ = (!\CONTROLU|Equal0~4_combout\ & (!\rst~combout\ & \NEWST|CS[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \rst~combout\,
	datad => \NEWST|CS[3]~0_combout\,
	combout => \CONTROLU|nxt_st[1]~6_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X45_Y16_N24
\CONTROLU|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~7_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(1) & (\NEWST|CS\(3) & !\NEWST|CS\(2))))

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
	combout => \CONTROLU|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y16_N22
\CONTROLU|PCsrc[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCsrc[1]~0_combout\ = (!\rst~combout\ & (!\CONTROLU|Equal0~4_combout\ & \CONTROLU|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \CONTROLU|Equal0~7_combout\,
	combout => \CONTROLU|PCsrc[1]~0_combout\);

-- Location: LCCOMB_X45_Y16_N14
\CONTROLU|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~5_combout\ = (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

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
	combout => \CONTROLU|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y13_N16
\CONTROLU|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~3_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(3) & (!\NEWST|CS\(1) & \NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(3),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y13_N4
\CONTROLU|ALUsrcB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[1]~0_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(2) & !\NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(2),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|ALUsrcB[1]~0_combout\);

-- Location: LCCOMB_X45_Y13_N30
\MUXB|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~1_combout\ = (\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & (!\CONTROLU|Equal0~3_combout\ & !\CONTROLU|ALUsrcB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|Equal0~3_combout\,
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux16~1_combout\);

-- Location: LCCOMB_X48_Y14_N30
\MUXREAD|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux23~0_combout\ = (\MUXREAD|Mux27~3_combout\ & (\ADDRDEC|addressSel[1]~1_combout\)) # (!\MUXREAD|Mux27~3_combout\ & ((\MEM|dataOut\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|addressSel[1]~1_combout\,
	datab => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(8),
	combout => \MUXREAD|Mux23~0_combout\);

-- Location: LCFF_X48_Y14_N31
\MDR|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(8));

-- Location: LCCOMB_X47_Y15_N18
\MUXMemReg|salida[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[8]~5_combout\ = (\rst~combout\ & (\regALU|dt_out\(8))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(8)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(8),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \MDR|dt_out\(8),
	combout => \MUXMemReg|salida[8]~5_combout\);

-- Location: LCCOMB_X42_Y11_N24
\MUXREAD|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux14~0_combout\ = (\MEM|dataOut\(17) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(17),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux14~0_combout\);

-- Location: LCFF_X42_Y11_N25
\MDR|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(17));

-- Location: LCCOMB_X42_Y11_N26
\MUXMemReg|salida[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[17]~14_combout\ = (\rst~combout\ & (\regALU|dt_out\(17))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(17)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(17),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(17),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[17]~14_combout\);

-- Location: LCCOMB_X44_Y8_N28
\REGFILE|MEM~149feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~149feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~149feeder_combout\);

-- Location: LCCOMB_X46_Y13_N28
\CONTROLU|ALUsrcB[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[1]~3_combout\ = (\NEWST|CS\(2)) # ((\NEWST|CS\(0) & ((\NEWST|CS\(3)) # (\NEWST|CS\(1)))) # (!\NEWST|CS\(0) & ((!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|ALUsrcB[1]~3_combout\);

-- Location: LCCOMB_X47_Y13_N22
\MUXB|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux15~0_combout\ = (\regB|dt_out\(16) & ((\rst~combout\) # ((\CONTROLU|ALUsrcB[1]~3_combout\ & !\CONTROLU|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(16),
	datab => \CONTROLU|ALUsrcB[1]~3_combout\,
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXB|Mux15~0_combout\);

-- Location: LCCOMB_X47_Y14_N4
\PROGCOUNT|addr_out[16]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[16]~14_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(16))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(16),
	datad => \ALUCOMP|Mux15~2_combout\,
	combout => \PROGCOUNT|addr_out[16]~14_combout\);

-- Location: LCCOMB_X45_Y13_N28
\MUXB|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~0_combout\ = (!\rst~combout\ & (!\CONTROLU|Equal0~4_combout\ & ((\CONTROLU|Equal0~3_combout\) # (\CONTROLU|ALUsrcB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|Equal0~3_combout\,
	datad => \CONTROLU|ALUsrcB[1]~0_combout\,
	combout => \MUXB|Mux16~0_combout\);

-- Location: LCCOMB_X45_Y13_N6
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\regB|dt_out\(14) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(14))))) # (!\regB|dt_out\(14) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(14),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(14),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCCOMB_X43_Y12_N4
\ALUCOMP|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~44_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|Add0~44_combout\);

-- Location: LCCOMB_X46_Y13_N6
\CONTROLU|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~1_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(1) & (\NEWST|CS\(3) & !\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y13_N0
\CONTROLU|ALUop[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUop[0]~0_combout\ = (\CONTROLU|Equal0~1_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \rst~combout\,
	combout => \CONTROLU|ALUop[0]~0_combout\);

-- Location: LCCOMB_X49_Y11_N22
\PROGCOUNT|addr_out[12]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[12]~10_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(12))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(12),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux19~2_combout\,
	combout => \PROGCOUNT|addr_out[12]~10_combout\);

-- Location: LCCOMB_X45_Y13_N10
\MUXB|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux21~0_combout\ = (\regB|dt_out\(10) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(10))))) # (!\regB|dt_out\(10) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(10),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(10),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux21~0_combout\);

-- Location: LCCOMB_X45_Y9_N22
\ALUCOMP|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~0_combout\ = (\MUXA|salida[10]~30_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXB|Mux21~0_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXA|salida[10]~30_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXB|Mux21~0_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~30_combout\,
	datab => \MUXB|Mux21~0_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux21~0_combout\);

-- Location: LCCOMB_X46_Y13_N10
\CONTROLU|ALUsrcA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcA~0_combout\ = (!\NEWST|CS\(0) & ((\NEWST|CS\(3) & (!\NEWST|CS\(2))) # (!\NEWST|CS\(3) & ((\NEWST|CS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|ALUsrcA~0_combout\);

-- Location: LCCOMB_X47_Y14_N16
\PROGCOUNT|addr_out[10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[10]~8_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(10))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(10),
	datad => \ALUCOMP|Mux21~2_combout\,
	combout => \PROGCOUNT|addr_out[10]~8_combout\);

-- Location: LCFF_X44_Y14_N5
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCCOMB_X45_Y16_N12
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

-- Location: LCCOMB_X44_Y15_N8
\CONTROLU|MemWr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemWr~0_combout\ = (!\rst~combout\ & \CONTROLU|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \CONTROLU|MemWr~0_combout\);

-- Location: LCCOMB_X45_Y15_N20
\ADDRDEC|writeMemory~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|writeMemory~0_combout\ = (\CONTROLU|MemWr~0_combout\ & (((\regALU|dt_out\(8)) # (!\ADDRDEC|Equal1~9_combout\)) # (!\ADDRDEC|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal1~4_combout\,
	datab => \regALU|dt_out\(8),
	datac => \ADDRDEC|Equal1~9_combout\,
	datad => \CONTROLU|MemWr~0_combout\,
	combout => \ADDRDEC|writeMemory~0_combout\);

-- Location: LCCOMB_X40_Y13_N12
\MEM|MEM~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~388_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~388_combout\);

-- Location: LCFF_X39_Y13_N9
\MEM|MEM~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~233_regout\);

-- Location: LCCOMB_X40_Y13_N30
\MEM|MEM~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~389_combout\ = (\MUXPC|salida[2]~2_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~389_combout\);

-- Location: LCFF_X39_Y13_N15
\MEM|MEM~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~169_regout\);

-- Location: LCCOMB_X39_Y13_N14
\MEM|MEM~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~327_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~233_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~169_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~233_regout\,
	datac => \MEM|MEM~169_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~327_combout\);

-- Location: LCCOMB_X40_Y13_N26
\MEM|MEM~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~387_combout\ = (\MUXPC|salida[2]~2_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & \MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~387_combout\);

-- Location: LCFF_X37_Y13_N9
\MEM|MEM~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(5),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~201_regout\);

-- Location: LCCOMB_X37_Y13_N8
\MEM|MEM~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~328_combout\ = (\MEM|MEM~327_combout\ & ((\MEM|MEM~265_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~327_combout\ & (((\MEM|MEM~201_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~265_regout\,
	datab => \MEM|MEM~327_combout\,
	datac => \MEM|MEM~201_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~328_combout\);

-- Location: LCCOMB_X45_Y14_N28
\MUXA|salida[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~6_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(2)))) # (!\rst~combout\ & (\regA|dt_out\(2))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(2),
	datab => \PROGCOUNT|addr_out\(2),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[2]~6_combout\);

-- Location: LCFF_X40_Y14_N19
\MEM|MEM~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~165_regout\);

-- Location: LCCOMB_X40_Y14_N18
\MEM|MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~307_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~229_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~165_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~229_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~165_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~307_combout\);

-- Location: LCFF_X39_Y9_N25
\MEM|MEM~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~197_regout\);

-- Location: LCCOMB_X39_Y9_N24
\MEM|MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~308_combout\ = (\MEM|MEM~307_combout\ & ((\MEM|MEM~261_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~307_combout\ & (((\MEM|MEM~197_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~261_regout\,
	datab => \MEM|MEM~307_combout\,
	datac => \MEM|MEM~197_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~308_combout\);

-- Location: LCCOMB_X40_Y12_N6
\MEM|MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~311_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~308_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~310_combout\,
	datac => \MEM|MEM~308_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~311_combout\);

-- Location: LCCOMB_X45_Y16_N4
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

-- Location: LCCOMB_X43_Y13_N22
\CONTROLU|MemRd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemRd~0_combout\ = (!\rst~combout\ & ((\CONTROLU|Equal0~8_combout\) # (\CONTROLU|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~8_combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \CONTROLU|MemRd~0_combout\);

-- Location: LCFF_X40_Y12_N7
\MEM|dataOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~311_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(1));

-- Location: LCCOMB_X47_Y13_N12
\CONTROLU|ALUsrcB[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[0]~2_combout\ = (!\rst~combout\ & \CONTROLU|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \CONTROLU|ALUsrcB[0]~2_combout\);

-- Location: LCFF_X45_Y13_N23
\INSTREG|func_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(1),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(1));

-- Location: LCCOMB_X46_Y13_N22
\CONTROLU|ALUsrcB[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[1]~1_combout\ = (!\rst~combout\ & ((\CONTROLU|ALUsrcB[1]~0_combout\) # (\CONTROLU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB[1]~0_combout\,
	datac => \CONTROLU|Equal0~3_combout\,
	datad => \rst~combout\,
	combout => \CONTROLU|ALUsrcB[1]~1_combout\);

-- Location: LCCOMB_X47_Y13_N16
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (!\CONTROLU|ALUsrcB[0]~2_combout\ & ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|func_out\(1)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(1),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUsrcB[0]~2_combout\,
	datad => \CONTROLU|ALUsrcB[1]~1_combout\,
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCCOMB_X44_Y13_N8
\ALUCOMP|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~7_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux30~0_combout\,
	combout => \ALUCOMP|Add0~7_combout\);

-- Location: LCCOMB_X47_Y13_N26
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (\CONTROLU|ALUsrcB[0]~2_combout\) # ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|func_out\(0)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(0),
	datab => \CONTROLU|ALUsrcB[1]~1_combout\,
	datac => \INSTREG|func_out\(0),
	datad => \CONTROLU|ALUsrcB[0]~2_combout\,
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCCOMB_X44_Y13_N2
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux31~0_combout\,
	combout => \ALUCOMP|Add0~8_combout\);

-- Location: LCCOMB_X44_Y13_N16
\ALUCOMP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~10_cout\ = CARRY((\ALUCONTRL|op~0_combout\) # (\CONTROLU|ALUop[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|Add0~10_cout\);

-- Location: LCCOMB_X44_Y13_N20
\ALUCOMP|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~13_combout\ = ((\MUXA|salida[1]~7_combout\ $ (\ALUCOMP|Add0~7_combout\ $ (!\ALUCOMP|Add0~12\)))) # (GND)
-- \ALUCOMP|Add0~14\ = CARRY((\MUXA|salida[1]~7_combout\ & ((\ALUCOMP|Add0~7_combout\) # (!\ALUCOMP|Add0~12\))) # (!\MUXA|salida[1]~7_combout\ & (\ALUCOMP|Add0~7_combout\ & !\ALUCOMP|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~7_combout\,
	datab => \ALUCOMP|Add0~7_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~12\,
	combout => \ALUCOMP|Add0~13_combout\,
	cout => \ALUCOMP|Add0~14\);

-- Location: LCCOMB_X44_Y13_N22
\ALUCOMP|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~15_combout\ = (\ALUCOMP|Add0~6_combout\ & ((\MUXA|salida[2]~6_combout\ & (\ALUCOMP|Add0~14\ & VCC)) # (!\MUXA|salida[2]~6_combout\ & (!\ALUCOMP|Add0~14\)))) # (!\ALUCOMP|Add0~6_combout\ & ((\MUXA|salida[2]~6_combout\ & (!\ALUCOMP|Add0~14\)) 
-- # (!\MUXA|salida[2]~6_combout\ & ((\ALUCOMP|Add0~14\) # (GND)))))
-- \ALUCOMP|Add0~16\ = CARRY((\ALUCOMP|Add0~6_combout\ & (!\MUXA|salida[2]~6_combout\ & !\ALUCOMP|Add0~14\)) # (!\ALUCOMP|Add0~6_combout\ & ((!\ALUCOMP|Add0~14\) # (!\MUXA|salida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~6_combout\,
	datab => \MUXA|salida[2]~6_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~14\,
	combout => \ALUCOMP|Add0~15_combout\,
	cout => \ALUCOMP|Add0~16\);

-- Location: LCCOMB_X43_Y11_N16
\PROGCOUNT|addr_out[31]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~44_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux0~0_combout\)) # (!\MUXA|salida[31]~9_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux25~1_combout\ & ((\MUXA|salida[31]~9_combout\) # (\MUXB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[31]~9_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \MUXB|Mux0~0_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \PROGCOUNT|addr_out[31]~44_combout\);

-- Location: LCCOMB_X43_Y11_N14
\PROGCOUNT|addr_out[31]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~45_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\PROGCOUNT|addr_out[31]~44_combout\) # ((\PROGCOUNT|addr_out[31]~43_combout\ & \ALUCOMP|LessThan0~62_combout\)))) # (!\ALUCONTRL|op[0]~1_combout\ & 
-- (\PROGCOUNT|addr_out[31]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out[31]~43_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \PROGCOUNT|addr_out[31]~44_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \PROGCOUNT|addr_out[31]~45_combout\);

-- Location: LCCOMB_X47_Y11_N20
\PROGCOUNT|addr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~feeder_combout\ = \PROGCOUNT|addr_out[31]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[31]~29_combout\,
	combout => \PROGCOUNT|addr_out[31]~feeder_combout\);

-- Location: LCCOMB_X39_Y12_N8
\MEM|MEM~154feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~154feeder_combout\ = \regB|dt_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(22),
	combout => \MEM|MEM~154feeder_combout\);

-- Location: LCCOMB_X40_Y13_N28
\MEM|MEM~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~394_combout\ = (!\MUXPC|salida[2]~2_combout\ & (\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & \MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~394_combout\);

-- Location: LCFF_X39_Y12_N9
\MEM|MEM~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~154feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~154_regout\);

-- Location: LCCOMB_X40_Y13_N8
\MEM|MEM~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~391_combout\ = (!\MUXPC|salida[2]~2_combout\ & (\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~391_combout\);

-- Location: LCFF_X38_Y12_N13
\MEM|MEM~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(22),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~122_regout\);

-- Location: LCCOMB_X38_Y12_N12
\MEM|MEM~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~403_combout\ = (\MEM|MEM~402_combout\ & ((\MEM|MEM~154_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~402_combout\ & (((\MEM|MEM~122_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~402_combout\,
	datab => \MEM|MEM~154_regout\,
	datac => \MEM|MEM~122_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~403_combout\);

-- Location: LCCOMB_X39_Y12_N24
\MEM|MEM~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~404_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~401_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~403_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~401_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datad => \MEM|MEM~403_combout\,
	combout => \MEM|MEM~404_combout\);

-- Location: LCFF_X39_Y12_N25
\MEM|dataOut[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~404_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(22));

-- Location: LCCOMB_X42_Y14_N26
\MUXREAD|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux9~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(22),
	combout => \MUXREAD|Mux9~0_combout\);

-- Location: LCFF_X42_Y14_N27
\MDR|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(22));

-- Location: LCFF_X43_Y12_N27
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCCOMB_X42_Y14_N0
\MUXMemReg|salida[22]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[22]~19_combout\ = (\rst~combout\ & (((\regALU|dt_out\(22))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(22))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MDR|dt_out\(22),
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \regALU|dt_out\(22),
	combout => \MUXMemReg|salida[22]~19_combout\);

-- Location: LCCOMB_X42_Y9_N2
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

-- Location: LCFF_X42_Y9_N3
\REGFILE|MEM~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~282feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~282_regout\);

-- Location: LCCOMB_X42_Y9_N16
\REGFILE|MEM~218feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~218feeder_combout\ = \MUXMemReg|salida[22]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[22]~19_combout\,
	combout => \REGFILE|MEM~218feeder_combout\);

-- Location: LCCOMB_X47_Y16_N18
\REGFILE|MEM~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~453_combout\ = (\MUXRegDst|salida[2]~1_combout\ & (!\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~453_combout\);

-- Location: LCFF_X42_Y9_N17
\REGFILE|MEM~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~218feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~218_regout\);

-- Location: LCCOMB_X42_Y9_N20
\REGFILE|MEM~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~388_combout\ = (\REGFILE|MEM~387_combout\ & ((\REGFILE|MEM~282_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~387_combout\ & (((\REGFILE|MEM~218_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~387_combout\,
	datab => \REGFILE|MEM~282_regout\,
	datac => \REGFILE|MEM~218_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~388_combout\);

-- Location: LCFF_X44_Y8_N13
\REGFILE|MEM~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~154_regout\);

-- Location: LCCOMB_X45_Y16_N28
\CONTROLU|RegWr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegWr~0_combout\ = (\NEWST|CS\(0) & (\NEWST|CS\(1) & (\NEWST|CS\(3) $ (\NEWST|CS\(2))))) # (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|RegWr~0_combout\);

-- Location: LCCOMB_X47_Y16_N20
\REGFILE|MEM~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~454_combout\ = (!\rst~combout\ & (!\MUXRegDst|salida[0]~0_combout\ & \CONTROLU|RegWr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \MUXRegDst|salida[0]~0_combout\,
	datad => \CONTROLU|RegWr~0_combout\,
	combout => \REGFILE|MEM~454_combout\);

-- Location: LCCOMB_X47_Y16_N12
\REGFILE|MEM~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~460_combout\ = (!\MUXRegDst|salida[2]~1_combout\ & (!\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~454_combout\,
	combout => \REGFILE|MEM~460_combout\);

-- Location: LCFF_X49_Y15_N15
\REGFILE|MEM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~58_regout\);

-- Location: LCCOMB_X47_Y16_N22
\REGFILE|MEM~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~459_combout\ = (!\MUXRegDst|salida[2]~1_combout\ & (!\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~459_combout\);

-- Location: LCFF_X49_Y15_N29
\REGFILE|MEM~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~90_regout\);

-- Location: LCCOMB_X49_Y15_N14
\REGFILE|MEM~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~389_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~90_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~58_regout\,
	datad => \REGFILE|MEM~90_regout\,
	combout => \REGFILE|MEM~389_combout\);

-- Location: LCCOMB_X47_Y16_N28
\REGFILE|MEM~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~458_combout\ = (!\MUXRegDst|salida[2]~1_combout\ & (\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~454_combout\,
	combout => \REGFILE|MEM~458_combout\);

-- Location: LCFF_X43_Y12_N31
\REGFILE|MEM~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[22]~19_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~122_regout\);

-- Location: LCCOMB_X43_Y12_N28
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

-- Location: LCCOMB_X43_Y12_N20
\REGFILE|MEM~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~391_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~388_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~390_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~388_combout\,
	datad => \REGFILE|MEM~390_combout\,
	combout => \REGFILE|MEM~391_combout\);

-- Location: LCFF_X43_Y12_N21
\regB|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(22));

-- Location: LCCOMB_X43_Y12_N12
\MUXB|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux9~0_combout\ = (\regB|dt_out\(22) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \regB|dt_out\(22),
	datad => \CONTROLU|ALUsrcB[1]~3_combout\,
	combout => \MUXB|Mux9~0_combout\);

-- Location: LCCOMB_X43_Y12_N22
\ALUCOMP|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~72_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux9~0_combout\,
	combout => \ALUCOMP|Add0~72_combout\);

-- Location: LCCOMB_X49_Y11_N4
\PROGCOUNT|addr_out[21]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[21]~19_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(21)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux10~2_combout\,
	datab => \regALU|dt_out\(21),
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[21]~19_combout\);

-- Location: LCCOMB_X44_Y15_N2
\ALUCOMP|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~62_combout\ = ((!\rst~combout\ & \CONTROLU|Equal0~4_combout\)) # (!\regB|dt_out\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(19),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \ALUCOMP|Add0~62_combout\);

-- Location: LCCOMB_X44_Y15_N16
\ALUCOMP|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~63_combout\ = \ALUCONTRL|op\(2) $ (((!\ALUCOMP|Add0~62_combout\ & ((\CONTROLU|ALUsrcB[1]~3_combout\) # (\rst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[1]~3_combout\,
	datab => \rst~combout\,
	datac => \ALUCONTRL|op\(2),
	datad => \ALUCOMP|Add0~62_combout\,
	combout => \ALUCOMP|Add0~63_combout\);

-- Location: LCCOMB_X45_Y14_N22
\MUXB|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux13~0_combout\ = (\regB|dt_out\(18) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regB|dt_out\(18),
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \CONTROLU|ALUsrcB[1]~3_combout\,
	combout => \MUXB|Mux13~0_combout\);

-- Location: LCCOMB_X45_Y14_N30
\ALUCOMP|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~0_combout\ = (\MUXA|salida[18]~22_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((!\ALUCOMP|Mux25~1_combout\ & \MUXB|Mux13~0_combout\)))) # (!\MUXA|salida[18]~22_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|Mux25~1_combout\) # 
-- (\MUXB|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[18]~22_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \MUXB|Mux13~0_combout\,
	combout => \ALUCOMP|Mux13~0_combout\);

-- Location: LCCOMB_X44_Y15_N22
\ALUCOMP|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~54_combout\ = ((!\rst~combout\ & \CONTROLU|Equal0~4_combout\)) # (!\regB|dt_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(17),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \ALUCOMP|Add0~54_combout\);

-- Location: LCCOMB_X44_Y15_N4
\ALUCOMP|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~55_combout\ = \ALUCONTRL|op\(2) $ (((!\ALUCOMP|Add0~54_combout\ & ((\CONTROLU|ALUsrcB[1]~3_combout\) # (\rst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[1]~3_combout\,
	datab => \rst~combout\,
	datac => \ALUCONTRL|op\(2),
	datad => \ALUCOMP|Add0~54_combout\,
	combout => \ALUCOMP|Add0~55_combout\);

-- Location: LCCOMB_X47_Y13_N4
\ALUCOMP|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~50_combout\ = ((!\rst~combout\ & \CONTROLU|Equal0~4_combout\)) # (!\regB|dt_out\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(16),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \ALUCOMP|Add0~50_combout\);

-- Location: LCCOMB_X46_Y12_N20
\ALUCOMP|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~51_combout\ = \ALUCONTRL|op\(2) $ (((!\ALUCOMP|Add0~50_combout\ & ((\CONTROLU|ALUsrcB[1]~3_combout\) # (\rst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[1]~3_combout\,
	datab => \rst~combout\,
	datac => \ALUCONTRL|op\(2),
	datad => \ALUCOMP|Add0~50_combout\,
	combout => \ALUCOMP|Add0~51_combout\);

-- Location: LCCOMB_X44_Y10_N12
\MUXMemReg|salida[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[15]~12_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(15)))) # (!\rst~combout\ & (\MDR|dt_out\(15))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(15),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(15),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[15]~12_combout\);

-- Location: LCCOMB_X42_Y13_N4
\REGFILE|MEM~211feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~211feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~211feeder_combout\);

-- Location: LCFF_X42_Y13_N5
\REGFILE|MEM~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~211feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~211_regout\);

-- Location: LCCOMB_X46_Y8_N6
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

-- Location: LCCOMB_X47_Y16_N16
\REGFILE|MEM~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~456_combout\ = (\MUXRegDst|salida[2]~1_combout\ & (!\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~454_combout\,
	combout => \REGFILE|MEM~456_combout\);

-- Location: LCFF_X46_Y8_N7
\REGFILE|MEM~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~179feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~179_regout\);

-- Location: LCCOMB_X47_Y8_N18
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

-- Location: LCCOMB_X47_Y16_N6
\REGFILE|MEM~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~455_combout\ = (\MUXRegDst|salida[2]~1_combout\ & (\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~454_combout\,
	combout => \REGFILE|MEM~455_combout\);

-- Location: LCFF_X47_Y8_N19
\REGFILE|MEM~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~243feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~243_regout\);

-- Location: LCCOMB_X44_Y8_N0
\REGFILE|MEM~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~352_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~243_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~179_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~179_regout\,
	datad => \REGFILE|MEM~243_regout\,
	combout => \REGFILE|MEM~352_combout\);

-- Location: LCCOMB_X42_Y13_N2
\REGFILE|MEM~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~353_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~352_combout\ & (\REGFILE|MEM~275_regout\)) # (!\REGFILE|MEM~352_combout\ & ((\REGFILE|MEM~211_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~275_regout\,
	datab => \REGFILE|MEM~211_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~352_combout\,
	combout => \REGFILE|MEM~353_combout\);

-- Location: LCFF_X45_Y8_N23
\REGFILE|MEM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~51_regout\);

-- Location: LCFF_X45_Y8_N1
\REGFILE|MEM~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[15]~12_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~83_regout\);

-- Location: LCCOMB_X45_Y8_N22
\REGFILE|MEM~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~354_combout\ = (\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17)) # ((\REGFILE|MEM~83_regout\)))) # (!\INSTREG|jump_out\(16) & (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~51_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~51_regout\,
	datad => \REGFILE|MEM~83_regout\,
	combout => \REGFILE|MEM~354_combout\);

-- Location: LCCOMB_X49_Y10_N14
\REGFILE|MEM~147feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~147feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~147feeder_combout\);

-- Location: LCFF_X49_Y10_N15
\REGFILE|MEM~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~147feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~147_regout\);

-- Location: LCCOMB_X49_Y16_N2
\REGFILE|MEM~115feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~115feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~115feeder_combout\);

-- Location: LCFF_X49_Y16_N3
\REGFILE|MEM~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~115feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~115_regout\);

-- Location: LCCOMB_X46_Y15_N24
\REGFILE|MEM~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~355_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~354_combout\ & (\REGFILE|MEM~147_regout\)) # (!\REGFILE|MEM~354_combout\ & ((\REGFILE|MEM~115_regout\))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~354_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~354_combout\,
	datac => \REGFILE|MEM~147_regout\,
	datad => \REGFILE|MEM~115_regout\,
	combout => \REGFILE|MEM~355_combout\);

-- Location: LCCOMB_X42_Y13_N8
\REGFILE|MEM~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~356_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~353_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~353_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~355_combout\,
	combout => \REGFILE|MEM~356_combout\);

-- Location: LCFF_X42_Y13_N9
\regB|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(15));

-- Location: LCFF_X38_Y10_N19
\MEM|MEM~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~147_regout\);

-- Location: LCFF_X38_Y10_N25
\MEM|MEM~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~115_regout\);

-- Location: LCCOMB_X38_Y10_N24
\MEM|MEM~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~355_combout\ = (\MEM|MEM~354_combout\ & ((\MEM|MEM~147_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~354_combout\ & (((\MEM|MEM~115_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~354_combout\,
	datab => \MEM|MEM~147_regout\,
	datac => \MEM|MEM~115_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~355_combout\);

-- Location: LCFF_X39_Y13_N25
\MEM|MEM~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~243_regout\);

-- Location: LCFF_X39_Y13_N7
\MEM|MEM~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~179_regout\);

-- Location: LCCOMB_X39_Y13_N6
\MEM|MEM~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~352_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~243_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~179_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~243_regout\,
	datac => \MEM|MEM~179_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~352_combout\);

-- Location: LCFF_X38_Y14_N13
\MEM|MEM~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~211_regout\);

-- Location: LCCOMB_X38_Y14_N12
\MEM|MEM~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~353_combout\ = (\MEM|MEM~352_combout\ & ((\MEM|MEM~275_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~352_combout\ & (((\MEM|MEM~211_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~275_regout\,
	datab => \MEM|MEM~352_combout\,
	datac => \MEM|MEM~211_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~353_combout\);

-- Location: LCCOMB_X39_Y14_N28
\MEM|MEM~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~356_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~353_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~355_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~355_combout\,
	datac => \MUXPC|salida[2]~2_combout\,
	datad => \MEM|MEM~353_combout\,
	combout => \MEM|MEM~356_combout\);

-- Location: LCFF_X39_Y14_N29
\MEM|dataOut[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~356_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(15));

-- Location: LCFF_X45_Y13_N9
\INSTREG|jump_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(15),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(15));

-- Location: LCCOMB_X45_Y13_N8
\MUXB|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~2_combout\ = (\regB|dt_out\(15) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(15))))) # (!\regB|dt_out\(15) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(15),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(15),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux16~2_combout\);

-- Location: LCCOMB_X43_Y14_N6
\ALUCOMP|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~1_combout\ = (\MUXA|salida[15]~25_combout\ & ((\MUXB|Mux16~2_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[15]~25_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (\MUXB|Mux16~2_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~25_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXB|Mux16~2_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux16~1_combout\);

-- Location: LCCOMB_X44_Y12_N14
\ALUCOMP|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~45_combout\ = (\MUXA|salida[14]~26_combout\ & ((\ALUCOMP|Add0~44_combout\ & (\ALUCOMP|Add0~43\ & VCC)) # (!\ALUCOMP|Add0~44_combout\ & (!\ALUCOMP|Add0~43\)))) # (!\MUXA|salida[14]~26_combout\ & ((\ALUCOMP|Add0~44_combout\ & 
-- (!\ALUCOMP|Add0~43\)) # (!\ALUCOMP|Add0~44_combout\ & ((\ALUCOMP|Add0~43\) # (GND)))))
-- \ALUCOMP|Add0~46\ = CARRY((\MUXA|salida[14]~26_combout\ & (!\ALUCOMP|Add0~44_combout\ & !\ALUCOMP|Add0~43\)) # (!\MUXA|salida[14]~26_combout\ & ((!\ALUCOMP|Add0~43\) # (!\ALUCOMP|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~26_combout\,
	datab => \ALUCOMP|Add0~44_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~43\,
	combout => \ALUCOMP|Add0~45_combout\,
	cout => \ALUCOMP|Add0~46\);

-- Location: LCCOMB_X44_Y12_N16
\ALUCOMP|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~48_combout\ = ((\ALUCOMP|Add0~47_combout\ $ (\MUXA|salida[15]~25_combout\ $ (!\ALUCOMP|Add0~46\)))) # (GND)
-- \ALUCOMP|Add0~49\ = CARRY((\ALUCOMP|Add0~47_combout\ & ((\MUXA|salida[15]~25_combout\) # (!\ALUCOMP|Add0~46\))) # (!\ALUCOMP|Add0~47_combout\ & (\MUXA|salida[15]~25_combout\ & !\ALUCOMP|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~47_combout\,
	datab => \MUXA|salida[15]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~46\,
	combout => \ALUCOMP|Add0~48_combout\,
	cout => \ALUCOMP|Add0~49\);

-- Location: LCCOMB_X44_Y14_N26
\ALUCOMP|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~48_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux16~0_combout\);

-- Location: LCCOMB_X44_Y14_N12
\ALUCOMP|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\ALUCOMP|Mux16~1_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux16~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux16~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux16~0_combout\,
	combout => \ALUCOMP|Mux16~2_combout\);

-- Location: LCFF_X44_Y14_N13
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCCOMB_X47_Y14_N2
\PROGCOUNT|addr_out[15]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[15]~13_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(15))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(15),
	datad => \ALUCOMP|Mux16~2_combout\,
	combout => \PROGCOUNT|addr_out[15]~13_combout\);

-- Location: LCFF_X38_Y10_N9
\MEM|MEM~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~113_regout\);

-- Location: LCFF_X38_Y10_N11
\MEM|MEM~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(13),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~145_regout\);

-- Location: LCCOMB_X38_Y10_N8
\MEM|MEM~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~365_combout\ = (\MEM|MEM~364_combout\ & (((\MEM|MEM~145_regout\)) # (!\MUXPC|salida[1]~1_combout\))) # (!\MEM|MEM~364_combout\ & (\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~113_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~364_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~113_regout\,
	datad => \MEM|MEM~145_regout\,
	combout => \MEM|MEM~365_combout\);

-- Location: LCCOMB_X38_Y13_N18
\MEM|MEM~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~366_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~363_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~365_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~363_combout\,
	datac => \MEM|MEM~365_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~366_combout\);

-- Location: LCFF_X38_Y13_N19
\MEM|dataOut[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~366_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(13));

-- Location: LCFF_X44_Y13_N11
\INSTREG|jump_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(13),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(13));

-- Location: LCFF_X47_Y14_N3
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[15]~13_combout\,
	sdata => \INSTREG|jump_out\(13),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(15));

-- Location: LCFF_X43_Y10_N15
\REGFILE|MEM~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~187_regout\);

-- Location: LCFF_X43_Y10_N29
\REGFILE|MEM~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~251_regout\);

-- Location: LCCOMB_X42_Y14_N14
\INSTREG|jump_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[22]~feeder_combout\ = \MEM|dataOut\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|dataOut\(22),
	combout => \INSTREG|jump_out[22]~feeder_combout\);

-- Location: LCFF_X42_Y14_N15
\INSTREG|jump_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[22]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(22));

-- Location: LCCOMB_X43_Y10_N28
\REGFILE|MEM~547\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~547_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~251_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~187_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~187_regout\,
	datac => \REGFILE|MEM~251_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~547_combout\);

-- Location: LCFF_X49_Y14_N11
\REGFILE|MEM~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[23]~20_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~219_regout\);

-- Location: LCCOMB_X42_Y10_N8
\REGFILE|MEM~548\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~548_combout\ = (\REGFILE|MEM~547_combout\ & ((\REGFILE|MEM~283_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~547_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~219_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~283_regout\,
	datab => \REGFILE|MEM~547_combout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~219_regout\,
	combout => \REGFILE|MEM~548_combout\);

-- Location: LCCOMB_X49_Y14_N24
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

-- Location: LCFF_X49_Y14_N25
\REGFILE|MEM~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~155feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~155_regout\);

-- Location: LCFF_X49_Y15_N27
\REGFILE|MEM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~59_regout\);

-- Location: LCFF_X49_Y15_N1
\REGFILE|MEM~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~91_regout\);

-- Location: LCCOMB_X49_Y15_N0
\REGFILE|MEM~549\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~549_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~91_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~59_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~59_regout\,
	datac => \REGFILE|MEM~91_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~549_combout\);

-- Location: LCCOMB_X48_Y13_N16
\REGFILE|MEM~550\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~550_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~549_combout\ & ((\REGFILE|MEM~155_regout\))) # (!\REGFILE|MEM~549_combout\ & (\REGFILE|MEM~123_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~123_regout\,
	datac => \REGFILE|MEM~155_regout\,
	datad => \REGFILE|MEM~549_combout\,
	combout => \REGFILE|MEM~550_combout\);

-- Location: LCCOMB_X44_Y10_N16
\REGFILE|MEM~551\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~551_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~548_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~548_combout\,
	datad => \REGFILE|MEM~550_combout\,
	combout => \REGFILE|MEM~551_combout\);

-- Location: LCFF_X44_Y10_N1
\regA|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~551_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(23));

-- Location: LCCOMB_X44_Y10_N0
\MUXA|salida[23]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~17_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(23))) # (!\rst~combout\ & ((\regA|dt_out\(23)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(23)))

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
	combout => \MUXA|salida[23]~17_combout\);

-- Location: LCCOMB_X44_Y12_N30
\ALUCOMP|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~73_combout\ = (\MUXA|salida[22]~18_combout\ & ((\ALUCOMP|Add0~72_combout\ & (\ALUCOMP|Add0~71\ & VCC)) # (!\ALUCOMP|Add0~72_combout\ & (!\ALUCOMP|Add0~71\)))) # (!\MUXA|salida[22]~18_combout\ & ((\ALUCOMP|Add0~72_combout\ & 
-- (!\ALUCOMP|Add0~71\)) # (!\ALUCOMP|Add0~72_combout\ & ((\ALUCOMP|Add0~71\) # (GND)))))
-- \ALUCOMP|Add0~74\ = CARRY((\MUXA|salida[22]~18_combout\ & (!\ALUCOMP|Add0~72_combout\ & !\ALUCOMP|Add0~71\)) # (!\MUXA|salida[22]~18_combout\ & ((!\ALUCOMP|Add0~71\) # (!\ALUCOMP|Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~18_combout\,
	datab => \ALUCOMP|Add0~72_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~71\,
	combout => \ALUCOMP|Add0~73_combout\,
	cout => \ALUCOMP|Add0~74\);

-- Location: LCCOMB_X44_Y11_N0
\ALUCOMP|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~76_combout\ = ((\ALUCOMP|Add0~75_combout\ $ (\MUXA|salida[23]~17_combout\ $ (!\ALUCOMP|Add0~74\)))) # (GND)
-- \ALUCOMP|Add0~77\ = CARRY((\ALUCOMP|Add0~75_combout\ & ((\MUXA|salida[23]~17_combout\) # (!\ALUCOMP|Add0~74\))) # (!\ALUCOMP|Add0~75_combout\ & (\MUXA|salida[23]~17_combout\ & !\ALUCOMP|Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~75_combout\,
	datab => \MUXA|salida[23]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~74\,
	combout => \ALUCOMP|Add0~76_combout\,
	cout => \ALUCOMP|Add0~77\);

-- Location: LCCOMB_X44_Y11_N24
\ALUCOMP|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|Add0~76_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux8~0_combout\);

-- Location: LCCOMB_X47_Y11_N30
\MUXB|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux8~0_combout\ = (\regB|dt_out\(23) & ((\rst~combout\) # ((\CONTROLU|ALUsrcB[1]~3_combout\ & !\CONTROLU|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regB|dt_out\(23),
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXB|Mux8~0_combout\);

-- Location: LCCOMB_X43_Y11_N22
\ALUCOMP|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~1_combout\ = (\MUXA|salida[23]~17_combout\ & ((\MUXB|Mux8~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[23]~17_combout\ & (\MUXB|Mux8~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~17_combout\,
	datab => \MUXB|Mux8~0_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux8~1_combout\);

-- Location: LCCOMB_X44_Y11_N30
\ALUCOMP|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\ALUCOMP|Mux8~1_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux8~0_combout\)) # (!\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux8~0_combout\,
	datad => \ALUCOMP|Mux8~1_combout\,
	combout => \ALUCOMP|Mux8~2_combout\);

-- Location: LCFF_X44_Y11_N31
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCCOMB_X49_Y14_N10
\MUXMemReg|salida[23]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[23]~20_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(23)))) # (!\rst~combout\ & (\MDR|dt_out\(23))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(23),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(23),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[23]~20_combout\);

-- Location: LCFF_X48_Y13_N1
\REGFILE|MEM~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[23]~20_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~123_regout\);

-- Location: LCCOMB_X48_Y13_N10
\REGFILE|MEM~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~395_combout\ = (\REGFILE|MEM~394_combout\ & (((\REGFILE|MEM~155_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~394_combout\ & (\REGFILE|MEM~123_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~394_combout\,
	datab => \REGFILE|MEM~123_regout\,
	datac => \REGFILE|MEM~155_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~395_combout\);

-- Location: LCCOMB_X48_Y13_N6
\REGFILE|MEM~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~396_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~393_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~395_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~393_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~395_combout\,
	combout => \REGFILE|MEM~396_combout\);

-- Location: LCFF_X48_Y13_N7
\regB|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(23));

-- Location: LCCOMB_X38_Y14_N8
\MEM|MEM~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~390_combout\ = (\ADDRDEC|writeMemory~0_combout\ & (\MUXPC|salida[1]~1_combout\ & (\MUXPC|salida[2]~2_combout\ & \MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|writeMemory~0_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MUXPC|salida[2]~2_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~390_combout\);

-- Location: LCFF_X37_Y13_N3
\MEM|MEM~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~283_regout\);

-- Location: LCFF_X37_Y13_N17
\MEM|MEM~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~219_regout\);

-- Location: LCCOMB_X37_Y13_N16
\MEM|MEM~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~406_combout\ = (\MEM|MEM~405_combout\ & ((\MEM|MEM~283_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~405_combout\ & (((\MEM|MEM~219_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~405_combout\,
	datab => \MEM|MEM~283_regout\,
	datac => \MEM|MEM~219_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~406_combout\);

-- Location: LCFF_X39_Y11_N7
\MEM|MEM~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~123_regout\);

-- Location: LCCOMB_X36_Y10_N26
\MEM|MEM~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~468_combout\ = !\regB|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(23),
	combout => \MEM|MEM~468_combout\);

-- Location: LCCOMB_X40_Y13_N22
\MEM|MEM~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~393_combout\ = (!\MUXPC|salida[2]~2_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\ADDRDEC|writeMemory~0_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~393_combout\);

-- Location: LCFF_X36_Y10_N27
\MEM|MEM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~468_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~59_regout\);

-- Location: LCCOMB_X36_Y10_N8
\MEM|MEM~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~407_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~91_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~59_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~91_regout\,
	datab => \MEM|MEM~59_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~407_combout\);

-- Location: LCCOMB_X39_Y11_N6
\MEM|MEM~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~408_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~407_combout\ & (\MEM|MEM~155_regout\)) # (!\MEM|MEM~407_combout\ & ((\MEM|MEM~123_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~155_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~123_regout\,
	datad => \MEM|MEM~407_combout\,
	combout => \MEM|MEM~408_combout\);

-- Location: LCCOMB_X39_Y11_N10
\MEM|MEM~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~409_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~406_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~408_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~406_combout\,
	datad => \MEM|MEM~408_combout\,
	combout => \MEM|MEM~409_combout\);

-- Location: LCFF_X39_Y11_N11
\MEM|dataOut[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~409_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(23));

-- Location: LCFF_X44_Y13_N25
\INSTREG|jump_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(23),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(23));

-- Location: LCCOMB_X42_Y10_N24
\REGFILE|MEM~275feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~275feeder_combout\ = \MUXMemReg|salida[15]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[15]~12_combout\,
	combout => \REGFILE|MEM~275feeder_combout\);

-- Location: LCFF_X42_Y10_N25
\REGFILE|MEM~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~275feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~275_regout\);

-- Location: LCCOMB_X42_Y13_N16
\REGFILE|MEM~588\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~588_combout\ = (\REGFILE|MEM~587_combout\ & (((\REGFILE|MEM~275_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~587_combout\ & (\REGFILE|MEM~211_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~587_combout\,
	datab => \REGFILE|MEM~211_regout\,
	datac => \REGFILE|MEM~275_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~588_combout\);

-- Location: LCCOMB_X46_Y15_N8
\REGFILE|MEM~591\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~591_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~588_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~590_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~590_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~588_combout\,
	combout => \REGFILE|MEM~591_combout\);

-- Location: LCFF_X46_Y15_N9
\regA|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(15));

-- Location: LCCOMB_X46_Y15_N10
\MUXA|salida[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~25_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(15))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(15)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(15),
	datac => \regA|dt_out\(15),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[15]~25_combout\);

-- Location: LCCOMB_X44_Y12_N18
\ALUCOMP|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~52_combout\ = (\MUXA|salida[16]~24_combout\ & ((\ALUCOMP|Add0~51_combout\ & (\ALUCOMP|Add0~49\ & VCC)) # (!\ALUCOMP|Add0~51_combout\ & (!\ALUCOMP|Add0~49\)))) # (!\MUXA|salida[16]~24_combout\ & ((\ALUCOMP|Add0~51_combout\ & 
-- (!\ALUCOMP|Add0~49\)) # (!\ALUCOMP|Add0~51_combout\ & ((\ALUCOMP|Add0~49\) # (GND)))))
-- \ALUCOMP|Add0~53\ = CARRY((\MUXA|salida[16]~24_combout\ & (!\ALUCOMP|Add0~51_combout\ & !\ALUCOMP|Add0~49\)) # (!\MUXA|salida[16]~24_combout\ & ((!\ALUCOMP|Add0~49\) # (!\ALUCOMP|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~24_combout\,
	datab => \ALUCOMP|Add0~51_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~49\,
	combout => \ALUCOMP|Add0~52_combout\,
	cout => \ALUCOMP|Add0~53\);

-- Location: LCCOMB_X44_Y12_N22
\ALUCOMP|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~60_combout\ = (\ALUCOMP|Add0~59_combout\ & ((\MUXA|salida[18]~22_combout\ & (\ALUCOMP|Add0~57\ & VCC)) # (!\MUXA|salida[18]~22_combout\ & (!\ALUCOMP|Add0~57\)))) # (!\ALUCOMP|Add0~59_combout\ & ((\MUXA|salida[18]~22_combout\ & 
-- (!\ALUCOMP|Add0~57\)) # (!\MUXA|salida[18]~22_combout\ & ((\ALUCOMP|Add0~57\) # (GND)))))
-- \ALUCOMP|Add0~61\ = CARRY((\ALUCOMP|Add0~59_combout\ & (!\MUXA|salida[18]~22_combout\ & !\ALUCOMP|Add0~57\)) # (!\ALUCOMP|Add0~59_combout\ & ((!\ALUCOMP|Add0~57\) # (!\MUXA|salida[18]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~59_combout\,
	datab => \MUXA|salida[18]~22_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~57\,
	combout => \ALUCOMP|Add0~60_combout\,
	cout => \ALUCOMP|Add0~61\);

-- Location: LCCOMB_X45_Y14_N0
\ALUCOMP|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux13~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux13~0_combout\ & (\ALUCOMP|Add0~60_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux13~0_combout\,
	datac => \ALUCOMP|Add0~60_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux13~1_combout\);

-- Location: LCCOMB_X45_Y14_N14
\ALUCOMP|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux13~0_combout\)) # (!\MUXA|salida[18]~22_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[18]~22_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \MUXB|Mux13~0_combout\,
	datad => \ALUCOMP|Mux13~1_combout\,
	combout => \ALUCOMP|Mux13~2_combout\);

-- Location: LCFF_X45_Y14_N15
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCCOMB_X47_Y15_N16
\PROGCOUNT|addr_out[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[18]~16_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(18)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux13~2_combout\,
	datad => \regALU|dt_out\(18),
	combout => \PROGCOUNT|addr_out[18]~16_combout\);

-- Location: LCFF_X47_Y15_N17
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[18]~16_combout\,
	sdata => \INSTREG|jump_out\(16),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(18));

-- Location: LCFF_X46_Y8_N17
\REGFILE|MEM~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~182_regout\);

-- Location: LCFF_X46_Y8_N31
\REGFILE|MEM~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~246_regout\);

-- Location: LCCOMB_X46_Y8_N30
\REGFILE|MEM~572\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~572_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~246_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~182_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~182_regout\,
	datac => \REGFILE|MEM~246_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~572_combout\);

-- Location: LCCOMB_X45_Y10_N6
\REGFILE|MEM~278feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~278feeder_combout\ = \MUXMemReg|salida[18]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[18]~15_combout\,
	combout => \REGFILE|MEM~278feeder_combout\);

-- Location: LCFF_X45_Y10_N7
\REGFILE|MEM~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~278feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~278_regout\);

-- Location: LCCOMB_X45_Y8_N28
\REGFILE|MEM~573\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~573_combout\ = (\REGFILE|MEM~572_combout\ & (((\REGFILE|MEM~278_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~572_combout\ & (\REGFILE|MEM~214_regout\ & ((\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~214_regout\,
	datab => \REGFILE|MEM~572_combout\,
	datac => \REGFILE|MEM~278_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~573_combout\);

-- Location: LCFF_X49_Y10_N29
\REGFILE|MEM~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[18]~15_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~150_regout\);

-- Location: LCCOMB_X48_Y8_N20
\REGFILE|MEM~118feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~118feeder_combout\ = \MUXMemReg|salida[18]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[18]~15_combout\,
	combout => \REGFILE|MEM~118feeder_combout\);

-- Location: LCFF_X48_Y8_N21
\REGFILE|MEM~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~118feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~118_regout\);

-- Location: LCFF_X49_Y7_N11
\REGFILE|MEM~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~86_regout\);

-- Location: LCCOMB_X48_Y8_N16
\REGFILE|MEM~574\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~574_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~86_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~54_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~86_regout\,
	combout => \REGFILE|MEM~574_combout\);

-- Location: LCCOMB_X48_Y8_N30
\REGFILE|MEM~575\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~575_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~574_combout\ & (\REGFILE|MEM~150_regout\)) # (!\REGFILE|MEM~574_combout\ & ((\REGFILE|MEM~118_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~150_regout\,
	datac => \REGFILE|MEM~118_regout\,
	datad => \REGFILE|MEM~574_combout\,
	combout => \REGFILE|MEM~575_combout\);

-- Location: LCCOMB_X45_Y14_N2
\REGFILE|MEM~576\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~576_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~573_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~575_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~573_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~575_combout\,
	combout => \REGFILE|MEM~576_combout\);

-- Location: LCFF_X45_Y14_N3
\regA|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(18));

-- Location: LCCOMB_X45_Y14_N12
\MUXA|salida[18]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~22_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(18))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(18)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(18),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(18),
	combout => \MUXA|salida[18]~22_combout\);

-- Location: LCCOMB_X44_Y12_N24
\ALUCOMP|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~64_combout\ = ((\MUXA|salida[19]~21_combout\ $ (\ALUCOMP|Add0~63_combout\ $ (!\ALUCOMP|Add0~61\)))) # (GND)
-- \ALUCOMP|Add0~65\ = CARRY((\MUXA|salida[19]~21_combout\ & ((\ALUCOMP|Add0~63_combout\) # (!\ALUCOMP|Add0~61\))) # (!\MUXA|salida[19]~21_combout\ & (\ALUCOMP|Add0~63_combout\ & !\ALUCOMP|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~21_combout\,
	datab => \ALUCOMP|Add0~63_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~61\,
	combout => \ALUCOMP|Add0~64_combout\,
	cout => \ALUCOMP|Add0~65\);

-- Location: LCCOMB_X48_Y11_N26
\ALUCOMP|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~64_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux12~0_combout\);

-- Location: LCCOMB_X48_Y11_N14
\ALUCOMP|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux12~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux12~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux12~1_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux12~0_combout\,
	combout => \ALUCOMP|Mux12~2_combout\);

-- Location: LCFF_X48_Y11_N15
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCCOMB_X46_Y9_N2
\MUXMemReg|salida[19]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[19]~16_combout\ = (\rst~combout\ & (((\regALU|dt_out\(19))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(19))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(19),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(19),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[19]~16_combout\);

-- Location: LCFF_X46_Y8_N15
\REGFILE|MEM~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~183_regout\);

-- Location: LCCOMB_X47_Y8_N24
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

-- Location: LCFF_X47_Y8_N25
\REGFILE|MEM~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~247feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~247_regout\);

-- Location: LCCOMB_X46_Y8_N14
\REGFILE|MEM~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~372_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~247_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~183_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~183_regout\,
	datad => \REGFILE|MEM~247_regout\,
	combout => \REGFILE|MEM~372_combout\);

-- Location: LCCOMB_X46_Y9_N20
\REGFILE|MEM~215feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~215feeder_combout\ = \MUXMemReg|salida[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[19]~16_combout\,
	combout => \REGFILE|MEM~215feeder_combout\);

-- Location: LCFF_X46_Y9_N21
\REGFILE|MEM~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~215feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~215_regout\);

-- Location: LCFF_X44_Y12_N31
\REGFILE|MEM~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~279_regout\);

-- Location: LCCOMB_X46_Y9_N14
\REGFILE|MEM~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~373_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~372_combout\ & ((\REGFILE|MEM~279_regout\))) # (!\REGFILE|MEM~372_combout\ & (\REGFILE|MEM~215_regout\)))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~372_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~372_combout\,
	datac => \REGFILE|MEM~215_regout\,
	datad => \REGFILE|MEM~279_regout\,
	combout => \REGFILE|MEM~373_combout\);

-- Location: LCCOMB_X46_Y15_N30
\REGFILE|MEM~119feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~119feeder_combout\ = \MUXMemReg|salida[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[19]~16_combout\,
	combout => \REGFILE|MEM~119feeder_combout\);

-- Location: LCFF_X46_Y15_N31
\REGFILE|MEM~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~119feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~119_regout\);

-- Location: LCFF_X44_Y12_N1
\REGFILE|MEM~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[19]~16_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~151_regout\);

-- Location: LCCOMB_X49_Y15_N24
\REGFILE|MEM~87feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~87feeder_combout\ = \MUXMemReg|salida[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[19]~16_combout\,
	combout => \REGFILE|MEM~87feeder_combout\);

-- Location: LCFF_X49_Y15_N25
\REGFILE|MEM~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~87feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~87_regout\);

-- Location: LCCOMB_X49_Y15_N18
\REGFILE|MEM~55feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~55feeder_combout\ = \MUXMemReg|salida[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[19]~16_combout\,
	combout => \REGFILE|MEM~55feeder_combout\);

-- Location: LCFF_X49_Y15_N19
\REGFILE|MEM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~55feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~55_regout\);

-- Location: LCCOMB_X49_Y15_N12
\REGFILE|MEM~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~374_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~87_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~55_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~87_regout\,
	datad => \REGFILE|MEM~55_regout\,
	combout => \REGFILE|MEM~374_combout\);

-- Location: LCCOMB_X46_Y15_N28
\REGFILE|MEM~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~375_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~374_combout\ & ((\REGFILE|MEM~151_regout\))) # (!\REGFILE|MEM~374_combout\ & (\REGFILE|MEM~119_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~119_regout\,
	datac => \REGFILE|MEM~151_regout\,
	datad => \REGFILE|MEM~374_combout\,
	combout => \REGFILE|MEM~375_combout\);

-- Location: LCCOMB_X44_Y15_N12
\REGFILE|MEM~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~376_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~373_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~373_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~375_combout\,
	combout => \REGFILE|MEM~376_combout\);

-- Location: LCFF_X44_Y15_N13
\regB|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(19));

-- Location: LCFF_X38_Y9_N23
\MEM|MEM~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~183_regout\);

-- Location: LCCOMB_X38_Y9_N22
\MEM|MEM~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~425_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~247_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~183_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~247_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~183_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~425_combout\);

-- Location: LCFF_X40_Y13_N19
\MEM|MEM~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~215_regout\);

-- Location: LCCOMB_X40_Y13_N18
\MEM|MEM~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~426_combout\ = (\MEM|MEM~425_combout\ & ((\MEM|MEM~279_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~425_combout\ & (((\MEM|MEM~215_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~279_regout\,
	datab => \MEM|MEM~425_combout\,
	datac => \MEM|MEM~215_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~426_combout\);

-- Location: LCCOMB_X40_Y11_N16
\MEM|MEM~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~392_combout\ = (!\MUXPC|salida[1]~1_combout\ & (!\MUXPC|salida[2]~2_combout\ & (\ADDRDEC|writeMemory~0_combout\ & \MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \ADDRDEC|writeMemory~0_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~392_combout\);

-- Location: LCFF_X40_Y10_N1
\MEM|MEM~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~87_regout\);

-- Location: LCFF_X40_Y10_N11
\MEM|MEM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~55_regout\);

-- Location: LCCOMB_X40_Y10_N10
\MEM|MEM~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~427_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~87_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~55_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~87_regout\,
	datac => \MEM|MEM~55_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~427_combout\);

-- Location: LCFF_X42_Y12_N3
\MEM|MEM~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~119_regout\);

-- Location: LCFF_X43_Y11_N11
\MEM|MEM~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(19),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~151_regout\);

-- Location: LCCOMB_X42_Y12_N2
\MEM|MEM~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~428_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~427_combout\ & ((\MEM|MEM~151_regout\))) # (!\MEM|MEM~427_combout\ & (\MEM|MEM~119_regout\)))) # (!\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~427_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~427_combout\,
	datac => \MEM|MEM~119_regout\,
	datad => \MEM|MEM~151_regout\,
	combout => \MEM|MEM~428_combout\);

-- Location: LCCOMB_X42_Y12_N16
\MEM|MEM~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~429_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~426_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~428_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~426_combout\,
	datad => \MEM|MEM~428_combout\,
	combout => \MEM|MEM~429_combout\);

-- Location: LCFF_X42_Y12_N17
\MEM|dataOut[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~429_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(19));

-- Location: LCFF_X42_Y11_N21
\INSTREG|jump_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(19),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(19));

-- Location: LCFF_X49_Y11_N5
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[21]~19_combout\,
	sdata => \INSTREG|jump_out\(19),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(21));

-- Location: LCCOMB_X44_Y10_N28
\MUXA|salida[21]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~19_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(21)))) # (!\rst~combout\ & (\regA|dt_out\(21))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(21),
	datab => \PROGCOUNT|addr_out\(21),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[21]~19_combout\);

-- Location: LCCOMB_X49_Y11_N10
\PROGCOUNT|addr_out[20]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[20]~18_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(20))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(20),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux11~2_combout\,
	combout => \PROGCOUNT|addr_out[20]~18_combout\);

-- Location: LCFF_X49_Y11_N11
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[20]~18_combout\,
	sdata => \INSTREG|jump_out\(18),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(20));

-- Location: LCFF_X45_Y10_N9
\REGFILE|MEM~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~280_regout\);

-- Location: LCCOMB_X46_Y9_N12
\REGFILE|MEM~216feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~216feeder_combout\ = \MUXMemReg|salida[20]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[20]~17_combout\,
	combout => \REGFILE|MEM~216feeder_combout\);

-- Location: LCFF_X46_Y9_N13
\REGFILE|MEM~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~216feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~216_regout\);

-- Location: LCCOMB_X42_Y9_N4
\REGFILE|MEM~563\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~563_combout\ = (\REGFILE|MEM~562_combout\ & ((\REGFILE|MEM~280_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~562_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~216_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~562_combout\,
	datab => \REGFILE|MEM~280_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~216_regout\,
	combout => \REGFILE|MEM~563_combout\);

-- Location: LCFF_X49_Y10_N3
\REGFILE|MEM~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~152_regout\);

-- Location: LCCOMB_X47_Y8_N30
\REGFILE|MEM~565\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~565_combout\ = (\REGFILE|MEM~564_combout\ & (((\REGFILE|MEM~152_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~564_combout\ & (\REGFILE|MEM~120_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~564_combout\,
	datab => \REGFILE|MEM~120_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~152_regout\,
	combout => \REGFILE|MEM~565_combout\);

-- Location: LCCOMB_X46_Y16_N10
\REGFILE|MEM~566\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~566_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~563_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~565_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~563_combout\,
	datad => \REGFILE|MEM~565_combout\,
	combout => \REGFILE|MEM~566_combout\);

-- Location: LCFF_X46_Y16_N11
\regA|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(20));

-- Location: LCCOMB_X46_Y12_N8
\MUXA|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~20_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(20))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(20)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(20)))))

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
	combout => \MUXA|salida[20]~20_combout\);

-- Location: LCCOMB_X46_Y12_N4
\ALUCOMP|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~0_combout\ = (\MUXB|Mux11~0_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXA|salida[20]~20_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXB|Mux11~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXA|salida[20]~20_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux11~0_combout\,
	datab => \MUXA|salida[20]~20_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux11~0_combout\);

-- Location: LCCOMB_X44_Y12_N26
\ALUCOMP|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~67_combout\ = (\MUXA|salida[20]~20_combout\ & ((\ALUCOMP|Add0~66_combout\ & (\ALUCOMP|Add0~65\ & VCC)) # (!\ALUCOMP|Add0~66_combout\ & (!\ALUCOMP|Add0~65\)))) # (!\MUXA|salida[20]~20_combout\ & ((\ALUCOMP|Add0~66_combout\ & 
-- (!\ALUCOMP|Add0~65\)) # (!\ALUCOMP|Add0~66_combout\ & ((\ALUCOMP|Add0~65\) # (GND)))))
-- \ALUCOMP|Add0~68\ = CARRY((\MUXA|salida[20]~20_combout\ & (!\ALUCOMP|Add0~66_combout\ & !\ALUCOMP|Add0~65\)) # (!\MUXA|salida[20]~20_combout\ & ((!\ALUCOMP|Add0~65\) # (!\ALUCOMP|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~20_combout\,
	datab => \ALUCOMP|Add0~66_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~65\,
	combout => \ALUCOMP|Add0~67_combout\,
	cout => \ALUCOMP|Add0~68\);

-- Location: LCCOMB_X46_Y12_N2
\ALUCOMP|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux11~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux11~0_combout\ & (\ALUCOMP|Add0~67_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux11~0_combout\,
	datac => \ALUCOMP|Add0~67_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux11~1_combout\);

-- Location: LCCOMB_X46_Y12_N10
\ALUCOMP|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux11~0_combout\)) # (!\MUXA|salida[20]~20_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \MUXA|salida[20]~20_combout\,
	datac => \MUXB|Mux11~0_combout\,
	datad => \ALUCOMP|Mux11~1_combout\,
	combout => \ALUCOMP|Mux11~2_combout\);

-- Location: LCFF_X46_Y12_N11
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCFF_X39_Y11_N5
\MEM|MEM~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~120_regout\);

-- Location: LCFF_X40_Y11_N23
\MEM|MEM~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~88_regout\);

-- Location: LCFF_X40_Y11_N21
\MEM|MEM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~56_regout\);

-- Location: LCCOMB_X40_Y11_N20
\MEM|MEM~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~422_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~88_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~56_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~88_regout\,
	datac => \MEM|MEM~56_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~422_combout\);

-- Location: LCCOMB_X39_Y11_N4
\MEM|MEM~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~423_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~422_combout\ & (\MEM|MEM~152_regout\)) # (!\MEM|MEM~422_combout\ & ((\MEM|MEM~120_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~152_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~120_regout\,
	datad => \MEM|MEM~422_combout\,
	combout => \MEM|MEM~423_combout\);

-- Location: LCFF_X37_Y13_N23
\MEM|MEM~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~280_regout\);

-- Location: LCFF_X37_Y13_N1
\MEM|MEM~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~216_regout\);

-- Location: LCCOMB_X37_Y13_N0
\MEM|MEM~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~421_combout\ = (\MEM|MEM~420_combout\ & ((\MEM|MEM~280_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~420_combout\ & (((\MEM|MEM~216_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~420_combout\,
	datab => \MEM|MEM~280_regout\,
	datac => \MEM|MEM~216_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~421_combout\);

-- Location: LCCOMB_X39_Y11_N12
\MEM|MEM~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~424_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~421_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~423_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~423_combout\,
	datad => \MEM|MEM~421_combout\,
	combout => \MEM|MEM~424_combout\);

-- Location: LCFF_X39_Y11_N13
\MEM|dataOut[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~424_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(20));

-- Location: LCCOMB_X42_Y11_N22
\MUXREAD|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux11~0_combout\ = (\MEM|dataOut\(20) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(20),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux11~0_combout\);

-- Location: LCFF_X49_Y10_N21
\MDR|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MUXREAD|Mux11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(20));

-- Location: LCCOMB_X49_Y10_N20
\MUXMemReg|salida[20]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[20]~17_combout\ = (\rst~combout\ & (\regALU|dt_out\(20))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(20)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(20),
	datac => \MDR|dt_out\(20),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[20]~17_combout\);

-- Location: LCFF_X48_Y8_N13
\REGFILE|MEM~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[20]~17_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~120_regout\);

-- Location: LCCOMB_X47_Y8_N6
\REGFILE|MEM~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~380_combout\ = (\REGFILE|MEM~379_combout\ & (((\REGFILE|MEM~152_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~379_combout\ & (\REGFILE|MEM~120_regout\ & (\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~379_combout\,
	datab => \REGFILE|MEM~120_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~152_regout\,
	combout => \REGFILE|MEM~380_combout\);

-- Location: LCCOMB_X46_Y12_N16
\REGFILE|MEM~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~381_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~378_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~378_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~380_combout\,
	combout => \REGFILE|MEM~381_combout\);

-- Location: LCFF_X46_Y12_N17
\regB|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(20));

-- Location: LCCOMB_X46_Y12_N30
\MUXB|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux11~0_combout\ = (\regB|dt_out\(20) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \regB|dt_out\(20),
	datad => \CONTROLU|ALUsrcB[1]~3_combout\,
	combout => \MUXB|Mux11~0_combout\);

-- Location: LCCOMB_X46_Y12_N6
\ALUCOMP|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~66_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux11~0_combout\,
	combout => \ALUCOMP|Add0~66_combout\);

-- Location: LCCOMB_X43_Y12_N10
\ALUCOMP|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~1_combout\ = (\ALUCOMP|Mux9~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux25~1_combout\)))) # (!\ALUCOMP|Mux9~0_combout\ & (\ALUCOMP|Add0~73_combout\ & (\ALUCOMP|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux9~0_combout\,
	datab => \ALUCOMP|Add0~73_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux9~1_combout\);

-- Location: LCCOMB_X43_Y12_N26
\ALUCOMP|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux9~0_combout\)) # (!\MUXA|salida[22]~18_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~18_combout\,
	datab => \MUXB|Mux9~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux9~1_combout\,
	combout => \ALUCOMP|Mux9~2_combout\);

-- Location: LCCOMB_X43_Y13_N20
\MUXB|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux3~0_combout\ = (\regB|dt_out\(28) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(28),
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \rst~combout\,
	combout => \MUXB|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y10_N14
\PROGCOUNT|addr_out[28]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~34_combout\ = (\MUXA|salida[28]~12_combout\ & ((\ALUCOMP|Mux25~3_combout\ & ((!\MUXB|Mux3~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # (\MUXB|Mux3~0_combout\))))) # (!\MUXA|salida[28]~12_combout\ & 
-- ((\ALUCOMP|Mux25~3_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & \MUXB|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~12_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXB|Mux3~0_combout\,
	combout => \PROGCOUNT|addr_out[28]~34_combout\);

-- Location: LCCOMB_X45_Y10_N18
\PROGCOUNT|addr_out[28]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~36_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((\PROGCOUNT|addr_out[28]~34_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((!\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \PROGCOUNT|addr_out[28]~34_combout\,
	combout => \PROGCOUNT|addr_out[28]~36_combout\);

-- Location: LCCOMB_X45_Y10_N4
\PROGCOUNT|addr_out[28]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~35_combout\ = (\ALUCOMP|Mux25~1_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~1_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (((\PROGCOUNT|addr_out[28]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \PROGCOUNT|addr_out[28]~34_combout\,
	combout => \PROGCOUNT|addr_out[28]~35_combout\);

-- Location: LCCOMB_X45_Y10_N24
\PROGCOUNT|addr_out[28]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~26_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((\PROGCOUNT|addr_out[28]~36_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & (\PROGCOUNT|addr_out[28]~35_combout\ & ((\ALUCOMP|Add0~91_combout\) # (\PROGCOUNT|addr_out[28]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~91_combout\,
	datab => \PROGCOUNT|addr_out[28]~36_combout\,
	datac => \PROGCOUNT|addr_out[28]~35_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \PROGCOUNT|addr_out[28]~26_combout\);

-- Location: LCCOMB_X46_Y11_N8
\PCwrite~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~4_combout\ = (!\ALUCOMP|Mux11~2_combout\ & (\CONTROLU|ALUop[0]~0_combout\ & (!\ALUCOMP|Mux9~2_combout\ & !\PROGCOUNT|addr_out[28]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux11~2_combout\,
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datac => \ALUCOMP|Mux9~2_combout\,
	datad => \PROGCOUNT|addr_out[28]~26_combout\,
	combout => \PCwrite~4_combout\);

-- Location: LCCOMB_X46_Y14_N10
\PROGCOUNT|addr_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[4]~2_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(4))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(4),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux27~2_combout\,
	combout => \PROGCOUNT|addr_out[4]~2_combout\);

-- Location: LCFF_X46_Y10_N19
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCFF_X45_Y14_N17
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCCOMB_X46_Y14_N4
\ADDRDEC|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~0_combout\ = (!\regALU|dt_out\(3) & (!\regALU|dt_out\(1) & (!\regALU|dt_out\(0) & !\regALU|dt_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(3),
	datab => \regALU|dt_out\(1),
	datac => \regALU|dt_out\(0),
	datad => \regALU|dt_out\(2),
	combout => \ADDRDEC|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y14_N14
\ADDRDEC|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~3_combout\ = (!\regALU|dt_out\(13) & (!\regALU|dt_out\(16) & (!\regALU|dt_out\(15) & !\regALU|dt_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(13),
	datab => \regALU|dt_out\(16),
	datac => \regALU|dt_out\(15),
	datad => \regALU|dt_out\(14),
	combout => \ADDRDEC|Equal1~3_combout\);

-- Location: LCCOMB_X47_Y14_N30
\PROGCOUNT|addr_out[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[9]~7_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(9)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux22~2_combout\,
	datad => \regALU|dt_out\(9),
	combout => \PROGCOUNT|addr_out[9]~7_combout\);

-- Location: LCCOMB_X48_Y14_N8
\MUXREAD|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux24~0_combout\ = (\MEM|dataOut\(7) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(7),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux24~0_combout\);

-- Location: LCFF_X48_Y14_N9
\MDR|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(7));

-- Location: LCCOMB_X49_Y14_N2
\MUXMemReg|salida[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[7]~4_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(7))) # (!\rst~combout\ & ((\MDR|dt_out\(7)))))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(7),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \rst~combout\,
	datad => \MDR|dt_out\(7),
	combout => \MUXMemReg|salida[7]~4_combout\);

-- Location: LCFF_X48_Y10_N11
\REGFILE|MEM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~43_regout\);

-- Location: LCFF_X47_Y10_N23
\REGFILE|MEM~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~75_regout\);

-- Location: LCCOMB_X47_Y10_N22
\REGFILE|MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~314_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~75_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~43_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~43_regout\,
	datac => \REGFILE|MEM~75_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~314_combout\);

-- Location: LCFF_X48_Y10_N9
\REGFILE|MEM~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~139_regout\);

-- Location: LCFF_X49_Y12_N27
\REGFILE|MEM~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~107_regout\);

-- Location: LCCOMB_X49_Y12_N20
\REGFILE|MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~315_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~314_combout\ & (\REGFILE|MEM~139_regout\)) # (!\REGFILE|MEM~314_combout\ & ((\REGFILE|MEM~107_regout\))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~314_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~314_combout\,
	datac => \REGFILE|MEM~139_regout\,
	datad => \REGFILE|MEM~107_regout\,
	combout => \REGFILE|MEM~315_combout\);

-- Location: LCCOMB_X48_Y10_N8
\REGFILE|MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~316_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~313_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~313_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~315_combout\,
	combout => \REGFILE|MEM~316_combout\);

-- Location: LCFF_X44_Y13_N15
\regB|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~316_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(7));

-- Location: LCFF_X39_Y11_N1
\MEM|MEM~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~107_regout\);

-- Location: LCFF_X40_Y11_N9
\MEM|MEM~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~75_regout\);

-- Location: LCFF_X40_Y11_N31
\MEM|MEM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~43_regout\);

-- Location: LCCOMB_X40_Y11_N30
\MEM|MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~319_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~75_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~43_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~75_regout\,
	datac => \MEM|MEM~43_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~319_combout\);

-- Location: LCCOMB_X39_Y11_N0
\MEM|MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~320_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~319_combout\ & (\MEM|MEM~139_regout\)) # (!\MEM|MEM~319_combout\ & ((\MEM|MEM~107_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~139_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~107_regout\,
	datad => \MEM|MEM~319_combout\,
	combout => \MEM|MEM~320_combout\);

-- Location: LCFF_X39_Y14_N13
\MEM|MEM~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~203_regout\);

-- Location: LCCOMB_X38_Y14_N24
\MEM|MEM~267feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~267feeder_combout\ = \regB|dt_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(7),
	combout => \MEM|MEM~267feeder_combout\);

-- Location: LCFF_X38_Y14_N25
\MEM|MEM~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~267feeder_combout\,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~267_regout\);

-- Location: LCCOMB_X39_Y14_N12
\MEM|MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~318_combout\ = (\MEM|MEM~317_combout\ & (((\MEM|MEM~267_regout\)) # (!\MUXPC|salida[0]~0_combout\))) # (!\MEM|MEM~317_combout\ & (\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~203_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~317_combout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~203_regout\,
	datad => \MEM|MEM~267_regout\,
	combout => \MEM|MEM~318_combout\);

-- Location: LCCOMB_X39_Y14_N26
\MEM|MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~321_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~318_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~320_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~320_combout\,
	datad => \MEM|MEM~318_combout\,
	combout => \MEM|MEM~321_combout\);

-- Location: LCFF_X39_Y14_N27
\MEM|dataOut[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~321_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(7));

-- Location: LCFF_X44_Y13_N21
\INSTREG|jump_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(7),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(7));

-- Location: LCFF_X47_Y14_N31
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[9]~7_combout\,
	sdata => \INSTREG|jump_out\(7),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X45_Y14_N24
\MUXA|salida[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~31_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(9)))) # (!\rst~combout\ & (\regA|dt_out\(9))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(9),
	datab => \PROGCOUNT|addr_out\(9),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \rst~combout\,
	combout => \MUXA|salida[9]~31_combout\);

-- Location: LCCOMB_X46_Y11_N24
\PROGCOUNT|addr_out[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[8]~6_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(8))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(8),
	datab => \ALUCOMP|Mux23~2_combout\,
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[8]~6_combout\);

-- Location: LCCOMB_X49_Y12_N10
\MUXREAD|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux25~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(6),
	combout => \MUXREAD|Mux25~0_combout\);

-- Location: LCFF_X49_Y12_N11
\MDR|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(6));

-- Location: LCCOMB_X46_Y14_N18
\PROGCOUNT|addr_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[6]~4_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(6))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux25~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(6),
	datab => \ALUCOMP|Mux25~6_combout\,
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[6]~4_combout\);

-- Location: LCFF_X45_Y10_N11
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCCOMB_X42_Y14_N22
\MUXREAD|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux27~2_combout\ = (\MEM|dataOut\(4) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(4),
	datac => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux27~2_combout\);

-- Location: LCFF_X42_Y14_N23
\MDR|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(4));

-- Location: LCCOMB_X42_Y14_N24
\MUXMemReg|salida[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[4]~1_combout\ = (\rst~combout\ & (\regALU|dt_out\(4))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(4)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(4),
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \MDR|dt_out\(4),
	combout => \MUXMemReg|salida[4]~1_combout\);

-- Location: LCFF_X49_Y8_N29
\REGFILE|MEM~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~232_regout\);

-- Location: LCFF_X49_Y8_N19
\REGFILE|MEM~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~168_regout\);

-- Location: LCCOMB_X49_Y8_N28
\REGFILE|MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~297_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~232_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~168_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~232_regout\,
	datad => \REGFILE|MEM~168_regout\,
	combout => \REGFILE|MEM~297_combout\);

-- Location: LCFF_X47_Y16_N9
\REGFILE|MEM~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~200_regout\);

-- Location: LCCOMB_X47_Y10_N12
\REGFILE|MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~298_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~297_combout\ & (\REGFILE|MEM~264_regout\)) # (!\REGFILE|MEM~297_combout\ & ((\REGFILE|MEM~200_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~264_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~297_combout\,
	datad => \REGFILE|MEM~200_regout\,
	combout => \REGFILE|MEM~298_combout\);

-- Location: LCCOMB_X47_Y13_N2
\REGFILE|MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~301_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~298_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~300_combout\,
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~298_combout\,
	combout => \REGFILE|MEM~301_combout\);

-- Location: LCFF_X47_Y13_N3
\regB|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(4));

-- Location: LCFF_X39_Y10_N5
\MEM|MEM~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~72_regout\);

-- Location: LCFF_X39_Y10_N27
\MEM|MEM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~40_regout\);

-- Location: LCCOMB_X39_Y10_N26
\MEM|MEM~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~334_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~72_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~40_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~72_regout\,
	datac => \MEM|MEM~40_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~334_combout\);

-- Location: LCFF_X38_Y11_N29
\MEM|MEM~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~104_regout\);

-- Location: LCCOMB_X38_Y11_N28
\MEM|MEM~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~335_combout\ = (\MEM|MEM~334_combout\ & ((\MEM|MEM~136_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~334_combout\ & (((\MEM|MEM~104_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~136_regout\,
	datab => \MEM|MEM~334_combout\,
	datac => \MEM|MEM~104_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~335_combout\);

-- Location: LCFF_X39_Y13_N29
\MEM|MEM~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~232_regout\);

-- Location: LCFF_X39_Y13_N3
\MEM|MEM~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~168_regout\);

-- Location: LCCOMB_X39_Y13_N2
\MEM|MEM~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~332_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~232_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~168_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~232_regout\,
	datac => \MEM|MEM~168_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~332_combout\);

-- Location: LCFF_X38_Y14_N17
\MEM|MEM~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(4),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~200_regout\);

-- Location: LCCOMB_X38_Y14_N16
\MEM|MEM~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~333_combout\ = (\MEM|MEM~332_combout\ & ((\MEM|MEM~264_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~332_combout\ & (((\MEM|MEM~200_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~264_regout\,
	datab => \MEM|MEM~332_combout\,
	datac => \MEM|MEM~200_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~333_combout\);

-- Location: LCCOMB_X39_Y14_N6
\MEM|MEM~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~336_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~333_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~335_combout\,
	datad => \MEM|MEM~333_combout\,
	combout => \MEM|MEM~336_combout\);

-- Location: LCFF_X39_Y14_N7
\MEM|dataOut[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~336_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(4));

-- Location: LCFF_X47_Y13_N7
\INSTREG|jump_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(4),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(4));

-- Location: LCFF_X46_Y14_N19
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[6]~4_combout\,
	sdata => \INSTREG|jump_out\(4),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(6));

-- Location: LCCOMB_X45_Y9_N6
\MUXA|salida[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~2_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(6))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(6))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(6),
	datab => \rst~combout\,
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \PROGCOUNT|addr_out\(6),
	combout => \MUXA|salida[6]~2_combout\);

-- Location: LCCOMB_X45_Y13_N4
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (\regB|dt_out\(6) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(6))))) # (!\regB|dt_out\(6) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(6),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(6),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCCOMB_X45_Y9_N18
\ALUCOMP|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~4_combout\ = (\ALUCOMP|Mux25~1_combout\ & (\ALUCONTRL|op[0]~1_combout\)) # (!\ALUCOMP|Mux25~1_combout\ & ((\ALUCONTRL|op[0]~1_combout\ & ((\MUXB|Mux25~0_combout\) # (\MUXA|salida[6]~2_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & 
-- (\MUXB|Mux25~0_combout\ & \MUXA|salida[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \MUXA|salida[6]~2_combout\,
	combout => \ALUCOMP|Mux25~4_combout\);

-- Location: LCCOMB_X46_Y14_N28
\PROGCOUNT|addr_out[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[5]~3_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(5))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(5),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux26~2_combout\,
	combout => \PROGCOUNT|addr_out[5]~3_combout\);

-- Location: LCFF_X46_Y14_N29
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[5]~3_combout\,
	sdata => \INSTREG|func_out\(3),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(5));

-- Location: LCFF_X47_Y10_N27
\REGFILE|MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~73_regout\);

-- Location: LCCOMB_X47_Y10_N26
\REGFILE|MEM~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~479_combout\ = (\INSTREG|jump_out\(21) & (((\REGFILE|MEM~73_regout\) # (\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~41_regout\ & ((!\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~41_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~73_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~479_combout\);

-- Location: LCCOMB_X48_Y15_N18
\REGFILE|MEM~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~480_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~479_combout\ & (\REGFILE|MEM~137_regout\)) # (!\REGFILE|MEM~479_combout\ & ((\REGFILE|MEM~105_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~479_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~137_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~479_combout\,
	datad => \REGFILE|MEM~105_regout\,
	combout => \REGFILE|MEM~480_combout\);

-- Location: LCFF_X49_Y8_N31
\REGFILE|MEM~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~169_regout\);

-- Location: LCFF_X49_Y8_N9
\REGFILE|MEM~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~233_regout\);

-- Location: LCCOMB_X49_Y8_N8
\REGFILE|MEM~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~477_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~233_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~169_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~169_regout\,
	datac => \REGFILE|MEM~233_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~477_combout\);

-- Location: LCFF_X47_Y10_N29
\REGFILE|MEM~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~265_regout\);

-- Location: LCCOMB_X48_Y15_N0
\REGFILE|MEM~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~478_combout\ = (\REGFILE|MEM~477_combout\ & (((\REGFILE|MEM~265_regout\) # (!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~477_combout\ & (\REGFILE|MEM~201_regout\ & (\INSTREG|jump_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~201_regout\,
	datab => \REGFILE|MEM~477_combout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~265_regout\,
	combout => \REGFILE|MEM~478_combout\);

-- Location: LCCOMB_X48_Y15_N12
\REGFILE|MEM~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~481_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~478_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~480_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~480_combout\,
	datad => \REGFILE|MEM~478_combout\,
	combout => \REGFILE|MEM~481_combout\);

-- Location: LCFF_X46_Y12_N15
\regA|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~481_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(5));

-- Location: LCCOMB_X46_Y12_N14
\MUXA|salida[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~3_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(5))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(5)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(5),
	datac => \regA|dt_out\(5),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[5]~3_combout\);

-- Location: LCCOMB_X46_Y14_N24
\PROGCOUNT|addr_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[3]~1_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(3))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(3),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux28~2_combout\,
	combout => \PROGCOUNT|addr_out[3]~1_combout\);

-- Location: LCFF_X46_Y14_N25
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[3]~1_combout\,
	sdata => \INSTREG|func_out\(1),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X46_Y12_N0
\MUXA|salida[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~5_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(3))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(3))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(3),
	datab => \PROGCOUNT|addr_out\(3),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[3]~5_combout\);

-- Location: LCCOMB_X46_Y12_N26
\ALUCOMP|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~1_combout\ = (\MUXB|Mux28~0_combout\ & ((\MUXA|salida[3]~5_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXB|Mux28~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (\MUXA|salida[3]~5_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux28~0_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXA|salida[3]~5_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux28~1_combout\);

-- Location: LCCOMB_X44_Y13_N24
\ALUCOMP|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~17_combout\ = ((\MUXA|salida[3]~5_combout\ $ (\ALUCOMP|Add0~5_combout\ $ (!\ALUCOMP|Add0~16\)))) # (GND)
-- \ALUCOMP|Add0~18\ = CARRY((\MUXA|salida[3]~5_combout\ & ((\ALUCOMP|Add0~5_combout\) # (!\ALUCOMP|Add0~16\))) # (!\MUXA|salida[3]~5_combout\ & (\ALUCOMP|Add0~5_combout\ & !\ALUCOMP|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~5_combout\,
	datab => \ALUCOMP|Add0~5_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~16\,
	combout => \ALUCOMP|Add0~17_combout\,
	cout => \ALUCOMP|Add0~18\);

-- Location: LCCOMB_X46_Y12_N12
\ALUCOMP|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~17_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux28~0_combout\);

-- Location: LCCOMB_X46_Y12_N28
\ALUCOMP|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux28~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux28~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux28~1_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux28~0_combout\,
	combout => \ALUCOMP|Mux28~2_combout\);

-- Location: LCFF_X46_Y12_N29
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCCOMB_X49_Y10_N10
\MUXMemReg|salida[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[3]~29_combout\ = (\rst~combout\ & (((\regALU|dt_out\(3))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(3))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(3),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(3),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[3]~29_combout\);

-- Location: LCCOMB_X47_Y12_N8
\REGFILE|MEM~263feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~263feeder_combout\ = \MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~263feeder_combout\);

-- Location: LCFF_X47_Y12_N9
\REGFILE|MEM~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~263feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~263_regout\);

-- Location: LCCOMB_X48_Y9_N22
\REGFILE|MEM~231feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~231feeder_combout\ = \MUXMemReg|salida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[3]~29_combout\,
	combout => \REGFILE|MEM~231feeder_combout\);

-- Location: LCFF_X48_Y9_N23
\REGFILE|MEM~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~231feeder_combout\,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~231_regout\);

-- Location: LCFF_X48_Y12_N9
\REGFILE|MEM~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[3]~29_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~167_regout\);

-- Location: LCCOMB_X48_Y12_N8
\REGFILE|MEM~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~437_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~231_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~167_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~231_regout\,
	datac => \REGFILE|MEM~167_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~437_combout\);

-- Location: LCCOMB_X47_Y12_N30
\REGFILE|MEM~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~438_combout\ = (\REGFILE|MEM~437_combout\ & (((\REGFILE|MEM~263_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~437_combout\ & (\REGFILE|MEM~199_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~199_regout\,
	datab => \REGFILE|MEM~263_regout\,
	datac => \REGFILE|MEM~437_combout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~438_combout\);

-- Location: LCCOMB_X47_Y13_N18
\REGFILE|MEM~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~441_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~438_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~440_combout\,
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~438_combout\,
	combout => \REGFILE|MEM~441_combout\);

-- Location: LCFF_X47_Y13_N19
\regB|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(3));

-- Location: LCCOMB_X47_Y13_N28
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (!\CONTROLU|ALUsrcB[0]~2_combout\ & ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|func_out\(3)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~2_combout\,
	datab => \regB|dt_out\(3),
	datac => \INSTREG|func_out\(3),
	datad => \CONTROLU|ALUsrcB[1]~1_combout\,
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCCOMB_X44_Y13_N4
\ALUCOMP|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~5_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux28~0_combout\,
	combout => \ALUCOMP|Add0~5_combout\);

-- Location: LCCOMB_X44_Y13_N26
\ALUCOMP|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~19_combout\ = (\ALUCOMP|Add0~4_combout\ & ((\MUXA|salida[4]~4_combout\ & (\ALUCOMP|Add0~18\ & VCC)) # (!\MUXA|salida[4]~4_combout\ & (!\ALUCOMP|Add0~18\)))) # (!\ALUCOMP|Add0~4_combout\ & ((\MUXA|salida[4]~4_combout\ & (!\ALUCOMP|Add0~18\)) 
-- # (!\MUXA|salida[4]~4_combout\ & ((\ALUCOMP|Add0~18\) # (GND)))))
-- \ALUCOMP|Add0~20\ = CARRY((\ALUCOMP|Add0~4_combout\ & (!\MUXA|salida[4]~4_combout\ & !\ALUCOMP|Add0~18\)) # (!\ALUCOMP|Add0~4_combout\ & ((!\ALUCOMP|Add0~18\) # (!\MUXA|salida[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~4_combout\,
	datab => \MUXA|salida[4]~4_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~18\,
	combout => \ALUCOMP|Add0~19_combout\,
	cout => \ALUCOMP|Add0~20\);

-- Location: LCCOMB_X44_Y13_N28
\ALUCOMP|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~21_combout\ = ((\ALUCOMP|Add0~3_combout\ $ (\MUXA|salida[5]~3_combout\ $ (!\ALUCOMP|Add0~20\)))) # (GND)
-- \ALUCOMP|Add0~22\ = CARRY((\ALUCOMP|Add0~3_combout\ & ((\MUXA|salida[5]~3_combout\) # (!\ALUCOMP|Add0~20\))) # (!\ALUCOMP|Add0~3_combout\ & (\MUXA|salida[5]~3_combout\ & !\ALUCOMP|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~3_combout\,
	datab => \MUXA|salida[5]~3_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~20\,
	combout => \ALUCOMP|Add0~21_combout\,
	cout => \ALUCOMP|Add0~22\);

-- Location: LCCOMB_X44_Y13_N30
\ALUCOMP|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~23_combout\ = (\ALUCOMP|Add0~2_combout\ & ((\MUXA|salida[6]~2_combout\ & (\ALUCOMP|Add0~22\ & VCC)) # (!\MUXA|salida[6]~2_combout\ & (!\ALUCOMP|Add0~22\)))) # (!\ALUCOMP|Add0~2_combout\ & ((\MUXA|salida[6]~2_combout\ & (!\ALUCOMP|Add0~22\)) 
-- # (!\MUXA|salida[6]~2_combout\ & ((\ALUCOMP|Add0~22\) # (GND)))))
-- \ALUCOMP|Add0~24\ = CARRY((\ALUCOMP|Add0~2_combout\ & (!\MUXA|salida[6]~2_combout\ & !\ALUCOMP|Add0~22\)) # (!\ALUCOMP|Add0~2_combout\ & ((!\ALUCOMP|Add0~22\) # (!\MUXA|salida[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~2_combout\,
	datab => \MUXA|salida[6]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~22\,
	combout => \ALUCOMP|Add0~23_combout\,
	cout => \ALUCOMP|Add0~24\);

-- Location: LCCOMB_X45_Y9_N12
\ALUCOMP|Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~5_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux25~4_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux25~4_combout\ & (\ALUCOMP|Add0~23_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux25~4_combout\,
	datac => \ALUCOMP|Add0~23_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux25~5_combout\);

-- Location: LCCOMB_X45_Y9_N0
\ALUCOMP|Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~6_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[6]~2_combout\)) # (!\MUXB|Mux25~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[6]~2_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux25~5_combout\,
	combout => \ALUCOMP|Mux25~6_combout\);

-- Location: LCFF_X45_Y9_N1
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux25~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCCOMB_X48_Y15_N6
\MUXMemReg|salida[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[6]~3_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(6)))) # (!\rst~combout\ & (\MDR|dt_out\(6))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \rst~combout\,
	datac => \MDR|dt_out\(6),
	datad => \regALU|dt_out\(6),
	combout => \MUXMemReg|salida[6]~3_combout\);

-- Location: LCFF_X47_Y9_N29
\REGFILE|MEM~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~266_regout\);

-- Location: LCFF_X49_Y8_N1
\REGFILE|MEM~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~234_regout\);

-- Location: LCFF_X49_Y8_N7
\REGFILE|MEM~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~170_regout\);

-- Location: LCCOMB_X49_Y8_N0
\REGFILE|MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~307_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~234_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~170_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~234_regout\,
	datad => \REGFILE|MEM~170_regout\,
	combout => \REGFILE|MEM~307_combout\);

-- Location: LCFF_X49_Y14_N23
\REGFILE|MEM~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~202_regout\);

-- Location: LCCOMB_X45_Y9_N4
\REGFILE|MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~308_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~307_combout\ & (\REGFILE|MEM~266_regout\)) # (!\REGFILE|MEM~307_combout\ & ((\REGFILE|MEM~202_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~266_regout\,
	datac => \REGFILE|MEM~307_combout\,
	datad => \REGFILE|MEM~202_regout\,
	combout => \REGFILE|MEM~308_combout\);

-- Location: LCFF_X49_Y12_N19
\REGFILE|MEM~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~106_regout\);

-- Location: LCCOMB_X48_Y12_N20
\REGFILE|MEM~74feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~74feeder_combout\ = \MUXMemReg|salida[6]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[6]~3_combout\,
	combout => \REGFILE|MEM~74feeder_combout\);

-- Location: LCFF_X48_Y12_N21
\REGFILE|MEM~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~74feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~74_regout\);

-- Location: LCFF_X48_Y10_N27
\REGFILE|MEM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~42_regout\);

-- Location: LCCOMB_X48_Y9_N8
\REGFILE|MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~309_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & (\REGFILE|MEM~74_regout\)) # (!\INSTREG|jump_out\(16) & ((\REGFILE|MEM~42_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~74_regout\,
	datac => \REGFILE|MEM~42_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~309_combout\);

-- Location: LCFF_X48_Y10_N17
\REGFILE|MEM~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[6]~3_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~138_regout\);

-- Location: LCCOMB_X49_Y12_N0
\REGFILE|MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~310_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~309_combout\ & ((\REGFILE|MEM~138_regout\))) # (!\REGFILE|MEM~309_combout\ & (\REGFILE|MEM~106_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~106_regout\,
	datac => \REGFILE|MEM~309_combout\,
	datad => \REGFILE|MEM~138_regout\,
	combout => \REGFILE|MEM~310_combout\);

-- Location: LCCOMB_X45_Y9_N10
\REGFILE|MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~311_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~308_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~308_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~310_combout\,
	combout => \REGFILE|MEM~311_combout\);

-- Location: LCFF_X44_Y13_N13
\regB|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~311_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(6));

-- Location: LCFF_X38_Y11_N23
\MEM|MEM~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~138_regout\);

-- Location: LCFF_X38_Y11_N21
\MEM|MEM~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~106_regout\);

-- Location: LCCOMB_X38_Y11_N20
\MEM|MEM~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~325_combout\ = (\MEM|MEM~324_combout\ & ((\MEM|MEM~138_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~324_combout\ & (((\MEM|MEM~106_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~324_combout\,
	datab => \MEM|MEM~138_regout\,
	datac => \MEM|MEM~106_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~325_combout\);

-- Location: LCFF_X39_Y14_N23
\MEM|MEM~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~202_regout\);

-- Location: LCFF_X40_Y14_N17
\MEM|MEM~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~234_regout\);

-- Location: LCFF_X40_Y14_N31
\MEM|MEM~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(6),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~170_regout\);

-- Location: LCCOMB_X40_Y14_N30
\MEM|MEM~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~322_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~234_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~170_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~234_regout\,
	datac => \MEM|MEM~170_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~322_combout\);

-- Location: LCCOMB_X39_Y14_N22
\MEM|MEM~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~323_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~322_combout\ & (\MEM|MEM~266_regout\)) # (!\MEM|MEM~322_combout\ & ((\MEM|MEM~202_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~266_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~202_regout\,
	datad => \MEM|MEM~322_combout\,
	combout => \MEM|MEM~323_combout\);

-- Location: LCCOMB_X39_Y14_N0
\MEM|MEM~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~326_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~323_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~325_combout\,
	datad => \MEM|MEM~323_combout\,
	combout => \MEM|MEM~326_combout\);

-- Location: LCFF_X39_Y14_N1
\MEM|dataOut[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~326_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(6));

-- Location: LCFF_X45_Y13_N5
\INSTREG|jump_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(6),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(6));

-- Location: LCFF_X46_Y11_N25
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[8]~6_combout\,
	sdata => \INSTREG|jump_out\(6),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X49_Y7_N26
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

-- Location: LCFF_X49_Y7_N27
\REGFILE|MEM~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~204feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~204_regout\);

-- Location: LCCOMB_X47_Y9_N8
\REGFILE|MEM~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~463_combout\ = (\REGFILE|MEM~462_combout\ & ((\REGFILE|MEM~268_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~462_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~204_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~462_combout\,
	datab => \REGFILE|MEM~268_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~204_regout\,
	combout => \REGFILE|MEM~463_combout\);

-- Location: LCCOMB_X46_Y15_N0
\REGFILE|MEM~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~466_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~463_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~465_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~465_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~463_combout\,
	combout => \REGFILE|MEM~466_combout\);

-- Location: LCFF_X46_Y15_N1
\regA|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(8));

-- Location: LCCOMB_X45_Y15_N22
\MUXA|salida[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~0_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(8))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(8)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(8),
	datac => \regA|dt_out\(8),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[8]~0_combout\);

-- Location: LCCOMB_X44_Y12_N0
\ALUCOMP|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~25_combout\ = ((\ALUCOMP|Add0~1_combout\ $ (\MUXA|salida[7]~1_combout\ $ (!\ALUCOMP|Add0~24\)))) # (GND)
-- \ALUCOMP|Add0~26\ = CARRY((\ALUCOMP|Add0~1_combout\ & ((\MUXA|salida[7]~1_combout\) # (!\ALUCOMP|Add0~24\))) # (!\ALUCOMP|Add0~1_combout\ & (\MUXA|salida[7]~1_combout\ & !\ALUCOMP|Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~1_combout\,
	datab => \MUXA|salida[7]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~24\,
	combout => \ALUCOMP|Add0~25_combout\,
	cout => \ALUCOMP|Add0~26\);

-- Location: LCCOMB_X44_Y14_N10
\ALUCOMP|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~25_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux24~0_combout\);

-- Location: LCCOMB_X44_Y14_N14
\ALUCOMP|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux24~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux24~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~1_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux24~0_combout\,
	combout => \ALUCOMP|Mux24~2_combout\);

-- Location: LCFF_X44_Y14_N15
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCCOMB_X46_Y14_N12
\PROGCOUNT|addr_out[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[7]~5_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(7))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \regALU|dt_out\(7),
	datad => \ALUCOMP|Mux24~2_combout\,
	combout => \PROGCOUNT|addr_out[7]~5_combout\);

-- Location: LCFF_X47_Y13_N15
\INSTREG|jump_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(5),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(5));

-- Location: LCFF_X46_Y14_N13
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[7]~5_combout\,
	sdata => \INSTREG|jump_out\(5),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(7));

-- Location: LCFF_X47_Y10_N9
\REGFILE|MEM~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~267_regout\);

-- Location: LCFF_X49_Y7_N5
\REGFILE|MEM~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[7]~4_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~203_regout\);

-- Location: LCCOMB_X47_Y8_N28
\REGFILE|MEM~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~468_combout\ = (\REGFILE|MEM~467_combout\ & ((\REGFILE|MEM~267_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~467_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~203_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~467_combout\,
	datab => \REGFILE|MEM~267_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~203_regout\,
	combout => \REGFILE|MEM~468_combout\);

-- Location: LCCOMB_X49_Y12_N26
\REGFILE|MEM~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~470_combout\ = (\REGFILE|MEM~469_combout\ & ((\REGFILE|MEM~139_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~469_combout\ & (((\REGFILE|MEM~107_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~469_combout\,
	datab => \REGFILE|MEM~139_regout\,
	datac => \REGFILE|MEM~107_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~470_combout\);

-- Location: LCCOMB_X46_Y15_N14
\REGFILE|MEM~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~471_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~468_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~470_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~468_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~470_combout\,
	combout => \REGFILE|MEM~471_combout\);

-- Location: LCFF_X46_Y15_N15
\regA|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(7));

-- Location: LCCOMB_X45_Y15_N12
\MUXA|salida[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~1_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(7))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(7)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(7),
	datac => \regA|dt_out\(7),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[7]~1_combout\);

-- Location: LCCOMB_X44_Y12_N2
\ALUCOMP|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~27_combout\ = (\ALUCOMP|Add0~0_combout\ & ((\MUXA|salida[8]~0_combout\ & (\ALUCOMP|Add0~26\ & VCC)) # (!\MUXA|salida[8]~0_combout\ & (!\ALUCOMP|Add0~26\)))) # (!\ALUCOMP|Add0~0_combout\ & ((\MUXA|salida[8]~0_combout\ & (!\ALUCOMP|Add0~26\)) 
-- # (!\MUXA|salida[8]~0_combout\ & ((\ALUCOMP|Add0~26\) # (GND)))))
-- \ALUCOMP|Add0~28\ = CARRY((\ALUCOMP|Add0~0_combout\ & (!\MUXA|salida[8]~0_combout\ & !\ALUCOMP|Add0~26\)) # (!\ALUCOMP|Add0~0_combout\ & ((!\ALUCOMP|Add0~26\) # (!\MUXA|salida[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~0_combout\,
	datab => \MUXA|salida[8]~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~26\,
	combout => \ALUCOMP|Add0~27_combout\,
	cout => \ALUCOMP|Add0~28\);

-- Location: LCCOMB_X44_Y12_N4
\ALUCOMP|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~30_combout\ = ((\ALUCOMP|Add0~29_combout\ $ (\MUXA|salida[9]~31_combout\ $ (!\ALUCOMP|Add0~28\)))) # (GND)
-- \ALUCOMP|Add0~31\ = CARRY((\ALUCOMP|Add0~29_combout\ & ((\MUXA|salida[9]~31_combout\) # (!\ALUCOMP|Add0~28\))) # (!\ALUCOMP|Add0~29_combout\ & (\MUXA|salida[9]~31_combout\ & !\ALUCOMP|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~29_combout\,
	datab => \MUXA|salida[9]~31_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~28\,
	combout => \ALUCOMP|Add0~30_combout\,
	cout => \ALUCOMP|Add0~31\);

-- Location: LCCOMB_X44_Y14_N22
\ALUCOMP|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~30_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux22~0_combout\);

-- Location: LCCOMB_X44_Y14_N20
\ALUCOMP|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux22~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux22~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux22~1_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux22~0_combout\,
	combout => \ALUCOMP|Mux22~2_combout\);

-- Location: LCFF_X44_Y14_N21
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCCOMB_X47_Y14_N24
\ADDRDEC|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~2_combout\ = (!\regALU|dt_out\(11) & (!\regALU|dt_out\(12) & (\regALU|dt_out\(9) & !\regALU|dt_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(11),
	datab => \regALU|dt_out\(12),
	datac => \regALU|dt_out\(9),
	datad => \regALU|dt_out\(10),
	combout => \ADDRDEC|Equal1~2_combout\);

-- Location: LCCOMB_X46_Y14_N8
\ADDRDEC|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~4_combout\ = (\ADDRDEC|Equal1~1_combout\ & (\ADDRDEC|Equal1~0_combout\ & (\ADDRDEC|Equal1~3_combout\ & \ADDRDEC|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal1~1_combout\,
	datab => \ADDRDEC|Equal1~0_combout\,
	datac => \ADDRDEC|Equal1~3_combout\,
	datad => \ADDRDEC|Equal1~2_combout\,
	combout => \ADDRDEC|Equal1~4_combout\);

-- Location: LCCOMB_X45_Y15_N16
\ADDRDEC|addressSel[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|addressSel[0]~0_combout\ = (\CONTROLU|MemWr~0_combout\) # (((\regALU|dt_out\(8)) # (!\ADDRDEC|Equal1~4_combout\)) # (!\ADDRDEC|Equal1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemWr~0_combout\,
	datab => \ADDRDEC|Equal1~9_combout\,
	datac => \regALU|dt_out\(8),
	datad => \ADDRDEC|Equal1~4_combout\,
	combout => \ADDRDEC|addressSel[0]~0_combout\);

-- Location: LCCOMB_X49_Y10_N18
\MUXREAD|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux29~13_combout\ = (\ADDRDEC|addressSel[0]~0_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\ & ((\MEM|dataOut\(2)))) # (!\ADDRDEC|addressSel[1]~1_combout\ & (\MUXREAD|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux29~14_combout\,
	datab => \MEM|dataOut\(2),
	datac => \ADDRDEC|addressSel[1]~1_combout\,
	datad => \ADDRDEC|addressSel[0]~0_combout\,
	combout => \MUXREAD|Mux29~13_combout\);

-- Location: LCFF_X49_Y10_N19
\MDR|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux29~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(2));

-- Location: LCCOMB_X48_Y9_N16
\MUXMemReg|salida[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[2]~31_combout\ = (\rst~combout\ & (((\regALU|dt_out\(2))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(2))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \MDR|dt_out\(2),
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \regALU|dt_out\(2),
	combout => \MUXMemReg|salida[2]~31_combout\);

-- Location: LCCOMB_X49_Y9_N12
\REGFILE|MEM~70feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~70feeder_combout\ = \MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~70feeder_combout\);

-- Location: LCFF_X49_Y9_N13
\REGFILE|MEM~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~70feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~70_regout\);

-- Location: LCCOMB_X47_Y9_N22
\REGFILE|MEM~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~449_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~70_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~38_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~70_regout\,
	combout => \REGFILE|MEM~449_combout\);

-- Location: LCCOMB_X48_Y10_N28
\REGFILE|MEM~627\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~627_combout\ = !\MUXMemReg|salida[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXMemReg|salida[2]~31_combout\,
	combout => \REGFILE|MEM~627_combout\);

-- Location: LCFF_X48_Y10_N29
\REGFILE|MEM~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~627_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~134_regout\);

-- Location: LCCOMB_X47_Y9_N0
\REGFILE|MEM~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~450_combout\ = (\REGFILE|MEM~449_combout\ & (((!\REGFILE|MEM~134_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~449_combout\ & (\REGFILE|MEM~102_regout\ & (\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~102_regout\,
	datab => \REGFILE|MEM~449_combout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~134_regout\,
	combout => \REGFILE|MEM~450_combout\);

-- Location: LCFF_X48_Y11_N3
\REGFILE|MEM~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~166_regout\);

-- Location: LCFF_X48_Y9_N27
\REGFILE|MEM~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~230_regout\);

-- Location: LCCOMB_X48_Y9_N26
\REGFILE|MEM~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~447_combout\ = (\INSTREG|jump_out\(17) & (((\REGFILE|MEM~230_regout\) # (\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~166_regout\ & ((!\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~166_regout\,
	datac => \REGFILE|MEM~230_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~447_combout\);

-- Location: LCCOMB_X48_Y14_N16
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

-- Location: LCFF_X48_Y14_N17
\REGFILE|MEM~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~262feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~262_regout\);

-- Location: LCFF_X49_Y7_N17
\REGFILE|MEM~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[2]~31_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~198_regout\);

-- Location: LCCOMB_X48_Y14_N22
\REGFILE|MEM~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~448_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~447_combout\ & (\REGFILE|MEM~262_regout\)) # (!\REGFILE|MEM~447_combout\ & ((\REGFILE|MEM~198_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~447_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~447_combout\,
	datac => \REGFILE|MEM~262_regout\,
	datad => \REGFILE|MEM~198_regout\,
	combout => \REGFILE|MEM~448_combout\);

-- Location: LCCOMB_X47_Y13_N8
\REGFILE|MEM~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~451_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~448_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~450_combout\,
	datad => \REGFILE|MEM~448_combout\,
	combout => \REGFILE|MEM~451_combout\);

-- Location: LCFF_X47_Y13_N9
\regB|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(2));

-- Location: LCCOMB_X39_Y12_N18
\MEM|MEM~134feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~134feeder_combout\ = \regB|dt_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(2),
	combout => \MEM|MEM~134feeder_combout\);

-- Location: LCFF_X39_Y12_N19
\MEM|MEM~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~134feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~134_regout\);

-- Location: LCFF_X40_Y12_N3
\MEM|MEM~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~102_regout\);

-- Location: LCCOMB_X40_Y12_N2
\MEM|MEM~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~345_combout\ = (\MEM|MEM~344_combout\ & ((\MEM|MEM~134_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~344_combout\ & (((\MEM|MEM~102_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~344_combout\,
	datab => \MEM|MEM~134_regout\,
	datac => \MEM|MEM~102_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~345_combout\);

-- Location: LCFF_X39_Y9_N3
\MEM|MEM~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~262_regout\);

-- Location: LCFF_X39_Y9_N29
\MEM|MEM~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~198_regout\);

-- Location: LCCOMB_X39_Y9_N28
\MEM|MEM~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~343_combout\ = (\MEM|MEM~342_combout\ & ((\MEM|MEM~262_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~342_combout\ & (((\MEM|MEM~198_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~342_combout\,
	datab => \MEM|MEM~262_regout\,
	datac => \MEM|MEM~198_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~343_combout\);

-- Location: LCCOMB_X40_Y12_N24
\MEM|MEM~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~346_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~343_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~345_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~345_combout\,
	datac => \MEM|MEM~343_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~346_combout\);

-- Location: LCFF_X40_Y12_N25
\MEM|dataOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~346_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(2));

-- Location: LCFF_X47_Y13_N31
\INSTREG|func_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(2),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(2));

-- Location: LCFF_X46_Y14_N11
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[4]~2_combout\,
	sdata => \INSTREG|func_out\(2),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(4));

-- Location: LCFF_X48_Y10_N15
\REGFILE|MEM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~40_regout\);

-- Location: LCCOMB_X47_Y10_N30
\REGFILE|MEM~72feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~72feeder_combout\ = \MUXMemReg|salida[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[4]~1_combout\,
	combout => \REGFILE|MEM~72feeder_combout\);

-- Location: LCFF_X47_Y10_N31
\REGFILE|MEM~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~72feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~72_regout\);

-- Location: LCCOMB_X48_Y10_N30
\REGFILE|MEM~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~484_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~72_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~40_regout\,
	datac => \REGFILE|MEM~72_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~484_combout\);

-- Location: LCFF_X48_Y10_N25
\REGFILE|MEM~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[4]~1_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~136_regout\);

-- Location: LCCOMB_X48_Y10_N24
\REGFILE|MEM~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~485_combout\ = (\REGFILE|MEM~484_combout\ & (((\REGFILE|MEM~136_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~484_combout\ & (\REGFILE|MEM~104_regout\ & ((\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~104_regout\,
	datab => \REGFILE|MEM~484_combout\,
	datac => \REGFILE|MEM~136_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~485_combout\);

-- Location: LCCOMB_X45_Y10_N22
\REGFILE|MEM~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~486_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~483_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~485_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~483_combout\,
	datac => \REGFILE|MEM~485_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~486_combout\);

-- Location: LCFF_X45_Y10_N23
\regA|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(4));

-- Location: LCCOMB_X45_Y10_N12
\MUXA|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~4_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(4))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(4)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(4),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(4),
	combout => \MUXA|salida[4]~4_combout\);

-- Location: LCCOMB_X47_Y13_N6
\MUXB|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux27~0_combout\ = (!\CONTROLU|ALUsrcB[0]~2_combout\ & ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|jump_out\(4)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~2_combout\,
	datab => \regB|dt_out\(4),
	datac => \INSTREG|jump_out\(4),
	datad => \CONTROLU|ALUsrcB[1]~1_combout\,
	combout => \MUXB|Mux27~0_combout\);

-- Location: LCCOMB_X43_Y13_N26
\ALUCOMP|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~0_combout\ = (\MUXA|salida[4]~4_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXB|Mux27~0_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXA|salida[4]~4_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXB|Mux27~0_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~4_combout\,
	datab => \MUXB|Mux27~0_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux27~0_combout\);

-- Location: LCCOMB_X45_Y10_N26
\ALUCOMP|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux27~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux27~0_combout\ & (\ALUCOMP|Add0~19_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (((\ALUCOMP|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Add0~19_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Mux27~0_combout\,
	combout => \ALUCOMP|Mux27~1_combout\);

-- Location: LCCOMB_X45_Y10_N10
\ALUCOMP|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux27~0_combout\)) # (!\MUXA|salida[4]~4_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \MUXA|salida[4]~4_combout\,
	datac => \MUXB|Mux27~0_combout\,
	datad => \ALUCOMP|Mux27~1_combout\,
	combout => \ALUCOMP|Mux27~2_combout\);

-- Location: LCCOMB_X46_Y14_N2
\PCwrite~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~3_combout\ = (!\ALUCOMP|Mux31~2_combout\ & (!\ALUCOMP|Mux29~2_combout\ & (!\ALUCOMP|Mux27~2_combout\ & !\ALUCOMP|Mux25~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux31~2_combout\,
	datab => \ALUCOMP|Mux29~2_combout\,
	datac => \ALUCOMP|Mux27~2_combout\,
	datad => \ALUCOMP|Mux25~6_combout\,
	combout => \PCwrite~3_combout\);

-- Location: LCFF_X42_Y10_N29
\REGFILE|MEM~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~284_regout\);

-- Location: LCCOMB_X43_Y13_N4
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

-- Location: LCFF_X43_Y13_N5
\REGFILE|MEM~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~220feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~220_regout\);

-- Location: LCFF_X43_Y10_N31
\REGFILE|MEM~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~188_regout\);

-- Location: LCCOMB_X43_Y10_N20
\REGFILE|MEM~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~397_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~252_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~188_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~252_regout\,
	datad => \REGFILE|MEM~188_regout\,
	combout => \REGFILE|MEM~397_combout\);

-- Location: LCCOMB_X42_Y10_N30
\REGFILE|MEM~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~398_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~397_combout\ & (\REGFILE|MEM~284_regout\)) # (!\REGFILE|MEM~397_combout\ & ((\REGFILE|MEM~220_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~284_regout\,
	datac => \REGFILE|MEM~220_regout\,
	datad => \REGFILE|MEM~397_combout\,
	combout => \REGFILE|MEM~398_combout\);

-- Location: LCCOMB_X43_Y13_N28
\REGFILE|MEM~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~401_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~398_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~400_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~400_combout\,
	datac => \REGFILE|MEM~398_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~401_combout\);

-- Location: LCFF_X43_Y13_N29
\regB|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(24));

-- Location: LCFF_X38_Y11_N19
\MEM|MEM~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~156_regout\);

-- Location: LCFF_X38_Y11_N17
\MEM|MEM~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~124_regout\);

-- Location: LCCOMB_X38_Y11_N16
\MEM|MEM~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~418_combout\ = (\MEM|MEM~417_combout\ & ((\MEM|MEM~156_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~417_combout\ & (((\MEM|MEM~124_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~417_combout\,
	datab => \MEM|MEM~156_regout\,
	datac => \MEM|MEM~124_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~418_combout\);

-- Location: LCFF_X39_Y9_N19
\MEM|MEM~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~284_regout\);

-- Location: LCFF_X39_Y9_N17
\MEM|MEM~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~220_regout\);

-- Location: LCCOMB_X39_Y9_N16
\MEM|MEM~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~416_combout\ = (\MEM|MEM~415_combout\ & ((\MEM|MEM~284_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~415_combout\ & (((\MEM|MEM~220_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~415_combout\,
	datab => \MEM|MEM~284_regout\,
	datac => \MEM|MEM~220_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~416_combout\);

-- Location: LCCOMB_X39_Y11_N2
\MEM|MEM~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~419_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~416_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~418_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \MEM|MEM~418_combout\,
	datad => \MEM|MEM~416_combout\,
	combout => \MEM|MEM~419_combout\);

-- Location: LCFF_X39_Y11_N3
\MEM|dataOut[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~419_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(24));

-- Location: LCCOMB_X42_Y14_N18
\MUXREAD|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux7~0_combout\ = (\MEM|dataOut\(24) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(24),
	datac => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux7~0_combout\);

-- Location: LCFF_X49_Y13_N11
\MDR|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MUXREAD|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(24));

-- Location: LCCOMB_X49_Y10_N30
\MUXMemReg|salida[24]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[24]~21_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(24))) # (!\rst~combout\ & ((\MDR|dt_out\(24)))))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(24),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \MDR|dt_out\(24),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[24]~21_combout\);

-- Location: LCFF_X43_Y10_N21
\REGFILE|MEM~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~252_regout\);

-- Location: LCCOMB_X43_Y10_N30
\REGFILE|MEM~542\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~542_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~252_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~188_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~252_regout\,
	datac => \REGFILE|MEM~188_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~542_combout\);

-- Location: LCCOMB_X42_Y10_N22
\REGFILE|MEM~543\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~543_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~542_combout\ & ((\REGFILE|MEM~284_regout\))) # (!\REGFILE|MEM~542_combout\ & (\REGFILE|MEM~220_regout\)))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~542_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~542_combout\,
	datac => \REGFILE|MEM~220_regout\,
	datad => \REGFILE|MEM~284_regout\,
	combout => \REGFILE|MEM~543_combout\);

-- Location: LCFF_X48_Y13_N29
\REGFILE|MEM~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~124_regout\);

-- Location: LCFF_X49_Y9_N5
\REGFILE|MEM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~60_regout\);

-- Location: LCFF_X49_Y9_N27
\REGFILE|MEM~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[24]~21_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~92_regout\);

-- Location: LCCOMB_X49_Y9_N26
\REGFILE|MEM~544\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~544_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~92_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~60_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~60_regout\,
	datac => \REGFILE|MEM~92_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~544_combout\);

-- Location: LCFF_X49_Y10_N31
\REGFILE|MEM~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[24]~21_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~156_regout\);

-- Location: LCCOMB_X48_Y13_N18
\REGFILE|MEM~545\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~545_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~544_combout\ & ((\REGFILE|MEM~156_regout\))) # (!\REGFILE|MEM~544_combout\ & (\REGFILE|MEM~124_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~544_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~124_regout\,
	datac => \REGFILE|MEM~544_combout\,
	datad => \REGFILE|MEM~156_regout\,
	combout => \REGFILE|MEM~545_combout\);

-- Location: LCCOMB_X44_Y10_N4
\REGFILE|MEM~546\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~546_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~543_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~545_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~543_combout\,
	datad => \REGFILE|MEM~545_combout\,
	combout => \REGFILE|MEM~546_combout\);

-- Location: LCFF_X44_Y10_N5
\regA|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(24));

-- Location: LCCOMB_X44_Y10_N22
\MUXA|salida[24]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~16_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(24))) # (!\rst~combout\ & ((\regA|dt_out\(24)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(24),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(24),
	datad => \rst~combout\,
	combout => \MUXA|salida[24]~16_combout\);

-- Location: LCCOMB_X44_Y11_N2
\ALUCOMP|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~79_combout\ = (\ALUCOMP|Add0~78_combout\ & ((\MUXA|salida[24]~16_combout\ & (\ALUCOMP|Add0~77\ & VCC)) # (!\MUXA|salida[24]~16_combout\ & (!\ALUCOMP|Add0~77\)))) # (!\ALUCOMP|Add0~78_combout\ & ((\MUXA|salida[24]~16_combout\ & 
-- (!\ALUCOMP|Add0~77\)) # (!\MUXA|salida[24]~16_combout\ & ((\ALUCOMP|Add0~77\) # (GND)))))
-- \ALUCOMP|Add0~80\ = CARRY((\ALUCOMP|Add0~78_combout\ & (!\MUXA|salida[24]~16_combout\ & !\ALUCOMP|Add0~77\)) # (!\ALUCOMP|Add0~78_combout\ & ((!\ALUCOMP|Add0~77\) # (!\MUXA|salida[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~78_combout\,
	datab => \MUXA|salida[24]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~77\,
	combout => \ALUCOMP|Add0~79_combout\,
	cout => \ALUCOMP|Add0~80\);

-- Location: LCCOMB_X48_Y11_N22
\ALUCOMP|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~1_combout\ = (\ALUCOMP|Mux7~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux25~1_combout\))) # (!\ALUCOMP|Mux7~0_combout\ & (\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Add0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux7~0_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Add0~79_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux7~1_combout\);

-- Location: LCCOMB_X48_Y11_N30
\ALUCOMP|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[24]~16_combout\)) # (!\MUXB|Mux7~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux7~0_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \MUXA|salida[24]~16_combout\,
	datad => \ALUCOMP|Mux7~1_combout\,
	combout => \ALUCOMP|Mux7~2_combout\);

-- Location: LCCOMB_X46_Y11_N18
\PCwrite~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~6_combout\ = (!\ALUCOMP|Mux19~2_combout\ & (!\ALUCOMP|Mux17~2_combout\ & (!\ALUCOMP|Mux23~2_combout\ & !\ALUCOMP|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux19~2_combout\,
	datab => \ALUCOMP|Mux17~2_combout\,
	datac => \ALUCOMP|Mux23~2_combout\,
	datad => \ALUCOMP|Mux21~2_combout\,
	combout => \PCwrite~6_combout\);

-- Location: LCCOMB_X49_Y7_N18
\REGFILE|MEM~225feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~225feeder_combout\ = \MUXMemReg|salida[29]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[29]~26_combout\,
	combout => \REGFILE|MEM~225feeder_combout\);

-- Location: LCFF_X49_Y7_N19
\REGFILE|MEM~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~225feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~225_regout\);

-- Location: LCFF_X46_Y8_N3
\REGFILE|MEM~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~193_regout\);

-- Location: LCCOMB_X46_Y8_N2
\REGFILE|MEM~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~422_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~257_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~193_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~257_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~193_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~422_combout\);

-- Location: LCCOMB_X43_Y14_N14
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

-- Location: LCCOMB_X49_Y14_N6
\REGFILE|MEM~161feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~161feeder_combout\ = \MUXMemReg|salida[29]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXMemReg|salida[29]~26_combout\,
	combout => \REGFILE|MEM~161feeder_combout\);

-- Location: LCFF_X49_Y14_N7
\REGFILE|MEM~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~161feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~161_regout\);

-- Location: LCFF_X49_Y15_N3
\REGFILE|MEM~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~65_regout\);

-- Location: LCCOMB_X49_Y15_N2
\REGFILE|MEM~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~424_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~97_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~65_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~97_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~65_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~424_combout\);

-- Location: LCCOMB_X48_Y15_N8
\REGFILE|MEM~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~425_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~424_combout\ & ((\REGFILE|MEM~161_regout\))) # (!\REGFILE|MEM~424_combout\ & (\REGFILE|MEM~129_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~129_regout\,
	datab => \REGFILE|MEM~161_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~424_combout\,
	combout => \REGFILE|MEM~425_combout\);

-- Location: LCCOMB_X48_Y13_N24
\REGFILE|MEM~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~426_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~423_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~425_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~423_combout\,
	datad => \REGFILE|MEM~425_combout\,
	combout => \REGFILE|MEM~426_combout\);

-- Location: LCFF_X48_Y13_N25
\regB|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~426_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(29));

-- Location: LCFF_X39_Y12_N11
\MEM|MEM~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~161_regout\);

-- Location: LCFF_X38_Y12_N1
\MEM|MEM~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~129_regout\);

-- Location: LCCOMB_X38_Y12_N0
\MEM|MEM~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~448_combout\ = (\MEM|MEM~447_combout\ & ((\MEM|MEM~161_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~447_combout\ & (((\MEM|MEM~129_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~447_combout\,
	datab => \MEM|MEM~161_regout\,
	datac => \MEM|MEM~129_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~448_combout\);

-- Location: LCFF_X38_Y13_N15
\MEM|MEM~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~225_regout\);

-- Location: LCFF_X38_Y9_N19
\MEM|MEM~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(29),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~193_regout\);

-- Location: LCCOMB_X38_Y9_N18
\MEM|MEM~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~445_combout\ = (\MUXPC|salida[0]~0_combout\ & (((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~257_regout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~193_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~257_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~193_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~445_combout\);

-- Location: LCCOMB_X38_Y13_N14
\MEM|MEM~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~446_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~445_combout\ & (\MEM|MEM~289_regout\)) # (!\MEM|MEM~445_combout\ & ((\MEM|MEM~225_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~445_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~289_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~225_regout\,
	datad => \MEM|MEM~445_combout\,
	combout => \MEM|MEM~446_combout\);

-- Location: LCCOMB_X38_Y13_N0
\MEM|MEM~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~449_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~446_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~448_combout\,
	datac => \MEM|MEM~446_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~449_combout\);

-- Location: LCFF_X38_Y13_N1
\MEM|dataOut[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~449_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(29));

-- Location: LCCOMB_X49_Y13_N8
\MUXREAD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux2~0_combout\ = (\MEM|dataOut\(29) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(29),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux2~0_combout\);

-- Location: LCFF_X49_Y13_N9
\MDR|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(29));

-- Location: LCCOMB_X49_Y14_N26
\MUXMemReg|salida[29]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[29]~26_combout\ = (\rst~combout\ & (\regALU|dt_out\(29))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(29)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(29),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(29),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[29]~26_combout\);

-- Location: LCCOMB_X48_Y14_N6
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

-- Location: LCFF_X48_Y14_N7
\REGFILE|MEM~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~289feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~289_regout\);

-- Location: LCFF_X46_Y8_N21
\REGFILE|MEM~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~257_regout\);

-- Location: LCCOMB_X46_Y8_N20
\REGFILE|MEM~517\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~517_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~257_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~193_regout\ & ((!\INSTREG|jump_out\(21)))))

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
	combout => \REGFILE|MEM~517_combout\);

-- Location: LCCOMB_X43_Y14_N0
\REGFILE|MEM~518\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~518_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~517_combout\ & (\REGFILE|MEM~289_regout\)) # (!\REGFILE|MEM~517_combout\ & ((\REGFILE|MEM~225_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~289_regout\,
	datac => \REGFILE|MEM~225_regout\,
	datad => \REGFILE|MEM~517_combout\,
	combout => \REGFILE|MEM~518_combout\);

-- Location: LCFF_X49_Y12_N29
\REGFILE|MEM~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[29]~26_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~129_regout\);

-- Location: LCCOMB_X48_Y15_N2
\REGFILE|MEM~520\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~520_combout\ = (\REGFILE|MEM~519_combout\ & ((\REGFILE|MEM~161_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~519_combout\ & (((\REGFILE|MEM~129_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~519_combout\,
	datab => \REGFILE|MEM~161_regout\,
	datac => \REGFILE|MEM~129_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~520_combout\);

-- Location: LCCOMB_X48_Y15_N28
\REGFILE|MEM~521\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~521_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~518_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~520_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~518_combout\,
	datad => \REGFILE|MEM~520_combout\,
	combout => \REGFILE|MEM~521_combout\);

-- Location: LCFF_X48_Y11_N25
\regA|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~521_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(29));

-- Location: LCCOMB_X47_Y11_N24
\PROGCOUNT|addr_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~feeder_combout\ = \PROGCOUNT|addr_out[29]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[29]~27_combout\,
	combout => \PROGCOUNT|addr_out[29]~feeder_combout\);

-- Location: LCFF_X43_Y11_N5
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCFF_X47_Y11_N25
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[29]~feeder_combout\,
	sdata => \regALU|dt_out\(29),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[28]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X48_Y11_N24
\MUXA|salida[29]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~11_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(29))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(29))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(29),
	datad => \PROGCOUNT|addr_out\(29),
	combout => \MUXA|salida[29]~11_combout\);

-- Location: LCCOMB_X47_Y11_N26
\PROGCOUNT|addr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~feeder_combout\ = \PROGCOUNT|addr_out[28]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[28]~26_combout\,
	combout => \PROGCOUNT|addr_out[28]~feeder_combout\);

-- Location: LCFF_X45_Y10_N25
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[28]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCFF_X47_Y11_N27
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[28]~feeder_combout\,
	sdata => \regALU|dt_out\(28),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[28]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X48_Y13_N2
\MUXREAD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux3~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(28),
	combout => \MUXREAD|Mux3~0_combout\);

-- Location: LCFF_X48_Y13_N3
\MDR|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(28));

-- Location: LCCOMB_X43_Y9_N30
\MUXMemReg|salida[28]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[28]~25_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(28))) # (!\rst~combout\ & ((\MDR|dt_out\(28)))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \rst~combout\,
	datac => \regALU|dt_out\(28),
	datad => \MDR|dt_out\(28),
	combout => \MUXMemReg|salida[28]~25_combout\);

-- Location: LCFF_X43_Y9_N31
\REGFILE|MEM~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[28]~25_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~160_regout\);

-- Location: LCFF_X49_Y9_N21
\REGFILE|MEM~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~96_regout\);

-- Location: LCFF_X49_Y9_N31
\REGFILE|MEM~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~64_regout\);

-- Location: LCCOMB_X49_Y9_N20
\REGFILE|MEM~524\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~524_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~96_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~64_regout\)))))

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
	combout => \REGFILE|MEM~524_combout\);

-- Location: LCFF_X43_Y9_N29
\REGFILE|MEM~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~128_regout\);

-- Location: LCCOMB_X43_Y9_N24
\REGFILE|MEM~525\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~525_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~524_combout\ & (\REGFILE|MEM~160_regout\)) # (!\REGFILE|MEM~524_combout\ & ((\REGFILE|MEM~128_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~524_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~160_regout\,
	datac => \REGFILE|MEM~524_combout\,
	datad => \REGFILE|MEM~128_regout\,
	combout => \REGFILE|MEM~525_combout\);

-- Location: LCFF_X43_Y10_N17
\REGFILE|MEM~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~256_regout\);

-- Location: LCFF_X43_Y10_N11
\REGFILE|MEM~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~192_regout\);

-- Location: LCCOMB_X43_Y10_N16
\REGFILE|MEM~522\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~522_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~256_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~192_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~256_regout\,
	datad => \REGFILE|MEM~192_regout\,
	combout => \REGFILE|MEM~522_combout\);

-- Location: LCFF_X48_Y14_N29
\REGFILE|MEM~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~288_regout\);

-- Location: LCFF_X43_Y14_N11
\REGFILE|MEM~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[28]~25_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~224_regout\);

-- Location: LCCOMB_X43_Y14_N22
\REGFILE|MEM~523\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~523_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~522_combout\ & (\REGFILE|MEM~288_regout\)) # (!\REGFILE|MEM~522_combout\ & ((\REGFILE|MEM~224_regout\))))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~522_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~522_combout\,
	datac => \REGFILE|MEM~288_regout\,
	datad => \REGFILE|MEM~224_regout\,
	combout => \REGFILE|MEM~523_combout\);

-- Location: LCCOMB_X42_Y11_N10
\REGFILE|MEM~526\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~526_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~523_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~525_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~525_combout\,
	datad => \REGFILE|MEM~523_combout\,
	combout => \REGFILE|MEM~526_combout\);

-- Location: LCFF_X42_Y11_N11
\regA|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~526_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(28));

-- Location: LCCOMB_X47_Y11_N12
\MUXA|salida[28]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~12_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(28))) # (!\rst~combout\ & ((\regA|dt_out\(28)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~0_combout\,
	datab => \PROGCOUNT|addr_out\(28),
	datac => \regA|dt_out\(28),
	datad => \rst~combout\,
	combout => \MUXA|salida[28]~12_combout\);

-- Location: LCFF_X37_Y9_N3
\MEM|MEM~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~287_regout\);

-- Location: LCFF_X37_Y9_N13
\MEM|MEM~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~223_regout\);

-- Location: LCFF_X38_Y9_N31
\MEM|MEM~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~191_regout\);

-- Location: LCCOMB_X38_Y9_N30
\MEM|MEM~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~435_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~255_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~191_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~255_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~191_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~435_combout\);

-- Location: LCCOMB_X37_Y9_N12
\MEM|MEM~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~436_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~435_combout\ & (\MEM|MEM~287_regout\)) # (!\MEM|MEM~435_combout\ & ((\MEM|MEM~223_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~287_regout\,
	datac => \MEM|MEM~223_regout\,
	datad => \MEM|MEM~435_combout\,
	combout => \MEM|MEM~436_combout\);

-- Location: LCFF_X38_Y11_N27
\MEM|MEM~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~159_regout\);

-- Location: LCFF_X38_Y11_N9
\MEM|MEM~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(27),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~127_regout\);

-- Location: LCCOMB_X36_Y10_N22
\MEM|MEM~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~472_combout\ = !\regB|dt_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(27),
	combout => \MEM|MEM~472_combout\);

-- Location: LCFF_X36_Y10_N23
\MEM|MEM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~472_combout\,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~63_regout\);

-- Location: LCCOMB_X36_Y10_N0
\MEM|MEM~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~437_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~95_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~63_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~95_regout\,
	datab => \MEM|MEM~63_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~437_combout\);

-- Location: LCCOMB_X38_Y11_N8
\MEM|MEM~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~438_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~437_combout\ & (\MEM|MEM~159_regout\)) # (!\MEM|MEM~437_combout\ & ((\MEM|MEM~127_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~159_regout\,
	datac => \MEM|MEM~127_regout\,
	datad => \MEM|MEM~437_combout\,
	combout => \MEM|MEM~438_combout\);

-- Location: LCCOMB_X39_Y11_N16
\MEM|MEM~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~439_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~436_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~438_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~436_combout\,
	datad => \MEM|MEM~438_combout\,
	combout => \MEM|MEM~439_combout\);

-- Location: LCFF_X39_Y11_N17
\MEM|dataOut[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~439_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(27));

-- Location: LCCOMB_X49_Y12_N24
\MUXREAD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux4~0_combout\ = (\MUXREAD|Mux27~3_combout\ & (\ADDRDEC|addressSel[1]~1_combout\)) # (!\MUXREAD|Mux27~3_combout\ & ((\MEM|dataOut\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|addressSel[1]~1_combout\,
	datab => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(27),
	combout => \MUXREAD|Mux4~0_combout\);

-- Location: LCFF_X49_Y12_N25
\MDR|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(27));

-- Location: LCCOMB_X47_Y15_N0
\MUXMemReg|salida[27]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[27]~24_combout\ = (\rst~combout\ & (\regALU|dt_out\(27))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(27)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(27),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \MDR|dt_out\(27),
	combout => \MUXMemReg|salida[27]~24_combout\);

-- Location: LCFF_X43_Y10_N7
\REGFILE|MEM~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~191_regout\);

-- Location: LCFF_X43_Y10_N13
\REGFILE|MEM~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~255_regout\);

-- Location: LCCOMB_X43_Y10_N6
\REGFILE|MEM~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~412_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~255_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~191_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~191_regout\,
	datad => \REGFILE|MEM~255_regout\,
	combout => \REGFILE|MEM~412_combout\);

-- Location: LCFF_X48_Y14_N11
\REGFILE|MEM~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[27]~24_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~287_regout\);

-- Location: LCCOMB_X49_Y14_N30
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

-- Location: LCFF_X49_Y14_N31
\REGFILE|MEM~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~223feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~223_regout\);

-- Location: LCCOMB_X48_Y14_N10
\REGFILE|MEM~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~413_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~412_combout\ & (\REGFILE|MEM~287_regout\)) # (!\REGFILE|MEM~412_combout\ & ((\REGFILE|MEM~223_regout\))))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~412_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~412_combout\,
	datac => \REGFILE|MEM~287_regout\,
	datad => \REGFILE|MEM~223_regout\,
	combout => \REGFILE|MEM~413_combout\);

-- Location: LCCOMB_X46_Y16_N6
\REGFILE|MEM~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~416_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~413_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~415_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~413_combout\,
	combout => \REGFILE|MEM~416_combout\);

-- Location: LCFF_X46_Y16_N7
\regB|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~416_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(27));

-- Location: LCCOMB_X45_Y15_N24
\MUXB|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux4~0_combout\ = (\regB|dt_out\(27) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \regB|dt_out\(27),
	combout => \MUXB|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y10_N20
\ALUCOMP|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~1_combout\ = (\MUXA|salida[27]~13_combout\ & ((\MUXB|Mux4~0_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXA|salida[27]~13_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXB|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[27]~13_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXB|Mux4~0_combout\,
	combout => \ALUCOMP|Mux4~1_combout\);

-- Location: LCCOMB_X48_Y11_N0
\ALUCOMP|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~0_combout\ = (\MUXB|Mux5~0_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXA|salida[26]~14_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXB|Mux5~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXA|salida[26]~14_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux5~0_combout\,
	datab => \MUXA|salida[26]~14_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux5~0_combout\);

-- Location: LCFF_X39_Y9_N27
\MEM|MEM~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~285_regout\);

-- Location: LCFF_X39_Y9_N21
\MEM|MEM~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~221_regout\);

-- Location: LCCOMB_X39_Y9_N20
\MEM|MEM~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~411_combout\ = (\MEM|MEM~410_combout\ & ((\MEM|MEM~285_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~410_combout\ & (((\MEM|MEM~221_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~410_combout\,
	datab => \MEM|MEM~285_regout\,
	datac => \MEM|MEM~221_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~411_combout\);

-- Location: LCCOMB_X39_Y12_N30
\MEM|MEM~157feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~157feeder_combout\ = \regB|dt_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(25),
	combout => \MEM|MEM~157feeder_combout\);

-- Location: LCFF_X39_Y12_N31
\MEM|MEM~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~157feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~157_regout\);

-- Location: LCFF_X40_Y12_N27
\MEM|MEM~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(25),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~125_regout\);

-- Location: LCCOMB_X40_Y12_N26
\MEM|MEM~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~413_combout\ = (\MEM|MEM~412_combout\ & ((\MEM|MEM~157_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~412_combout\ & (((\MEM|MEM~125_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~412_combout\,
	datab => \MEM|MEM~157_regout\,
	datac => \MEM|MEM~125_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~413_combout\);

-- Location: LCCOMB_X39_Y11_N28
\MEM|MEM~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~414_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~411_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~413_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~411_combout\,
	datac => \MUXPC|salida[2]~2_combout\,
	datad => \MEM|MEM~413_combout\,
	combout => \MEM|MEM~414_combout\);

-- Location: LCFF_X39_Y11_N29
\MEM|dataOut[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~414_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(25));

-- Location: LCCOMB_X42_Y11_N14
\MUXREAD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux6~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(25),
	combout => \MUXREAD|Mux6~0_combout\);

-- Location: LCFF_X42_Y11_N15
\MDR|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(25));

-- Location: LCCOMB_X42_Y11_N4
\MUXMemReg|salida[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[25]~22_combout\ = (\rst~combout\ & (\regALU|dt_out\(25))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(25)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(25),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(25),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[25]~22_combout\);

-- Location: LCFF_X44_Y14_N29
\REGFILE|MEM~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~285_regout\);

-- Location: LCFF_X43_Y10_N3
\REGFILE|MEM~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~189_regout\);

-- Location: LCFF_X43_Y10_N1
\REGFILE|MEM~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~253_regout\);

-- Location: LCCOMB_X43_Y10_N2
\REGFILE|MEM~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~402_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~253_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~189_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~189_regout\,
	datad => \REGFILE|MEM~253_regout\,
	combout => \REGFILE|MEM~402_combout\);

-- Location: LCCOMB_X49_Y14_N18
\REGFILE|MEM~221feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~221feeder_combout\ = \MUXMemReg|salida[25]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[25]~22_combout\,
	combout => \REGFILE|MEM~221feeder_combout\);

-- Location: LCFF_X49_Y14_N19
\REGFILE|MEM~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~221feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~221_regout\);

-- Location: LCCOMB_X43_Y14_N24
\REGFILE|MEM~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~403_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~402_combout\ & (\REGFILE|MEM~285_regout\)) # (!\REGFILE|MEM~402_combout\ & ((\REGFILE|MEM~221_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~285_regout\,
	datac => \REGFILE|MEM~402_combout\,
	datad => \REGFILE|MEM~221_regout\,
	combout => \REGFILE|MEM~403_combout\);

-- Location: LCCOMB_X48_Y13_N4
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

-- Location: LCFF_X48_Y13_N5
\REGFILE|MEM~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~125feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~125_regout\);

-- Location: LCFF_X49_Y10_N25
\REGFILE|MEM~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[25]~22_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~157_regout\);

-- Location: LCCOMB_X48_Y13_N30
\REGFILE|MEM~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~405_combout\ = (\REGFILE|MEM~404_combout\ & (((\REGFILE|MEM~157_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~404_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~125_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~404_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~125_regout\,
	datad => \REGFILE|MEM~157_regout\,
	combout => \REGFILE|MEM~405_combout\);

-- Location: LCCOMB_X44_Y15_N14
\REGFILE|MEM~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~406_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~403_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~403_combout\,
	datac => \REGFILE|MEM~405_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~406_combout\);

-- Location: LCFF_X44_Y15_N15
\regB|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(25));

-- Location: LCCOMB_X45_Y15_N14
\MUXB|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux6~0_combout\ = (\regB|dt_out\(25) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \regB|dt_out\(25),
	combout => \MUXB|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y11_N26
\ALUCOMP|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~81_combout\ = \MUXB|Mux6~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux6~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~81_combout\);

-- Location: LCCOMB_X44_Y11_N4
\ALUCOMP|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~82_combout\ = ((\MUXA|salida[25]~15_combout\ $ (\ALUCOMP|Add0~81_combout\ $ (!\ALUCOMP|Add0~80\)))) # (GND)
-- \ALUCOMP|Add0~83\ = CARRY((\MUXA|salida[25]~15_combout\ & ((\ALUCOMP|Add0~81_combout\) # (!\ALUCOMP|Add0~80\))) # (!\MUXA|salida[25]~15_combout\ & (\ALUCOMP|Add0~81_combout\ & !\ALUCOMP|Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~15_combout\,
	datab => \ALUCOMP|Add0~81_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~80\,
	combout => \ALUCOMP|Add0~82_combout\,
	cout => \ALUCOMP|Add0~83\);

-- Location: LCCOMB_X44_Y11_N6
\ALUCOMP|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~85_combout\ = (\ALUCOMP|Add0~84_combout\ & ((\MUXA|salida[26]~14_combout\ & (\ALUCOMP|Add0~83\ & VCC)) # (!\MUXA|salida[26]~14_combout\ & (!\ALUCOMP|Add0~83\)))) # (!\ALUCOMP|Add0~84_combout\ & ((\MUXA|salida[26]~14_combout\ & 
-- (!\ALUCOMP|Add0~83\)) # (!\MUXA|salida[26]~14_combout\ & ((\ALUCOMP|Add0~83\) # (GND)))))
-- \ALUCOMP|Add0~86\ = CARRY((\ALUCOMP|Add0~84_combout\ & (!\MUXA|salida[26]~14_combout\ & !\ALUCOMP|Add0~83\)) # (!\ALUCOMP|Add0~84_combout\ & ((!\ALUCOMP|Add0~83\) # (!\MUXA|salida[26]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~84_combout\,
	datab => \MUXA|salida[26]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~83\,
	combout => \ALUCOMP|Add0~85_combout\,
	cout => \ALUCOMP|Add0~86\);

-- Location: LCCOMB_X48_Y11_N18
\ALUCOMP|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux5~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux5~0_combout\ & (\ALUCOMP|Add0~85_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux5~0_combout\,
	datac => \ALUCOMP|Add0~85_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux5~1_combout\);

-- Location: LCCOMB_X48_Y11_N28
\ALUCOMP|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[26]~14_combout\)) # (!\MUXB|Mux5~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux5~0_combout\,
	datab => \MUXA|salida[26]~14_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux5~1_combout\,
	combout => \ALUCOMP|Mux5~2_combout\);

-- Location: LCCOMB_X47_Y15_N14
\PROGCOUNT|addr_out[26]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[26]~24_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(26))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(26),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux5~2_combout\,
	combout => \PROGCOUNT|addr_out[26]~24_combout\);

-- Location: LCFF_X42_Y14_N13
\INSTREG|jump_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(24),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(24));

-- Location: LCFF_X47_Y15_N15
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[26]~24_combout\,
	sdata => \INSTREG|jump_out\(24),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(26));

-- Location: LCFF_X48_Y11_N29
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCCOMB_X49_Y14_N4
\MUXMemReg|salida[26]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[26]~23_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(26)))) # (!\rst~combout\ & (\MDR|dt_out\(26))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(26),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(26),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[26]~23_combout\);

-- Location: LCCOMB_X47_Y16_N10
\REGFILE|MEM~126feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~126feeder_combout\ = \MUXMemReg|salida[26]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[26]~23_combout\,
	combout => \REGFILE|MEM~126feeder_combout\);

-- Location: LCFF_X47_Y16_N11
\REGFILE|MEM~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~126feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~126_regout\);

-- Location: LCFF_X49_Y9_N15
\REGFILE|MEM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~62_regout\);

-- Location: LCFF_X49_Y9_N1
\REGFILE|MEM~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~94_regout\);

-- Location: LCCOMB_X49_Y9_N6
\REGFILE|MEM~534\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~534_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~94_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~62_regout\,
	datad => \REGFILE|MEM~94_regout\,
	combout => \REGFILE|MEM~534_combout\);

-- Location: LCCOMB_X46_Y15_N4
\REGFILE|MEM~535\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~535_combout\ = (\REGFILE|MEM~534_combout\ & ((\REGFILE|MEM~158_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~534_combout\ & (((\REGFILE|MEM~126_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~158_regout\,
	datab => \REGFILE|MEM~126_regout\,
	datac => \REGFILE|MEM~534_combout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~535_combout\);

-- Location: LCCOMB_X42_Y10_N12
\REGFILE|MEM~286feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~286feeder_combout\ = \MUXMemReg|salida[26]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[26]~23_combout\,
	combout => \REGFILE|MEM~286feeder_combout\);

-- Location: LCFF_X42_Y10_N13
\REGFILE|MEM~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~286feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~286_regout\);

-- Location: LCFF_X43_Y10_N9
\REGFILE|MEM~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~254_regout\);

-- Location: LCFF_X43_Y10_N27
\REGFILE|MEM~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[26]~23_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~190_regout\);

-- Location: LCCOMB_X43_Y10_N8
\REGFILE|MEM~532\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~532_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~254_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~190_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~254_regout\,
	datad => \REGFILE|MEM~190_regout\,
	combout => \REGFILE|MEM~532_combout\);

-- Location: LCCOMB_X42_Y13_N6
\REGFILE|MEM~533\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~533_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~532_combout\ & ((\REGFILE|MEM~286_regout\))) # (!\REGFILE|MEM~532_combout\ & (\REGFILE|MEM~222_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~222_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~286_regout\,
	datad => \REGFILE|MEM~532_combout\,
	combout => \REGFILE|MEM~533_combout\);

-- Location: LCCOMB_X46_Y15_N16
\REGFILE|MEM~536\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~536_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~533_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~535_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~535_combout\,
	datad => \REGFILE|MEM~533_combout\,
	combout => \REGFILE|MEM~536_combout\);

-- Location: LCFF_X46_Y15_N17
\regA|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(26));

-- Location: LCCOMB_X46_Y15_N6
\MUXA|salida[26]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~14_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(26))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(26)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(26),
	datac => \regA|dt_out\(26),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[26]~14_combout\);

-- Location: LCCOMB_X44_Y11_N8
\ALUCOMP|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~88_combout\ = ((\ALUCOMP|Add0~87_combout\ $ (\MUXA|salida[27]~13_combout\ $ (!\ALUCOMP|Add0~86\)))) # (GND)
-- \ALUCOMP|Add0~89\ = CARRY((\ALUCOMP|Add0~87_combout\ & ((\MUXA|salida[27]~13_combout\) # (!\ALUCOMP|Add0~86\))) # (!\ALUCOMP|Add0~87_combout\ & (\MUXA|salida[27]~13_combout\ & !\ALUCOMP|Add0~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~87_combout\,
	datab => \MUXA|salida[27]~13_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~86\,
	combout => \ALUCOMP|Add0~88_combout\,
	cout => \ALUCOMP|Add0~89\);

-- Location: LCCOMB_X46_Y10_N12
\ALUCOMP|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~62_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datad => \ALUCOMP|Add0~88_combout\,
	combout => \ALUCOMP|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y10_N6
\ALUCOMP|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\ALUCOMP|Mux4~1_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux4~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux4~1_combout\,
	datad => \ALUCOMP|Mux4~0_combout\,
	combout => \ALUCOMP|Mux4~2_combout\);

-- Location: LCFF_X46_Y10_N7
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCCOMB_X47_Y15_N20
\PROGCOUNT|addr_out[27]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[27]~25_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(27)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux4~2_combout\,
	datad => \regALU|dt_out\(27),
	combout => \PROGCOUNT|addr_out[27]~25_combout\);

-- Location: LCCOMB_X42_Y11_N12
\INSTREG|jump_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[25]~feeder_combout\ = \MEM|dataOut\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|dataOut\(25),
	combout => \INSTREG|jump_out[25]~feeder_combout\);

-- Location: LCFF_X42_Y11_N13
\INSTREG|jump_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[25]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(25));

-- Location: LCFF_X47_Y15_N21
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[27]~25_combout\,
	sdata => \INSTREG|jump_out\(25),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(27));

-- Location: LCCOMB_X43_Y10_N12
\REGFILE|MEM~527\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~527_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~255_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~191_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~255_regout\,
	datad => \REGFILE|MEM~191_regout\,
	combout => \REGFILE|MEM~527_combout\);

-- Location: LCCOMB_X48_Y14_N2
\REGFILE|MEM~528\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~528_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~527_combout\ & (\REGFILE|MEM~287_regout\)) # (!\REGFILE|MEM~527_combout\ & ((\REGFILE|MEM~223_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~527_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~287_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~527_combout\,
	datad => \REGFILE|MEM~223_regout\,
	combout => \REGFILE|MEM~528_combout\);

-- Location: LCCOMB_X46_Y12_N24
\REGFILE|MEM~531\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~531_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~528_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~530_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~530_combout\,
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~528_combout\,
	combout => \REGFILE|MEM~531_combout\);

-- Location: LCFF_X46_Y12_N25
\regA|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~531_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(27));

-- Location: LCCOMB_X46_Y12_N18
\MUXA|salida[27]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~13_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(27))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(27)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(27),
	datac => \regA|dt_out\(27),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[27]~13_combout\);

-- Location: LCCOMB_X44_Y11_N12
\ALUCOMP|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~94_combout\ = ((\ALUCOMP|Add0~93_combout\ $ (\MUXA|salida[29]~11_combout\ $ (!\ALUCOMP|Add0~92\)))) # (GND)
-- \ALUCOMP|Add0~95\ = CARRY((\ALUCOMP|Add0~93_combout\ & ((\MUXA|salida[29]~11_combout\) # (!\ALUCOMP|Add0~92\))) # (!\ALUCOMP|Add0~93_combout\ & (\MUXA|salida[29]~11_combout\ & !\ALUCOMP|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~93_combout\,
	datab => \MUXA|salida[29]~11_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~92\,
	combout => \ALUCOMP|Add0~94_combout\,
	cout => \ALUCOMP|Add0~95\);

-- Location: LCCOMB_X43_Y11_N20
\PROGCOUNT|addr_out[29]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~47_combout\ = (\ALUCOMP|Add0~94_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & ((!\ALUCONTRL|op\(2)))) # (!\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~0_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~94_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \PROGCOUNT|addr_out[29]~47_combout\);

-- Location: LCCOMB_X43_Y11_N8
\PROGCOUNT|addr_out[29]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~37_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[29]~11_combout\)) # (!\MUXB|Mux2~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\) # ((\MUXB|Mux2~0_combout\ & \MUXA|salida[29]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux2~0_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \MUXA|salida[29]~11_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \PROGCOUNT|addr_out[29]~37_combout\);

-- Location: LCCOMB_X43_Y11_N28
\PROGCOUNT|addr_out[29]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~39_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\PROGCOUNT|addr_out[29]~38_combout\) # ((\PROGCOUNT|addr_out[29]~37_combout\ & \ALUCOMP|LessThan0~62_combout\)))) # (!\ALUCONTRL|op[0]~1_combout\ & 
-- (((\PROGCOUNT|addr_out[29]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out[29]~38_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \PROGCOUNT|addr_out[29]~37_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \PROGCOUNT|addr_out[29]~39_combout\);

-- Location: LCCOMB_X43_Y11_N4
\PROGCOUNT|addr_out[29]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[29]~27_combout\ = (\PROGCOUNT|addr_out[29]~39_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\ALUCOMP|Mux25~3_combout\) # (\PROGCOUNT|addr_out[29]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \PROGCOUNT|addr_out[29]~47_combout\,
	datad => \PROGCOUNT|addr_out[29]~39_combout\,
	combout => \PROGCOUNT|addr_out[29]~27_combout\);

-- Location: LCCOMB_X43_Y10_N0
\REGFILE|MEM~537\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~537_combout\ = (\INSTREG|jump_out\(21) & (\INSTREG|jump_out\(22))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~253_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~189_regout\)))))

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
	combout => \REGFILE|MEM~537_combout\);

-- Location: LCCOMB_X43_Y14_N16
\REGFILE|MEM~538\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~538_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~537_combout\ & (\REGFILE|MEM~285_regout\)) # (!\REGFILE|MEM~537_combout\ & ((\REGFILE|MEM~221_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~537_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~285_regout\,
	datac => \REGFILE|MEM~537_combout\,
	datad => \REGFILE|MEM~221_regout\,
	combout => \REGFILE|MEM~538_combout\);

-- Location: LCCOMB_X44_Y10_N8
\REGFILE|MEM~541\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~541_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~538_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~540_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~540_combout\,
	datab => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~538_combout\,
	combout => \REGFILE|MEM~541_combout\);

-- Location: LCFF_X44_Y10_N9
\regA|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(25));

-- Location: LCCOMB_X44_Y10_N30
\MUXA|salida[25]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~15_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(25))) # (!\rst~combout\ & ((\regA|dt_out\(25)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(25),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \regA|dt_out\(25),
	datad => \rst~combout\,
	combout => \MUXA|salida[25]~15_combout\);

-- Location: LCCOMB_X44_Y11_N22
\ALUCOMP|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~1_combout\ = (\MUXB|Mux6~0_combout\ & ((\MUXA|salida[25]~15_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXB|Mux6~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (\MUXA|salida[25]~15_combout\ & 
-- !\ALUCOMP|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXB|Mux6~0_combout\,
	datac => \MUXA|salida[25]~15_combout\,
	datad => \ALUCOMP|Mux25~3_combout\,
	combout => \ALUCOMP|Mux6~1_combout\);

-- Location: LCCOMB_X44_Y11_N28
\ALUCOMP|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~82_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y11_N20
\ALUCOMP|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux6~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux6~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux6~1_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux6~0_combout\,
	combout => \ALUCOMP|Mux6~2_combout\);

-- Location: LCCOMB_X46_Y11_N28
\PCwrite~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~7_combout\ = (!\ALUCOMP|Mux13~2_combout\ & (!\ALUCOMP|Mux6~2_combout\ & (!\ALUCOMP|Mux15~2_combout\ & !\ALUCOMP|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux13~2_combout\,
	datab => \ALUCOMP|Mux6~2_combout\,
	datac => \ALUCOMP|Mux15~2_combout\,
	datad => \ALUCOMP|Mux4~2_combout\,
	combout => \PCwrite~7_combout\);

-- Location: LCCOMB_X46_Y11_N10
\PCwrite~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~8_combout\ = (!\PROGCOUNT|addr_out[31]~29_combout\ & (!\PROGCOUNT|addr_out[30]~28_combout\ & (!\PROGCOUNT|addr_out[29]~27_combout\ & \PCwrite~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out[31]~29_combout\,
	datab => \PROGCOUNT|addr_out[30]~28_combout\,
	datac => \PROGCOUNT|addr_out[29]~27_combout\,
	datad => \PCwrite~7_combout\,
	combout => \PCwrite~8_combout\);

-- Location: LCCOMB_X46_Y11_N12
\PCwrite~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~9_combout\ = (!\ALUCOMP|Mux5~2_combout\ & (!\ALUCOMP|Mux7~2_combout\ & (\PCwrite~6_combout\ & \PCwrite~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux5~2_combout\,
	datab => \ALUCOMP|Mux7~2_combout\,
	datac => \PCwrite~6_combout\,
	datad => \PCwrite~8_combout\,
	combout => \PCwrite~9_combout\);

-- Location: LCCOMB_X46_Y11_N6
\PCwrite~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~10_combout\ = (\PCwrite~5_combout\ & (\PCwrite~4_combout\ & (\PCwrite~3_combout\ & \PCwrite~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCwrite~5_combout\,
	datab => \PCwrite~4_combout\,
	datac => \PCwrite~3_combout\,
	datad => \PCwrite~9_combout\,
	combout => \PCwrite~10_combout\);

-- Location: LCCOMB_X46_Y11_N30
\PROGCOUNT|addr_out[28]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[28]~46_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\CONTROLU|ALUsrcB[0]~2_combout\) # ((\PCwrite~2_combout\ & \PCwrite~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~2_combout\,
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \PCwrite~2_combout\,
	datad => \PCwrite~10_combout\,
	combout => \PROGCOUNT|addr_out[28]~46_combout\);

-- Location: LCFF_X47_Y11_N21
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[31]~feeder_combout\,
	sdata => \regALU|dt_out\(31),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[28]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(31));

-- Location: LCCOMB_X47_Y12_N14
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

-- Location: LCFF_X47_Y12_N15
\REGFILE|MEM~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~291feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~291_regout\);

-- Location: LCFF_X48_Y9_N21
\REGFILE|MEM~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~259_regout\);

-- Location: LCCOMB_X48_Y9_N24
\REGFILE|MEM~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~507_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & ((\REGFILE|MEM~259_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~195_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~195_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~259_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~507_combout\);

-- Location: LCCOMB_X47_Y12_N20
\REGFILE|MEM~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~508_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~507_combout\ & (\REGFILE|MEM~291_regout\)) # (!\REGFILE|MEM~507_combout\ & ((\REGFILE|MEM~227_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~291_regout\,
	datac => \REGFILE|MEM~227_regout\,
	datad => \REGFILE|MEM~507_combout\,
	combout => \REGFILE|MEM~508_combout\);

-- Location: LCFF_X48_Y12_N31
\REGFILE|MEM~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~99_regout\);

-- Location: LCFF_X49_Y9_N25
\REGFILE|MEM~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[31]~28_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~67_regout\);

-- Location: LCCOMB_X48_Y12_N30
\REGFILE|MEM~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~509_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~99_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~67_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~99_regout\,
	datad => \REGFILE|MEM~67_regout\,
	combout => \REGFILE|MEM~509_combout\);

-- Location: LCCOMB_X49_Y12_N16
\REGFILE|MEM~131feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~131feeder_combout\ = \MUXMemReg|salida[31]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[31]~28_combout\,
	combout => \REGFILE|MEM~131feeder_combout\);

-- Location: LCFF_X49_Y12_N17
\REGFILE|MEM~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~131feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~131_regout\);

-- Location: LCCOMB_X48_Y12_N24
\REGFILE|MEM~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~510_combout\ = (\REGFILE|MEM~509_combout\ & ((\REGFILE|MEM~163_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~509_combout\ & (((\REGFILE|MEM~131_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~163_regout\,
	datab => \REGFILE|MEM~509_combout\,
	datac => \REGFILE|MEM~131_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~510_combout\);

-- Location: LCCOMB_X47_Y12_N16
\REGFILE|MEM~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~511_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~508_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~510_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~508_combout\,
	datad => \REGFILE|MEM~510_combout\,
	combout => \REGFILE|MEM~511_combout\);

-- Location: LCFF_X47_Y12_N17
\regA|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~511_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(31));

-- Location: LCCOMB_X47_Y11_N8
\MUXA|salida[31]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~9_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(31))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(31)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(31),
	datac => \regA|dt_out\(31),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[31]~9_combout\);

-- Location: LCCOMB_X49_Y14_N14
\MUXMemReg|salida[30]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[30]~27_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(30)))) # (!\rst~combout\ & (\MDR|dt_out\(30))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(30),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(30),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[30]~27_combout\);

-- Location: LCFF_X49_Y14_N29
\REGFILE|MEM~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~226_regout\);

-- Location: LCFF_X48_Y14_N5
\REGFILE|MEM~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~290_regout\);

-- Location: LCFF_X48_Y9_N13
\REGFILE|MEM~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~258_regout\);

-- Location: LCFF_X48_Y12_N11
\REGFILE|MEM~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~194_regout\);

-- Location: LCCOMB_X48_Y12_N10
\REGFILE|MEM~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~427_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~258_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~194_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~258_regout\,
	datac => \REGFILE|MEM~194_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~427_combout\);

-- Location: LCCOMB_X48_Y14_N4
\REGFILE|MEM~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~428_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~427_combout\ & ((\REGFILE|MEM~290_regout\))) # (!\REGFILE|MEM~427_combout\ & (\REGFILE|MEM~226_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~226_regout\,
	datac => \REGFILE|MEM~290_regout\,
	datad => \REGFILE|MEM~427_combout\,
	combout => \REGFILE|MEM~428_combout\);

-- Location: LCCOMB_X48_Y13_N22
\REGFILE|MEM~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~431_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~428_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~430_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~430_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~428_combout\,
	combout => \REGFILE|MEM~431_combout\);

-- Location: LCFF_X49_Y13_N29
\regB|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~431_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(30));

-- Location: LCCOMB_X47_Y11_N4
\MUXB|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux1~0_combout\ = (\regB|dt_out\(30) & ((\rst~combout\) # ((\CONTROLU|ALUsrcB[1]~3_combout\ & !\CONTROLU|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regB|dt_out\(30),
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXB|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y11_N0
\ALUCOMP|Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~96_combout\ = \MUXB|Mux1~0_combout\ $ (\ALUCONTRL|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXB|Mux1~0_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Add0~96_combout\);

-- Location: LCCOMB_X44_Y11_N14
\ALUCOMP|Add0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~97_combout\ = (\MUXA|salida[30]~10_combout\ & ((\ALUCOMP|Add0~96_combout\ & (\ALUCOMP|Add0~95\ & VCC)) # (!\ALUCOMP|Add0~96_combout\ & (!\ALUCOMP|Add0~95\)))) # (!\MUXA|salida[30]~10_combout\ & ((\ALUCOMP|Add0~96_combout\ & 
-- (!\ALUCOMP|Add0~95\)) # (!\ALUCOMP|Add0~96_combout\ & ((\ALUCOMP|Add0~95\) # (GND)))))
-- \ALUCOMP|Add0~98\ = CARRY((\MUXA|salida[30]~10_combout\ & (!\ALUCOMP|Add0~96_combout\ & !\ALUCOMP|Add0~95\)) # (!\MUXA|salida[30]~10_combout\ & ((!\ALUCOMP|Add0~95\) # (!\ALUCOMP|Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~10_combout\,
	datab => \ALUCOMP|Add0~96_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~95\,
	combout => \ALUCOMP|Add0~97_combout\,
	cout => \ALUCOMP|Add0~98\);

-- Location: LCCOMB_X44_Y11_N16
\ALUCOMP|Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~100_combout\ = \ALUCOMP|Add0~99_combout\ $ (\ALUCOMP|Add0~98\ $ (!\MUXA|salida[31]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~99_combout\,
	datad => \MUXA|salida[31]~9_combout\,
	cin => \ALUCOMP|Add0~98\,
	combout => \ALUCOMP|Add0~100_combout\);

-- Location: LCCOMB_X43_Y11_N18
\PROGCOUNT|addr_out[31]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~48_combout\ = (\ALUCOMP|Add0~100_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & ((!\ALUCONTRL|op\(2)))) # (!\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~0_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~100_combout\,
	datad => \ALUCONTRL|op\(2),
	combout => \PROGCOUNT|addr_out[31]~48_combout\);

-- Location: LCCOMB_X43_Y11_N26
\PROGCOUNT|addr_out[31]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[31]~29_combout\ = (\PROGCOUNT|addr_out[31]~45_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\ALUCOMP|Mux25~3_combout\) # (\PROGCOUNT|addr_out[31]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \PROGCOUNT|addr_out[31]~45_combout\,
	datad => \PROGCOUNT|addr_out[31]~48_combout\,
	combout => \PROGCOUNT|addr_out[31]~29_combout\);

-- Location: LCFF_X43_Y11_N27
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: LCFF_X39_Y13_N5
\MEM|MEM~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~259_regout\);

-- Location: LCFF_X39_Y13_N11
\MEM|MEM~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~195_regout\);

-- Location: LCCOMB_X39_Y13_N10
\MEM|MEM~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~450_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~259_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~195_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~259_regout\,
	datac => \MEM|MEM~195_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~450_combout\);

-- Location: LCFF_X37_Y12_N21
\MEM|MEM~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~227_regout\);

-- Location: LCCOMB_X37_Y12_N20
\MEM|MEM~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~451_combout\ = (\MEM|MEM~450_combout\ & ((\MEM|MEM~291_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~450_combout\ & (((\MEM|MEM~227_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~291_regout\,
	datab => \MEM|MEM~450_combout\,
	datac => \MEM|MEM~227_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~451_combout\);

-- Location: LCCOMB_X39_Y12_N20
\MEM|MEM~163feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~163feeder_combout\ = \regB|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(31),
	combout => \MEM|MEM~163feeder_combout\);

-- Location: LCFF_X39_Y12_N21
\MEM|MEM~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~163feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~163_regout\);

-- Location: LCFF_X38_Y12_N3
\MEM|MEM~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~131_regout\);

-- Location: LCCOMB_X38_Y12_N2
\MEM|MEM~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~453_combout\ = (\MEM|MEM~452_combout\ & ((\MEM|MEM~163_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~452_combout\ & (((\MEM|MEM~131_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~452_combout\,
	datab => \MEM|MEM~163_regout\,
	datac => \MEM|MEM~131_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~453_combout\);

-- Location: LCCOMB_X39_Y12_N0
\MEM|MEM~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~454_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~451_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~453_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~451_combout\,
	datad => \MEM|MEM~453_combout\,
	combout => \MEM|MEM~454_combout\);

-- Location: LCFF_X39_Y12_N1
\MEM|dataOut[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~454_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(31));

-- Location: LCCOMB_X49_Y12_N14
\MUXREAD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux0~0_combout\ = (\MUXREAD|Mux27~3_combout\ & (\ADDRDEC|addressSel[1]~1_combout\)) # (!\MUXREAD|Mux27~3_combout\ & ((\MEM|dataOut\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|addressSel[1]~1_combout\,
	datab => \MUXREAD|Mux27~3_combout\,
	datac => \MEM|dataOut\(31),
	combout => \MUXREAD|Mux0~0_combout\);

-- Location: LCFF_X49_Y12_N15
\MDR|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(31));

-- Location: LCCOMB_X42_Y12_N18
\MUXMemReg|salida[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[31]~28_combout\ = (\rst~combout\ & (((\regALU|dt_out\(31))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(31)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(31),
	datad => \MDR|dt_out\(31),
	combout => \MUXMemReg|salida[31]~28_combout\);

-- Location: LCCOMB_X42_Y13_N18
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

-- Location: LCFF_X42_Y13_N19
\REGFILE|MEM~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~227feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~227_regout\);

-- Location: LCCOMB_X48_Y9_N30
\REGFILE|MEM~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~432_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~259_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~195_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~195_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~259_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~432_combout\);

-- Location: LCCOMB_X42_Y13_N28
\REGFILE|MEM~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~433_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~432_combout\ & (\REGFILE|MEM~291_regout\)) # (!\REGFILE|MEM~432_combout\ & ((\REGFILE|MEM~227_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~291_regout\,
	datab => \REGFILE|MEM~227_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~432_combout\,
	combout => \REGFILE|MEM~433_combout\);

-- Location: LCCOMB_X49_Y9_N24
\REGFILE|MEM~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~434_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~99_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~67_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~67_regout\,
	datad => \REGFILE|MEM~99_regout\,
	combout => \REGFILE|MEM~434_combout\);

-- Location: LCCOMB_X48_Y9_N28
\REGFILE|MEM~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~435_combout\ = (\REGFILE|MEM~434_combout\ & ((\REGFILE|MEM~163_regout\) # ((!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~434_combout\ & (((\REGFILE|MEM~131_regout\ & \INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~163_regout\,
	datab => \REGFILE|MEM~131_regout\,
	datac => \REGFILE|MEM~434_combout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~435_combout\);

-- Location: LCCOMB_X42_Y13_N22
\REGFILE|MEM~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~436_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~433_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~433_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~435_combout\,
	combout => \REGFILE|MEM~436_combout\);

-- Location: LCFF_X42_Y13_N23
\regB|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~436_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(31));

-- Location: LCCOMB_X46_Y12_N22
\MUXB|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~0_combout\ = (\regB|dt_out\(31) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \regB|dt_out\(31),
	datad => \CONTROLU|ALUsrcB[1]~3_combout\,
	combout => \MUXB|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y11_N2
\PROGCOUNT|addr_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~feeder_combout\ = \PROGCOUNT|addr_out[30]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGCOUNT|addr_out[30]~28_combout\,
	combout => \PROGCOUNT|addr_out[30]~feeder_combout\);

-- Location: LCFF_X47_Y11_N3
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[30]~feeder_combout\,
	sdata => \regALU|dt_out\(30),
	aclr => \rst~combout\,
	sload => \CONTROLU|ALUop[0]~0_combout\,
	ena => \PROGCOUNT|addr_out[28]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(30));

-- Location: LCCOMB_X48_Y12_N2
\REGFILE|MEM~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~512_combout\ = (\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21)) # ((\REGFILE|MEM~258_regout\)))) # (!\INSTREG|jump_out\(22) & (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~194_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~258_regout\,
	datad => \REGFILE|MEM~194_regout\,
	combout => \REGFILE|MEM~512_combout\);

-- Location: LCCOMB_X48_Y14_N26
\REGFILE|MEM~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~513_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~512_combout\ & (\REGFILE|MEM~290_regout\)) # (!\REGFILE|MEM~512_combout\ & ((\REGFILE|MEM~226_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~290_regout\,
	datac => \REGFILE|MEM~512_combout\,
	datad => \REGFILE|MEM~226_regout\,
	combout => \REGFILE|MEM~513_combout\);

-- Location: LCFF_X49_Y14_N15
\REGFILE|MEM~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[30]~27_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~162_regout\);

-- Location: LCFF_X49_Y12_N23
\REGFILE|MEM~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[30]~27_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~130_regout\);

-- Location: LCCOMB_X49_Y12_N12
\REGFILE|MEM~515\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~515_combout\ = (\REGFILE|MEM~514_combout\ & ((\REGFILE|MEM~162_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~514_combout\ & (((\REGFILE|MEM~130_regout\ & \INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~514_combout\,
	datab => \REGFILE|MEM~162_regout\,
	datac => \REGFILE|MEM~130_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~515_combout\);

-- Location: LCCOMB_X48_Y14_N20
\REGFILE|MEM~516\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~516_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~513_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~515_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~513_combout\,
	datac => \INSTREG|jump_out\(23),
	datad => \REGFILE|MEM~515_combout\,
	combout => \REGFILE|MEM~516_combout\);

-- Location: LCFF_X48_Y11_N11
\regA|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~516_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(30));

-- Location: LCCOMB_X47_Y11_N10
\MUXA|salida[30]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~10_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(30))) # (!\rst~combout\ & ((\regA|dt_out\(30)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(30)))

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
	combout => \MUXA|salida[30]~10_combout\);

-- Location: LCCOMB_X47_Y11_N6
\MUXB|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux2~0_combout\ = (\regB|dt_out\(29) & ((\rst~combout\) # ((\CONTROLU|ALUsrcB[1]~3_combout\ & !\CONTROLU|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regB|dt_out\(29),
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \CONTROLU|Equal0~4_combout\,
	combout => \MUXB|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y14_N16
\REGFILE|MEM~158feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~158feeder_combout\ = \MUXMemReg|salida[26]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXMemReg|salida[26]~23_combout\,
	combout => \REGFILE|MEM~158feeder_combout\);

-- Location: LCFF_X49_Y14_N17
\REGFILE|MEM~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~158feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~158_regout\);

-- Location: LCCOMB_X46_Y15_N26
\REGFILE|MEM~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~410_combout\ = (\REGFILE|MEM~409_combout\ & (((\REGFILE|MEM~158_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~409_combout\ & (\REGFILE|MEM~126_regout\ & ((\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~409_combout\,
	datab => \REGFILE|MEM~126_regout\,
	datac => \REGFILE|MEM~158_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~410_combout\);

-- Location: LCCOMB_X43_Y10_N26
\REGFILE|MEM~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~407_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~254_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~190_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~254_regout\,
	datac => \REGFILE|MEM~190_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~407_combout\);

-- Location: LCCOMB_X42_Y13_N30
\REGFILE|MEM~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~408_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~407_combout\ & ((\REGFILE|MEM~286_regout\))) # (!\REGFILE|MEM~407_combout\ & (\REGFILE|MEM~222_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~222_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~286_regout\,
	datad => \REGFILE|MEM~407_combout\,
	combout => \REGFILE|MEM~408_combout\);

-- Location: LCCOMB_X42_Y13_N0
\REGFILE|MEM~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~411_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~408_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~410_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~410_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~408_combout\,
	combout => \REGFILE|MEM~411_combout\);

-- Location: LCFF_X45_Y13_N25
\regB|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~411_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(26));

-- Location: LCCOMB_X45_Y13_N24
\MUXB|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux5~0_combout\ = (\regB|dt_out\(26) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \CONTROLU|ALUsrcB[1]~3_combout\,
	datac => \regB|dt_out\(26),
	datad => \rst~combout\,
	combout => \MUXB|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y11_N18
\PROGCOUNT|addr_out[22]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[22]~20_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(22))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(22),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux9~2_combout\,
	combout => \PROGCOUNT|addr_out[22]~20_combout\);

-- Location: LCFF_X42_Y11_N3
\INSTREG|jump_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(20),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(20));

-- Location: LCFF_X49_Y11_N19
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[22]~20_combout\,
	sdata => \INSTREG|jump_out\(20),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(22));

-- Location: LCCOMB_X43_Y12_N18
\REGFILE|MEM~555\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~555_combout\ = (\REGFILE|MEM~554_combout\ & (((\REGFILE|MEM~154_regout\)) # (!\INSTREG|jump_out\(22)))) # (!\REGFILE|MEM~554_combout\ & (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~122_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~554_combout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~154_regout\,
	datad => \REGFILE|MEM~122_regout\,
	combout => \REGFILE|MEM~555_combout\);

-- Location: LCCOMB_X43_Y12_N8
\REGFILE|MEM~556\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~556_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~553_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~553_combout\,
	datab => \REGFILE|MEM~555_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~556_combout\);

-- Location: LCFF_X43_Y12_N9
\regA|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(22));

-- Location: LCCOMB_X43_Y12_N14
\MUXA|salida[22]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~18_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(22))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(22)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(22),
	datac => \regA|dt_out\(22),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[22]~18_combout\);

-- Location: LCCOMB_X43_Y13_N12
\MUXB|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux10~0_combout\ = (\regB|dt_out\(21) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~4_combout\,
	datab => \regB|dt_out\(21),
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \rst~combout\,
	combout => \MUXB|Mux10~0_combout\);

-- Location: LCCOMB_X49_Y11_N20
\PROGCOUNT|addr_out[19]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[19]~17_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(19))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(19),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux12~2_combout\,
	combout => \PROGCOUNT|addr_out[19]~17_combout\);

-- Location: LCFF_X49_Y11_N21
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[19]~17_combout\,
	sdata => \INSTREG|jump_out\(17),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(19));

-- Location: LCCOMB_X46_Y15_N22
\MUXA|salida[19]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~21_combout\ = (\rst~combout\ & (((\PROGCOUNT|addr_out\(19))))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(19))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(19),
	datab => \PROGCOUNT|addr_out\(19),
	datac => \rst~combout\,
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[19]~21_combout\);

-- Location: LCCOMB_X45_Y15_N30
\MUXB|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux14~0_combout\ = (\regB|dt_out\(17) & ((\rst~combout\) # ((!\CONTROLU|Equal0~4_combout\ & \CONTROLU|ALUsrcB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~4_combout\,
	datac => \CONTROLU|ALUsrcB[1]~3_combout\,
	datad => \regB|dt_out\(17),
	combout => \MUXB|Mux14~0_combout\);

-- Location: LCCOMB_X49_Y11_N0
\PROGCOUNT|addr_out[13]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[13]~11_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(13))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(13),
	datab => \CONTROLU|ALUop[0]~0_combout\,
	datad => \ALUCOMP|Mux18~2_combout\,
	combout => \PROGCOUNT|addr_out[13]~11_combout\);

-- Location: LCCOMB_X45_Y13_N12
\MUXB|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux20~0_combout\ = (\regB|dt_out\(11) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(11))))) # (!\regB|dt_out\(11) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(11),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(11),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux20~0_combout\);

-- Location: LCCOMB_X47_Y14_N18
\PROGCOUNT|addr_out[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[11]~9_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(11)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[0]~0_combout\,
	datab => \ALUCOMP|Mux20~2_combout\,
	datad => \regALU|dt_out\(11),
	combout => \PROGCOUNT|addr_out[11]~9_combout\);

-- Location: LCCOMB_X49_Y14_N8
\MUXMemReg|salida[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[9]~6_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & ((\regALU|dt_out\(9)))) # (!\rst~combout\ & (\MDR|dt_out\(9))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(9),
	datab => \CONTROLU|Equal0~5_combout\,
	datac => \regALU|dt_out\(9),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[9]~6_combout\);

-- Location: LCFF_X49_Y12_N7
\REGFILE|MEM~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~109_regout\);

-- Location: LCFF_X48_Y10_N19
\REGFILE|MEM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~45_regout\);

-- Location: LCFF_X47_Y10_N15
\REGFILE|MEM~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~77_regout\);

-- Location: LCCOMB_X47_Y10_N14
\REGFILE|MEM~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~324_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~77_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~45_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~45_regout\,
	datac => \REGFILE|MEM~77_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~324_combout\);

-- Location: LCFF_X48_Y10_N21
\REGFILE|MEM~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~141_regout\);

-- Location: LCCOMB_X47_Y9_N26
\REGFILE|MEM~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~325_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~324_combout\ & ((\REGFILE|MEM~141_regout\))) # (!\REGFILE|MEM~324_combout\ & (\REGFILE|MEM~109_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~109_regout\,
	datac => \REGFILE|MEM~324_combout\,
	datad => \REGFILE|MEM~141_regout\,
	combout => \REGFILE|MEM~325_combout\);

-- Location: LCFF_X49_Y8_N13
\REGFILE|MEM~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~237_regout\);

-- Location: LCFF_X49_Y8_N27
\REGFILE|MEM~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~173_regout\);

-- Location: LCCOMB_X49_Y8_N12
\REGFILE|MEM~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~322_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~237_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~173_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~237_regout\,
	datad => \REGFILE|MEM~173_regout\,
	combout => \REGFILE|MEM~322_combout\);

-- Location: LCFF_X49_Y14_N9
\REGFILE|MEM~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[9]~6_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~205_regout\);

-- Location: LCFF_X47_Y10_N21
\REGFILE|MEM~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[9]~6_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~269_regout\);

-- Location: LCCOMB_X47_Y9_N4
\REGFILE|MEM~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~323_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~322_combout\ & ((\REGFILE|MEM~269_regout\))) # (!\REGFILE|MEM~322_combout\ & (\REGFILE|MEM~205_regout\)))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~322_combout\,
	datac => \REGFILE|MEM~205_regout\,
	datad => \REGFILE|MEM~269_regout\,
	combout => \REGFILE|MEM~323_combout\);

-- Location: LCCOMB_X44_Y9_N10
\REGFILE|MEM~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~326_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~323_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~325_combout\,
	datac => \REGFILE|MEM~323_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~326_combout\);

-- Location: LCFF_X44_Y9_N11
\regB|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(9));

-- Location: LCFF_X36_Y13_N27
\MEM|MEM~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~173_regout\);

-- Location: LCCOMB_X36_Y13_N26
\MEM|MEM~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~382_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~237_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~173_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~237_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~173_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~382_combout\);

-- Location: LCFF_X40_Y13_N17
\MEM|MEM~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~205_regout\);

-- Location: LCCOMB_X40_Y13_N16
\MEM|MEM~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~383_combout\ = (\MEM|MEM~382_combout\ & ((\MEM|MEM~269_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~382_combout\ & (((\MEM|MEM~205_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~269_regout\,
	datab => \MEM|MEM~382_combout\,
	datac => \MEM|MEM~205_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~383_combout\);

-- Location: LCFF_X38_Y10_N3
\MEM|MEM~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~141_regout\);

-- Location: LCFF_X38_Y10_N13
\MEM|MEM~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(9),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~109_regout\);

-- Location: LCCOMB_X38_Y10_N12
\MEM|MEM~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~385_combout\ = (\MEM|MEM~384_combout\ & ((\MEM|MEM~141_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~384_combout\ & (((\MEM|MEM~109_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~384_combout\,
	datab => \MEM|MEM~141_regout\,
	datac => \MEM|MEM~109_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~385_combout\);

-- Location: LCCOMB_X42_Y12_N0
\MEM|MEM~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~386_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~383_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~383_combout\,
	datad => \MEM|MEM~385_combout\,
	combout => \MEM|MEM~386_combout\);

-- Location: LCFF_X42_Y12_N1
\MEM|dataOut[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~386_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(9));

-- Location: LCFF_X45_Y13_N1
\INSTREG|jump_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(9),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(9));

-- Location: LCFF_X47_Y14_N19
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[11]~9_combout\,
	sdata => \INSTREG|jump_out\(9),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(11));

-- Location: LCFF_X43_Y9_N7
\REGFILE|MEM~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[11]~8_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~143_regout\);

-- Location: LCCOMB_X49_Y9_N8
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

-- Location: LCFF_X49_Y9_N9
\REGFILE|MEM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~47feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~47_regout\);

-- Location: LCCOMB_X46_Y9_N28
\REGFILE|MEM~609\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~609_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~79_regout\) # ((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~47_regout\ & !\INSTREG|jump_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~79_regout\,
	datab => \REGFILE|MEM~47_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~609_combout\);

-- Location: LCCOMB_X43_Y9_N10
\REGFILE|MEM~610\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~610_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~609_combout\ & ((\REGFILE|MEM~143_regout\))) # (!\REGFILE|MEM~609_combout\ & (\REGFILE|MEM~111_regout\)))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~609_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~111_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~143_regout\,
	datad => \REGFILE|MEM~609_combout\,
	combout => \REGFILE|MEM~610_combout\);

-- Location: LCFF_X49_Y8_N15
\REGFILE|MEM~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~175_regout\);

-- Location: LCFF_X49_Y8_N5
\REGFILE|MEM~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~239_regout\);

-- Location: LCCOMB_X49_Y8_N4
\REGFILE|MEM~607\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~607_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~239_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~175_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~175_regout\,
	datac => \REGFILE|MEM~239_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~607_combout\);

-- Location: LCCOMB_X43_Y8_N6
\REGFILE|MEM~608\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~608_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~607_combout\ & (\REGFILE|MEM~271_regout\)) # (!\REGFILE|MEM~607_combout\ & ((\REGFILE|MEM~207_regout\))))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~607_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~271_regout\,
	datab => \REGFILE|MEM~207_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~607_combout\,
	combout => \REGFILE|MEM~608_combout\);

-- Location: LCCOMB_X48_Y14_N12
\REGFILE|MEM~611\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~611_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~608_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~610_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~610_combout\,
	datad => \REGFILE|MEM~608_combout\,
	combout => \REGFILE|MEM~611_combout\);

-- Location: LCFF_X48_Y14_N13
\regA|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(11));

-- Location: LCCOMB_X47_Y14_N20
\MUXA|salida[11]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~29_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(11))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(11)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(11),
	datac => \regA|dt_out\(11),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[11]~29_combout\);

-- Location: LCCOMB_X44_Y14_N16
\ALUCOMP|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~1_combout\ = (\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~29_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXB|Mux20~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXA|salida[11]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXB|Mux20~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXA|salida[11]~29_combout\,
	combout => \ALUCOMP|Mux20~1_combout\);

-- Location: LCCOMB_X45_Y13_N20
\ALUCOMP|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~35_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux20~0_combout\,
	combout => \ALUCOMP|Add0~35_combout\);

-- Location: LCCOMB_X44_Y12_N6
\ALUCOMP|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~33_combout\ = (\ALUCOMP|Add0~32_combout\ & ((\MUXA|salida[10]~30_combout\ & (\ALUCOMP|Add0~31\ & VCC)) # (!\MUXA|salida[10]~30_combout\ & (!\ALUCOMP|Add0~31\)))) # (!\ALUCOMP|Add0~32_combout\ & ((\MUXA|salida[10]~30_combout\ & 
-- (!\ALUCOMP|Add0~31\)) # (!\MUXA|salida[10]~30_combout\ & ((\ALUCOMP|Add0~31\) # (GND)))))
-- \ALUCOMP|Add0~34\ = CARRY((\ALUCOMP|Add0~32_combout\ & (!\MUXA|salida[10]~30_combout\ & !\ALUCOMP|Add0~31\)) # (!\ALUCOMP|Add0~32_combout\ & ((!\ALUCOMP|Add0~31\) # (!\MUXA|salida[10]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~32_combout\,
	datab => \MUXA|salida[10]~30_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~31\,
	combout => \ALUCOMP|Add0~33_combout\,
	cout => \ALUCOMP|Add0~34\);

-- Location: LCCOMB_X44_Y12_N8
\ALUCOMP|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~36_combout\ = ((\MUXA|salida[11]~29_combout\ $ (\ALUCOMP|Add0~35_combout\ $ (!\ALUCOMP|Add0~34\)))) # (GND)
-- \ALUCOMP|Add0~37\ = CARRY((\MUXA|salida[11]~29_combout\ & ((\ALUCOMP|Add0~35_combout\) # (!\ALUCOMP|Add0~34\))) # (!\MUXA|salida[11]~29_combout\ & (\ALUCOMP|Add0~35_combout\ & !\ALUCOMP|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~29_combout\,
	datab => \ALUCOMP|Add0~35_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~34\,
	combout => \ALUCOMP|Add0~36_combout\,
	cout => \ALUCOMP|Add0~37\);

-- Location: LCCOMB_X44_Y14_N30
\ALUCOMP|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|Add0~36_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux20~0_combout\);

-- Location: LCCOMB_X44_Y14_N6
\ALUCOMP|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux20~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux20~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux20~1_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux20~0_combout\,
	combout => \ALUCOMP|Mux20~2_combout\);

-- Location: LCFF_X44_Y14_N7
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCCOMB_X43_Y9_N6
\MUXMemReg|salida[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[11]~8_combout\ = (\rst~combout\ & (((\regALU|dt_out\(11))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(11))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(11),
	datab => \rst~combout\,
	datac => \regALU|dt_out\(11),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[11]~8_combout\);

-- Location: LCFF_X43_Y8_N9
\REGFILE|MEM~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[11]~8_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~207_regout\);

-- Location: LCCOMB_X47_Y10_N24
\REGFILE|MEM~271feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~271feeder_combout\ = \MUXMemReg|salida[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[11]~8_combout\,
	combout => \REGFILE|MEM~271feeder_combout\);

-- Location: LCFF_X47_Y10_N25
\REGFILE|MEM~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~271feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~271_regout\);

-- Location: LCCOMB_X43_Y8_N2
\REGFILE|MEM~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~333_combout\ = (\REGFILE|MEM~332_combout\ & (((\REGFILE|MEM~271_regout\) # (!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~332_combout\ & (\REGFILE|MEM~207_regout\ & ((\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~332_combout\,
	datab => \REGFILE|MEM~207_regout\,
	datac => \REGFILE|MEM~271_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~333_combout\);

-- Location: LCCOMB_X47_Y10_N18
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

-- Location: LCFF_X47_Y10_N19
\REGFILE|MEM~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~79feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~79_regout\);

-- Location: LCCOMB_X45_Y9_N26
\REGFILE|MEM~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~334_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~79_regout\) # ((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~47_regout\ & !\INSTREG|jump_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~79_regout\,
	datac => \REGFILE|MEM~47_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~334_combout\);

-- Location: LCCOMB_X43_Y9_N4
\REGFILE|MEM~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~335_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~334_combout\ & ((\REGFILE|MEM~143_regout\))) # (!\REGFILE|MEM~334_combout\ & (\REGFILE|MEM~111_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~111_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~143_regout\,
	datad => \REGFILE|MEM~334_combout\,
	combout => \REGFILE|MEM~335_combout\);

-- Location: LCCOMB_X43_Y13_N0
\REGFILE|MEM~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~336_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~333_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~335_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~333_combout\,
	datac => \REGFILE|MEM~335_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~336_combout\);

-- Location: LCFF_X43_Y13_N1
\regB|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(11));

-- Location: LCFF_X39_Y10_N21
\MEM|MEM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~47_regout\);

-- Location: LCFF_X46_Y10_N27
\MEM|MEM~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~79_regout\);

-- Location: LCCOMB_X39_Y10_N20
\MEM|MEM~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~374_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\) # ((\MEM|MEM~79_regout\)))) # (!\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~47_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~47_regout\,
	datad => \MEM|MEM~79_regout\,
	combout => \MEM|MEM~374_combout\);

-- Location: LCFF_X38_Y11_N3
\MEM|MEM~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~111_regout\);

-- Location: LCCOMB_X38_Y11_N2
\MEM|MEM~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~375_combout\ = (\MEM|MEM~374_combout\ & ((\MEM|MEM~143_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~374_combout\ & (((\MEM|MEM~111_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~143_regout\,
	datab => \MEM|MEM~374_combout\,
	datac => \MEM|MEM~111_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~375_combout\);

-- Location: LCFF_X37_Y13_N27
\MEM|MEM~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~271_regout\);

-- Location: LCFF_X37_Y13_N5
\MEM|MEM~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(11),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~207_regout\);

-- Location: LCCOMB_X37_Y13_N4
\MEM|MEM~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~373_combout\ = (\MEM|MEM~372_combout\ & ((\MEM|MEM~271_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~372_combout\ & (((\MEM|MEM~207_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~372_combout\,
	datab => \MEM|MEM~271_regout\,
	datac => \MEM|MEM~207_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~373_combout\);

-- Location: LCCOMB_X38_Y13_N26
\MEM|MEM~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~376_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~373_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~375_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~375_combout\,
	datac => \MEM|MEM~373_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~376_combout\);

-- Location: LCFF_X38_Y13_N27
\MEM|dataOut[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~376_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(11));

-- Location: LCFF_X45_Y13_N13
\INSTREG|jump_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(11),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(11));

-- Location: LCFF_X49_Y11_N1
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[13]~11_combout\,
	sdata => \INSTREG|jump_out\(11),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(13));

-- Location: LCFF_X43_Y9_N19
\REGFILE|MEM~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[13]~10_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~145_regout\);

-- Location: LCFF_X43_Y9_N1
\REGFILE|MEM~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~113_regout\);

-- Location: LCFF_X48_Y8_N29
\REGFILE|MEM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~49_regout\);

-- Location: LCCOMB_X45_Y8_N10
\REGFILE|MEM~599\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~599_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & (\REGFILE|MEM~81_regout\)) # (!\INSTREG|jump_out\(21) & ((\REGFILE|MEM~49_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~81_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~49_regout\,
	combout => \REGFILE|MEM~599_combout\);

-- Location: LCCOMB_X46_Y9_N6
\REGFILE|MEM~600\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~600_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~599_combout\ & (\REGFILE|MEM~145_regout\)) # (!\REGFILE|MEM~599_combout\ & ((\REGFILE|MEM~113_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~145_regout\,
	datac => \REGFILE|MEM~113_regout\,
	datad => \REGFILE|MEM~599_combout\,
	combout => \REGFILE|MEM~600_combout\);

-- Location: LCFF_X49_Y14_N1
\REGFILE|MEM~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[13]~10_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~209_regout\);

-- Location: LCCOMB_X47_Y12_N26
\REGFILE|MEM~598\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~598_combout\ = (\REGFILE|MEM~597_combout\ & ((\REGFILE|MEM~273_regout\) # ((!\INSTREG|jump_out\(21))))) # (!\REGFILE|MEM~597_combout\ & (((\INSTREG|jump_out\(21) & \REGFILE|MEM~209_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~597_combout\,
	datab => \REGFILE|MEM~273_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~209_regout\,
	combout => \REGFILE|MEM~598_combout\);

-- Location: LCCOMB_X47_Y12_N10
\REGFILE|MEM~601\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~601_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~598_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~600_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~600_combout\,
	datac => \REGFILE|MEM~598_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~601_combout\);

-- Location: LCFF_X47_Y12_N11
\regA|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(13));

-- Location: LCCOMB_X47_Y12_N12
\MUXA|salida[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~27_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(13))) # (!\rst~combout\ & ((\regA|dt_out\(13)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~0_combout\,
	datab => \PROGCOUNT|addr_out\(13),
	datac => \rst~combout\,
	datad => \regA|dt_out\(13),
	combout => \MUXA|salida[13]~27_combout\);

-- Location: LCCOMB_X45_Y13_N0
\MUXB|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux22~0_combout\ = (\regB|dt_out\(9) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(9))))) # (!\regB|dt_out\(9) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(9),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(9),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux22~0_combout\);

-- Location: LCCOMB_X47_Y13_N30
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (!\CONTROLU|ALUsrcB[0]~2_combout\ & ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|func_out\(2)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(2),
	datab => \CONTROLU|ALUsrcB[1]~1_combout\,
	datac => \INSTREG|func_out\(2),
	datad => \CONTROLU|ALUsrcB[0]~2_combout\,
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X45_Y12_N0
\ALUCOMP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~1_cout\ = CARRY((\MUXB|Mux31~0_combout\ & !\MUXA|salida[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux31~0_combout\,
	datab => \MUXA|salida[0]~8_combout\,
	datad => VCC,
	cout => \ALUCOMP|LessThan0~1_cout\);

-- Location: LCCOMB_X45_Y12_N2
\ALUCOMP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~3_cout\ = CARRY((\MUXA|salida[1]~7_combout\ & ((!\ALUCOMP|LessThan0~1_cout\) # (!\MUXB|Mux30~0_combout\))) # (!\MUXA|salida[1]~7_combout\ & (!\MUXB|Mux30~0_combout\ & !\ALUCOMP|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~7_combout\,
	datab => \MUXB|Mux30~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~1_cout\,
	cout => \ALUCOMP|LessThan0~3_cout\);

-- Location: LCCOMB_X45_Y12_N4
\ALUCOMP|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~5_cout\ = CARRY((\MUXA|salida[2]~6_combout\ & (\MUXB|Mux29~0_combout\ & !\ALUCOMP|LessThan0~3_cout\)) # (!\MUXA|salida[2]~6_combout\ & ((\MUXB|Mux29~0_combout\) # (!\ALUCOMP|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~6_combout\,
	datab => \MUXB|Mux29~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~3_cout\,
	cout => \ALUCOMP|LessThan0~5_cout\);

-- Location: LCCOMB_X45_Y12_N6
\ALUCOMP|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~7_cout\ = CARRY((\MUXA|salida[3]~5_combout\ & ((!\ALUCOMP|LessThan0~5_cout\) # (!\MUXB|Mux28~0_combout\))) # (!\MUXA|salida[3]~5_combout\ & (!\MUXB|Mux28~0_combout\ & !\ALUCOMP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~5_combout\,
	datab => \MUXB|Mux28~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~5_cout\,
	cout => \ALUCOMP|LessThan0~7_cout\);

-- Location: LCCOMB_X45_Y12_N8
\ALUCOMP|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~9_cout\ = CARRY((\MUXA|salida[4]~4_combout\ & (\MUXB|Mux27~0_combout\ & !\ALUCOMP|LessThan0~7_cout\)) # (!\MUXA|salida[4]~4_combout\ & ((\MUXB|Mux27~0_combout\) # (!\ALUCOMP|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~4_combout\,
	datab => \MUXB|Mux27~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~7_cout\,
	cout => \ALUCOMP|LessThan0~9_cout\);

-- Location: LCCOMB_X45_Y12_N10
\ALUCOMP|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~11_cout\ = CARRY((\MUXA|salida[5]~3_combout\ & ((!\ALUCOMP|LessThan0~9_cout\) # (!\MUXB|Mux26~0_combout\))) # (!\MUXA|salida[5]~3_combout\ & (!\MUXB|Mux26~0_combout\ & !\ALUCOMP|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~3_combout\,
	datab => \MUXB|Mux26~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~9_cout\,
	cout => \ALUCOMP|LessThan0~11_cout\);

-- Location: LCCOMB_X45_Y12_N12
\ALUCOMP|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~13_cout\ = CARRY((\MUXB|Mux25~0_combout\ & ((!\ALUCOMP|LessThan0~11_cout\) # (!\MUXA|salida[6]~2_combout\))) # (!\MUXB|Mux25~0_combout\ & (!\MUXA|salida[6]~2_combout\ & !\ALUCOMP|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[6]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~11_cout\,
	cout => \ALUCOMP|LessThan0~13_cout\);

-- Location: LCCOMB_X45_Y12_N14
\ALUCOMP|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~15_cout\ = CARRY((\MUXB|Mux24~0_combout\ & (\MUXA|salida[7]~1_combout\ & !\ALUCOMP|LessThan0~13_cout\)) # (!\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~1_combout\) # (!\ALUCOMP|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~13_cout\,
	cout => \ALUCOMP|LessThan0~15_cout\);

-- Location: LCCOMB_X45_Y12_N16
\ALUCOMP|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~17_cout\ = CARRY((\MUXA|salida[8]~0_combout\ & (\MUXB|Mux23~0_combout\ & !\ALUCOMP|LessThan0~15_cout\)) # (!\MUXA|salida[8]~0_combout\ & ((\MUXB|Mux23~0_combout\) # (!\ALUCOMP|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~0_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~15_cout\,
	cout => \ALUCOMP|LessThan0~17_cout\);

-- Location: LCCOMB_X45_Y12_N18
\ALUCOMP|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~19_cout\ = CARRY((\MUXA|salida[9]~31_combout\ & ((!\ALUCOMP|LessThan0~17_cout\) # (!\MUXB|Mux22~0_combout\))) # (!\MUXA|salida[9]~31_combout\ & (!\MUXB|Mux22~0_combout\ & !\ALUCOMP|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~31_combout\,
	datab => \MUXB|Mux22~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~17_cout\,
	cout => \ALUCOMP|LessThan0~19_cout\);

-- Location: LCCOMB_X45_Y12_N20
\ALUCOMP|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~21_cout\ = CARRY((\MUXA|salida[10]~30_combout\ & (\MUXB|Mux21~0_combout\ & !\ALUCOMP|LessThan0~19_cout\)) # (!\MUXA|salida[10]~30_combout\ & ((\MUXB|Mux21~0_combout\) # (!\ALUCOMP|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~30_combout\,
	datab => \MUXB|Mux21~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~19_cout\,
	cout => \ALUCOMP|LessThan0~21_cout\);

-- Location: LCCOMB_X45_Y12_N22
\ALUCOMP|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~23_cout\ = CARRY((\MUXA|salida[11]~29_combout\ & ((!\ALUCOMP|LessThan0~21_cout\) # (!\MUXB|Mux20~0_combout\))) # (!\MUXA|salida[11]~29_combout\ & (!\MUXB|Mux20~0_combout\ & !\ALUCOMP|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~29_combout\,
	datab => \MUXB|Mux20~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~21_cout\,
	cout => \ALUCOMP|LessThan0~23_cout\);

-- Location: LCCOMB_X45_Y12_N24
\ALUCOMP|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~25_cout\ = CARRY((\MUXA|salida[12]~28_combout\ & (\MUXB|Mux19~0_combout\ & !\ALUCOMP|LessThan0~23_cout\)) # (!\MUXA|salida[12]~28_combout\ & ((\MUXB|Mux19~0_combout\) # (!\ALUCOMP|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~28_combout\,
	datab => \MUXB|Mux19~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~23_cout\,
	cout => \ALUCOMP|LessThan0~25_cout\);

-- Location: LCCOMB_X45_Y12_N26
\ALUCOMP|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~27_cout\ = CARRY((\MUXB|Mux18~0_combout\ & (\MUXA|salida[13]~27_combout\ & !\ALUCOMP|LessThan0~25_cout\)) # (!\MUXB|Mux18~0_combout\ & ((\MUXA|salida[13]~27_combout\) # (!\ALUCOMP|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux18~0_combout\,
	datab => \MUXA|salida[13]~27_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~25_cout\,
	cout => \ALUCOMP|LessThan0~27_cout\);

-- Location: LCCOMB_X45_Y12_N28
\ALUCOMP|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~29_cout\ = CARRY((\MUXA|salida[14]~26_combout\ & (\MUXB|Mux17~0_combout\ & !\ALUCOMP|LessThan0~27_cout\)) # (!\MUXA|salida[14]~26_combout\ & ((\MUXB|Mux17~0_combout\) # (!\ALUCOMP|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~26_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~27_cout\,
	cout => \ALUCOMP|LessThan0~29_cout\);

-- Location: LCCOMB_X45_Y12_N30
\ALUCOMP|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~31_cout\ = CARRY((\MUXB|Mux16~2_combout\ & (\MUXA|salida[15]~25_combout\ & !\ALUCOMP|LessThan0~29_cout\)) # (!\MUXB|Mux16~2_combout\ & ((\MUXA|salida[15]~25_combout\) # (!\ALUCOMP|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux16~2_combout\,
	datab => \MUXA|salida[15]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~29_cout\,
	cout => \ALUCOMP|LessThan0~31_cout\);

-- Location: LCCOMB_X45_Y11_N0
\ALUCOMP|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~33_cout\ = CARRY((\MUXA|salida[16]~24_combout\ & (\MUXB|Mux15~0_combout\ & !\ALUCOMP|LessThan0~31_cout\)) # (!\MUXA|salida[16]~24_combout\ & ((\MUXB|Mux15~0_combout\) # (!\ALUCOMP|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~24_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~31_cout\,
	cout => \ALUCOMP|LessThan0~33_cout\);

-- Location: LCCOMB_X45_Y11_N2
\ALUCOMP|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~35_cout\ = CARRY((\MUXA|salida[17]~23_combout\ & ((!\ALUCOMP|LessThan0~33_cout\) # (!\MUXB|Mux14~0_combout\))) # (!\MUXA|salida[17]~23_combout\ & (!\MUXB|Mux14~0_combout\ & !\ALUCOMP|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~23_combout\,
	datab => \MUXB|Mux14~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~33_cout\,
	cout => \ALUCOMP|LessThan0~35_cout\);

-- Location: LCCOMB_X45_Y11_N4
\ALUCOMP|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~37_cout\ = CARRY((\MUXA|salida[18]~22_combout\ & (\MUXB|Mux13~0_combout\ & !\ALUCOMP|LessThan0~35_cout\)) # (!\MUXA|salida[18]~22_combout\ & ((\MUXB|Mux13~0_combout\) # (!\ALUCOMP|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[18]~22_combout\,
	datab => \MUXB|Mux13~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~35_cout\,
	cout => \ALUCOMP|LessThan0~37_cout\);

-- Location: LCCOMB_X45_Y11_N6
\ALUCOMP|LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~39_cout\ = CARRY((\MUXB|Mux12~0_combout\ & (\MUXA|salida[19]~21_combout\ & !\ALUCOMP|LessThan0~37_cout\)) # (!\MUXB|Mux12~0_combout\ & ((\MUXA|salida[19]~21_combout\) # (!\ALUCOMP|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux12~0_combout\,
	datab => \MUXA|salida[19]~21_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~37_cout\,
	cout => \ALUCOMP|LessThan0~39_cout\);

-- Location: LCCOMB_X45_Y11_N8
\ALUCOMP|LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~41_cout\ = CARRY((\MUXB|Mux11~0_combout\ & ((!\ALUCOMP|LessThan0~39_cout\) # (!\MUXA|salida[20]~20_combout\))) # (!\MUXB|Mux11~0_combout\ & (!\MUXA|salida[20]~20_combout\ & !\ALUCOMP|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux11~0_combout\,
	datab => \MUXA|salida[20]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~39_cout\,
	cout => \ALUCOMP|LessThan0~41_cout\);

-- Location: LCCOMB_X45_Y11_N10
\ALUCOMP|LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~43_cout\ = CARRY((\MUXA|salida[21]~19_combout\ & ((!\ALUCOMP|LessThan0~41_cout\) # (!\MUXB|Mux10~0_combout\))) # (!\MUXA|salida[21]~19_combout\ & (!\MUXB|Mux10~0_combout\ & !\ALUCOMP|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~19_combout\,
	datab => \MUXB|Mux10~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~41_cout\,
	cout => \ALUCOMP|LessThan0~43_cout\);

-- Location: LCCOMB_X45_Y11_N12
\ALUCOMP|LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~45_cout\ = CARRY((\MUXB|Mux9~0_combout\ & ((!\ALUCOMP|LessThan0~43_cout\) # (!\MUXA|salida[22]~18_combout\))) # (!\MUXB|Mux9~0_combout\ & (!\MUXA|salida[22]~18_combout\ & !\ALUCOMP|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux9~0_combout\,
	datab => \MUXA|salida[22]~18_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~43_cout\,
	cout => \ALUCOMP|LessThan0~45_cout\);

-- Location: LCCOMB_X45_Y11_N14
\ALUCOMP|LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~47_cout\ = CARRY((\MUXA|salida[23]~17_combout\ & ((!\ALUCOMP|LessThan0~45_cout\) # (!\MUXB|Mux8~0_combout\))) # (!\MUXA|salida[23]~17_combout\ & (!\MUXB|Mux8~0_combout\ & !\ALUCOMP|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~17_combout\,
	datab => \MUXB|Mux8~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~45_cout\,
	cout => \ALUCOMP|LessThan0~47_cout\);

-- Location: LCCOMB_X45_Y11_N16
\ALUCOMP|LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~49_cout\ = CARRY((\MUXB|Mux7~0_combout\ & ((!\ALUCOMP|LessThan0~47_cout\) # (!\MUXA|salida[24]~16_combout\))) # (!\MUXB|Mux7~0_combout\ & (!\MUXA|salida[24]~16_combout\ & !\ALUCOMP|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux7~0_combout\,
	datab => \MUXA|salida[24]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~47_cout\,
	cout => \ALUCOMP|LessThan0~49_cout\);

-- Location: LCCOMB_X45_Y11_N18
\ALUCOMP|LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~51_cout\ = CARRY((\MUXB|Mux6~0_combout\ & (\MUXA|salida[25]~15_combout\ & !\ALUCOMP|LessThan0~49_cout\)) # (!\MUXB|Mux6~0_combout\ & ((\MUXA|salida[25]~15_combout\) # (!\ALUCOMP|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux6~0_combout\,
	datab => \MUXA|salida[25]~15_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~49_cout\,
	cout => \ALUCOMP|LessThan0~51_cout\);

-- Location: LCCOMB_X45_Y11_N20
\ALUCOMP|LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~53_cout\ = CARRY((\MUXA|salida[26]~14_combout\ & (\MUXB|Mux5~0_combout\ & !\ALUCOMP|LessThan0~51_cout\)) # (!\MUXA|salida[26]~14_combout\ & ((\MUXB|Mux5~0_combout\) # (!\ALUCOMP|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~14_combout\,
	datab => \MUXB|Mux5~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~51_cout\,
	cout => \ALUCOMP|LessThan0~53_cout\);

-- Location: LCCOMB_X45_Y11_N22
\ALUCOMP|LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~55_cout\ = CARRY((\MUXA|salida[27]~13_combout\ & ((!\ALUCOMP|LessThan0~53_cout\) # (!\MUXB|Mux4~0_combout\))) # (!\MUXA|salida[27]~13_combout\ & (!\MUXB|Mux4~0_combout\ & !\ALUCOMP|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[27]~13_combout\,
	datab => \MUXB|Mux4~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~53_cout\,
	cout => \ALUCOMP|LessThan0~55_cout\);

-- Location: LCCOMB_X45_Y11_N24
\ALUCOMP|LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~57_cout\ = CARRY((\MUXB|Mux3~0_combout\ & ((!\ALUCOMP|LessThan0~55_cout\) # (!\MUXA|salida[28]~12_combout\))) # (!\MUXB|Mux3~0_combout\ & (!\MUXA|salida[28]~12_combout\ & !\ALUCOMP|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux3~0_combout\,
	datab => \MUXA|salida[28]~12_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~55_cout\,
	cout => \ALUCOMP|LessThan0~57_cout\);

-- Location: LCCOMB_X45_Y11_N26
\ALUCOMP|LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~59_cout\ = CARRY((\MUXA|salida[29]~11_combout\ & ((!\ALUCOMP|LessThan0~57_cout\) # (!\MUXB|Mux2~0_combout\))) # (!\MUXA|salida[29]~11_combout\ & (!\MUXB|Mux2~0_combout\ & !\ALUCOMP|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~11_combout\,
	datab => \MUXB|Mux2~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~57_cout\,
	cout => \ALUCOMP|LessThan0~59_cout\);

-- Location: LCCOMB_X45_Y11_N28
\ALUCOMP|LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~61_cout\ = CARRY((\MUXB|Mux1~0_combout\ & ((!\ALUCOMP|LessThan0~59_cout\) # (!\MUXA|salida[30]~10_combout\))) # (!\MUXB|Mux1~0_combout\ & (!\MUXA|salida[30]~10_combout\ & !\ALUCOMP|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux1~0_combout\,
	datab => \MUXA|salida[30]~10_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~59_cout\,
	cout => \ALUCOMP|LessThan0~61_cout\);

-- Location: LCCOMB_X45_Y11_N30
\ALUCOMP|LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~62_combout\ = (\MUXB|Mux0~0_combout\ & ((\ALUCOMP|LessThan0~61_cout\) # (!\MUXA|salida[31]~9_combout\))) # (!\MUXB|Mux0~0_combout\ & (\ALUCOMP|LessThan0~61_cout\ & !\MUXA|salida[31]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux0~0_combout\,
	datad => \MUXA|salida[31]~9_combout\,
	cin => \ALUCOMP|LessThan0~61_cout\,
	combout => \ALUCOMP|LessThan0~62_combout\);

-- Location: LCCOMB_X45_Y14_N4
\ALUCOMP|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~1_combout\ = (\ALUCOMP|Mux29~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux25~1_combout\)))) # (!\ALUCOMP|Mux29~0_combout\ & (\ALUCOMP|Add0~15_combout\ & (\ALUCOMP|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux29~0_combout\,
	datab => \ALUCOMP|Add0~15_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux29~1_combout\);

-- Location: LCCOMB_X45_Y14_N16
\ALUCOMP|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux29~0_combout\)) # (!\MUXA|salida[2]~6_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~6_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \ALUCOMP|Mux29~1_combout\,
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Mux29~2_combout\);

-- Location: LCCOMB_X46_Y14_N30
\PROGCOUNT|addr_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[2]~0_combout\ = (\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(2))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(2),
	datab => \ALUCOMP|Mux29~2_combout\,
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \PROGCOUNT|addr_out[2]~0_combout\);

-- Location: LCFF_X46_Y14_N31
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[2]~0_combout\,
	sdata => \INSTREG|func_out\(0),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(2));

-- Location: LCCOMB_X46_Y14_N20
\MUXPC|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[2]~2_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(2)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(2),
	datad => \regALU|dt_out\(2),
	combout => \MUXPC|salida[2]~2_combout\);

-- Location: LCCOMB_X38_Y13_N20
\MEM|MEM~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~331_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~328_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~330_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~330_combout\,
	datac => \MEM|MEM~328_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~331_combout\);

-- Location: LCFF_X38_Y13_N21
\MEM|dataOut[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~331_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(5));

-- Location: LCCOMB_X44_Y10_N2
\MUXREAD|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux26~0_combout\ = (\MEM|dataOut\(5) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(5),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux26~0_combout\);

-- Location: LCFF_X44_Y10_N3
\MDR|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(5));

-- Location: LCCOMB_X44_Y15_N0
\MUXMemReg|salida[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[5]~2_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(5))) # (!\rst~combout\ & ((\MDR|dt_out\(5)))))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \regALU|dt_out\(5),
	datac => \rst~combout\,
	datad => \MDR|dt_out\(5),
	combout => \MUXMemReg|salida[5]~2_combout\);

-- Location: LCFF_X48_Y13_N23
\REGFILE|MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~105_regout\);

-- Location: LCFF_X48_Y10_N13
\REGFILE|MEM~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~137_regout\);

-- Location: LCFF_X48_Y10_N3
\REGFILE|MEM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[5]~2_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~41_regout\);

-- Location: LCCOMB_X48_Y10_N2
\REGFILE|MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~304_combout\ = (\INSTREG|jump_out\(17) & (\INSTREG|jump_out\(16))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~73_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~41_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~41_regout\,
	datad => \REGFILE|MEM~73_regout\,
	combout => \REGFILE|MEM~304_combout\);

-- Location: LCCOMB_X48_Y10_N12
\REGFILE|MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~305_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~304_combout\ & ((\REGFILE|MEM~137_regout\))) # (!\REGFILE|MEM~304_combout\ & (\REGFILE|MEM~105_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~105_regout\,
	datac => \REGFILE|MEM~137_regout\,
	datad => \REGFILE|MEM~304_combout\,
	combout => \REGFILE|MEM~305_combout\);

-- Location: LCCOMB_X48_Y13_N8
\REGFILE|MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~306_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~303_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~305_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~303_combout\,
	datab => \INSTREG|jump_out\(18),
	datac => \REGFILE|MEM~305_combout\,
	combout => \REGFILE|MEM~306_combout\);

-- Location: LCFF_X48_Y13_N9
\regB|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(5));

-- Location: LCCOMB_X47_Y13_N14
\MUXB|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux26~0_combout\ = (!\CONTROLU|ALUsrcB[0]~2_combout\ & ((\CONTROLU|ALUsrcB[1]~1_combout\ & ((\INSTREG|jump_out\(5)))) # (!\CONTROLU|ALUsrcB[1]~1_combout\ & (\regB|dt_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~2_combout\,
	datab => \regB|dt_out\(5),
	datac => \INSTREG|jump_out\(5),
	datad => \CONTROLU|ALUsrcB[1]~1_combout\,
	combout => \MUXB|Mux26~0_combout\);

-- Location: LCCOMB_X44_Y14_N0
\ALUCOMP|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~1_combout\ = (\MUXB|Mux26~0_combout\ & ((\MUXA|salida[5]~3_combout\) # ((\ALUCONTRL|op[0]~1_combout\ & !\ALUCOMP|Mux25~3_combout\)))) # (!\MUXB|Mux26~0_combout\ & (\ALUCONTRL|op[0]~1_combout\ & (!\ALUCOMP|Mux25~3_combout\ & 
-- \MUXA|salida[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \MUXB|Mux26~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \MUXA|salida[5]~3_combout\,
	combout => \ALUCOMP|Mux26~1_combout\);

-- Location: LCCOMB_X44_Y14_N18
\ALUCOMP|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Add0~21_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux26~0_combout\);

-- Location: LCCOMB_X44_Y14_N4
\ALUCOMP|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\ALUCOMP|Mux26~1_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux26~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux26~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux26~0_combout\,
	combout => \ALUCOMP|Mux26~2_combout\);

-- Location: LCCOMB_X45_Y14_N26
\PCwrite~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~0_combout\ = (!\ALUCOMP|Mux24~2_combout\ & (!\ALUCOMP|Mux26~2_combout\ & (!\ALUCOMP|Mux28~2_combout\ & !\ALUCOMP|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~2_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Mux28~2_combout\,
	datad => \ALUCOMP|Mux30~2_combout\,
	combout => \PCwrite~0_combout\);

-- Location: LCCOMB_X47_Y14_N6
\PCwrite~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~1_combout\ = (!\ALUCOMP|Mux16~2_combout\ & (!\ALUCOMP|Mux22~2_combout\ & (!\ALUCOMP|Mux20~2_combout\ & !\ALUCOMP|Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux16~2_combout\,
	datab => \ALUCOMP|Mux22~2_combout\,
	datac => \ALUCOMP|Mux20~2_combout\,
	datad => \ALUCOMP|Mux18~2_combout\,
	combout => \PCwrite~1_combout\);

-- Location: LCCOMB_X46_Y11_N14
\PCwrite~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~2_combout\ = (\PCwrite~0_combout\ & \PCwrite~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCwrite~0_combout\,
	datad => \PCwrite~1_combout\,
	combout => \PCwrite~2_combout\);

-- Location: LCCOMB_X46_Y11_N20
PCwrite : cycloneii_lcell_comb
-- Equation(s):
-- \PCwrite~combout\ = (\CONTROLU|ALUsrcB[0]~2_combout\) # ((\CONTROLU|PCsrc[1]~0_combout\) # ((\PCwrite~2_combout\ & \PCwrite~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~2_combout\,
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \PCwrite~2_combout\,
	datad => \PCwrite~10_combout\,
	combout => \PCwrite~combout\);

-- Location: LCFF_X47_Y14_N17
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[10]~8_combout\,
	sdata => \INSTREG|jump_out\(8),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X45_Y9_N20
\MUXA|salida[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~30_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & ((\PROGCOUNT|addr_out\(10)))) # (!\rst~combout\ & (\regA|dt_out\(10))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (((\PROGCOUNT|addr_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(10),
	datab => \CONTROLU|ALUsrcA~0_combout\,
	datac => \PROGCOUNT|addr_out\(10),
	datad => \rst~combout\,
	combout => \MUXA|salida[10]~30_combout\);

-- Location: LCCOMB_X45_Y9_N28
\ALUCOMP|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Add0~33_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Add0~33_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux21~1_combout\);

-- Location: LCCOMB_X45_Y9_N14
\ALUCOMP|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux21~0_combout\)) # (!\MUXA|salida[10]~30_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~30_combout\,
	datab => \MUXB|Mux21~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux21~2_combout\);

-- Location: LCFF_X45_Y9_N31
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \ALUCOMP|Mux21~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCCOMB_X46_Y10_N30
\MUXREAD|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux21~0_combout\ = (\MEM|dataOut\(10) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(10),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux21~0_combout\);

-- Location: LCFF_X46_Y10_N31
\MDR|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(10));

-- Location: LCCOMB_X43_Y9_N22
\MUXMemReg|salida[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[10]~7_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(10))) # (!\rst~combout\ & ((\MDR|dt_out\(10)))))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \regALU|dt_out\(10),
	datac => \MDR|dt_out\(10),
	datad => \rst~combout\,
	combout => \MUXMemReg|salida[10]~7_combout\);

-- Location: LCFF_X43_Y9_N13
\REGFILE|MEM~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[10]~7_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~110_regout\);

-- Location: LCCOMB_X43_Y9_N2
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

-- Location: LCFF_X43_Y9_N3
\REGFILE|MEM~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~142feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~142_regout\);

-- Location: LCCOMB_X43_Y9_N12
\REGFILE|MEM~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~330_combout\ = (\REGFILE|MEM~329_combout\ & (((\REGFILE|MEM~142_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~329_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~110_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~329_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~110_regout\,
	datad => \REGFILE|MEM~142_regout\,
	combout => \REGFILE|MEM~330_combout\);

-- Location: LCCOMB_X44_Y9_N6
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

-- Location: LCFF_X46_Y10_N13
\regB|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~331_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(10));

-- Location: LCFF_X38_Y10_N27
\MEM|MEM~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~142_regout\);

-- Location: LCFF_X38_Y10_N29
\MEM|MEM~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~110_regout\);

-- Location: LCCOMB_X38_Y10_N28
\MEM|MEM~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~380_combout\ = (\MEM|MEM~379_combout\ & ((\MEM|MEM~142_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~379_combout\ & (((\MEM|MEM~110_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~379_combout\,
	datab => \MEM|MEM~142_regout\,
	datac => \MEM|MEM~110_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~380_combout\);

-- Location: LCFF_X37_Y13_N19
\MEM|MEM~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~270_regout\);

-- Location: LCFF_X37_Y13_N21
\MEM|MEM~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~206_regout\);

-- Location: LCCOMB_X37_Y13_N20
\MEM|MEM~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~378_combout\ = (\MEM|MEM~377_combout\ & ((\MEM|MEM~270_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~377_combout\ & (((\MEM|MEM~206_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~377_combout\,
	datab => \MEM|MEM~270_regout\,
	datac => \MEM|MEM~206_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~378_combout\);

-- Location: LCCOMB_X38_Y13_N12
\MEM|MEM~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~381_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~378_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~380_combout\,
	datac => \MEM|MEM~378_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~381_combout\);

-- Location: LCFF_X38_Y13_N13
\MEM|dataOut[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~381_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(10));

-- Location: LCFF_X45_Y13_N11
\INSTREG|jump_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(10),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(10));

-- Location: LCFF_X49_Y11_N23
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[12]~10_combout\,
	sdata => \INSTREG|jump_out\(10),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(12));

-- Location: LCFF_X43_Y9_N27
\REGFILE|MEM~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~112_regout\);

-- Location: LCCOMB_X45_Y8_N14
\REGFILE|MEM~80feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~80feeder_combout\ = \MUXMemReg|salida[12]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[12]~9_combout\,
	combout => \REGFILE|MEM~80feeder_combout\);

-- Location: LCFF_X45_Y8_N15
\REGFILE|MEM~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~80feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~80_regout\);

-- Location: LCCOMB_X44_Y8_N18
\REGFILE|MEM~604\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~604_combout\ = (\INSTREG|jump_out\(22) & (((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((\REGFILE|MEM~80_regout\))) # (!\INSTREG|jump_out\(21) & (\REGFILE|MEM~48_regout\))))

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
	combout => \REGFILE|MEM~604_combout\);

-- Location: LCCOMB_X43_Y9_N26
\REGFILE|MEM~605\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~605_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~604_combout\ & (\REGFILE|MEM~144_regout\)) # (!\REGFILE|MEM~604_combout\ & ((\REGFILE|MEM~112_regout\))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~144_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~112_regout\,
	datad => \REGFILE|MEM~604_combout\,
	combout => \REGFILE|MEM~605_combout\);

-- Location: LCFF_X43_Y10_N25
\REGFILE|MEM~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~240_regout\);

-- Location: LCFF_X43_Y10_N19
\REGFILE|MEM~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[12]~9_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~176_regout\);

-- Location: LCCOMB_X43_Y10_N18
\REGFILE|MEM~602\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~602_combout\ = (\INSTREG|jump_out\(21) & (((\INSTREG|jump_out\(22))))) # (!\INSTREG|jump_out\(21) & ((\INSTREG|jump_out\(22) & (\REGFILE|MEM~240_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(21),
	datab => \REGFILE|MEM~240_regout\,
	datac => \REGFILE|MEM~176_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~602_combout\);

-- Location: LCCOMB_X44_Y9_N28
\REGFILE|MEM~603\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~603_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~602_combout\ & ((\REGFILE|MEM~272_regout\))) # (!\REGFILE|MEM~602_combout\ & (\REGFILE|MEM~208_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~208_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~272_regout\,
	datad => \REGFILE|MEM~602_combout\,
	combout => \REGFILE|MEM~603_combout\);

-- Location: LCCOMB_X47_Y12_N2
\REGFILE|MEM~606\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~606_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~603_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~605_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~605_combout\,
	datac => \REGFILE|MEM~603_combout\,
	datad => \INSTREG|jump_out\(23),
	combout => \REGFILE|MEM~606_combout\);

-- Location: LCFF_X47_Y12_N3
\regA|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(12));

-- Location: LCCOMB_X47_Y12_N4
\MUXA|salida[12]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~28_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\rst~combout\ & (\PROGCOUNT|addr_out\(12))) # (!\rst~combout\ & ((\regA|dt_out\(12)))))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~0_combout\,
	datab => \PROGCOUNT|addr_out\(12),
	datac => \rst~combout\,
	datad => \regA|dt_out\(12),
	combout => \MUXA|salida[12]~28_combout\);

-- Location: LCCOMB_X44_Y12_N10
\ALUCOMP|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~39_combout\ = (\MUXA|salida[12]~28_combout\ & ((\ALUCOMP|Add0~38_combout\ & (\ALUCOMP|Add0~37\ & VCC)) # (!\ALUCOMP|Add0~38_combout\ & (!\ALUCOMP|Add0~37\)))) # (!\MUXA|salida[12]~28_combout\ & ((\ALUCOMP|Add0~38_combout\ & 
-- (!\ALUCOMP|Add0~37\)) # (!\ALUCOMP|Add0~38_combout\ & ((\ALUCOMP|Add0~37\) # (GND)))))
-- \ALUCOMP|Add0~40\ = CARRY((\MUXA|salida[12]~28_combout\ & (!\ALUCOMP|Add0~38_combout\ & !\ALUCOMP|Add0~37\)) # (!\MUXA|salida[12]~28_combout\ & ((!\ALUCOMP|Add0~37\) # (!\ALUCOMP|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~28_combout\,
	datab => \ALUCOMP|Add0~38_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~37\,
	combout => \ALUCOMP|Add0~39_combout\,
	cout => \ALUCOMP|Add0~40\);

-- Location: LCCOMB_X43_Y11_N0
\ALUCOMP|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~1_combout\ = (\ALUCOMP|Mux19~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux25~1_combout\)))) # (!\ALUCOMP|Mux19~0_combout\ & (\ALUCOMP|Add0~39_combout\ & (\ALUCOMP|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux19~0_combout\,
	datab => \ALUCOMP|Add0~39_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux19~1_combout\);

-- Location: LCCOMB_X43_Y11_N12
\ALUCOMP|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[12]~28_combout\)) # (!\MUXB|Mux19~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux19~0_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \MUXA|salida[12]~28_combout\,
	datad => \ALUCOMP|Mux19~1_combout\,
	combout => \ALUCOMP|Mux19~2_combout\);

-- Location: LCFF_X43_Y11_N13
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: LCCOMB_X48_Y13_N14
\MUXREAD|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux19~0_combout\ = (\MEM|dataOut\(12) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|dataOut\(12),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux19~0_combout\);

-- Location: LCFF_X48_Y13_N15
\MDR|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(12));

-- Location: LCCOMB_X44_Y9_N16
\MUXMemReg|salida[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[12]~9_combout\ = (\rst~combout\ & (\regALU|dt_out\(12))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(12)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(12),
	datac => \MDR|dt_out\(12),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[12]~9_combout\);

-- Location: LCCOMB_X47_Y10_N16
\REGFILE|MEM~272feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~272feeder_combout\ = \MUXMemReg|salida[12]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[12]~9_combout\,
	combout => \REGFILE|MEM~272feeder_combout\);

-- Location: LCFF_X47_Y10_N17
\REGFILE|MEM~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~272feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~272_regout\);

-- Location: LCFF_X44_Y9_N17
\REGFILE|MEM~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[12]~9_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~208_regout\);

-- Location: LCCOMB_X44_Y9_N22
\REGFILE|MEM~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~338_combout\ = (\REGFILE|MEM~337_combout\ & ((\REGFILE|MEM~272_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~337_combout\ & (((\REGFILE|MEM~208_regout\ & \INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~337_combout\,
	datab => \REGFILE|MEM~272_regout\,
	datac => \REGFILE|MEM~208_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~338_combout\);

-- Location: LCCOMB_X44_Y9_N4
\REGFILE|MEM~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~341_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~338_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~340_combout\,
	datab => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~338_combout\,
	combout => \REGFILE|MEM~341_combout\);

-- Location: LCFF_X44_Y9_N5
\regB|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(12));

-- Location: LCFF_X38_Y10_N15
\MEM|MEM~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~144_regout\);

-- Location: LCFF_X38_Y10_N1
\MEM|MEM~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(12),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~112_regout\);

-- Location: LCCOMB_X38_Y10_N0
\MEM|MEM~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~370_combout\ = (\MEM|MEM~369_combout\ & ((\MEM|MEM~144_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~369_combout\ & (((\MEM|MEM~112_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~369_combout\,
	datab => \MEM|MEM~144_regout\,
	datac => \MEM|MEM~112_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~370_combout\);

-- Location: LCCOMB_X38_Y13_N24
\MEM|MEM~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~371_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~368_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~368_combout\,
	datac => \MEM|MEM~370_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~371_combout\);

-- Location: LCFF_X38_Y13_N25
\MEM|dataOut[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~371_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(12));

-- Location: LCFF_X45_Y13_N19
\INSTREG|jump_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(12),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(12));

-- Location: LCCOMB_X45_Y13_N18
\MUXB|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux19~0_combout\ = (\regB|dt_out\(12) & ((\MUXB|Mux16~1_combout\) # ((\MUXB|Mux16~0_combout\ & \INSTREG|jump_out\(12))))) # (!\regB|dt_out\(12) & (\MUXB|Mux16~0_combout\ & (\INSTREG|jump_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(12),
	datab => \MUXB|Mux16~0_combout\,
	datac => \INSTREG|jump_out\(12),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux19~0_combout\);

-- Location: LCCOMB_X43_Y13_N8
\ALUCOMP|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~38_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCONTRL|op\(2),
	datad => \MUXB|Mux19~0_combout\,
	combout => \ALUCOMP|Add0~38_combout\);

-- Location: LCCOMB_X44_Y12_N12
\ALUCOMP|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~42_combout\ = ((\MUXA|salida[13]~27_combout\ $ (\ALUCOMP|Add0~41_combout\ $ (!\ALUCOMP|Add0~40\)))) # (GND)
-- \ALUCOMP|Add0~43\ = CARRY((\MUXA|salida[13]~27_combout\ & ((\ALUCOMP|Add0~41_combout\) # (!\ALUCOMP|Add0~40\))) # (!\MUXA|salida[13]~27_combout\ & (\ALUCOMP|Add0~41_combout\ & !\ALUCOMP|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~27_combout\,
	datab => \ALUCOMP|Add0~41_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~40\,
	combout => \ALUCOMP|Add0~42_combout\,
	cout => \ALUCOMP|Add0~43\);

-- Location: LCCOMB_X45_Y10_N8
\ALUCOMP|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Add0~42_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux18~0_combout\);

-- Location: LCCOMB_X46_Y10_N28
\ALUCOMP|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux18~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux18~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux18~1_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux18~0_combout\,
	combout => \ALUCOMP|Mux18~2_combout\);

-- Location: LCFF_X46_Y10_N29
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCCOMB_X48_Y13_N20
\MUXREAD|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux18~0_combout\ = (!\MUXREAD|Mux27~3_combout\ & \MEM|dataOut\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux27~3_combout\,
	datad => \MEM|dataOut\(13),
	combout => \MUXREAD|Mux18~0_combout\);

-- Location: LCFF_X48_Y13_N21
\MDR|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(13));

-- Location: LCCOMB_X43_Y9_N18
\MUXMemReg|salida[13]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[13]~10_combout\ = (\CONTROLU|Equal0~5_combout\ & ((\rst~combout\ & (\regALU|dt_out\(13))) # (!\rst~combout\ & ((\MDR|dt_out\(13)))))) # (!\CONTROLU|Equal0~5_combout\ & (((\regALU|dt_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~5_combout\,
	datab => \rst~combout\,
	datac => \regALU|dt_out\(13),
	datad => \MDR|dt_out\(13),
	combout => \MUXMemReg|salida[13]~10_combout\);

-- Location: LCCOMB_X47_Y12_N18
\REGFILE|MEM~273feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~273feeder_combout\ = \MUXMemReg|salida[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[13]~10_combout\,
	combout => \REGFILE|MEM~273feeder_combout\);

-- Location: LCFF_X47_Y12_N19
\REGFILE|MEM~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~273feeder_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~273_regout\);

-- Location: LCCOMB_X47_Y12_N28
\REGFILE|MEM~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~343_combout\ = (\REGFILE|MEM~342_combout\ & ((\REGFILE|MEM~273_regout\) # ((!\INSTREG|jump_out\(16))))) # (!\REGFILE|MEM~342_combout\ & (((\INSTREG|jump_out\(16) & \REGFILE|MEM~209_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~342_combout\,
	datab => \REGFILE|MEM~273_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~209_regout\,
	combout => \REGFILE|MEM~343_combout\);

-- Location: LCCOMB_X43_Y9_N0
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

-- Location: LCCOMB_X43_Y13_N30
\REGFILE|MEM~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~346_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~343_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~343_combout\,
	datad => \REGFILE|MEM~345_combout\,
	combout => \REGFILE|MEM~346_combout\);

-- Location: LCFF_X44_Y13_N5
\regB|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~346_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(13));

-- Location: LCCOMB_X45_Y13_N16
\MUXB|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux18~0_combout\ = (\INSTREG|jump_out\(13) & ((\MUXB|Mux16~0_combout\) # ((\regB|dt_out\(13) & \MUXB|Mux16~1_combout\)))) # (!\INSTREG|jump_out\(13) & (((\regB|dt_out\(13) & \MUXB|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(13),
	datab => \MUXB|Mux16~0_combout\,
	datac => \regB|dt_out\(13),
	datad => \MUXB|Mux16~1_combout\,
	combout => \MUXB|Mux18~0_combout\);

-- Location: LCCOMB_X45_Y13_N14
\ALUCOMP|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~41_combout\ = \ALUCONTRL|op\(2) $ (\MUXB|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op\(2),
	datac => \MUXB|Mux18~0_combout\,
	combout => \ALUCOMP|Add0~41_combout\);

-- Location: LCCOMB_X43_Y12_N0
\ALUCOMP|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~1_combout\ = (\ALUCOMP|Mux17~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux25~1_combout\))) # (!\ALUCOMP|Mux17~0_combout\ & (\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux17~0_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Add0~45_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux17~1_combout\);

-- Location: LCCOMB_X43_Y12_N16
\ALUCOMP|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux17~0_combout\)) # (!\MUXA|salida[14]~26_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~26_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux17~1_combout\,
	combout => \ALUCOMP|Mux17~2_combout\);

-- Location: LCFF_X43_Y12_N17
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCCOMB_X44_Y9_N18
\MUXMemReg|salida[14]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[14]~11_combout\ = (\rst~combout\ & (((\regALU|dt_out\(14))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(14))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(14),
	datab => \regALU|dt_out\(14),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[14]~11_combout\);

-- Location: LCFF_X47_Y8_N17
\REGFILE|MEM~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~242_regout\);

-- Location: LCCOMB_X45_Y8_N26
\REGFILE|MEM~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~347_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~242_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~178_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~178_regout\,
	datab => \REGFILE|MEM~242_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~347_combout\);

-- Location: LCCOMB_X49_Y7_N12
\REGFILE|MEM~210feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~210feeder_combout\ = \MUXMemReg|salida[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[14]~11_combout\,
	combout => \REGFILE|MEM~210feeder_combout\);

-- Location: LCFF_X49_Y7_N13
\REGFILE|MEM~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~210feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~210_regout\);

-- Location: LCCOMB_X43_Y8_N0
\REGFILE|MEM~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~348_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~347_combout\ & (\REGFILE|MEM~274_regout\)) # (!\REGFILE|MEM~347_combout\ & ((\REGFILE|MEM~210_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~274_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~347_combout\,
	datad => \REGFILE|MEM~210_regout\,
	combout => \REGFILE|MEM~348_combout\);

-- Location: LCFF_X47_Y8_N3
\REGFILE|MEM~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~146_regout\);

-- Location: LCFF_X48_Y8_N11
\REGFILE|MEM~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~114_regout\);

-- Location: LCFF_X48_Y8_N5
\REGFILE|MEM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[14]~11_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~50_regout\);

-- Location: LCCOMB_X49_Y7_N22
\REGFILE|MEM~82feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~82feeder_combout\ = \MUXMemReg|salida[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[14]~11_combout\,
	combout => \REGFILE|MEM~82feeder_combout\);

-- Location: LCFF_X49_Y7_N23
\REGFILE|MEM~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~82feeder_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~82_regout\);

-- Location: LCCOMB_X48_Y8_N2
\REGFILE|MEM~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~349_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~82_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~50_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~50_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~82_regout\,
	combout => \REGFILE|MEM~349_combout\);

-- Location: LCCOMB_X47_Y8_N8
\REGFILE|MEM~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~350_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~349_combout\ & (\REGFILE|MEM~146_regout\)) # (!\REGFILE|MEM~349_combout\ & ((\REGFILE|MEM~114_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~146_regout\,
	datac => \REGFILE|MEM~114_regout\,
	datad => \REGFILE|MEM~349_combout\,
	combout => \REGFILE|MEM~350_combout\);

-- Location: LCCOMB_X43_Y8_N10
\REGFILE|MEM~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~351_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~348_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~350_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~348_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~350_combout\,
	combout => \REGFILE|MEM~351_combout\);

-- Location: LCFF_X44_Y13_N7
\regB|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~351_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(14));

-- Location: LCFF_X38_Y13_N3
\MEM|MEM~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~210_regout\);

-- Location: LCFF_X39_Y13_N21
\MEM|MEM~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~242_regout\);

-- Location: LCFF_X39_Y13_N31
\MEM|MEM~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~178_regout\);

-- Location: LCCOMB_X39_Y13_N30
\MEM|MEM~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~357_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~242_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~178_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~242_regout\,
	datac => \MEM|MEM~178_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~357_combout\);

-- Location: LCCOMB_X38_Y13_N2
\MEM|MEM~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~358_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~357_combout\ & (\MEM|MEM~274_regout\)) # (!\MEM|MEM~357_combout\ & ((\MEM|MEM~210_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~274_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~210_regout\,
	datad => \MEM|MEM~357_combout\,
	combout => \MEM|MEM~358_combout\);

-- Location: LCFF_X38_Y10_N17
\MEM|MEM~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~114_regout\);

-- Location: LCFF_X39_Y10_N25
\MEM|MEM~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~82_regout\);

-- Location: LCFF_X39_Y10_N31
\MEM|MEM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~50_regout\);

-- Location: LCCOMB_X39_Y10_N30
\MEM|MEM~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~359_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~82_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~50_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~82_regout\,
	datac => \MEM|MEM~50_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~359_combout\);

-- Location: LCCOMB_X38_Y10_N16
\MEM|MEM~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~360_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~359_combout\ & (\MEM|MEM~146_regout\)) # (!\MEM|MEM~359_combout\ & ((\MEM|MEM~114_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~146_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~114_regout\,
	datad => \MEM|MEM~359_combout\,
	combout => \MEM|MEM~360_combout\);

-- Location: LCCOMB_X38_Y13_N28
\MEM|MEM~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~361_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~358_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~360_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~358_combout\,
	datac => \MEM|MEM~360_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~361_combout\);

-- Location: LCFF_X38_Y13_N29
\MEM|dataOut[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~361_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(14));

-- Location: LCFF_X45_Y13_N7
\INSTREG|jump_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(14),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(14));

-- Location: LCFF_X47_Y14_N5
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \PROGCOUNT|addr_out[16]~14_combout\,
	sdata => \INSTREG|jump_out\(14),
	aclr => \rst~combout\,
	sload => \CONTROLU|PCsrc[1]~0_combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(16));

-- Location: LCFF_X46_Y8_N19
\REGFILE|MEM~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~180_regout\);

-- Location: LCFF_X46_Y8_N1
\REGFILE|MEM~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~244_regout\);

-- Location: LCCOMB_X46_Y8_N0
\REGFILE|MEM~582\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~582_combout\ = (\INSTREG|jump_out\(22) & (((\REGFILE|MEM~244_regout\) # (\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~180_regout\ & ((!\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~180_regout\,
	datac => \REGFILE|MEM~244_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~582_combout\);

-- Location: LCCOMB_X46_Y9_N0
\REGFILE|MEM~583\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~583_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~582_combout\ & ((\REGFILE|MEM~276_regout\))) # (!\REGFILE|MEM~582_combout\ & (\REGFILE|MEM~212_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~582_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~212_regout\,
	datab => \REGFILE|MEM~276_regout\,
	datac => \INSTREG|jump_out\(21),
	datad => \REGFILE|MEM~582_combout\,
	combout => \REGFILE|MEM~583_combout\);

-- Location: LCFF_X47_Y8_N5
\REGFILE|MEM~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~148_regout\);

-- Location: LCFF_X48_Y8_N25
\REGFILE|MEM~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[16]~13_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~116_regout\);

-- Location: LCCOMB_X47_Y8_N14
\REGFILE|MEM~585\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~585_combout\ = (\REGFILE|MEM~584_combout\ & ((\REGFILE|MEM~148_regout\) # ((!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~584_combout\ & (((\INSTREG|jump_out\(22) & \REGFILE|MEM~116_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~584_combout\,
	datab => \REGFILE|MEM~148_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~116_regout\,
	combout => \REGFILE|MEM~585_combout\);

-- Location: LCCOMB_X46_Y10_N24
\REGFILE|MEM~586\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~586_combout\ = (\INSTREG|jump_out\(23) & (\REGFILE|MEM~583_combout\)) # (!\INSTREG|jump_out\(23) & ((\REGFILE|MEM~585_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(23),
	datac => \REGFILE|MEM~583_combout\,
	datad => \REGFILE|MEM~585_combout\,
	combout => \REGFILE|MEM~586_combout\);

-- Location: LCFF_X46_Y10_N25
\regA|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(16));

-- Location: LCCOMB_X45_Y10_N2
\MUXA|salida[16]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~24_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(16))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(16)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(16),
	datac => \CONTROLU|ALUsrcA~0_combout\,
	datad => \regA|dt_out\(16),
	combout => \MUXA|salida[16]~24_combout\);

-- Location: LCCOMB_X45_Y10_N30
\ALUCOMP|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~0_combout\ = (\ALUCOMP|Mux25~1_combout\ & (((\ALUCONTRL|op[0]~1_combout\)))) # (!\ALUCOMP|Mux25~1_combout\ & ((\MUXA|salida[16]~24_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # (\MUXB|Mux15~0_combout\))) # (!\MUXA|salida[16]~24_combout\ & 
-- (\ALUCONTRL|op[0]~1_combout\ & \MUXB|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \MUXA|salida[16]~24_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \MUXB|Mux15~0_combout\,
	combout => \ALUCOMP|Mux15~0_combout\);

-- Location: LCCOMB_X45_Y10_N28
\ALUCOMP|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~1_combout\ = (\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux15~0_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux15~0_combout\ & ((\ALUCOMP|Add0~52_combout\))))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux15~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~52_combout\,
	combout => \ALUCOMP|Mux15~1_combout\);

-- Location: LCCOMB_X45_Y10_N0
\ALUCOMP|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux15~0_combout\)) # (!\MUXA|salida[16]~24_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~24_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux15~1_combout\,
	combout => \ALUCOMP|Mux15~2_combout\);

-- Location: LCFF_X45_Y10_N1
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCCOMB_X45_Y10_N16
\MUXMemReg|salida[16]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[16]~13_combout\ = (\rst~combout\ & (((\regALU|dt_out\(16))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(16))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(16),
	datab => \regALU|dt_out\(16),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[16]~13_combout\);

-- Location: LCFF_X45_Y10_N17
\REGFILE|MEM~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[16]~13_combout\,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~276_regout\);

-- Location: LCCOMB_X46_Y9_N16
\REGFILE|MEM~212feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~212feeder_combout\ = \MUXMemReg|salida[16]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[16]~13_combout\,
	combout => \REGFILE|MEM~212feeder_combout\);

-- Location: LCFF_X46_Y9_N17
\REGFILE|MEM~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~212feeder_combout\,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~212_regout\);

-- Location: LCCOMB_X46_Y8_N18
\REGFILE|MEM~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~357_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~244_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~180_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~180_regout\,
	datad => \REGFILE|MEM~244_regout\,
	combout => \REGFILE|MEM~357_combout\);

-- Location: LCCOMB_X46_Y9_N26
\REGFILE|MEM~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~358_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~357_combout\ & (\REGFILE|MEM~276_regout\)) # (!\REGFILE|MEM~357_combout\ & ((\REGFILE|MEM~212_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~276_regout\,
	datac => \REGFILE|MEM~212_regout\,
	datad => \REGFILE|MEM~357_combout\,
	combout => \REGFILE|MEM~358_combout\);

-- Location: LCCOMB_X47_Y13_N20
\REGFILE|MEM~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~361_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~358_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~360_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~360_combout\,
	datab => \REGFILE|MEM~358_combout\,
	datac => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~361_combout\);

-- Location: LCFF_X47_Y13_N21
\regB|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(16));

-- Location: LCFF_X40_Y13_N21
\MEM|MEM~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~212_regout\);

-- Location: LCFF_X40_Y14_N23
\MEM|MEM~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~180_regout\);

-- Location: LCFF_X40_Y14_N13
\MEM|MEM~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(16),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~244_regout\);

-- Location: LCCOMB_X40_Y14_N22
\MEM|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~292_combout\ = (\MUXPC|salida[0]~0_combout\ & (\MUXPC|salida[1]~1_combout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~244_regout\))) # (!\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~180_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~180_regout\,
	datad => \MEM|MEM~244_regout\,
	combout => \MEM|MEM~292_combout\);

-- Location: LCCOMB_X40_Y13_N20
\MEM|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~293_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~292_combout\ & (\MEM|MEM~276_regout\)) # (!\MEM|MEM~292_combout\ & ((\MEM|MEM~212_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~276_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~212_regout\,
	datad => \MEM|MEM~292_combout\,
	combout => \MEM|MEM~293_combout\);

-- Location: LCCOMB_X40_Y12_N28
\MEM|MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~296_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~293_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~295_combout\,
	datab => \MEM|MEM~293_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~296_combout\);

-- Location: LCFF_X40_Y12_N29
\MEM|dataOut[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~296_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(16));

-- Location: LCCOMB_X42_Y11_N28
\INSTREG|jump_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out[16]~feeder_combout\ = \MEM|dataOut\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|dataOut\(16),
	combout => \INSTREG|jump_out[16]~feeder_combout\);

-- Location: LCFF_X42_Y11_N29
\INSTREG|jump_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \INSTREG|jump_out[16]~feeder_combout\,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(16));

-- Location: LCCOMB_X45_Y16_N26
\CONTROLU|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~6_combout\ = (\NEWST|CS\(0) & (\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y16_N0
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\rst~combout\ & (((\INSTREG|jump_out\(16))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~6_combout\ & (\INSTREG|jump_out\(11))) # (!\CONTROLU|Equal0~6_combout\ & ((\INSTREG|jump_out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(11),
	datab => \rst~combout\,
	datac => \INSTREG|jump_out\(16),
	datad => \CONTROLU|Equal0~6_combout\,
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCCOMB_X47_Y16_N24
\REGFILE|MEM~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~452_combout\ = (!\rst~combout\ & (\MUXRegDst|salida[0]~0_combout\ & \CONTROLU|RegWr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \MUXRegDst|salida[0]~0_combout\,
	datad => \CONTROLU|RegWr~0_combout\,
	combout => \REGFILE|MEM~452_combout\);

-- Location: LCCOMB_X47_Y16_N30
\REGFILE|MEM~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~461_combout\ = (!\MUXRegDst|salida[2]~1_combout\ & (\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~461_combout\);

-- Location: LCFF_X44_Y8_N29
\REGFILE|MEM~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~149feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~149_regout\);

-- Location: LCCOMB_X48_Y8_N14
\REGFILE|MEM~117feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~117feeder_combout\ = \MUXMemReg|salida[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[17]~14_combout\,
	combout => \REGFILE|MEM~117feeder_combout\);

-- Location: LCFF_X48_Y8_N15
\REGFILE|MEM~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~117feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~117_regout\);

-- Location: LCFF_X45_Y8_N31
\REGFILE|MEM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~53_regout\);

-- Location: LCFF_X46_Y7_N5
\REGFILE|MEM~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[17]~14_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~85_regout\);

-- Location: LCCOMB_X45_Y8_N30
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

-- Location: LCCOMB_X44_Y8_N6
\REGFILE|MEM~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~365_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~364_combout\ & (\REGFILE|MEM~149_regout\)) # (!\REGFILE|MEM~364_combout\ & ((\REGFILE|MEM~117_regout\))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~149_regout\,
	datac => \REGFILE|MEM~117_regout\,
	datad => \REGFILE|MEM~364_combout\,
	combout => \REGFILE|MEM~365_combout\);

-- Location: LCCOMB_X44_Y15_N10
\REGFILE|MEM~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~366_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~363_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~365_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~363_combout\,
	datac => \REGFILE|MEM~365_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~366_combout\);

-- Location: LCFF_X44_Y15_N11
\regB|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~366_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(17));

-- Location: LCFF_X40_Y13_N1
\MEM|MEM~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~213_regout\);

-- Location: LCFF_X40_Y14_N15
\MEM|MEM~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~181_regout\);

-- Location: LCCOMB_X40_Y14_N14
\MEM|MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~297_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~245_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~181_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~245_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~181_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~297_combout\);

-- Location: LCCOMB_X40_Y13_N0
\MEM|MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~298_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~297_combout\ & (\MEM|MEM~277_regout\)) # (!\MEM|MEM~297_combout\ & ((\MEM|MEM~213_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~277_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~213_regout\,
	datad => \MEM|MEM~297_combout\,
	combout => \MEM|MEM~298_combout\);

-- Location: LCFF_X40_Y11_N27
\MEM|MEM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~53_regout\);

-- Location: LCFF_X40_Y11_N13
\MEM|MEM~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~85_regout\);

-- Location: LCCOMB_X40_Y11_N26
\MEM|MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~299_combout\ = (\MUXPC|salida[1]~1_combout\ & (\MUXPC|salida[0]~0_combout\)) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~85_regout\))) # (!\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~53_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~53_regout\,
	datad => \MEM|MEM~85_regout\,
	combout => \MEM|MEM~299_combout\);

-- Location: LCFF_X40_Y12_N5
\MEM|MEM~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(17),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~117_regout\);

-- Location: LCCOMB_X40_Y12_N4
\MEM|MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~300_combout\ = (\MEM|MEM~299_combout\ & ((\MEM|MEM~149_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~299_combout\ & (((\MEM|MEM~117_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~149_regout\,
	datab => \MEM|MEM~299_combout\,
	datac => \MEM|MEM~117_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~300_combout\);

-- Location: LCCOMB_X40_Y12_N22
\MEM|MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~301_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~298_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~298_combout\,
	datac => \MEM|MEM~300_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~301_combout\);

-- Location: LCFF_X40_Y12_N23
\MEM|dataOut[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~301_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(17));

-- Location: LCFF_X42_Y11_N19
\INSTREG|jump_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(17),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(17));

-- Location: LCCOMB_X46_Y16_N4
\MUXRegDst|salida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[1]~2_combout\ = (\rst~combout\ & (((\INSTREG|jump_out\(17))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~6_combout\ & (\INSTREG|jump_out\(12))) # (!\CONTROLU|Equal0~6_combout\ & ((\INSTREG|jump_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(12),
	datab => \rst~combout\,
	datac => \INSTREG|jump_out\(17),
	datad => \CONTROLU|Equal0~6_combout\,
	combout => \MUXRegDst|salida[1]~2_combout\);

-- Location: LCCOMB_X47_Y16_N2
\REGFILE|MEM~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~457_combout\ = (\MUXRegDst|salida[2]~1_combout\ & (\MUXRegDst|salida[1]~2_combout\ & \REGFILE|MEM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegDst|salida[2]~1_combout\,
	datac => \MUXRegDst|salida[1]~2_combout\,
	datad => \REGFILE|MEM~452_combout\,
	combout => \REGFILE|MEM~457_combout\);

-- Location: LCFF_X44_Y14_N19
\REGFILE|MEM~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[8]~5_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~268_regout\);

-- Location: LCCOMB_X48_Y12_N26
\REGFILE|MEM~172feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~172feeder_combout\ = \MUXMemReg|salida[8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[8]~5_combout\,
	combout => \REGFILE|MEM~172feeder_combout\);

-- Location: LCFF_X48_Y12_N27
\REGFILE|MEM~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~172feeder_combout\,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~172_regout\);

-- Location: LCCOMB_X47_Y9_N6
\REGFILE|MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~317_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17))))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & (\REGFILE|MEM~236_regout\)) # (!\INSTREG|jump_out\(17) & ((\REGFILE|MEM~172_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~236_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~172_regout\,
	datad => \INSTREG|jump_out\(17),
	combout => \REGFILE|MEM~317_combout\);

-- Location: LCCOMB_X45_Y9_N16
\REGFILE|MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~318_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~317_combout\ & ((\REGFILE|MEM~268_regout\))) # (!\REGFILE|MEM~317_combout\ & (\REGFILE|MEM~204_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~204_regout\,
	datab => \REGFILE|MEM~268_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~317_combout\,
	combout => \REGFILE|MEM~318_combout\);

-- Location: LCCOMB_X44_Y9_N0
\REGFILE|MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~321_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~318_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~320_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~320_combout\,
	datac => \REGFILE|MEM~318_combout\,
	datad => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~321_combout\);

-- Location: LCFF_X44_Y9_N1
\regB|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(8));

-- Location: LCCOMB_X38_Y11_N0
\MEM|MEM~140feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~140feeder_combout\ = \regB|dt_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(8),
	combout => \MEM|MEM~140feeder_combout\);

-- Location: LCFF_X38_Y11_N1
\MEM|MEM~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~140feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~140_regout\);

-- Location: LCFF_X38_Y12_N21
\MEM|MEM~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~108_regout\);

-- Location: LCCOMB_X38_Y12_N20
\MEM|MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~315_combout\ = (\MEM|MEM~314_combout\ & ((\MEM|MEM~140_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~314_combout\ & (((\MEM|MEM~108_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~314_combout\,
	datab => \MEM|MEM~140_regout\,
	datac => \MEM|MEM~108_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~315_combout\);

-- Location: LCFF_X42_Y10_N7
\MEM|MEM~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~268_regout\);

-- Location: LCFF_X39_Y14_N11
\MEM|MEM~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(8),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~204_regout\);

-- Location: LCCOMB_X39_Y14_N10
\MEM|MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~313_combout\ = (\MEM|MEM~312_combout\ & ((\MEM|MEM~268_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~312_combout\ & (((\MEM|MEM~204_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~312_combout\,
	datab => \MEM|MEM~268_regout\,
	datac => \MEM|MEM~204_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~313_combout\);

-- Location: LCCOMB_X39_Y14_N16
\MEM|MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~316_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~313_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~315_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~315_combout\,
	datad => \MEM|MEM~313_combout\,
	combout => \MEM|MEM~316_combout\);

-- Location: LCFF_X39_Y14_N17
\MEM|dataOut[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~316_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(8));

-- Location: LCFF_X44_Y13_N1
\INSTREG|jump_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(8),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(8));

-- Location: LCCOMB_X44_Y13_N0
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

-- Location: LCCOMB_X45_Y15_N0
\ALUCOMP|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~1_combout\ = (\ALUCOMP|Mux23~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux25~1_combout\))) # (!\ALUCOMP|Mux23~0_combout\ & (\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux23~0_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Add0~27_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux23~1_combout\);

-- Location: LCCOMB_X45_Y15_N4
\ALUCOMP|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXB|Mux23~0_combout\)) # (!\MUXA|salida[8]~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~0_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux23~1_combout\,
	combout => \ALUCOMP|Mux23~2_combout\);

-- Location: LCFF_X45_Y15_N5
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCCOMB_X45_Y15_N18
\ADDRDEC|addressSel[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|addressSel[1]~1_combout\ = (((\CONTROLU|MemWr~0_combout\) # (!\regALU|dt_out\(8))) # (!\ADDRDEC|Equal1~9_combout\)) # (!\ADDRDEC|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal1~4_combout\,
	datab => \ADDRDEC|Equal1~9_combout\,
	datac => \regALU|dt_out\(8),
	datad => \CONTROLU|MemWr~0_combout\,
	combout => \ADDRDEC|addressSel[1]~1_combout\);

-- Location: LCCOMB_X47_Y13_N10
\MUXREAD|Mux31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux31~14_combout\ = (\ADDRDEC|addressSel[0]~0_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\ & ((\MEM|dataOut\(0)))) # (!\ADDRDEC|addressSel[1]~1_combout\ & (\MUXREAD|Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXREAD|Mux31~15_combout\,
	datab => \MEM|dataOut\(0),
	datac => \ADDRDEC|addressSel[1]~1_combout\,
	datad => \ADDRDEC|addressSel[0]~0_combout\,
	combout => \MUXREAD|Mux31~14_combout\);

-- Location: LCFF_X47_Y13_N11
\MDR|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux31~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(0));

-- Location: LCCOMB_X48_Y15_N10
\MUXMemReg|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[0]~0_combout\ = (\rst~combout\ & (\regALU|dt_out\(0))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(0)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \regALU|dt_out\(0),
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \MDR|dt_out\(0),
	combout => \MUXMemReg|salida[0]~0_combout\);

-- Location: LCCOMB_X48_Y10_N4
\REGFILE|MEM~624\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~624_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~624_combout\);

-- Location: LCFF_X48_Y10_N5
\REGFILE|MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~624_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~36_regout\);

-- Location: LCCOMB_X47_Y10_N0
\REGFILE|MEM~623\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~623_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~623_combout\);

-- Location: LCFF_X47_Y10_N1
\REGFILE|MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~623_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~68_regout\);

-- Location: LCCOMB_X46_Y16_N26
\REGFILE|MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~294_combout\ = (\INSTREG|jump_out\(16) & (((\INSTREG|jump_out\(17)) # (!\REGFILE|MEM~68_regout\)))) # (!\INSTREG|jump_out\(16) & (!\REGFILE|MEM~36_regout\ & (!\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \REGFILE|MEM~36_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~68_regout\,
	combout => \REGFILE|MEM~294_combout\);

-- Location: LCCOMB_X48_Y10_N6
\REGFILE|MEM~625\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~625_combout\ = !\MUXMemReg|salida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[0]~0_combout\,
	combout => \REGFILE|MEM~625_combout\);

-- Location: LCFF_X49_Y10_N1
\REGFILE|MEM~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \REGFILE|MEM~625_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~132_regout\);

-- Location: LCCOMB_X46_Y16_N16
\REGFILE|MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~295_combout\ = (\REGFILE|MEM~294_combout\ & (((!\REGFILE|MEM~132_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~294_combout\ & (!\REGFILE|MEM~100_regout\ & (\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~100_regout\,
	datab => \REGFILE|MEM~294_combout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~132_regout\,
	combout => \REGFILE|MEM~295_combout\);

-- Location: LCCOMB_X47_Y13_N24
\REGFILE|MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~296_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~293_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~295_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~293_combout\,
	datab => \REGFILE|MEM~295_combout\,
	datac => \INSTREG|jump_out\(18),
	combout => \REGFILE|MEM~296_combout\);

-- Location: LCFF_X47_Y13_N25
\regB|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(0));

-- Location: LCFF_X38_Y13_N9
\MEM|MEM~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~196_regout\);

-- Location: LCFF_X39_Y13_N1
\MEM|MEM~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~228_regout\);

-- Location: LCFF_X39_Y13_N19
\MEM|MEM~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~164_regout\);

-- Location: LCCOMB_X39_Y13_N18
\MEM|MEM~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~347_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~228_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~164_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~228_regout\,
	datac => \MEM|MEM~164_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~347_combout\);

-- Location: LCCOMB_X38_Y13_N8
\MEM|MEM~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~348_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~347_combout\ & (\MEM|MEM~260_regout\)) # (!\MEM|MEM~347_combout\ & ((\MEM|MEM~196_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~260_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~196_regout\,
	datad => \MEM|MEM~347_combout\,
	combout => \MEM|MEM~348_combout\);

-- Location: LCCOMB_X38_Y13_N22
\MEM|MEM~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~351_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~348_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~350_combout\,
	datac => \MEM|MEM~348_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~351_combout\);

-- Location: LCFF_X38_Y13_N23
\MEM|dataOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~351_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(0));

-- Location: LCFF_X47_Y13_N27
\INSTREG|func_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(0),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(0));

-- Location: LCCOMB_X43_Y11_N24
\ALUCONTRL|op[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op[0]~1_combout\ = (!\rst~combout\ & (\CONTROLU|Equal0~2_combout\ & ((\INSTREG|func_out\(3)) # (\INSTREG|func_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \CONTROLU|Equal0~2_combout\,
	datac => \INSTREG|func_out\(3),
	datad => \INSTREG|func_out\(0),
	combout => \ALUCONTRL|op[0]~1_combout\);

-- Location: LCCOMB_X48_Y11_N10
\ALUCOMP|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~70_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux10~0_combout\);

-- Location: LCCOMB_X48_Y11_N4
\ALUCOMP|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux10~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux10~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux10~1_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux10~0_combout\,
	combout => \ALUCOMP|Mux10~2_combout\);

-- Location: LCFF_X48_Y11_N5
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCCOMB_X42_Y14_N28
\MUXMemReg|salida[21]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[21]~18_combout\ = (\rst~combout\ & (((\regALU|dt_out\(21))))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & (\MDR|dt_out\(21))) # (!\CONTROLU|Equal0~5_combout\ & ((\regALU|dt_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(21),
	datab => \rst~combout\,
	datac => \CONTROLU|Equal0~5_combout\,
	datad => \regALU|dt_out\(21),
	combout => \MUXMemReg|salida[21]~18_combout\);

-- Location: LCCOMB_X48_Y8_N26
\REGFILE|MEM~121feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~121feeder_combout\ = \MUXMemReg|salida[21]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[21]~18_combout\,
	combout => \REGFILE|MEM~121feeder_combout\);

-- Location: LCFF_X48_Y8_N27
\REGFILE|MEM~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~121feeder_combout\,
	ena => \REGFILE|MEM~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~121_regout\);

-- Location: LCCOMB_X49_Y10_N12
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

-- Location: LCFF_X49_Y10_N13
\REGFILE|MEM~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~153feeder_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~153_regout\);

-- Location: LCCOMB_X45_Y8_N20
\REGFILE|MEM~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~385_combout\ = (\REGFILE|MEM~384_combout\ & (((\REGFILE|MEM~153_regout\) # (!\INSTREG|jump_out\(17))))) # (!\REGFILE|MEM~384_combout\ & (\REGFILE|MEM~121_regout\ & (\INSTREG|jump_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~384_combout\,
	datab => \REGFILE|MEM~121_regout\,
	datac => \INSTREG|jump_out\(17),
	datad => \REGFILE|MEM~153_regout\,
	combout => \REGFILE|MEM~385_combout\);

-- Location: LCCOMB_X43_Y8_N14
\REGFILE|MEM~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~386_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~383_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~383_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~385_combout\,
	combout => \REGFILE|MEM~386_combout\);

-- Location: LCFF_X43_Y13_N31
\regB|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~386_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(21));

-- Location: LCFF_X38_Y10_N23
\MEM|MEM~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~153_regout\);

-- Location: LCFF_X38_Y10_N5
\MEM|MEM~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(21),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~121_regout\);

-- Location: LCCOMB_X38_Y10_N4
\MEM|MEM~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~398_combout\ = (\MEM|MEM~397_combout\ & ((\MEM|MEM~153_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~397_combout\ & (((\MEM|MEM~121_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~397_combout\,
	datab => \MEM|MEM~153_regout\,
	datac => \MEM|MEM~121_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~398_combout\);

-- Location: LCCOMB_X38_Y13_N10
\MEM|MEM~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~399_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~396_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~398_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~396_combout\,
	datac => \MEM|MEM~398_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~399_combout\);

-- Location: LCFF_X38_Y13_N11
\MEM|dataOut[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~399_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(21));

-- Location: LCFF_X42_Y14_N9
\INSTREG|jump_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(21),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(21));

-- Location: LCCOMB_X46_Y16_N2
\REGFILE|MEM~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~504_combout\ = (\INSTREG|jump_out\(22) & (\INSTREG|jump_out\(21))) # (!\INSTREG|jump_out\(22) & ((\INSTREG|jump_out\(21) & ((!\REGFILE|MEM~68_regout\))) # (!\INSTREG|jump_out\(21) & (!\REGFILE|MEM~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~36_regout\,
	datad => \REGFILE|MEM~68_regout\,
	combout => \REGFILE|MEM~504_combout\);

-- Location: LCCOMB_X46_Y16_N20
\REGFILE|MEM~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~505_combout\ = (\REGFILE|MEM~504_combout\ & (((!\REGFILE|MEM~132_regout\) # (!\INSTREG|jump_out\(22))))) # (!\REGFILE|MEM~504_combout\ & (!\REGFILE|MEM~100_regout\ & (\INSTREG|jump_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~100_regout\,
	datab => \REGFILE|MEM~504_combout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~132_regout\,
	combout => \REGFILE|MEM~505_combout\);

-- Location: LCFF_X47_Y12_N1
\REGFILE|MEM~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[0]~0_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~260_regout\);

-- Location: LCFF_X49_Y8_N23
\REGFILE|MEM~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[0]~0_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~164_regout\);

-- Location: LCCOMB_X49_Y8_N22
\REGFILE|MEM~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~502_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~228_regout\) # ((\INSTREG|jump_out\(21))))) # (!\INSTREG|jump_out\(22) & (((\REGFILE|MEM~164_regout\ & !\INSTREG|jump_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~228_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~164_regout\,
	datad => \INSTREG|jump_out\(21),
	combout => \REGFILE|MEM~502_combout\);

-- Location: LCCOMB_X48_Y15_N22
\REGFILE|MEM~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~503_combout\ = (\INSTREG|jump_out\(21) & ((\REGFILE|MEM~502_combout\ & ((\REGFILE|MEM~260_regout\))) # (!\REGFILE|MEM~502_combout\ & (\REGFILE|MEM~196_regout\)))) # (!\INSTREG|jump_out\(21) & (((\REGFILE|MEM~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~196_regout\,
	datab => \INSTREG|jump_out\(21),
	datac => \REGFILE|MEM~260_regout\,
	datad => \REGFILE|MEM~502_combout\,
	combout => \REGFILE|MEM~503_combout\);

-- Location: LCCOMB_X48_Y15_N20
\REGFILE|MEM~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~506_combout\ = (\INSTREG|jump_out\(23) & ((\REGFILE|MEM~503_combout\))) # (!\INSTREG|jump_out\(23) & (\REGFILE|MEM~505_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(23),
	datab => \REGFILE|MEM~505_combout\,
	datad => \REGFILE|MEM~503_combout\,
	combout => \REGFILE|MEM~506_combout\);

-- Location: LCFF_X45_Y15_N3
\regA|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|MEM~506_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(0));

-- Location: LCCOMB_X45_Y15_N2
\MUXA|salida[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~8_combout\ = (\rst~combout\ & (\PROGCOUNT|addr_out\(0))) # (!\rst~combout\ & ((\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(0),
	datac => \regA|dt_out\(0),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[0]~8_combout\);

-- Location: LCCOMB_X44_Y15_N28
\ALUCOMP|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~0_combout\ = (\MUXA|salida[0]~8_combout\ & ((\ALUCONTRL|op[0]~1_combout\) # ((\MUXB|Mux31~0_combout\ & !\ALUCOMP|Mux25~1_combout\)))) # (!\MUXA|salida[0]~8_combout\ & (\ALUCONTRL|op[0]~1_combout\ & ((\MUXB|Mux31~0_combout\) # 
-- (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~8_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \MUXB|Mux31~0_combout\,
	datad => \ALUCOMP|Mux25~1_combout\,
	combout => \ALUCOMP|Mux31~0_combout\);

-- Location: LCCOMB_X45_Y15_N10
\ALUCOMP|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~1_combout\ = (\ALUCOMP|Mux31~0_combout\ & (((\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux25~1_combout\)))) # (!\ALUCOMP|Mux31~0_combout\ & (\ALUCOMP|Add0~11_combout\ & (\ALUCOMP|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~11_combout\,
	datab => \ALUCOMP|Mux31~0_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux31~1_combout\);

-- Location: LCCOMB_X45_Y15_N6
\ALUCOMP|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((!\MUXA|salida[0]~8_combout\)) # (!\MUXB|Mux31~0_combout\))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCOMP|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux31~0_combout\,
	datab => \MUXA|salida[0]~8_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux31~1_combout\,
	combout => \ALUCOMP|Mux31~2_combout\);

-- Location: LCFF_X45_Y15_N7
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCCOMB_X46_Y14_N0
\JUMPMUX|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux31~0_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\CONTROLU|ALUop[0]~0_combout\ & ((\regALU|dt_out\(0)))) # (!\CONTROLU|ALUop[0]~0_combout\ & (\ALUCOMP|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux31~2_combout\,
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \regALU|dt_out\(0),
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \JUMPMUX|Mux31~0_combout\);

-- Location: LCFF_X46_Y14_N1
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \JUMPMUX|Mux31~0_combout\,
	aclr => \rst~combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X45_Y16_N6
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

-- Location: LCCOMB_X45_Y16_N20
\CONTROLU|IorD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IorD~9_combout\ = (\NEWST|CS\(0) & (!\rst~combout\ & (!\NEWST|CS\(3) & \CONTROLU|IorD~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \NEWST|CS\(3),
	datad => \CONTROLU|IorD~4_combout\,
	combout => \CONTROLU|IorD~9_combout\);

-- Location: LCCOMB_X46_Y14_N16
\MUXPC|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[0]~0_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(0)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \regALU|dt_out\(0),
	datad => \CONTROLU|IorD~9_combout\,
	combout => \MUXPC|salida[0]~0_combout\);

-- Location: LCFF_X39_Y9_N1
\MEM|MEM~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~199_regout\);

-- Location: LCFF_X39_Y13_N13
\MEM|MEM~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~231_regout\);

-- Location: LCFF_X39_Y13_N23
\MEM|MEM~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~167_regout\);

-- Location: LCCOMB_X39_Y13_N22
\MEM|MEM~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~337_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~231_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~167_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~231_regout\,
	datac => \MEM|MEM~167_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~337_combout\);

-- Location: LCCOMB_X39_Y9_N0
\MEM|MEM~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~338_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~337_combout\ & (\MEM|MEM~263_regout\)) # (!\MEM|MEM~337_combout\ & ((\MEM|MEM~199_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~263_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~199_regout\,
	datad => \MEM|MEM~337_combout\,
	combout => \MEM|MEM~338_combout\);

-- Location: LCFF_X39_Y11_N27
\MEM|MEM~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~103_regout\);

-- Location: LCFF_X39_Y10_N29
\MEM|MEM~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~71_regout\);

-- Location: LCFF_X39_Y10_N23
\MEM|MEM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(3),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~39_regout\);

-- Location: LCCOMB_X39_Y10_N22
\MEM|MEM~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~339_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~71_regout\) # ((\MUXPC|salida[1]~1_combout\)))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~39_regout\ & !\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~71_regout\,
	datac => \MEM|MEM~39_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~339_combout\);

-- Location: LCCOMB_X39_Y11_N26
\MEM|MEM~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~340_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~339_combout\ & (\MEM|MEM~135_regout\)) # (!\MEM|MEM~339_combout\ & ((\MEM|MEM~103_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~135_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~103_regout\,
	datad => \MEM|MEM~339_combout\,
	combout => \MEM|MEM~340_combout\);

-- Location: LCCOMB_X39_Y11_N24
\MEM|MEM~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~341_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~338_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~340_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~338_combout\,
	datad => \MEM|MEM~340_combout\,
	combout => \MEM|MEM~341_combout\);

-- Location: LCFF_X39_Y11_N25
\MEM|dataOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~341_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(3));

-- Location: LCFF_X47_Y13_N29
\INSTREG|func_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(3),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|func_out\(3));

-- Location: LCCOMB_X44_Y15_N18
\ALUCOMP|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~2_combout\ = (\INSTREG|func_out\(2) & (((\ALUCONTRL|op\(2))))) # (!\INSTREG|func_out\(2) & (!\ALUCONTRL|op\(2) & ((\INSTREG|func_out\(3)) # (\INSTREG|func_out\(0)))))

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
	combout => \ALUCOMP|Mux25~2_combout\);

-- Location: LCCOMB_X44_Y11_N18
\ALUCOMP|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~3_combout\ = (!\rst~combout\ & (\CONTROLU|Equal0~2_combout\ & \ALUCOMP|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \CONTROLU|Equal0~2_combout\,
	datad => \ALUCOMP|Mux25~2_combout\,
	combout => \ALUCOMP|Mux25~3_combout\);

-- Location: LCCOMB_X46_Y10_N26
\ALUCOMP|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~1_combout\,
	datab => \ALUCOMP|Add0~13_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux30~0_combout\);

-- Location: LCCOMB_X46_Y10_N18
\ALUCOMP|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux30~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux30~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux30~1_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCOMP|Mux30~0_combout\,
	combout => \ALUCOMP|Mux30~2_combout\);

-- Location: LCCOMB_X46_Y14_N26
\JUMPMUX|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux30~0_combout\ = (!\CONTROLU|PCsrc[1]~0_combout\ & ((\CONTROLU|ALUop[0]~0_combout\ & (\regALU|dt_out\(1))) # (!\CONTROLU|ALUop[0]~0_combout\ & ((\ALUCOMP|Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(1),
	datab => \CONTROLU|PCsrc[1]~0_combout\,
	datac => \ALUCOMP|Mux30~2_combout\,
	datad => \CONTROLU|ALUop[0]~0_combout\,
	combout => \JUMPMUX|Mux30~0_combout\);

-- Location: LCFF_X46_Y14_N27
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \JUMPMUX|Mux30~0_combout\,
	aclr => \rst~combout\,
	ena => \PCwrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X46_Y14_N22
\MUXPC|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[1]~1_combout\ = (\CONTROLU|IorD~9_combout\ & ((\regALU|dt_out\(1)))) # (!\CONTROLU|IorD~9_combout\ & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~9_combout\,
	datab => \PROGCOUNT|addr_out\(1),
	datad => \regALU|dt_out\(1),
	combout => \MUXPC|salida[1]~1_combout\);

-- Location: LCCOMB_X43_Y10_N10
\REGFILE|MEM~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~417_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~256_regout\) # ((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~192_regout\ & !\INSTREG|jump_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~256_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~192_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~417_combout\);

-- Location: LCCOMB_X43_Y14_N20
\REGFILE|MEM~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~418_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~417_combout\ & ((\REGFILE|MEM~288_regout\))) # (!\REGFILE|MEM~417_combout\ & (\REGFILE|MEM~224_regout\)))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~224_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~288_regout\,
	datad => \REGFILE|MEM~417_combout\,
	combout => \REGFILE|MEM~418_combout\);

-- Location: LCCOMB_X43_Y9_N28
\REGFILE|MEM~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~420_combout\ = (\REGFILE|MEM~419_combout\ & (((\REGFILE|MEM~160_regout\)) # (!\INSTREG|jump_out\(17)))) # (!\REGFILE|MEM~419_combout\ & (\INSTREG|jump_out\(17) & (\REGFILE|MEM~128_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~419_combout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~128_regout\,
	datad => \REGFILE|MEM~160_regout\,
	combout => \REGFILE|MEM~420_combout\);

-- Location: LCCOMB_X43_Y13_N10
\REGFILE|MEM~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~421_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~418_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~420_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~418_combout\,
	datad => \REGFILE|MEM~420_combout\,
	combout => \REGFILE|MEM~421_combout\);

-- Location: LCFF_X43_Y13_N11
\regB|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(28));

-- Location: LCFF_X40_Y14_N11
\MEM|MEM~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~192_regout\);

-- Location: LCCOMB_X40_Y14_N10
\MEM|MEM~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~440_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~256_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~192_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~256_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~192_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~440_combout\);

-- Location: LCFF_X37_Y12_N19
\MEM|MEM~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~224_regout\);

-- Location: LCCOMB_X37_Y12_N18
\MEM|MEM~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~441_combout\ = (\MEM|MEM~440_combout\ & ((\MEM|MEM~288_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~440_combout\ & (((\MEM|MEM~224_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~288_regout\,
	datab => \MEM|MEM~440_combout\,
	datac => \MEM|MEM~224_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~441_combout\);

-- Location: LCCOMB_X39_Y12_N28
\MEM|MEM~160feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~160feeder_combout\ = \regB|dt_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(28),
	combout => \MEM|MEM~160feeder_combout\);

-- Location: LCFF_X39_Y12_N29
\MEM|MEM~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~160feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~160_regout\);

-- Location: LCFF_X38_Y12_N27
\MEM|MEM~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~128_regout\);

-- Location: LCCOMB_X38_Y12_N26
\MEM|MEM~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~443_combout\ = (\MEM|MEM~442_combout\ & ((\MEM|MEM~160_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~442_combout\ & (((\MEM|MEM~128_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~442_combout\,
	datab => \MEM|MEM~160_regout\,
	datac => \MEM|MEM~128_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~443_combout\);

-- Location: LCCOMB_X40_Y12_N20
\MEM|MEM~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~444_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~441_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~443_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~441_combout\,
	datac => \MEM|MEM~443_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~444_combout\);

-- Location: LCFF_X40_Y12_N21
\MEM|dataOut[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~444_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(28));

-- Location: LCFF_X49_Y13_N3
\INSTREG|op_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(28),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(2));

-- Location: LCFF_X38_Y12_N25
\MEM|MEM~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~290_regout\);

-- Location: LCFF_X37_Y12_N3
\MEM|MEM~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~226_regout\);

-- Location: LCFF_X36_Y13_N7
\MEM|MEM~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~194_regout\);

-- Location: LCCOMB_X36_Y13_N6
\MEM|MEM~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~455_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~258_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~194_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~258_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~194_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~455_combout\);

-- Location: LCCOMB_X37_Y12_N2
\MEM|MEM~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~456_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~455_combout\ & (\MEM|MEM~290_regout\)) # (!\MEM|MEM~455_combout\ & ((\MEM|MEM~226_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MEM|MEM~290_regout\,
	datac => \MEM|MEM~226_regout\,
	datad => \MEM|MEM~455_combout\,
	combout => \MEM|MEM~456_combout\);

-- Location: LCFF_X40_Y10_N19
\MEM|MEM~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~98_regout\);

-- Location: LCFF_X40_Y10_N9
\MEM|MEM~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~66_regout\);

-- Location: LCCOMB_X40_Y10_N8
\MEM|MEM~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~457_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~98_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~98_regout\,
	datac => \MEM|MEM~66_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~457_combout\);

-- Location: LCFF_X39_Y12_N23
\MEM|MEM~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(30),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~162_regout\);

-- Location: LCCOMB_X39_Y12_N22
\MEM|MEM~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~458_combout\ = (\MEM|MEM~457_combout\ & (((\MEM|MEM~162_regout\) # (!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~457_combout\ & (\MEM|MEM~130_regout\ & ((\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~130_regout\,
	datab => \MEM|MEM~457_combout\,
	datac => \MEM|MEM~162_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~458_combout\);

-- Location: LCCOMB_X39_Y12_N6
\MEM|MEM~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~459_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~456_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~458_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~456_combout\,
	datad => \MEM|MEM~458_combout\,
	combout => \MEM|MEM~459_combout\);

-- Location: LCFF_X39_Y12_N7
\MEM|dataOut[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~459_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(30));

-- Location: LCFF_X49_Y13_N21
\INSTREG|op_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(30),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(4));

-- Location: LCFF_X39_Y9_N23
\MEM|MEM~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~286_regout\);

-- Location: LCFF_X39_Y9_N9
\MEM|MEM~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~222_regout\);

-- Location: LCCOMB_X39_Y9_N8
\MEM|MEM~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~431_combout\ = (\MEM|MEM~430_combout\ & ((\MEM|MEM~286_regout\) # ((!\MUXPC|salida[0]~0_combout\)))) # (!\MEM|MEM~430_combout\ & (((\MEM|MEM~222_regout\ & \MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~430_combout\,
	datab => \MEM|MEM~286_regout\,
	datac => \MEM|MEM~222_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~431_combout\);

-- Location: LCFF_X39_Y11_N23
\MEM|MEM~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~126_regout\);

-- Location: LCFF_X39_Y12_N3
\MEM|MEM~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~158_regout\);

-- Location: LCCOMB_X39_Y11_N22
\MEM|MEM~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~433_combout\ = (\MEM|MEM~432_combout\ & (((\MEM|MEM~158_regout\)) # (!\MUXPC|salida[1]~1_combout\))) # (!\MEM|MEM~432_combout\ & (\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~126_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~432_combout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~126_regout\,
	datad => \MEM|MEM~158_regout\,
	combout => \MEM|MEM~433_combout\);

-- Location: LCCOMB_X39_Y11_N18
\MEM|MEM~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~434_combout\ = (\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~431_combout\)) # (!\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~433_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~431_combout\,
	datad => \MEM|MEM~433_combout\,
	combout => \MEM|MEM~434_combout\);

-- Location: LCFF_X39_Y11_N19
\MEM|dataOut[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~434_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(26));

-- Location: LCFF_X49_Y13_N31
\INSTREG|op_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(26),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(0));

-- Location: LCFF_X49_Y13_N17
\INSTREG|op_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(29),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(3));

-- Location: LCCOMB_X49_Y13_N18
\CONTROLU|nxt_st[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[0]~15_combout\ = (\INSTREG|op_out\(5) & (\INSTREG|op_out\(0) & ((!\CONTROLU|Equal0~3_combout\)))) # (!\INSTREG|op_out\(5) & (!\INSTREG|op_out\(0) & (!\INSTREG|op_out\(3) & \CONTROLU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \INSTREG|op_out\(0),
	datac => \INSTREG|op_out\(3),
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \CONTROLU|nxt_st[0]~15_combout\);

-- Location: LCCOMB_X49_Y13_N24
\CONTROLU|nxt_st[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[0]~16_combout\ = (\INSTREG|op_out\(1) & (!\INSTREG|op_out\(2) & (!\INSTREG|op_out\(4) & \CONTROLU|nxt_st[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(1),
	datab => \INSTREG|op_out\(2),
	datac => \INSTREG|op_out\(4),
	datad => \CONTROLU|nxt_st[0]~15_combout\,
	combout => \CONTROLU|nxt_st[0]~16_combout\);

-- Location: LCCOMB_X46_Y13_N26
\CONTROLU|nxt_st[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(0) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[0]~16_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(0),
	datac => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	datad => \CONTROLU|nxt_st[0]~16_combout\,
	combout => \CONTROLU|nxt_st\(0));

-- Location: LCCOMB_X46_Y13_N12
\CONTROLU|NextSt[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~17_combout\ = (\CONTROLU|Equal0~4_combout\) # ((\NEWST|CS[3]~0_combout\ & \CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS[3]~0_combout\,
	datac => \CONTROLU|Equal0~4_combout\,
	datad => \CONTROLU|nxt_st\(0),
	combout => \CONTROLU|NextSt[0]~17_combout\);

-- Location: LCCOMB_X46_Y13_N2
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

-- Location: LCFF_X46_Y13_N3
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X49_Y13_N6
\CONTROLU|nxt_st[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~7_combout\ = (!\INSTREG|op_out\(4) & !\INSTREG|op_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(4),
	datad => \INSTREG|op_out\(2),
	combout => \CONTROLU|nxt_st[2]~7_combout\);

-- Location: LCCOMB_X49_Y13_N28
\CONTROLU|nxt_st[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~8_combout\ = (!\INSTREG|op_out\(3) & !\INSTREG|op_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(3),
	datad => \INSTREG|op_out\(0),
	combout => \CONTROLU|nxt_st[2]~8_combout\);

-- Location: LCFF_X49_Y13_N1
\INSTREG|op_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(27),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|op_out\(1));

-- Location: LCCOMB_X49_Y13_N4
\CONTROLU|nxt_st[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~9_combout\ = (!\INSTREG|op_out\(5) & (\CONTROLU|nxt_st[2]~8_combout\ & (!\INSTREG|op_out\(1) & \CONTROLU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \CONTROLU|nxt_st[2]~8_combout\,
	datac => \INSTREG|op_out\(1),
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \CONTROLU|nxt_st[2]~9_combout\);

-- Location: LCCOMB_X49_Y13_N0
\CONTROLU|nxt_st[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~10_combout\ = (\INSTREG|op_out\(5) & (\INSTREG|op_out\(0) & (\INSTREG|op_out\(1) & !\CONTROLU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \INSTREG|op_out\(0),
	datac => \INSTREG|op_out\(1),
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \CONTROLU|nxt_st[2]~10_combout\);

-- Location: LCCOMB_X49_Y13_N14
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

-- Location: LCCOMB_X49_Y13_N30
\CONTROLU|nxt_st[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(2) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[2]~11_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(2),
	datab => \CONTROLU|nxt_st[2]~11_combout\,
	datad => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	combout => \CONTROLU|nxt_st\(2));

-- Location: LCCOMB_X49_Y13_N22
\CONTROLU|NextSt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt~10_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(2) & ((\NEWST|CS\(1)) # (\CONTROLU|nxt_st\(2))))) # (!\NEWST|CS\(0) & (\NEWST|CS\(1) & ((\NEWST|CS\(2)) # (\CONTROLU|nxt_st\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(0),
	datad => \CONTROLU|nxt_st\(2),
	combout => \CONTROLU|NextSt~10_combout\);

-- Location: LCCOMB_X46_Y13_N24
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

-- Location: LCFF_X46_Y13_N25
\NEWST|CS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt~21_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(2));

-- Location: LCCOMB_X49_Y13_N16
\CONTROLU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Mux0~0_combout\ = (!\INSTREG|op_out\(0) & ((\INSTREG|op_out\(1) & (!\INSTREG|op_out\(2) & !\INSTREG|op_out\(3))) # (!\INSTREG|op_out\(1) & (\INSTREG|op_out\(2) $ (\INSTREG|op_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(1),
	datab => \INSTREG|op_out\(2),
	datac => \INSTREG|op_out\(3),
	datad => \INSTREG|op_out\(0),
	combout => \CONTROLU|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y13_N26
\CONTROLU|nxt_st[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[3]~5_combout\ = (!\INSTREG|op_out\(5) & (\CONTROLU|Mux0~0_combout\ & (!\INSTREG|op_out\(4) & \CONTROLU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \CONTROLU|Mux0~0_combout\,
	datac => \INSTREG|op_out\(4),
	datad => \CONTROLU|Equal0~3_combout\,
	combout => \CONTROLU|nxt_st[3]~5_combout\);

-- Location: LCCOMB_X46_Y13_N18
\CONTROLU|nxt_st[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(3) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[3]~5_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(3),
	datac => \CONTROLU|nxt_st[3]~5_combout\,
	datad => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	combout => \CONTROLU|nxt_st\(3));

-- Location: LCCOMB_X46_Y13_N0
\CONTROLU|NextSt[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[3]~14_combout\ = (\NEWST|CS\(3) & (\NEWST|CS\(1) & (!\NEWST|CS\(0)))) # (!\NEWST|CS\(3) & (\CONTROLU|nxt_st\(3) & (\NEWST|CS\(1) $ (\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \CONTROLU|nxt_st\(3),
	combout => \CONTROLU|NextSt[3]~14_combout\);

-- Location: LCCOMB_X46_Y13_N20
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

-- Location: LCFF_X46_Y13_N21
\NEWST|CS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(3));

-- Location: LCCOMB_X45_Y16_N18
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

-- Location: LCCOMB_X49_Y13_N20
\CONTROLU|nxt_st[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~12_combout\ = (\INSTREG|op_out\(5) & ((!\INSTREG|op_out\(1)) # (!\INSTREG|op_out\(0)))) # (!\INSTREG|op_out\(5) & ((\INSTREG|op_out\(0)) # (\INSTREG|op_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(5),
	datab => \INSTREG|op_out\(0),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|nxt_st[1]~12_combout\);

-- Location: LCCOMB_X49_Y13_N12
\CONTROLU|nxt_st[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~13_combout\ = (\INSTREG|op_out\(3) & (!\CONTROLU|nxt_st[1]~12_combout\ & (\CONTROLU|Equal0~3_combout\))) # (!\INSTREG|op_out\(3) & ((\CONTROLU|nxt_st[2]~10_combout\) # ((!\CONTROLU|nxt_st[1]~12_combout\ & 
-- \CONTROLU|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(3),
	datab => \CONTROLU|nxt_st[1]~12_combout\,
	datac => \CONTROLU|Equal0~3_combout\,
	datad => \CONTROLU|nxt_st[2]~10_combout\,
	combout => \CONTROLU|nxt_st[1]~13_combout\);

-- Location: LCCOMB_X49_Y13_N2
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

-- Location: LCCOMB_X49_Y13_N10
\CONTROLU|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(1) = (GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & ((\CONTROLU|nxt_st[1]~14_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~6clkctrl_outclk\) & (\CONTROLU|nxt_st\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(1),
	datab => \CONTROLU|nxt_st[1]~6clkctrl_outclk\,
	datad => \CONTROLU|nxt_st[1]~14_combout\,
	combout => \CONTROLU|nxt_st\(1));

-- Location: LCCOMB_X46_Y13_N8
\CONTROLU|NextSt[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~19_combout\ = (\CONTROLU|nxt_st[1]~4_combout\ & ((\CONTROLU|NextSt[0]~20_combout\) # ((\NEWST|CS[3]~0_combout\ & \CONTROLU|nxt_st\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st[1]~4_combout\,
	datab => \CONTROLU|NextSt[0]~20_combout\,
	datac => \NEWST|CS[3]~0_combout\,
	datad => \CONTROLU|nxt_st\(1),
	combout => \CONTROLU|NextSt[1]~19_combout\);

-- Location: LCFF_X46_Y13_N9
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X46_Y13_N30
\CONTROLU|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~2_combout\ = (\NEWST|CS\(2) & (\NEWST|CS\(1) & (!\NEWST|CS\(3) & !\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y13_N22
\ALUCONTRL|op[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op\(2) = (!\rst~combout\ & ((\CONTROLU|Equal0~1_combout\) # ((\CONTROLU|Equal0~2_combout\ & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~1_combout\,
	datab => \CONTROLU|Equal0~2_combout\,
	datac => \INSTREG|func_out\(1),
	datad => \rst~combout\,
	combout => \ALUCONTRL|op\(2));

-- Location: LCCOMB_X43_Y11_N2
\ALUCOMP|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~1_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCONTRL|op\(2)))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~0_combout\,
	datab => \ALUCONTRL|op\(2),
	datac => \ALUCONTRL|op[0]~1_combout\,
	combout => \ALUCOMP|Mux25~1_combout\);

-- Location: LCCOMB_X47_Y11_N14
\PROGCOUNT|addr_out[30]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~40_combout\ = (\MUXA|salida[30]~10_combout\ & ((\MUXB|Mux1~0_combout\ & (!\ALUCOMP|Mux25~3_combout\)) # (!\MUXB|Mux1~0_combout\ & ((\ALUCOMP|Mux25~3_combout\) # (\ALUCONTRL|op[0]~1_combout\))))) # (!\MUXA|salida[30]~10_combout\ & 
-- ((\ALUCOMP|Mux25~3_combout\) # ((\MUXB|Mux1~0_combout\ & \ALUCONTRL|op[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~10_combout\,
	datab => \MUXB|Mux1~0_combout\,
	datac => \ALUCOMP|Mux25~3_combout\,
	datad => \ALUCONTRL|op[0]~1_combout\,
	combout => \PROGCOUNT|addr_out[30]~40_combout\);

-- Location: LCCOMB_X46_Y10_N4
\PROGCOUNT|addr_out[30]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~42_combout\ = (\ALUCOMP|Mux25~3_combout\ & (((\PROGCOUNT|addr_out[30]~40_combout\)))) # (!\ALUCOMP|Mux25~3_combout\ & (((\ALUCONTRL|op[0]~1_combout\)) # (!\ALUCOMP|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \ALUCOMP|Mux25~1_combout\,
	datac => \ALUCONTRL|op[0]~1_combout\,
	datad => \PROGCOUNT|addr_out[30]~40_combout\,
	combout => \PROGCOUNT|addr_out[30]~42_combout\);

-- Location: LCCOMB_X46_Y10_N14
\PROGCOUNT|addr_out[30]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~41_combout\ = (\ALUCOMP|Mux25~1_combout\ & (((\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCONTRL|op[0]~1_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (((\PROGCOUNT|addr_out[30]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \PROGCOUNT|addr_out[30]~40_combout\,
	combout => \PROGCOUNT|addr_out[30]~41_combout\);

-- Location: LCCOMB_X46_Y10_N0
\PROGCOUNT|addr_out[30]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[30]~28_combout\ = (\ALUCOMP|Mux25~3_combout\ & (\PROGCOUNT|addr_out[30]~42_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & (\PROGCOUNT|addr_out[30]~41_combout\ & ((\PROGCOUNT|addr_out[30]~42_combout\) # (\ALUCOMP|Add0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~3_combout\,
	datab => \PROGCOUNT|addr_out[30]~42_combout\,
	datac => \PROGCOUNT|addr_out[30]~41_combout\,
	datad => \ALUCOMP|Add0~97_combout\,
	combout => \PROGCOUNT|addr_out[30]~28_combout\);

-- Location: LCFF_X46_Y10_N1
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \PROGCOUNT|addr_out[30]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCCOMB_X49_Y14_N0
\ADDRDEC|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~8_combout\ = (!\regALU|dt_out\(29) & (!\regALU|dt_out\(30) & !\regALU|dt_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(29),
	datab => \regALU|dt_out\(30),
	datad => \regALU|dt_out\(31),
	combout => \ADDRDEC|Equal1~8_combout\);

-- Location: LCCOMB_X48_Y11_N2
\ALUCOMP|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~0_combout\ = (\ALUCONTRL|op[0]~1_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCONTRL|op[0]~1_combout\ & (\ALUCOMP|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~56_combout\,
	datab => \ALUCONTRL|op[0]~1_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux14~0_combout\);

-- Location: LCCOMB_X48_Y11_N8
\ALUCOMP|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~2_combout\ = (\ALUCOMP|Mux25~3_combout\ & (!\ALUCOMP|Mux14~1_combout\)) # (!\ALUCOMP|Mux25~3_combout\ & ((\ALUCOMP|Mux25~1_combout\ & ((\ALUCOMP|Mux14~0_combout\))) # (!\ALUCOMP|Mux25~1_combout\ & (\ALUCOMP|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux14~1_combout\,
	datab => \ALUCOMP|Mux25~3_combout\,
	datac => \ALUCOMP|Mux25~1_combout\,
	datad => \ALUCOMP|Mux14~0_combout\,
	combout => \ALUCOMP|Mux14~2_combout\);

-- Location: LCFF_X48_Y11_N9
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ALUCOMP|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCCOMB_X47_Y8_N12
\ADDRDEC|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~5_combout\ = (!\regALU|dt_out\(19) & (!\regALU|dt_out\(20) & (!\regALU|dt_out\(17) & !\regALU|dt_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(19),
	datab => \regALU|dt_out\(20),
	datac => \regALU|dt_out\(17),
	datad => \regALU|dt_out\(18),
	combout => \ADDRDEC|Equal1~5_combout\);

-- Location: LCCOMB_X49_Y11_N12
\ADDRDEC|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~6_combout\ = (!\regALU|dt_out\(24) & (!\regALU|dt_out\(21) & (!\regALU|dt_out\(23) & !\regALU|dt_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(24),
	datab => \regALU|dt_out\(21),
	datac => \regALU|dt_out\(23),
	datad => \regALU|dt_out\(22),
	combout => \ADDRDEC|Equal1~6_combout\);

-- Location: LCCOMB_X47_Y15_N4
\ADDRDEC|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|Equal1~9_combout\ = (\ADDRDEC|Equal1~7_combout\ & (\ADDRDEC|Equal1~8_combout\ & (\ADDRDEC|Equal1~5_combout\ & \ADDRDEC|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRDEC|Equal1~7_combout\,
	datab => \ADDRDEC|Equal1~8_combout\,
	datac => \ADDRDEC|Equal1~5_combout\,
	datad => \ADDRDEC|Equal1~6_combout\,
	combout => \ADDRDEC|Equal1~9_combout\);

-- Location: LCCOMB_X45_Y15_N26
\MUXREAD|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux27~3_combout\ = (\ADDRDEC|Equal1~9_combout\ & (\ADDRDEC|Equal1~4_combout\ & ((\rst~combout\) # (!\CONTROLU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal0~0_combout\,
	datab => \rst~combout\,
	datac => \ADDRDEC|Equal1~9_combout\,
	datad => \ADDRDEC|Equal1~4_combout\,
	combout => \MUXREAD|Mux27~3_combout\);

-- Location: LCCOMB_X49_Y10_N22
\MUXREAD|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux13~0_combout\ = (\MEM|dataOut\(18) & !\MUXREAD|Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(18),
	datad => \MUXREAD|Mux27~3_combout\,
	combout => \MUXREAD|Mux13~0_combout\);

-- Location: LCFF_X49_Y10_N23
\MDR|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(18));

-- Location: LCCOMB_X49_Y10_N28
\MUXMemReg|salida[18]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[18]~15_combout\ = (\rst~combout\ & (\regALU|dt_out\(18))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(18)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(18),
	datab => \MDR|dt_out\(18),
	datac => \rst~combout\,
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[18]~15_combout\);

-- Location: LCCOMB_X48_Y8_N22
\REGFILE|MEM~54feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~54feeder_combout\ = \MUXMemReg|salida[18]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUXMemReg|salida[18]~15_combout\,
	combout => \REGFILE|MEM~54feeder_combout\);

-- Location: LCFF_X48_Y8_N23
\REGFILE|MEM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~54feeder_combout\,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~54_regout\);

-- Location: LCCOMB_X48_Y8_N0
\REGFILE|MEM~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~369_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~86_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~54_regout\,
	datac => \INSTREG|jump_out\(16),
	datad => \REGFILE|MEM~86_regout\,
	combout => \REGFILE|MEM~369_combout\);

-- Location: LCCOMB_X48_Y8_N6
\REGFILE|MEM~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~370_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~369_combout\ & ((\REGFILE|MEM~150_regout\))) # (!\REGFILE|MEM~369_combout\ & (\REGFILE|MEM~118_regout\)))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~369_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~369_combout\,
	datac => \REGFILE|MEM~118_regout\,
	datad => \REGFILE|MEM~150_regout\,
	combout => \REGFILE|MEM~370_combout\);

-- Location: LCFF_X49_Y7_N21
\REGFILE|MEM~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[18]~15_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~214_regout\);

-- Location: LCCOMB_X46_Y8_N16
\REGFILE|MEM~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~367_combout\ = (\INSTREG|jump_out\(16) & (\INSTREG|jump_out\(17))) # (!\INSTREG|jump_out\(16) & ((\INSTREG|jump_out\(17) & ((\REGFILE|MEM~246_regout\))) # (!\INSTREG|jump_out\(17) & (\REGFILE|MEM~182_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(16),
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~182_regout\,
	datad => \REGFILE|MEM~246_regout\,
	combout => \REGFILE|MEM~367_combout\);

-- Location: LCCOMB_X49_Y7_N20
\REGFILE|MEM~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~368_combout\ = (\INSTREG|jump_out\(16) & ((\REGFILE|MEM~367_combout\ & (\REGFILE|MEM~278_regout\)) # (!\REGFILE|MEM~367_combout\ & ((\REGFILE|MEM~214_regout\))))) # (!\INSTREG|jump_out\(16) & (((\REGFILE|MEM~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~278_regout\,
	datab => \INSTREG|jump_out\(16),
	datac => \REGFILE|MEM~214_regout\,
	datad => \REGFILE|MEM~367_combout\,
	combout => \REGFILE|MEM~368_combout\);

-- Location: LCCOMB_X45_Y14_N8
\REGFILE|MEM~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~371_combout\ = (\INSTREG|jump_out\(18) & ((\REGFILE|MEM~368_combout\))) # (!\INSTREG|jump_out\(18) & (\REGFILE|MEM~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(18),
	datab => \REGFILE|MEM~370_combout\,
	datac => \REGFILE|MEM~368_combout\,
	combout => \REGFILE|MEM~371_combout\);

-- Location: LCFF_X45_Y14_N9
\regB|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|MEM~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(18));

-- Location: LCCOMB_X39_Y12_N4
\MEM|MEM~150feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~150feeder_combout\ = \regB|dt_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(18),
	combout => \MEM|MEM~150feeder_combout\);

-- Location: LCFF_X39_Y12_N5
\MEM|MEM~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~150feeder_combout\,
	ena => \MEM|MEM~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~150_regout\);

-- Location: LCFF_X40_Y12_N19
\MEM|MEM~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~118_regout\);

-- Location: LCCOMB_X40_Y12_N18
\MEM|MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~305_combout\ = (\MEM|MEM~304_combout\ & ((\MEM|MEM~150_regout\) # ((!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~304_combout\ & (((\MEM|MEM~118_regout\ & \MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~304_combout\,
	datab => \MEM|MEM~150_regout\,
	datac => \MEM|MEM~118_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~305_combout\);

-- Location: LCFF_X40_Y13_N5
\MEM|MEM~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~214_regout\);

-- Location: LCFF_X40_Y14_N3
\MEM|MEM~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \regB|dt_out\(18),
	sload => VCC,
	ena => \MEM|MEM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~182_regout\);

-- Location: LCCOMB_X40_Y14_N2
\MEM|MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~302_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~246_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~182_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~246_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~182_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~302_combout\);

-- Location: LCCOMB_X40_Y13_N4
\MEM|MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~303_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~302_combout\ & (\MEM|MEM~278_regout\)) # (!\MEM|MEM~302_combout\ & ((\MEM|MEM~214_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~278_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~214_regout\,
	datad => \MEM|MEM~302_combout\,
	combout => \MEM|MEM~303_combout\);

-- Location: LCCOMB_X40_Y12_N8
\MEM|MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~306_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~303_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~305_combout\,
	datac => \MEM|MEM~303_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~306_combout\);

-- Location: LCFF_X40_Y12_N9
\MEM|dataOut[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MEM|MEM~306_combout\,
	ena => \CONTROLU|MemRd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(18));

-- Location: LCFF_X42_Y11_N1
\INSTREG|jump_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \MEM|dataOut\(18),
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \INSTREG|jump_out\(18));

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

-- Location: LCCOMB_X26_Y11_N10
\MUXREAD|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~6_combout\ = (\key~combout\(5) & (!\key~combout\(2) & (!\key~combout\(6) & !\key~combout\(1)))) # (!\key~combout\(5) & ((\key~combout\(2) & (!\key~combout\(6) & !\key~combout\(1))) # (!\key~combout\(2) & (\key~combout\(6) $ 
-- (\key~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \key~combout\(2),
	datac => \key~combout\(6),
	datad => \key~combout\(1),
	combout => \MUXREAD|Mux30~6_combout\);

-- Location: LCCOMB_X26_Y11_N2
\MUXREAD|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~3_combout\ = (!\key~combout\(7) & (!\key~combout\(8) & \MUXREAD|Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(7),
	datac => \key~combout\(8),
	datad => \MUXREAD|Mux30~6_combout\,
	combout => \MUXREAD|Mux30~3_combout\);

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

-- Location: LCCOMB_X26_Y11_N16
\MUXREAD|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~14_combout\ = (!\key~combout\(4) & (\MUXREAD|Mux30~3_combout\ & (!\key~combout\(3) & !\key~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \MUXREAD|Mux30~3_combout\,
	datac => \key~combout\(3),
	datad => \key~combout\(0),
	combout => \MUXREAD|Mux30~14_combout\);

-- Location: LCCOMB_X49_Y10_N8
\MUXREAD|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXREAD|Mux30~13_combout\ = (\ADDRDEC|addressSel[0]~0_combout\ & ((\ADDRDEC|addressSel[1]~1_combout\ & (\MEM|dataOut\(1))) # (!\ADDRDEC|addressSel[1]~1_combout\ & ((\MUXREAD|Mux30~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(1),
	datab => \MUXREAD|Mux30~14_combout\,
	datac => \ADDRDEC|addressSel[1]~1_combout\,
	datad => \ADDRDEC|addressSel[0]~0_combout\,
	combout => \MUXREAD|Mux30~13_combout\);

-- Location: LCFF_X49_Y10_N9
\MDR|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \MUXREAD|Mux30~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(1));

-- Location: LCCOMB_X48_Y12_N14
\MUXMemReg|salida[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[1]~30_combout\ = (\rst~combout\ & (\regALU|dt_out\(1))) # (!\rst~combout\ & ((\CONTROLU|Equal0~5_combout\ & ((\MDR|dt_out\(1)))) # (!\CONTROLU|Equal0~5_combout\ & (\regALU|dt_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(1),
	datab => \rst~combout\,
	datac => \MDR|dt_out\(1),
	datad => \CONTROLU|Equal0~5_combout\,
	combout => \MUXMemReg|salida[1]~30_combout\);

-- Location: LCFF_X49_Y9_N23
\REGFILE|MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \MUXMemReg|salida[1]~30_combout\,
	sload => VCC,
	ena => \REGFILE|MEM~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~37_regout\);

-- Location: LCFF_X48_Y12_N15
\REGFILE|MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \MUXMemReg|salida[1]~30_combout\,
	ena => \REGFILE|MEM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~69_regout\);

-- Location: LCCOMB_X48_Y9_N4
\REGFILE|MEM~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~444_combout\ = (\INSTREG|jump_out\(17) & (((\INSTREG|jump_out\(16))))) # (!\INSTREG|jump_out\(17) & ((\INSTREG|jump_out\(16) & ((\REGFILE|MEM~69_regout\))) # (!\INSTREG|jump_out\(16) & (\REGFILE|MEM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(17),
	datab => \REGFILE|MEM~37_regout\,
	datac => \REGFILE|MEM~69_regout\,
	datad => \INSTREG|jump_out\(16),
	combout => \REGFILE|MEM~444_combout\);

-- Location: LCCOMB_X49_Y10_N16
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

-- Location: LCFF_X49_Y10_N17
\REGFILE|MEM~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \REGFILE|MEM~626_combout\,
	ena => \REGFILE|MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~133_regout\);

-- Location: LCCOMB_X47_Y9_N2
\REGFILE|MEM~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~445_combout\ = (\INSTREG|jump_out\(17) & ((\REGFILE|MEM~444_combout\ & ((!\REGFILE|MEM~133_regout\))) # (!\REGFILE|MEM~444_combout\ & (\REGFILE|MEM~101_regout\)))) # (!\INSTREG|jump_out\(17) & (((\REGFILE|MEM~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~101_regout\,
	datab => \INSTREG|jump_out\(17),
	datac => \REGFILE|MEM~444_combout\,
	datad => \REGFILE|MEM~133_regout\,
	combout => \REGFILE|MEM~445_combout\);

-- Location: LCCOMB_X46_Y9_N8
\REGFILE|MEM~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~446_combout\ = (\INSTREG|jump_out\(18) & (\REGFILE|MEM~443_combout\)) # (!\INSTREG|jump_out\(18) & ((\REGFILE|MEM~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~443_combout\,
	datac => \INSTREG|jump_out\(18),
	datad => \REGFILE|MEM~445_combout\,
	combout => \REGFILE|MEM~446_combout\);

-- Location: LCCOMB_X46_Y10_N22
\regB|dt_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|dt_out[1]~feeder_combout\ = \REGFILE|MEM~446_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGFILE|MEM~446_combout\,
	combout => \regB|dt_out[1]~feeder_combout\);

-- Location: LCFF_X46_Y10_N23
\regB|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \regB|dt_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(1));

-- Location: LCCOMB_X45_Y15_N28
\ADDRDEC|dev1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDRDEC|dev1~0_combout\ = (\CONTROLU|MemWr~0_combout\ & (\ADDRDEC|Equal1~9_combout\ & (!\regALU|dt_out\(8) & \ADDRDEC|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemWr~0_combout\,
	datab => \ADDRDEC|Equal1~9_combout\,
	datac => \regALU|dt_out\(8),
	datad => \ADDRDEC|Equal1~4_combout\,
	combout => \ADDRDEC|dev1~0_combout\);

-- Location: LCFF_X37_Y12_N31
\REG7SEG|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(1));

-- Location: LCCOMB_X37_Y12_N8
\REG7SEG|dt_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[3]~feeder_combout\ = \regB|dt_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(3),
	combout => \REG7SEG|dt_out[3]~feeder_combout\);

-- Location: LCFF_X37_Y12_N9
\REG7SEG|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[3]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(3));

-- Location: LCFF_X37_Y12_N1
\REG7SEG|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(2),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(2));

-- Location: LCCOMB_X37_Y12_N6
\SEG7WR|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr6~0_combout\ = (\SEG7WR|Equal1~0_combout\ & (!\REG7SEG|dt_out\(2) & (\REG7SEG|dt_out\(1) $ (!\REG7SEG|dt_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(2),
	combout => \SEG7WR|WideOr6~0_combout\);

-- Location: LCCOMB_X36_Y12_N4
\SEG7WR|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal12~0_combout\ = (\SEG7WR|Equal1~0_combout\ & (\REG7SEG|dt_out\(2) & (\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|Equal12~0_combout\);

-- Location: LCFF_X37_Y12_N5
\REG7SEG|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(0));

-- Location: LCCOMB_X37_Y12_N4
\SEG7WR|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~11_combout\ = (!\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG7SEG|dt_out\(3),
	datac => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|Equal0~11_combout\);

-- Location: LCCOMB_X37_Y11_N4
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

-- Location: LCFF_X37_Y11_N5
\REG7SEG|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[4]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(4));

-- Location: LCFF_X37_Y11_N15
\REG7SEG|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(7),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(7));

-- Location: LCCOMB_X37_Y11_N18
\REG7SEG|dt_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[5]~feeder_combout\ = \regB|dt_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(5),
	combout => \REG7SEG|dt_out[5]~feeder_combout\);

-- Location: LCFF_X37_Y11_N19
\REG7SEG|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[5]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(5));

-- Location: LCCOMB_X37_Y11_N14
\SEG7WR|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~2_combout\ = (!\REG7SEG|dt_out\(6) & (!\REG7SEG|dt_out\(4) & (!\REG7SEG|dt_out\(7) & !\REG7SEG|dt_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(6),
	datab => \REG7SEG|dt_out\(4),
	datac => \REG7SEG|dt_out\(7),
	datad => \REG7SEG|dt_out\(5),
	combout => \SEG7WR|Equal0~2_combout\);

-- Location: LCFF_X37_Y11_N23
\REG7SEG|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(14),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(14));

-- Location: LCFF_X37_Y11_N13
\REG7SEG|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(15),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(15));

-- Location: LCCOMB_X37_Y11_N10
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

-- Location: LCFF_X37_Y11_N11
\REG7SEG|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[12]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(12));

-- Location: LCCOMB_X37_Y11_N12
\SEG7WR|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~4_combout\ = (!\REG7SEG|dt_out\(13) & (!\REG7SEG|dt_out\(14) & (!\REG7SEG|dt_out\(15) & !\REG7SEG|dt_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(13),
	datab => \REG7SEG|dt_out\(14),
	datac => \REG7SEG|dt_out\(15),
	datad => \REG7SEG|dt_out\(12),
	combout => \SEG7WR|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y11_N8
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

-- Location: LCFF_X36_Y11_N9
\REG7SEG|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[11]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(11));

-- Location: LCFF_X36_Y11_N19
\REG7SEG|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(10),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(10));

-- Location: LCCOMB_X37_Y11_N20
\REG7SEG|dt_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[8]~feeder_combout\ = \regB|dt_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(8),
	combout => \REG7SEG|dt_out[8]~feeder_combout\);

-- Location: LCFF_X37_Y11_N21
\REG7SEG|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[8]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(8));

-- Location: LCCOMB_X36_Y11_N18
\SEG7WR|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~3_combout\ = (!\REG7SEG|dt_out\(9) & (!\REG7SEG|dt_out\(11) & (!\REG7SEG|dt_out\(10) & !\REG7SEG|dt_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(9),
	datab => \REG7SEG|dt_out\(11),
	datac => \REG7SEG|dt_out\(10),
	datad => \REG7SEG|dt_out\(8),
	combout => \SEG7WR|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y11_N2
\SEG7WR|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~6_combout\ = (\SEG7WR|Equal0~5_combout\ & (\SEG7WR|Equal0~2_combout\ & (\SEG7WR|Equal0~4_combout\ & \SEG7WR|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~5_combout\,
	datab => \SEG7WR|Equal0~2_combout\,
	datac => \SEG7WR|Equal0~4_combout\,
	datad => \SEG7WR|Equal0~3_combout\,
	combout => \SEG7WR|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y12_N24
\SEG7WR|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal4~0_combout\ = (\SEG7WR|Equal0~10_combout\ & (\REG7SEG|dt_out\(2) & (\SEG7WR|Equal0~11_combout\ & \SEG7WR|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~10_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \SEG7WR|Equal0~11_combout\,
	datad => \SEG7WR|Equal0~6_combout\,
	combout => \SEG7WR|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y12_N2
\SEG7WR|WideOr6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr6~combout\ = (\SEG7WR|WideOr6~0_combout\) # ((\SEG7WR|Equal12~0_combout\) # ((!\REG7SEG|dt_out\(1) & \SEG7WR|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|WideOr6~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|Equal12~0_combout\,
	datad => \SEG7WR|Equal4~0_combout\,
	combout => \SEG7WR|WideOr6~combout\);

-- Location: LCCOMB_X36_Y12_N20
\SEG7WR|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal11~0_combout\ = (\SEG7WR|Equal0~13_combout\ & (\REG7SEG|dt_out\(3) & (\REG7SEG|dt_out\(2) & !\REG7SEG|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~13_combout\,
	datab => \REG7SEG|dt_out\(3),
	datac => \REG7SEG|dt_out\(2),
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|Equal11~0_combout\);

-- Location: LCCOMB_X36_Y12_N10
\SEG7WR|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal14~0_combout\ = (\SEG7WR|Equal1~0_combout\ & (\REG7SEG|dt_out\(2) & (\REG7SEG|dt_out\(3) & \REG7SEG|dt_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|Equal14~0_combout\);

-- Location: LCCOMB_X36_Y12_N30
\SEG7WR|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr4~0_combout\ = (!\SEG7WR|Equal11~0_combout\ & !\SEG7WR|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEG7WR|Equal11~0_combout\,
	datad => \SEG7WR|Equal14~0_combout\,
	combout => \SEG7WR|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y12_N8
\SEG7WR|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr5~0_combout\ = (\SEG7WR|Equal1~0_combout\ & ((\REG7SEG|dt_out\(2) & (!\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(1))) # (!\REG7SEG|dt_out\(2) & (\REG7SEG|dt_out\(3) & \REG7SEG|dt_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y12_N0
\SEG7WR|WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr5~1_combout\ = ((\SEG7WR|WideOr5~0_combout\) # ((\REG7SEG|dt_out\(1) & \SEG7WR|Equal4~0_combout\))) # (!\SEG7WR|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|WideOr4~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|WideOr5~0_combout\,
	datad => \SEG7WR|Equal4~0_combout\,
	combout => \SEG7WR|WideOr5~1_combout\);

-- Location: LCCOMB_X37_Y11_N8
\REG7SEG|dt_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[25]~feeder_combout\ = \regB|dt_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(25),
	combout => \REG7SEG|dt_out[25]~feeder_combout\);

-- Location: LCFF_X37_Y11_N9
\REG7SEG|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[25]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(25));

-- Location: LCFF_X36_Y11_N27
\REG7SEG|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(24),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(24));

-- Location: LCFF_X36_Y11_N13
\REG7SEG|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(26),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(26));

-- Location: LCCOMB_X36_Y11_N26
\SEG7WR|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~8_combout\ = (!\REG7SEG|dt_out\(27) & (!\REG7SEG|dt_out\(25) & (!\REG7SEG|dt_out\(24) & !\REG7SEG|dt_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(27),
	datab => \REG7SEG|dt_out\(25),
	datac => \REG7SEG|dt_out\(24),
	datad => \REG7SEG|dt_out\(26),
	combout => \SEG7WR|Equal0~8_combout\);

-- Location: LCCOMB_X37_Y12_N28
\REG7SEG|dt_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[29]~feeder_combout\ = \regB|dt_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(29),
	combout => \REG7SEG|dt_out[29]~feeder_combout\);

-- Location: LCFF_X37_Y12_N29
\REG7SEG|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[29]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(29));

-- Location: LCFF_X37_Y12_N17
\REG7SEG|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(31),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(31));

-- Location: LCFF_X37_Y12_N11
\REG7SEG|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(28),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(28));

-- Location: LCCOMB_X37_Y12_N16
\SEG7WR|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~9_combout\ = (!\REG7SEG|dt_out\(30) & (!\REG7SEG|dt_out\(29) & (!\REG7SEG|dt_out\(31) & !\REG7SEG|dt_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(30),
	datab => \REG7SEG|dt_out\(29),
	datac => \REG7SEG|dt_out\(31),
	datad => \REG7SEG|dt_out\(28),
	combout => \SEG7WR|Equal0~9_combout\);

-- Location: LCFF_X36_Y11_N5
\REG7SEG|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(20),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(20));

-- Location: LCFF_X36_Y11_N1
\REG7SEG|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \regB|dt_out\(23),
	sload => VCC,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(23));

-- Location: LCCOMB_X36_Y11_N22
\REG7SEG|dt_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG7SEG|dt_out[21]~feeder_combout\ = \regB|dt_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(21),
	combout => \REG7SEG|dt_out[21]~feeder_combout\);

-- Location: LCFF_X36_Y11_N23
\REG7SEG|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REG7SEG|dt_out[21]~feeder_combout\,
	ena => \ADDRDEC|dev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG7SEG|dt_out\(21));

-- Location: LCCOMB_X36_Y11_N0
\SEG7WR|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~7_combout\ = (!\REG7SEG|dt_out\(22) & (!\REG7SEG|dt_out\(20) & (!\REG7SEG|dt_out\(23) & !\REG7SEG|dt_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG7SEG|dt_out\(22),
	datab => \REG7SEG|dt_out\(20),
	datac => \REG7SEG|dt_out\(23),
	datad => \REG7SEG|dt_out\(21),
	combout => \SEG7WR|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y11_N28
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

-- Location: LCCOMB_X37_Y12_N22
\SEG7WR|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal2~1_combout\ = (\SEG7WR|Equal2~0_combout\ & (\SEG7WR|Equal0~10_combout\ & (\SEG7WR|Equal0~11_combout\ & \SEG7WR|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal2~0_combout\,
	datab => \SEG7WR|Equal0~10_combout\,
	datac => \SEG7WR|Equal0~11_combout\,
	datad => \SEG7WR|Equal0~6_combout\,
	combout => \SEG7WR|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y12_N26
\SEG7WR|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr4~combout\ = (\SEG7WR|Equal14~0_combout\) # ((\SEG7WR|Equal11~0_combout\) # (\SEG7WR|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal14~0_combout\,
	datac => \SEG7WR|Equal11~0_combout\,
	datad => \SEG7WR|Equal2~1_combout\,
	combout => \SEG7WR|WideOr4~combout\);

-- Location: LCCOMB_X37_Y12_N0
\SEG7WR|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr0~0_combout\ = ((\REG7SEG|dt_out\(3)) # (\REG7SEG|dt_out\(2) $ (\REG7SEG|dt_out\(1)))) # (!\SEG7WR|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(3),
	datac => \REG7SEG|dt_out\(2),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|WideOr0~0_combout\);

-- Location: LCCOMB_X36_Y12_N28
\SEG7WR|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr3~combout\ = (\SEG7WR|Equal14~0_combout\) # (((!\REG7SEG|dt_out\(1) & \SEG7WR|Equal4~0_combout\)) # (!\SEG7WR|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal14~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|WideOr0~0_combout\,
	datad => \SEG7WR|Equal4~0_combout\,
	combout => \SEG7WR|WideOr3~combout\);

-- Location: LCCOMB_X36_Y12_N14
\SEG7WR|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr2~0_combout\ = (\SEG7WR|Equal1~0_combout\ & ((\REG7SEG|dt_out\(2) & (!\REG7SEG|dt_out\(3) & !\REG7SEG|dt_out\(1))) # (!\REG7SEG|dt_out\(2) & (\REG7SEG|dt_out\(3) $ (\REG7SEG|dt_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y12_N24
\SEG7WR|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr2~1_combout\ = (\SEG7WR|WideOr2~0_combout\) # (((!\REG7SEG|dt_out\(1) & \SEG7WR|Equal4~0_combout\)) # (!\SEG7WR|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|WideOr2~0_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \SEG7WR|WideOr0~0_combout\,
	datad => \SEG7WR|Equal4~0_combout\,
	combout => \SEG7WR|WideOr2~1_combout\);

-- Location: LCCOMB_X36_Y12_N22
\SEG7WR|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~3_combout\ = (\SEG7WR|Equal0~13_combout\ & (\REG7SEG|dt_out\(1) & (!\REG7SEG|dt_out\(2) & !\REG7SEG|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~13_combout\,
	datab => \REG7SEG|dt_out\(1),
	datac => \REG7SEG|dt_out\(2),
	datad => \REG7SEG|dt_out\(0),
	combout => \SEG7WR|WideOr1~3_combout\);

-- Location: LCCOMB_X36_Y12_N18
\SEG7WR|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~2_combout\ = (\SEG7WR|Equal1~0_combout\ & (!\REG7SEG|dt_out\(3) & ((\REG7SEG|dt_out\(1)) # (!\REG7SEG|dt_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal1~0_combout\,
	datab => \REG7SEG|dt_out\(2),
	datac => \REG7SEG|dt_out\(3),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|WideOr1~2_combout\);

-- Location: LCCOMB_X36_Y12_N16
\SEG7WR|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr1~combout\ = (\SEG7WR|WideOr1~3_combout\) # ((\SEG7WR|Equal12~0_combout\) # (\SEG7WR|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7WR|WideOr1~3_combout\,
	datac => \SEG7WR|Equal12~0_combout\,
	datad => \SEG7WR|WideOr1~2_combout\,
	combout => \SEG7WR|WideOr1~combout\);

-- Location: LCCOMB_X36_Y12_N6
\SEG7WR|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|Equal0~12_combout\ = (\SEG7WR|Equal0~13_combout\ & (\SEG7WR|Equal0~11_combout\ & (!\REG7SEG|dt_out\(2) & !\REG7SEG|dt_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~13_combout\,
	datab => \SEG7WR|Equal0~11_combout\,
	datac => \REG7SEG|dt_out\(2),
	datad => \REG7SEG|dt_out\(1),
	combout => \SEG7WR|Equal0~12_combout\);

-- Location: LCCOMB_X36_Y12_N12
\SEG7WR|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG7WR|WideOr0~combout\ = (\SEG7WR|Equal0~12_combout\) # (((\SEG7WR|Equal11~0_combout\ & !\REG7SEG|dt_out\(1))) # (!\SEG7WR|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7WR|Equal0~12_combout\,
	datab => \SEG7WR|WideOr0~0_combout\,
	datac => \SEG7WR|Equal11~0_combout\,
	datad => \REG7SEG|dt_out\(1),
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


