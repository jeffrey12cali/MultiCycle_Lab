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

-- DATE "10/27/2018 17:35:39"

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
	MemDir : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	Res : OUT std_logic_vector(31 DOWNTO 0);
	wrReg : OUT std_logic_vector(4 DOWNTO 0);
	wrData : OUT std_logic_vector(31 DOWNTO 0);
	sts : OUT std_logic_vector(3 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- Res[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[7]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[8]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[9]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[10]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[11]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[12]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[13]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[15]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[16]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[17]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[18]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[19]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[20]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[21]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[22]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[23]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[24]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[25]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[26]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[27]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[28]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[29]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[30]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[31]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[2]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[3]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[4]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[0]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[1]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[3]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[4]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[6]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[7]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[8]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[9]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[10]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[11]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[12]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[13]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[14]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[15]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[16]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[17]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[18]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[19]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[20]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[21]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[22]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[23]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[24]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[25]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[26]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[27]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[28]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[29]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[30]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[31]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[1]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemDir[17]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[18]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[19]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[20]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[21]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[22]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[23]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[24]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[25]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[26]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[27]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[28]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[29]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[30]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[31]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[8]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[7]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[5]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[3]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[9]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[10]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[11]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[12]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[15]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[16]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[13]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[14]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_MemDir : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Res : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wrReg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wrData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sts : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCOMP|Add0~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33_combout\ : std_logic;
SIGNAL \MEM|Equal0~1_combout\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~3_combout\ : std_logic;
SIGNAL \MUXA|salida[1]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~11_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~21_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~22_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~26_combout\ : std_logic;
SIGNAL \MEM|Equal2~0_combout\ : std_logic;
SIGNAL \NEWST|CS[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~14_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~15_combout\ : std_logic;
SIGNAL \MEM|Equal0~2_combout\ : std_logic;
SIGNAL \MEM|Equal0~3_combout\ : std_logic;
SIGNAL \MEM|Equal0~0_combout\ : std_logic;
SIGNAL \MEM|Equal0~4_combout\ : std_logic;
SIGNAL \MEM|Equal0~6_combout\ : std_logic;
SIGNAL \MEM|Equal0~5_combout\ : std_logic;
SIGNAL \MEM|Equal0~7_combout\ : std_logic;
SIGNAL \MEM|Equal0~8_combout\ : std_logic;
SIGNAL \MEM|Equal2~1_combout\ : std_logic;
SIGNAL \MEM|data_out[3]~0_combout\ : std_logic;
SIGNAL \MEM|data_out[1]~1_combout\ : std_logic;
SIGNAL \MEM|data_out[0]~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~0_combout\ : std_logic;
SIGNAL \MUXA|salida[0]~7_combout\ : std_logic;
SIGNAL \CONTROLU|Equal2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~16_combout\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~17_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~0_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~1_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \MUXA|salida[4]~4_combout\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~6_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~1_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~3_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~5_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~7_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~9_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~11_cout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~12_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~18_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~19_combout\ : std_logic;
SIGNAL \ALUCONTRL|op~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~3_cout\ : std_logic;
SIGNAL \ALUCOMP|Add0~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCONTRL|op[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~2_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~7\ : std_logic;
SIGNAL \ALUCOMP|Add0~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~2_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~0_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~1_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~10\ : std_logic;
SIGNAL \ALUCOMP|Add0~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~13\ : std_logic;
SIGNAL \ALUCOMP|Add0~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~2_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~2_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~2_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~16\ : std_logic;
SIGNAL \ALUCOMP|Add0~18\ : std_logic;
SIGNAL \ALUCOMP|Add0~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~20\ : std_logic;
SIGNAL \ALUCOMP|Add0~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~23\ : std_logic;
SIGNAL \ALUCOMP|Add0~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~2_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~74_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~26\ : std_logic;
SIGNAL \ALUCOMP|Add0~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~1_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~10_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~28\ : std_logic;
SIGNAL \ALUCOMP|Add0~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~2_combout\ : std_logic;
SIGNAL \MUXA|salida[11]~11_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~30\ : std_logic;
SIGNAL \ALUCOMP|Add0~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~2_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~4_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~5_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~32\ : std_logic;
SIGNAL \ALUCOMP|Add0~34\ : std_logic;
SIGNAL \ALUCOMP|Add0~36_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~3_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37\ : std_logic;
SIGNAL \ALUCOMP|Add0~38_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~39\ : std_logic;
SIGNAL \ALUCOMP|Add0~40_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~1_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~6_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~7_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41\ : std_logic;
SIGNAL \ALUCOMP|Add0~42_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43\ : std_logic;
SIGNAL \ALUCOMP|Add0~44_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~1_combout\ : std_logic;
SIGNAL \MUXA|salida[18]~18_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~45\ : std_logic;
SIGNAL \ALUCOMP|Add0~46_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47\ : std_logic;
SIGNAL \ALUCOMP|Add0~48_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~49\ : std_logic;
SIGNAL \ALUCOMP|Add0~50_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51\ : std_logic;
SIGNAL \ALUCOMP|Add0~52_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~53\ : std_logic;
SIGNAL \ALUCOMP|Add0~54_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~0_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~23_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~55\ : std_logic;
SIGNAL \ALUCOMP|Add0~56_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~1_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~57\ : std_logic;
SIGNAL \ALUCOMP|Add0~58_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~0_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~59\ : std_logic;
SIGNAL \ALUCOMP|Add0~60_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~61\ : std_logic;
SIGNAL \ALUCOMP|Add0~62_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~1_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~63\ : std_logic;
SIGNAL \ALUCOMP|Add0~64_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~1_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~28_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~65\ : std_logic;
SIGNAL \ALUCOMP|Add0~66_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~1_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~67\ : std_logic;
SIGNAL \ALUCOMP|Add0~68_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~1_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~69\ : std_logic;
SIGNAL \ALUCOMP|Add0~70_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~1_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~71\ : std_logic;
SIGNAL \ALUCOMP|Add0~72_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~1_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[1]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLU|NextSt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INSTREG|imm_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MemDir~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUCONTRL|op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_MemDir <= MemDir;
ww_clk <= clk;
Res <= ww_Res;
wrReg <= ww_wrReg;
wrData <= ww_wrData;
sts <= ww_sts;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\CONTROLU|Equal0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y16_N28
\ALUCOMP|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~17_combout\ = ((\MUXA|salida[5]~3_combout\ $ (\ALUCOMP|Add0~14_combout\ $ (!\ALUCOMP|Add0~16\)))) # (GND)
-- \ALUCOMP|Add0~18\ = CARRY((\MUXA|salida[5]~3_combout\ & ((\ALUCOMP|Add0~14_combout\) # (!\ALUCOMP|Add0~16\))) # (!\MUXA|salida[5]~3_combout\ & (\ALUCOMP|Add0~14_combout\ & !\ALUCOMP|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~3_combout\,
	datab => \ALUCOMP|Add0~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~16\,
	combout => \ALUCOMP|Add0~17_combout\,
	cout => \ALUCOMP|Add0~18\);

-- Location: LCCOMB_X43_Y15_N10
\ALUCOMP|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~33_combout\ = (\MUXA|salida[12]~12_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~32\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~32\)))) # (!\MUXA|salida[12]~12_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~32\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~32\) # (GND)))))
-- \ALUCOMP|Add0~34\ = CARRY((\MUXA|salida[12]~12_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~32\)) # (!\MUXA|salida[12]~12_combout\ & ((!\ALUCOMP|Add0~32\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~12_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~32\,
	combout => \ALUCOMP|Add0~33_combout\,
	cout => \ALUCOMP|Add0~34\);

-- Location: LCCOMB_X45_Y18_N4
\MEM|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~1_combout\ = (!\PROGCOUNT|addr_out\(23) & (!\PROGCOUNT|addr_out\(21) & (!\PROGCOUNT|addr_out\(22) & !\PROGCOUNT|addr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(23),
	datab => \PROGCOUNT|addr_out\(21),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \PROGCOUNT|addr_out\(24),
	combout => \MEM|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y17_N16
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\NEWST|CS\(0) & (\INSTREG|imm_out\(5) & !\NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \INSTREG|imm_out\(5),
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCCOMB_X44_Y17_N14
\MUXA|salida[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~3_combout\ = (\PROGCOUNT|addr_out\(5) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(5),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[5]~3_combout\);

-- Location: LCCOMB_X43_Y16_N6
\MUXA|salida[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~8_combout\ = (\PROGCOUNT|addr_out\(1) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(1),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[1]~8_combout\);

-- Location: LCCOMB_X43_Y16_N12
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = (\NEWST|CS\(0) & (((\INSTREG|imm_out\(0) & !\NEWST|CS\(1))))) # (!\NEWST|CS\(0) & ((\INSTREG|imm_out\(1)) # ((!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \ALUCOMP|Add0~8_combout\);

-- Location: LCCOMB_X43_Y16_N10
\ALUCOMP|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~11_combout\ = (\INSTREG|imm_out\(1) & (\NEWST|CS\(0) $ (\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \ALUCOMP|Add0~11_combout\);

-- Location: LCCOMB_X42_Y16_N20
\ALUCOMP|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~0_combout\ = (\MUXA|salida[4]~4_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\ALUCONTRL|op\(1) & \MUXB|Mux25~0_combout\)))) # (!\MUXA|salida[4]~4_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux25~0_combout\) # (!\ALUCONTRL|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~4_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux27~0_combout\);

-- Location: LCCOMB_X44_Y16_N24
\ALUCOMP|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~0_combout\ = (\ALUCONTRL|op\(1) & ((\ALUCOMP|temp~2_combout\) # ((\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCONTRL|op\(1) & (((!\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~2_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Add0~17_combout\,
	combout => \ALUCOMP|Mux26~0_combout\);

-- Location: LCCOMB_X42_Y16_N6
\ALUCOMP|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~0_combout\ = (\MUXA|salida[6]~2_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\ALUCONTRL|op\(1) & \MUXB|Mux25~0_combout\)))) # (!\MUXA|salida[6]~2_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux25~0_combout\) # (!\ALUCONTRL|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~2_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux25~0_combout\);

-- Location: LCCOMB_X44_Y17_N30
\ALUCOMP|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~21_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(1) & (\INSTREG|imm_out\(5)))) # (!\NEWST|CS\(0) & (\NEWST|CS\(1) & ((\INSTREG|imm_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \INSTREG|imm_out\(5),
	datad => \INSTREG|imm_out\(1),
	combout => \ALUCOMP|Add0~21_combout\);

-- Location: LCCOMB_X44_Y15_N6
\MUXA|salida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~12_combout\ = (\PROGCOUNT|addr_out\(12) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(12),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[12]~12_combout\);

-- Location: LCCOMB_X43_Y18_N30
\ALUCOMP|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~35_combout\ = (\NEWST|CS\(1) & (((\INSTREG|imm_out\(1) & !\NEWST|CS\(0))))) # (!\NEWST|CS\(1) & (\INSTREG|imm_out\(14) & ((\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(14),
	datab => \INSTREG|imm_out\(1),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \ALUCOMP|Add0~35_combout\);

-- Location: LCCOMB_X44_Y15_N2
\MUXA|salida[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~21_combout\ = (\PROGCOUNT|addr_out\(21) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(21),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[21]~21_combout\);

-- Location: LCCOMB_X45_Y15_N26
\MUXA|salida[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~22_combout\ = (\PROGCOUNT|addr_out\(22) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(22),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[22]~22_combout\);

-- Location: LCCOMB_X44_Y14_N16
\MUXA|salida[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~26_combout\ = (\PROGCOUNT|addr_out\(26) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(26),
	combout => \MUXA|salida[26]~26_combout\);

-- Location: LCCOMB_X43_Y16_N2
\MEM|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal2~0_combout\ = (!\PROGCOUNT|addr_out\(1) & \PROGCOUNT|addr_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGCOUNT|addr_out\(1),
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MEM|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y18_N28
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(21) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(21)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(21),
	datac => \MemDir~combout\(21),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(21));

-- Location: LCCOMB_X45_Y18_N14
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(22) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(22))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(22),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(22));

-- Location: LCCOMB_X44_Y18_N26
\INSTREG|imm_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(5) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((!\MEM|Equal0~8_combout\))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\INSTREG|imm_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(5),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \MEM|Equal0~8_combout\,
	combout => \INSTREG|imm_out\(5));

-- Location: LCCOMB_X43_Y16_N14
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(1) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(1))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(1),
	datac => \PROGCOUNT|addr_out\(1),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(1));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[17]~I\ : cycloneii_io
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
	padio => ww_MemDir(17),
	combout => \MemDir~combout\(17));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[21]~I\ : cycloneii_io
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
	padio => ww_MemDir(21),
	combout => \MemDir~combout\(21));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[22]~I\ : cycloneii_io
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
	padio => ww_MemDir(22),
	combout => \MemDir~combout\(22));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[28]~I\ : cycloneii_io
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
	padio => ww_MemDir(28),
	combout => \MemDir~combout\(28));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[30]~I\ : cycloneii_io
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
	padio => ww_MemDir(30),
	combout => \MemDir~combout\(30));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[31]~I\ : cycloneii_io
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
	padio => ww_MemDir(31),
	combout => \MemDir~combout\(31));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[8]~I\ : cycloneii_io
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
	padio => ww_MemDir(8),
	combout => \MemDir~combout\(8));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[4]~I\ : cycloneii_io
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
	padio => ww_MemDir(4),
	combout => \MemDir~combout\(4));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[2]~I\ : cycloneii_io
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
	padio => ww_MemDir(2),
	combout => \MemDir~combout\(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[0]~I\ : cycloneii_io
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
	padio => ww_MemDir(0),
	combout => \MemDir~combout\(0));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[1]~I\ : cycloneii_io
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
	padio => ww_MemDir(1),
	combout => \MemDir~combout\(1));

-- Location: LCCOMB_X44_Y16_N14
\NEWST|CS[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NEWST|CS[0]~0_combout\ = !\NEWST|CS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(0),
	combout => \NEWST|CS[0]~0_combout\);

-- Location: LCFF_X44_Y17_N7
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \NEWST|CS[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X45_Y17_N6
\CONTROLU|NextSt[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(1) = \NEWST|CS\(0) $ (\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|NextSt\(1));

-- Location: LCFF_X44_Y17_N9
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \CONTROLU|NextSt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X49_Y14_N6
\CONTROLU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~0_combout\ = (!\NEWST|CS\(0) & !\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~0_combout\);

-- Location: CLKCTRL_G4
\CONTROLU|Equal0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|Equal0~0clkctrl_outclk\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[15]~I\ : cycloneii_io
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
	padio => ww_MemDir(15),
	combout => \MemDir~combout\(15));

-- Location: LCCOMB_X43_Y18_N4
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(15) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(15))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(15),
	datac => \PROGCOUNT|addr_out\(15),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(15));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[10]~I\ : cycloneii_io
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
	padio => ww_MemDir(10),
	combout => \MemDir~combout\(10));

-- Location: LCCOMB_X43_Y18_N14
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(10) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(10))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(10),
	datac => \PROGCOUNT|addr_out\(10),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(10));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[11]~I\ : cycloneii_io
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
	padio => ww_MemDir(11),
	combout => \MemDir~combout\(11));

-- Location: LCCOMB_X43_Y18_N20
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(11) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(11))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(11),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(11));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[12]~I\ : cycloneii_io
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
	padio => ww_MemDir(12),
	combout => \MemDir~combout\(12));

-- Location: LCCOMB_X43_Y18_N26
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(12) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(12)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(12),
	datac => \MemDir~combout\(12),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X43_Y18_N16
\ALUCOMP|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~14_combout\ = (!\PROGCOUNT|addr_out\(9) & (!\PROGCOUNT|addr_out\(10) & (!\PROGCOUNT|addr_out\(11) & !\PROGCOUNT|addr_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(9),
	datab => \PROGCOUNT|addr_out\(10),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \PROGCOUNT|addr_out\(12),
	combout => \ALUCOMP|LessThan0~14_combout\);

-- Location: LCCOMB_X43_Y18_N18
\ALUCOMP|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~15_combout\ = (!\PROGCOUNT|addr_out\(15) & \ALUCOMP|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(15),
	datac => \ALUCOMP|LessThan0~14_combout\,
	combout => \ALUCOMP|LessThan0~15_combout\);

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[26]~I\ : cycloneii_io
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
	padio => ww_MemDir(26),
	combout => \MemDir~combout\(26));

-- Location: LCCOMB_X45_Y18_N26
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(26) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(26))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(26),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \PROGCOUNT|addr_out\(26),
	combout => \PROGCOUNT|addr_out\(26));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[25]~I\ : cycloneii_io
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
	padio => ww_MemDir(25),
	combout => \MemDir~combout\(25));

-- Location: LCCOMB_X45_Y18_N20
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(25) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(25))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(25),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(25));

-- Location: LCCOMB_X45_Y18_N22
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(28) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(28))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(28),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \PROGCOUNT|addr_out\(28),
	combout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X45_Y18_N30
\MEM|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~2_combout\ = (!\PROGCOUNT|addr_out\(27) & (!\PROGCOUNT|addr_out\(26) & (!\PROGCOUNT|addr_out\(25) & !\PROGCOUNT|addr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(27),
	datab => \PROGCOUNT|addr_out\(26),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \PROGCOUNT|addr_out\(28),
	combout => \MEM|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y18_N4
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(31) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(31))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(31),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(31));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[29]~I\ : cycloneii_io
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
	padio => ww_MemDir(29),
	combout => \MemDir~combout\(29));

-- Location: LCCOMB_X45_Y18_N8
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(29) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(29))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(29),
	datac => \PROGCOUNT|addr_out\(29),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X44_Y18_N22
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(30) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(30))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(30),
	datab => \PROGCOUNT|addr_out\(30),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(30));

-- Location: LCCOMB_X44_Y18_N24
\MEM|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~3_combout\ = (!\PROGCOUNT|addr_out\(31) & (!\PROGCOUNT|addr_out\(29) & !\PROGCOUNT|addr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(31),
	datac => \PROGCOUNT|addr_out\(29),
	datad => \PROGCOUNT|addr_out\(30),
	combout => \MEM|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y17_N22
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(17) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(17))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(17),
	datab => \PROGCOUNT|addr_out\(17),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(17));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[20]~I\ : cycloneii_io
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
	padio => ww_MemDir(20),
	combout => \MemDir~combout\(20));

-- Location: LCCOMB_X45_Y17_N16
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(20) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(20)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(20),
	datac => \MemDir~combout\(20),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(20));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[19]~I\ : cycloneii_io
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
	padio => ww_MemDir(19),
	combout => \MemDir~combout\(19));

-- Location: LCCOMB_X45_Y17_N30
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(19) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(19)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(19),
	datac => \MemDir~combout\(19),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(19));

-- Location: LCCOMB_X45_Y17_N4
\MEM|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~0_combout\ = (!\PROGCOUNT|addr_out\(18) & (!\PROGCOUNT|addr_out\(17) & (!\PROGCOUNT|addr_out\(20) & !\PROGCOUNT|addr_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(18),
	datab => \PROGCOUNT|addr_out\(17),
	datac => \PROGCOUNT|addr_out\(20),
	datad => \PROGCOUNT|addr_out\(19),
	combout => \MEM|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y18_N14
\MEM|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~4_combout\ = (\MEM|Equal0~1_combout\ & (\MEM|Equal0~2_combout\ & (\MEM|Equal0~3_combout\ & \MEM|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal0~1_combout\,
	datab => \MEM|Equal0~2_combout\,
	datac => \MEM|Equal0~3_combout\,
	datad => \MEM|Equal0~0_combout\,
	combout => \MEM|Equal0~4_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[7]~I\ : cycloneii_io
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
	padio => ww_MemDir(7),
	combout => \MemDir~combout\(7));

-- Location: LCCOMB_X43_Y18_N22
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(7) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(7)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(7),
	datac => \MemDir~combout\(7),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(7));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[3]~I\ : cycloneii_io
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
	padio => ww_MemDir(3),
	combout => \MemDir~combout\(3));

-- Location: LCCOMB_X44_Y17_N0
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(3) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(3)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(3),
	datac => \MemDir~combout\(3),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(3));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[6]~I\ : cycloneii_io
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
	padio => ww_MemDir(6),
	combout => \MemDir~combout\(6));

-- Location: LCCOMB_X45_Y18_N18
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(6) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(6)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(6),
	datac => \MemDir~combout\(6),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(6));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[5]~I\ : cycloneii_io
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
	padio => ww_MemDir(5),
	combout => \MemDir~combout\(5));

-- Location: LCCOMB_X44_Y17_N2
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(5) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(5)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(5),
	datac => \MemDir~combout\(5),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(5));

-- Location: LCCOMB_X44_Y18_N0
\MEM|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~6_combout\ = (!\PROGCOUNT|addr_out\(4) & (!\PROGCOUNT|addr_out\(3) & (!\PROGCOUNT|addr_out\(6) & !\PROGCOUNT|addr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(4),
	datab => \PROGCOUNT|addr_out\(3),
	datac => \PROGCOUNT|addr_out\(6),
	datad => \PROGCOUNT|addr_out\(5),
	combout => \MEM|Equal0~6_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[16]~I\ : cycloneii_io
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
	padio => ww_MemDir(16),
	combout => \MemDir~combout\(16));

-- Location: LCCOMB_X45_Y17_N28
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(16) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(16)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(16),
	datac => \MemDir~combout\(16),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(16));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[14]~I\ : cycloneii_io
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
	padio => ww_MemDir(14),
	combout => \MemDir~combout\(14));

-- Location: LCCOMB_X45_Y17_N24
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(14) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(14))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(14),
	datac => \PROGCOUNT|addr_out\(14),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X45_Y17_N26
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(2) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(2))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(2),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(2));

-- Location: LCCOMB_X45_Y17_N8
\MEM|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~5_combout\ = (!\PROGCOUNT|addr_out\(13) & (!\PROGCOUNT|addr_out\(16) & (!\PROGCOUNT|addr_out\(14) & !\PROGCOUNT|addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(13),
	datab => \PROGCOUNT|addr_out\(16),
	datac => \PROGCOUNT|addr_out\(14),
	datad => \PROGCOUNT|addr_out\(2),
	combout => \MEM|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y18_N2
\MEM|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~7_combout\ = (!\PROGCOUNT|addr_out\(8) & (!\PROGCOUNT|addr_out\(7) & (\MEM|Equal0~6_combout\ & \MEM|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(8),
	datab => \PROGCOUNT|addr_out\(7),
	datac => \MEM|Equal0~6_combout\,
	datad => \MEM|Equal0~5_combout\,
	combout => \MEM|Equal0~7_combout\);

-- Location: LCCOMB_X44_Y18_N8
\MEM|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~8_combout\ = (\PROGCOUNT|addr_out\(1) & (\ALUCOMP|LessThan0~15_combout\ & (\MEM|Equal0~4_combout\ & \MEM|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(1),
	datab => \ALUCOMP|LessThan0~15_combout\,
	datac => \MEM|Equal0~4_combout\,
	datad => \MEM|Equal0~7_combout\,
	combout => \MEM|Equal0~8_combout\);

-- Location: LCCOMB_X44_Y18_N30
\MEM|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal2~1_combout\ = (\MEM|Equal2~0_combout\ & (\ALUCOMP|LessThan0~15_combout\ & (\MEM|Equal0~4_combout\ & \MEM|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal2~0_combout\,
	datab => \ALUCOMP|LessThan0~15_combout\,
	datac => \MEM|Equal0~4_combout\,
	datad => \MEM|Equal0~7_combout\,
	combout => \MEM|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y18_N12
\MEM|data_out[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[3]~0_combout\ = (\MEM|Equal0~8_combout\) # (\MEM|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|Equal0~8_combout\,
	datad => \MEM|Equal2~1_combout\,
	combout => \MEM|data_out[3]~0_combout\);

-- Location: LCCOMB_X44_Y18_N16
\INSTREG|imm_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(4) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((!\MEM|data_out[3]~0_combout\))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\INSTREG|imm_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(4),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \MEM|data_out[3]~0_combout\,
	combout => \INSTREG|imm_out\(4));

-- Location: LCCOMB_X43_Y16_N8
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(0) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(0))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(0),
	datac => \PROGCOUNT|addr_out\(0),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X44_Y18_N18
\MEM|data_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[1]~1_combout\ = (\MEM|Equal2~1_combout\) # ((!\PROGCOUNT|addr_out\(0) & \MEM|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \MEM|Equal0~8_combout\,
	datad => \MEM|Equal2~1_combout\,
	combout => \MEM|data_out[1]~1_combout\);

-- Location: LCCOMB_X44_Y18_N10
\INSTREG|imm_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(1) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((!\MEM|data_out[1]~1_combout\))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\INSTREG|imm_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \MEM|data_out[1]~1_combout\,
	combout => \INSTREG|imm_out\(1));

-- Location: LCCOMB_X44_Y18_N28
\MEM|data_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[0]~2_combout\ = (\MEM|Equal2~1_combout\) # ((\PROGCOUNT|addr_out\(0) & \MEM|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \MEM|Equal0~8_combout\,
	datad => \MEM|Equal2~1_combout\,
	combout => \MEM|data_out[0]~2_combout\);

-- Location: LCCOMB_X44_Y18_N20
\INSTREG|imm_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(0) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((!\MEM|data_out[0]~2_combout\))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\INSTREG|imm_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(0),
	datac => \CONTROLU|Equal0~0clkctrl_outclk\,
	datad => \MEM|data_out[0]~2_combout\,
	combout => \INSTREG|imm_out\(0));

-- Location: LCCOMB_X44_Y16_N16
\ALUCOMP|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~0_combout\ = (\CONTROLU|Equal2~0_combout\ & ((\INSTREG|imm_out\(4) & (\INSTREG|imm_out\(1))) # (!\INSTREG|imm_out\(4) & (!\INSTREG|imm_out\(1) & \INSTREG|imm_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal2~0_combout\,
	datab => \INSTREG|imm_out\(4),
	datac => \INSTREG|imm_out\(1),
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux18~0_combout\);

-- Location: LCCOMB_X43_Y16_N4
\MUXA|salida[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~7_combout\ = (\PROGCOUNT|addr_out\(0) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[0]~7_combout\);

-- Location: LCCOMB_X44_Y17_N26
\CONTROLU|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal2~0_combout\ = (\NEWST|CS\(1) & !\NEWST|CS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal2~0_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[13]~I\ : cycloneii_io
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
	padio => ww_MemDir(13),
	combout => \MemDir~combout\(13));

-- Location: LCCOMB_X45_Y17_N14
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(13) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(13))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(13),
	datac => \PROGCOUNT|addr_out\(13),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(13));

-- Location: LCCOMB_X45_Y17_N18
\ALUCOMP|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~16_combout\ = (\PROGCOUNT|addr_out\(13) & ((\PROGCOUNT|addr_out\(14)) # (!\PROGCOUNT|addr_out\(16)))) # (!\PROGCOUNT|addr_out\(13) & (\PROGCOUNT|addr_out\(14) & !\PROGCOUNT|addr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(13),
	datac => \PROGCOUNT|addr_out\(14),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \ALUCOMP|LessThan0~16_combout\);

-- Location: LCCOMB_X44_Y18_N6
\INSTREG|imm_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(14) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MEM|Equal2~1_combout\))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\INSTREG|imm_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(14),
	datab => \MEM|Equal2~1_combout\,
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \INSTREG|imm_out\(14));

-- Location: LCCOMB_X44_Y17_N12
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\NEWST|CS\(0) & (\INSTREG|imm_out\(14) & !\NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCCOMB_X44_Y17_N10
\ALUCOMP|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~17_combout\ = (\PROGCOUNT|addr_out\(16) & ((\PROGCOUNT|addr_out\(15)) # ((\ALUCOMP|LessThan0~16_combout\) # (!\MUXB|Mux17~0_combout\)))) # (!\PROGCOUNT|addr_out\(16) & (((\ALUCOMP|LessThan0~16_combout\ & !\MUXB|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(15),
	datab => \PROGCOUNT|addr_out\(16),
	datac => \ALUCOMP|LessThan0~16_combout\,
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|LessThan0~17_combout\);

-- Location: LCCOMB_X44_Y17_N4
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(8) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(8))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(8),
	datac => \PROGCOUNT|addr_out\(8),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X43_Y17_N0
\MUXA|salida[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~0_combout\ = (\PROGCOUNT|addr_out\(8) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(8),
	combout => \MUXA|salida[8]~0_combout\);

-- Location: LCCOMB_X43_Y17_N2
\MUXA|salida[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~1_combout\ = (\PROGCOUNT|addr_out\(7)) # ((\NEWST|CS\(1) & !\NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(7),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[7]~1_combout\);

-- Location: LCCOMB_X43_Y17_N14
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (\INSTREG|imm_out\(4) & (\NEWST|CS\(0) & !\NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(4),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCCOMB_X45_Y18_N16
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(4) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(4))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(4),
	datac => \PROGCOUNT|addr_out\(4),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X44_Y17_N20
\MUXA|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~4_combout\ = (\PROGCOUNT|addr_out\(4) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(4),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[4]~4_combout\);

-- Location: LCCOMB_X43_Y17_N8
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (\INSTREG|imm_out\(1) & (!\NEWST|CS\(1) & \NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(1),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCCOMB_X44_Y17_N18
\MUXA|salida[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~6_combout\ = (\PROGCOUNT|addr_out\(2) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(2),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[2]~6_combout\);

-- Location: LCCOMB_X43_Y17_N18
\ALUCOMP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~1_cout\ = CARRY((\MUXB|Mux29~0_combout\ & !\MUXA|salida[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux29~0_combout\,
	datab => \MUXA|salida[2]~6_combout\,
	datad => VCC,
	cout => \ALUCOMP|LessThan0~1_cout\);

-- Location: LCCOMB_X43_Y17_N20
\ALUCOMP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~3_cout\ = CARRY((\MUXA|salida[3]~5_combout\ & ((!\ALUCOMP|LessThan0~1_cout\) # (!\MUXB|Mux28~0_combout\))) # (!\MUXA|salida[3]~5_combout\ & (!\MUXB|Mux28~0_combout\ & !\ALUCOMP|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~5_combout\,
	datab => \MUXB|Mux28~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~1_cout\,
	cout => \ALUCOMP|LessThan0~3_cout\);

-- Location: LCCOMB_X43_Y17_N22
\ALUCOMP|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~5_cout\ = CARRY((\MUXB|Mux25~0_combout\ & ((!\ALUCOMP|LessThan0~3_cout\) # (!\MUXA|salida[4]~4_combout\))) # (!\MUXB|Mux25~0_combout\ & (!\MUXA|salida[4]~4_combout\ & !\ALUCOMP|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[4]~4_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~3_cout\,
	cout => \ALUCOMP|LessThan0~5_cout\);

-- Location: LCCOMB_X43_Y17_N24
\ALUCOMP|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~7_cout\ = CARRY((\MUXA|salida[5]~3_combout\ & ((!\ALUCOMP|LessThan0~5_cout\) # (!\MUXB|Mux25~0_combout\))) # (!\MUXA|salida[5]~3_combout\ & (!\MUXB|Mux25~0_combout\ & !\ALUCOMP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~3_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~5_cout\,
	cout => \ALUCOMP|LessThan0~7_cout\);

-- Location: LCCOMB_X43_Y17_N26
\ALUCOMP|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~9_cout\ = CARRY((\MUXA|salida[6]~2_combout\ & (\MUXB|Mux25~0_combout\ & !\ALUCOMP|LessThan0~7_cout\)) # (!\MUXA|salida[6]~2_combout\ & ((\MUXB|Mux25~0_combout\) # (!\ALUCOMP|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~2_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~7_cout\,
	cout => \ALUCOMP|LessThan0~9_cout\);

-- Location: LCCOMB_X43_Y17_N28
\ALUCOMP|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~11_cout\ = CARRY((\MUXB|Mux24~0_combout\ & (\MUXA|salida[7]~1_combout\ & !\ALUCOMP|LessThan0~9_cout\)) # (!\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~1_combout\) # (!\ALUCOMP|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~9_cout\,
	cout => \ALUCOMP|LessThan0~11_cout\);

-- Location: LCCOMB_X43_Y17_N30
\ALUCOMP|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~12_combout\ = (\NEWST|CS\(1) & ((!\MUXA|salida[8]~0_combout\) # (!\ALUCOMP|LessThan0~11_cout\))) # (!\NEWST|CS\(1) & (!\ALUCOMP|LessThan0~11_cout\ & !\MUXA|salida[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \MUXA|salida[8]~0_combout\,
	cin => \ALUCOMP|LessThan0~11_cout\,
	combout => \ALUCOMP|LessThan0~12_combout\);

-- Location: LCCOMB_X43_Y17_N4
\ALUCOMP|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~18_combout\ = (\MUXB|Mux17~0_combout\ & (((\ALUCOMP|LessThan0~15_combout\ & \ALUCOMP|LessThan0~12_combout\)) # (!\ALUCOMP|LessThan0~17_combout\))) # (!\MUXB|Mux17~0_combout\ & (\ALUCOMP|LessThan0~15_combout\ & 
-- (!\ALUCOMP|LessThan0~17_combout\ & \ALUCOMP|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux17~0_combout\,
	datab => \ALUCOMP|LessThan0~15_combout\,
	datac => \ALUCOMP|LessThan0~17_combout\,
	datad => \ALUCOMP|LessThan0~12_combout\,
	combout => \ALUCOMP|LessThan0~18_combout\);

-- Location: LCCOMB_X43_Y17_N6
\ALUCOMP|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~19_combout\ = (\MEM|Equal0~4_combout\ & ((\ALUCOMP|LessThan0~18_combout\) # ((\CONTROLU|Equal2~0_combout\ & \ALUCOMP|LessThan0~12_combout\)))) # (!\MEM|Equal0~4_combout\ & (\CONTROLU|Equal2~0_combout\ & 
-- ((\ALUCOMP|LessThan0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal0~4_combout\,
	datab => \CONTROLU|Equal2~0_combout\,
	datac => \ALUCOMP|LessThan0~18_combout\,
	datad => \ALUCOMP|LessThan0~12_combout\,
	combout => \ALUCOMP|LessThan0~19_combout\);

-- Location: LCCOMB_X44_Y17_N16
\ALUCONTRL|op~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op~1_combout\ = (!\NEWST|CS\(0) & (\NEWST|CS\(1) & \INSTREG|imm_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \INSTREG|imm_out\(1),
	combout => \ALUCONTRL|op~1_combout\);

-- Location: LCCOMB_X43_Y16_N16
\ALUCOMP|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~3_cout\ = CARRY((\INSTREG|imm_out\(1) & \CONTROLU|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datab => \CONTROLU|Equal2~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|Add0~3_cout\);

-- Location: LCCOMB_X43_Y16_N18
\ALUCOMP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~4_combout\ = (\MUXA|salida[0]~7_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~3_cout\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~3_cout\)))) # (!\MUXA|salida[0]~7_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~3_cout\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~3_cout\) # (GND)))))
-- \ALUCOMP|Add0~5\ = CARRY((\MUXA|salida[0]~7_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~3_cout\)) # (!\MUXA|salida[0]~7_combout\ & ((!\ALUCOMP|Add0~3_cout\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~7_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~3_cout\,
	combout => \ALUCOMP|Add0~4_combout\,
	cout => \ALUCOMP|Add0~5\);

-- Location: LCCOMB_X42_Y16_N28
\ALUCOMP|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~0_combout\ = (\CONTROLU|Equal2~0_combout\ & ((\INSTREG|imm_out\(4)) # ((!\INSTREG|imm_out\(0) & \ALUCOMP|Add0~4_combout\)))) # (!\CONTROLU|Equal2~0_combout\ & (((\ALUCOMP|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal2~0_combout\,
	datab => \INSTREG|imm_out\(4),
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCOMP|Add0~4_combout\,
	combout => \ALUCOMP|Mux31~0_combout\);

-- Location: LCCOMB_X42_Y16_N18
\ALUCOMP|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux31~0_combout\ & (\MUXA|salida[0]~7_combout\)) # (!\ALUCOMP|Mux31~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[0]~7_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux31~1_combout\);

-- Location: LCCOMB_X42_Y16_N16
\ALUCOMP|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~2_combout\ = (\ALUCOMP|Mux18~0_combout\) # (\ALUCOMP|Mux31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux31~1_combout\,
	combout => \ALUCOMP|Mux31~2_combout\);

-- Location: LCCOMB_X43_Y16_N20
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = ((\MUXA|salida[1]~8_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~5\)))) # (GND)
-- \ALUCOMP|Add0~7\ = CARRY((\MUXA|salida[1]~8_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~5\))) # (!\MUXA|salida[1]~8_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~8_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~5\,
	combout => \ALUCOMP|Add0~6_combout\,
	cout => \ALUCOMP|Add0~7\);

-- Location: LCCOMB_X42_Y15_N30
\ALUCOMP|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~0_combout\ = (\CONTROLU|Equal2~0_combout\ & ((\INSTREG|imm_out\(4)) # ((!\INSTREG|imm_out\(0) & \ALUCOMP|Add0~6_combout\)))) # (!\CONTROLU|Equal2~0_combout\ & (((\ALUCOMP|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal2~0_combout\,
	datab => \INSTREG|imm_out\(0),
	datac => \INSTREG|imm_out\(4),
	datad => \ALUCOMP|Add0~6_combout\,
	combout => \ALUCOMP|Mux30~0_combout\);

-- Location: LCCOMB_X42_Y15_N16
\ALUCONTRL|op[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op[0]~0_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(0) & ((\INSTREG|imm_out\(4)) # (\INSTREG|imm_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(4),
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCONTRL|op[0]~0_combout\);

-- Location: LCCOMB_X42_Y15_N12
\ALUCOMP|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~1_combout\ = (\ALUCOMP|Mux30~0_combout\ & ((\MUXA|salida[1]~8_combout\) # ((!\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCOMP|Mux30~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|LessThan0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~8_combout\,
	datab => \ALUCOMP|Mux30~0_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux30~1_combout\);

-- Location: LCCOMB_X42_Y15_N18
\ALUCOMP|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~2_combout\ = (\ALUCOMP|Mux18~0_combout\) # (\ALUCOMP|Mux30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux30~1_combout\,
	combout => \ALUCOMP|Mux30~2_combout\);

-- Location: LCCOMB_X43_Y18_N28
\ALUCONTRL|op[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op\(1) = (!\NEWST|CS\(0) & (\INSTREG|imm_out\(4) & \NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(4),
	datad => \NEWST|CS\(1),
	combout => \ALUCONTRL|op\(1));

-- Location: LCCOMB_X43_Y17_N10
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (!\NEWST|CS\(1) & ((\INSTREG|imm_out\(0)) # (!\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(0),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X42_Y16_N14
\ALUCOMP|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[2]~6_combout\) # ((\MUXB|Mux29~0_combout\) # (!\ALUCONTRL|op\(1))))) # (!\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[2]~6_combout\ & (\ALUCONTRL|op\(1) & \MUXB|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[2]~6_combout\,
	datac => \ALUCONTRL|op\(1),
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Mux29~0_combout\);

-- Location: LCCOMB_X43_Y16_N22
\ALUCOMP|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~9_combout\ = (\ALUCOMP|Add0~8_combout\ & ((\MUXA|salida[2]~6_combout\ & (\ALUCOMP|Add0~7\ & VCC)) # (!\MUXA|salida[2]~6_combout\ & (!\ALUCOMP|Add0~7\)))) # (!\ALUCOMP|Add0~8_combout\ & ((\MUXA|salida[2]~6_combout\ & (!\ALUCOMP|Add0~7\)) # 
-- (!\MUXA|salida[2]~6_combout\ & ((\ALUCOMP|Add0~7\) # (GND)))))
-- \ALUCOMP|Add0~10\ = CARRY((\ALUCOMP|Add0~8_combout\ & (!\MUXA|salida[2]~6_combout\ & !\ALUCOMP|Add0~7\)) # (!\ALUCOMP|Add0~8_combout\ & ((!\ALUCOMP|Add0~7\) # (!\MUXA|salida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~8_combout\,
	datab => \MUXA|salida[2]~6_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~7\,
	combout => \ALUCOMP|Add0~9_combout\,
	cout => \ALUCOMP|Add0~10\);

-- Location: LCCOMB_X42_Y16_N24
\ALUCOMP|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux29~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux29~0_combout\ & (\ALUCOMP|LessThan0~19_combout\)) # (!\ALUCOMP|Mux29~0_combout\ & ((\ALUCOMP|Add0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux29~0_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Add0~9_combout\,
	combout => \ALUCOMP|Mux29~1_combout\);

-- Location: LCCOMB_X42_Y16_N26
\ALUCOMP|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (((!\MUXB|Mux29~0_combout\)) # (!\MUXA|salida[2]~6_combout\))) # (!\ALUCOMP|Mux18~0_combout\ & (((\ALUCOMP|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~6_combout\,
	datab => \ALUCOMP|Mux18~0_combout\,
	datac => \ALUCOMP|Mux29~1_combout\,
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Mux29~2_combout\);

-- Location: LCCOMB_X42_Y15_N20
\ALUCOMP|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~0_combout\ = (\INSTREG|imm_out\(1) & (\PROGCOUNT|addr_out\(3) & (\NEWST|CS\(0) & !\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datab => \PROGCOUNT|addr_out\(3),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \ALUCOMP|temp~0_combout\);

-- Location: LCCOMB_X42_Y15_N24
\ALUCOMP|temp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~1_combout\ = (\NEWST|CS\(1) & (\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(3)))) # (!\NEWST|CS\(1) & ((\PROGCOUNT|addr_out\(3)) # ((\NEWST|CS\(0) & \INSTREG|imm_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(3),
	datad => \INSTREG|imm_out\(1),
	combout => \ALUCOMP|temp~1_combout\);

-- Location: LCCOMB_X44_Y17_N28
\MUXA|salida[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~5_combout\ = (\PROGCOUNT|addr_out\(3) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(3),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[3]~5_combout\);

-- Location: LCCOMB_X43_Y16_N24
\ALUCOMP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~12_combout\ = ((\ALUCOMP|Add0~11_combout\ $ (\MUXA|salida[3]~5_combout\ $ (!\ALUCOMP|Add0~10\)))) # (GND)
-- \ALUCOMP|Add0~13\ = CARRY((\ALUCOMP|Add0~11_combout\ & ((\MUXA|salida[3]~5_combout\) # (!\ALUCOMP|Add0~10\))) # (!\ALUCOMP|Add0~11_combout\ & (\MUXA|salida[3]~5_combout\ & !\ALUCOMP|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~11_combout\,
	datab => \MUXA|salida[3]~5_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~10\,
	combout => \ALUCOMP|Add0~12_combout\,
	cout => \ALUCOMP|Add0~13\);

-- Location: LCCOMB_X42_Y15_N14
\ALUCOMP|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~0_combout\ = (\ALUCONTRL|op\(1) & ((\ALUCOMP|temp~0_combout\) # ((\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCONTRL|op\(1) & (((!\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~0_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Add0~12_combout\,
	combout => \ALUCOMP|Mux28~0_combout\);

-- Location: LCCOMB_X42_Y15_N6
\ALUCOMP|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux28~0_combout\ & (\ALUCOMP|temp~1_combout\)) # (!\ALUCOMP|Mux28~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|temp~1_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux28~1_combout\);

-- Location: LCCOMB_X42_Y15_N8
\ALUCOMP|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (!\ALUCOMP|temp~0_combout\)) # (!\ALUCOMP|Mux18~0_combout\ & ((\ALUCOMP|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|temp~0_combout\,
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux28~1_combout\,
	combout => \ALUCOMP|Mux28~2_combout\);

-- Location: LCCOMB_X43_Y16_N0
\ALUCOMP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~14_combout\ = (\NEWST|CS\(0) & (((\INSTREG|imm_out\(4) & !\NEWST|CS\(1))))) # (!\NEWST|CS\(0) & (\INSTREG|imm_out\(1) & ((\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(1),
	datab => \INSTREG|imm_out\(4),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \ALUCOMP|Add0~14_combout\);

-- Location: LCCOMB_X43_Y16_N26
\ALUCOMP|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~15_combout\ = (\MUXA|salida[4]~4_combout\ & ((\ALUCOMP|Add0~14_combout\ & (\ALUCOMP|Add0~13\ & VCC)) # (!\ALUCOMP|Add0~14_combout\ & (!\ALUCOMP|Add0~13\)))) # (!\MUXA|salida[4]~4_combout\ & ((\ALUCOMP|Add0~14_combout\ & (!\ALUCOMP|Add0~13\)) 
-- # (!\ALUCOMP|Add0~14_combout\ & ((\ALUCOMP|Add0~13\) # (GND)))))
-- \ALUCOMP|Add0~16\ = CARRY((\MUXA|salida[4]~4_combout\ & (!\ALUCOMP|Add0~14_combout\ & !\ALUCOMP|Add0~13\)) # (!\MUXA|salida[4]~4_combout\ & ((!\ALUCOMP|Add0~13\) # (!\ALUCOMP|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~4_combout\,
	datab => \ALUCOMP|Add0~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~13\,
	combout => \ALUCOMP|Add0~15_combout\,
	cout => \ALUCOMP|Add0~16\);

-- Location: LCCOMB_X42_Y16_N30
\ALUCOMP|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~1_combout\ = (\ALUCOMP|Mux27~0_combout\ & ((\ALUCONTRL|op\(1)) # ((\ALUCOMP|LessThan0~19_combout\)))) # (!\ALUCOMP|Mux27~0_combout\ & (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux27~0_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Add0~15_combout\,
	combout => \ALUCOMP|Mux27~1_combout\);

-- Location: LCCOMB_X42_Y16_N8
\ALUCOMP|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (((!\MUXA|salida[4]~4_combout\)) # (!\MUXB|Mux25~0_combout\))) # (!\ALUCOMP|Mux18~0_combout\ & (((\ALUCOMP|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \ALUCOMP|Mux18~0_combout\,
	datac => \MUXA|salida[4]~4_combout\,
	datad => \ALUCOMP|Mux27~1_combout\,
	combout => \ALUCOMP|Mux27~2_combout\);

-- Location: LCCOMB_X44_Y16_N18
\ALUCOMP|temp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~2_combout\ = (\PROGCOUNT|addr_out\(5) & (!\NEWST|CS\(1) & (\NEWST|CS\(0) & \INSTREG|imm_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \INSTREG|imm_out\(4),
	combout => \ALUCOMP|temp~2_combout\);

-- Location: LCCOMB_X44_Y16_N30
\ALUCOMP|temp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~3_combout\ = (\PROGCOUNT|addr_out\(5) & (((\NEWST|CS\(0))) # (!\NEWST|CS\(1)))) # (!\PROGCOUNT|addr_out\(5) & (!\NEWST|CS\(1) & (\NEWST|CS\(0) & \INSTREG|imm_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \INSTREG|imm_out\(4),
	combout => \ALUCOMP|temp~3_combout\);

-- Location: LCCOMB_X44_Y16_N0
\ALUCOMP|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~1_combout\ = (\ALUCOMP|Mux26~0_combout\ & ((\ALUCOMP|temp~3_combout\) # ((!\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCOMP|Mux26~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|LessThan0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~0_combout\,
	datab => \ALUCOMP|temp~3_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux26~1_combout\);

-- Location: LCCOMB_X44_Y16_N10
\ALUCOMP|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (!\ALUCOMP|temp~2_combout\)) # (!\ALUCOMP|Mux18~0_combout\ & ((\ALUCOMP|Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|temp~2_combout\,
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux26~1_combout\,
	combout => \ALUCOMP|Mux26~2_combout\);

-- Location: LCCOMB_X44_Y17_N22
\MUXA|salida[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~2_combout\ = (\PROGCOUNT|addr_out\(6) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(6),
	combout => \MUXA|salida[6]~2_combout\);

-- Location: LCCOMB_X43_Y16_N30
\ALUCOMP|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~19_combout\ = (\ALUCOMP|Add0~14_combout\ & ((\MUXA|salida[6]~2_combout\ & (\ALUCOMP|Add0~18\ & VCC)) # (!\MUXA|salida[6]~2_combout\ & (!\ALUCOMP|Add0~18\)))) # (!\ALUCOMP|Add0~14_combout\ & ((\MUXA|salida[6]~2_combout\ & 
-- (!\ALUCOMP|Add0~18\)) # (!\MUXA|salida[6]~2_combout\ & ((\ALUCOMP|Add0~18\) # (GND)))))
-- \ALUCOMP|Add0~20\ = CARRY((\ALUCOMP|Add0~14_combout\ & (!\MUXA|salida[6]~2_combout\ & !\ALUCOMP|Add0~18\)) # (!\ALUCOMP|Add0~14_combout\ & ((!\ALUCOMP|Add0~18\) # (!\MUXA|salida[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~14_combout\,
	datab => \MUXA|salida[6]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~18\,
	combout => \ALUCOMP|Add0~19_combout\,
	cout => \ALUCOMP|Add0~20\);

-- Location: LCCOMB_X42_Y16_N0
\ALUCOMP|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~1_combout\ = (\ALUCOMP|Mux25~0_combout\ & ((\ALUCONTRL|op\(1)) # ((\ALUCOMP|LessThan0~19_combout\)))) # (!\ALUCOMP|Mux25~0_combout\ & (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~0_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Add0~19_combout\,
	combout => \ALUCOMP|Mux25~1_combout\);

-- Location: LCCOMB_X42_Y16_N22
\ALUCOMP|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (((!\MUXB|Mux25~0_combout\)) # (!\MUXA|salida[6]~2_combout\))) # (!\ALUCOMP|Mux18~0_combout\ & (((\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~2_combout\,
	datab => \ALUCOMP|Mux18~0_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCOMP|Mux25~1_combout\,
	combout => \ALUCOMP|Mux25~2_combout\);

-- Location: LCCOMB_X44_Y16_N12
\ALUCOMP|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~1_combout\ = (\NEWST|CS\(1) & (((!\NEWST|CS\(0) & !\PROGCOUNT|addr_out\(7))))) # (!\NEWST|CS\(1) & (\INSTREG|imm_out\(5) & (\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(5),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(7),
	combout => \ALUCOMP|Mux24~1_combout\);

-- Location: LCCOMB_X42_Y16_N10
\ALUCOMP|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~2_combout\ = (\PROGCOUNT|addr_out\(7) & ((\ALUCOMP|Mux24~1_combout\) # ((\ALUCONTRL|op[0]~0_combout\ & !\ALUCOMP|Mux18~0_combout\)))) # (!\PROGCOUNT|addr_out\(7) & (\ALUCONTRL|op[0]~0_combout\ & (!\ALUCOMP|Mux18~0_combout\ & 
-- \ALUCOMP|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux18~0_combout\,
	datac => \PROGCOUNT|addr_out\(7),
	datad => \ALUCOMP|Mux24~1_combout\,
	combout => \ALUCOMP|Mux24~2_combout\);

-- Location: LCCOMB_X43_Y15_N0
\ALUCOMP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~22_combout\ = ((\ALUCOMP|Add0~21_combout\ $ (\MUXA|salida[7]~1_combout\ $ (!\ALUCOMP|Add0~20\)))) # (GND)
-- \ALUCOMP|Add0~23\ = CARRY((\ALUCOMP|Add0~21_combout\ & ((\MUXA|salida[7]~1_combout\) # (!\ALUCOMP|Add0~20\))) # (!\ALUCOMP|Add0~21_combout\ & (\MUXA|salida[7]~1_combout\ & !\ALUCOMP|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~21_combout\,
	datab => \MUXA|salida[7]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~20\,
	combout => \ALUCOMP|Add0~22_combout\,
	cout => \ALUCOMP|Add0~23\);

-- Location: LCCOMB_X42_Y16_N12
\ALUCOMP|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|LessThan0~19_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Add0~22_combout\,
	combout => \ALUCOMP|Mux24~0_combout\);

-- Location: LCCOMB_X42_Y16_N4
\ALUCOMP|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~3_combout\ = (\ALUCOMP|Mux18~0_combout\ & (!\ALUCOMP|Mux24~2_combout\)) # (!\ALUCOMP|Mux18~0_combout\ & ((\ALUCONTRL|op\(1) & (\ALUCOMP|Mux24~2_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux24~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~2_combout\,
	datab => \ALUCOMP|Mux18~0_combout\,
	datac => \ALUCONTRL|op\(1),
	datad => \ALUCOMP|Mux24~0_combout\,
	combout => \ALUCOMP|Mux24~3_combout\);

-- Location: LCCOMB_X44_Y16_N22
\ALUCOMP|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~0_combout\ = (\MUXA|salida[8]~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\NEWST|CS\(1) & \ALUCONTRL|op\(1))))) # (!\MUXA|salida[8]~0_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\NEWST|CS\(1)) # (!\ALUCONTRL|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~0_combout\,
	datab => \NEWST|CS\(1),
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCONTRL|op\(1),
	combout => \ALUCOMP|Mux23~0_combout\);

-- Location: LCCOMB_X44_Y15_N8
\ALUCOMP|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~24_combout\ = ((\INSTREG|imm_out\(1) & !\NEWST|CS\(0))) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \INSTREG|imm_out\(1),
	datad => \NEWST|CS\(0),
	combout => \ALUCOMP|Add0~24_combout\);

-- Location: LCCOMB_X43_Y15_N2
\ALUCOMP|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~25_combout\ = (\MUXA|salida[8]~0_combout\ & ((\ALUCOMP|Add0~24_combout\ & (!\ALUCOMP|Add0~23\)) # (!\ALUCOMP|Add0~24_combout\ & (\ALUCOMP|Add0~23\ & VCC)))) # (!\MUXA|salida[8]~0_combout\ & ((\ALUCOMP|Add0~24_combout\ & ((\ALUCOMP|Add0~23\) 
-- # (GND))) # (!\ALUCOMP|Add0~24_combout\ & (!\ALUCOMP|Add0~23\))))
-- \ALUCOMP|Add0~26\ = CARRY((\MUXA|salida[8]~0_combout\ & (\ALUCOMP|Add0~24_combout\ & !\ALUCOMP|Add0~23\)) # (!\MUXA|salida[8]~0_combout\ & ((\ALUCOMP|Add0~24_combout\) # (!\ALUCOMP|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~0_combout\,
	datab => \ALUCOMP|Add0~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~23\,
	combout => \ALUCOMP|Add0~25_combout\,
	cout => \ALUCOMP|Add0~26\);

-- Location: LCCOMB_X44_Y16_N28
\ALUCOMP|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux23~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux23~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))) # (!\ALUCOMP|Mux23~0_combout\ & (\ALUCOMP|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux23~0_combout\,
	datac => \ALUCOMP|Add0~25_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux23~1_combout\);

-- Location: LCCOMB_X44_Y16_N26
\ALUCOMP|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (((!\NEWST|CS\(1))) # (!\MUXA|salida[8]~0_combout\))) # (!\ALUCOMP|Mux18~0_combout\ & (((\ALUCOMP|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~0_combout\,
	datab => \NEWST|CS\(1),
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux23~1_combout\,
	combout => \ALUCOMP|Mux23~2_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[9]~I\ : cycloneii_io
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
	padio => ww_MemDir(9),
	combout => \MemDir~combout\(9));

-- Location: LCCOMB_X43_Y18_N24
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(9) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(9))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(9),
	datac => \PROGCOUNT|addr_out\(9),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X44_Y17_N24
\MUXA|salida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~9_combout\ = (\PROGCOUNT|addr_out\(9) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(9),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[9]~9_combout\);

-- Location: LCCOMB_X43_Y18_N6
\ALUCOMP|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~0_combout\ = (\NEWST|CS\(1) & (!\INSTREG|imm_out\(1) & (\INSTREG|imm_out\(4) & !\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \INSTREG|imm_out\(1),
	datac => \INSTREG|imm_out\(4),
	datad => \NEWST|CS\(0),
	combout => \ALUCOMP|Mux21~0_combout\);

-- Location: LCCOMB_X42_Y17_N8
\ALUCOMP|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[9]~9_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCONTRL|op~1_combout\ & \ALUCOMP|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[9]~9_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \ALUCOMP|Mux21~0_combout\,
	combout => \ALUCOMP|Mux22~0_combout\);

-- Location: LCCOMB_X43_Y17_N12
\ALUCOMP|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~74_combout\ = (((\NEWST|CS\(0)) # (\ALUCOMP|LessThan0~19_combout\)) # (!\INSTREG|imm_out\(1))) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \INSTREG|imm_out\(1),
	datac => \NEWST|CS\(0),
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Add0~74_combout\);

-- Location: LCCOMB_X43_Y15_N4
\ALUCOMP|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~27_combout\ = ((\MUXA|salida[9]~9_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~26\)))) # (GND)
-- \ALUCOMP|Add0~28\ = CARRY((\MUXA|salida[9]~9_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~26\))) # (!\MUXA|salida[9]~9_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~9_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~26\,
	combout => \ALUCOMP|Add0~27_combout\,
	cout => \ALUCOMP|Add0~28\);

-- Location: LCCOMB_X42_Y17_N2
\ALUCOMP|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux22~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux22~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux22~0_combout\ & ((\ALUCOMP|Add0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux22~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~27_combout\,
	combout => \ALUCOMP|Mux22~1_combout\);

-- Location: LCCOMB_X43_Y18_N12
\MUXA|salida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~10_combout\ = (\PROGCOUNT|addr_out\(10) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(10),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[10]~10_combout\);

-- Location: LCCOMB_X42_Y17_N4
\ALUCOMP|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\MUXA|salida[10]~10_combout\)) # (!\ALUCOMP|Mux21~0_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Mux21~0_combout\ & (\ALUCONTRL|op~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \MUXA|salida[10]~10_combout\,
	combout => \ALUCOMP|Mux21~1_combout\);

-- Location: LCCOMB_X43_Y15_N6
\ALUCOMP|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~29_combout\ = (\MUXA|salida[10]~10_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~28\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~28\)))) # (!\MUXA|salida[10]~10_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~28\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~28\) # (GND)))))
-- \ALUCOMP|Add0~30\ = CARRY((\MUXA|salida[10]~10_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~28\)) # (!\MUXA|salida[10]~10_combout\ & ((!\ALUCOMP|Add0~28\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~10_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~28\,
	combout => \ALUCOMP|Add0~29_combout\,
	cout => \ALUCOMP|Add0~30\);

-- Location: LCCOMB_X42_Y17_N26
\ALUCOMP|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~2_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux21~1_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux21~1_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Add0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~29_combout\,
	combout => \ALUCOMP|Mux21~2_combout\);

-- Location: LCCOMB_X42_Y15_N2
\MUXA|salida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~11_combout\ = (\PROGCOUNT|addr_out\(11) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(11),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[11]~11_combout\);

-- Location: LCCOMB_X43_Y15_N8
\ALUCOMP|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~31_combout\ = ((\MUXA|salida[11]~11_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~30\)))) # (GND)
-- \ALUCOMP|Add0~32\ = CARRY((\MUXA|salida[11]~11_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~30\))) # (!\MUXA|salida[11]~11_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~11_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~30\,
	combout => \ALUCOMP|Add0~31_combout\,
	cout => \ALUCOMP|Add0~32\);

-- Location: LCCOMB_X42_Y15_N4
\ALUCOMP|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~0_combout\ = (\CONTROLU|Equal2~0_combout\ & ((\INSTREG|imm_out\(4)) # ((\ALUCOMP|Add0~31_combout\ & !\INSTREG|imm_out\(0))))) # (!\CONTROLU|Equal2~0_combout\ & (((\ALUCOMP|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal2~0_combout\,
	datab => \INSTREG|imm_out\(4),
	datac => \ALUCOMP|Add0~31_combout\,
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux20~0_combout\);

-- Location: LCCOMB_X42_Y15_N22
\ALUCOMP|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux20~0_combout\ & (\MUXA|salida[11]~11_combout\)) # (!\ALUCOMP|Mux20~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))))) # (!\ALUCONTRL|op[0]~0_combout\ & 
-- (((\ALUCOMP|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[11]~11_combout\,
	datac => \ALUCOMP|Mux20~0_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux20~1_combout\);

-- Location: LCCOMB_X42_Y15_N28
\ALUCOMP|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~2_combout\ = (\ALUCOMP|Mux18~0_combout\) # (\ALUCOMP|Mux20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux20~1_combout\,
	combout => \ALUCOMP|Mux20~2_combout\);

-- Location: LCCOMB_X44_Y16_N4
\ALUCOMP|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~0_combout\ = (!\NEWST|CS\(0) & (\NEWST|CS\(1) & \INSTREG|imm_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datad => \INSTREG|imm_out\(4),
	combout => \ALUCOMP|Mux19~0_combout\);

-- Location: LCCOMB_X44_Y16_N6
\ALUCOMP|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~1_combout\ = (\ALUCONTRL|op\(1) & (((\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCONTRL|op\(1) & ((\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~33_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|LessThan0~19_combout\,
	combout => \ALUCOMP|Mux19~1_combout\);

-- Location: LCCOMB_X44_Y16_N20
\ALUCOMP|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~2_combout\ = (\ALUCOMP|Mux18~0_combout\) # ((!\ALUCOMP|Mux19~0_combout\ & \ALUCOMP|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|Mux19~0_combout\,
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux19~1_combout\,
	combout => \ALUCOMP|Mux19~2_combout\);

-- Location: LCCOMB_X45_Y15_N28
\ALUCOMP|temp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~4_combout\ = (!\NEWST|CS\(1) & (\NEWST|CS\(0) & (\INSTREG|imm_out\(14) & \PROGCOUNT|addr_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \PROGCOUNT|addr_out\(13),
	combout => \ALUCOMP|temp~4_combout\);

-- Location: LCCOMB_X45_Y15_N14
\ALUCOMP|temp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~5_combout\ = (\NEWST|CS\(1) & (\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(13))))) # (!\NEWST|CS\(1) & ((\PROGCOUNT|addr_out\(13)) # ((\NEWST|CS\(0) & \INSTREG|imm_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \PROGCOUNT|addr_out\(13),
	combout => \ALUCOMP|temp~5_combout\);

-- Location: LCCOMB_X44_Y17_N6
\MUXA|salida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~13_combout\ = (\PROGCOUNT|addr_out\(13) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(13),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[13]~13_combout\);

-- Location: LCCOMB_X43_Y15_N12
\ALUCOMP|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~36_combout\ = ((\ALUCOMP|Add0~35_combout\ $ (\MUXA|salida[13]~13_combout\ $ (!\ALUCOMP|Add0~34\)))) # (GND)
-- \ALUCOMP|Add0~37\ = CARRY((\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[13]~13_combout\) # (!\ALUCOMP|Add0~34\))) # (!\ALUCOMP|Add0~35_combout\ & (\MUXA|salida[13]~13_combout\ & !\ALUCOMP|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~35_combout\,
	datab => \MUXA|salida[13]~13_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~34\,
	combout => \ALUCOMP|Add0~36_combout\,
	cout => \ALUCOMP|Add0~37\);

-- Location: LCCOMB_X44_Y15_N0
\ALUCOMP|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~1_combout\ = (\ALUCONTRL|op\(1) & ((\ALUCOMP|temp~4_combout\) # ((\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCONTRL|op\(1) & (((!\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|temp~4_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Add0~36_combout\,
	combout => \ALUCOMP|Mux18~1_combout\);

-- Location: LCCOMB_X44_Y15_N26
\ALUCOMP|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~2_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux18~1_combout\ & (\ALUCOMP|temp~5_combout\)) # (!\ALUCOMP|Mux18~1_combout\ & ((\ALUCOMP|LessThan0~19_combout\))))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|temp~5_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Mux18~1_combout\,
	combout => \ALUCOMP|Mux18~2_combout\);

-- Location: LCCOMB_X44_Y15_N4
\ALUCOMP|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~3_combout\ = (\ALUCOMP|Mux18~0_combout\ & (!\ALUCOMP|temp~4_combout\)) # (!\ALUCOMP|Mux18~0_combout\ & ((\ALUCOMP|Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|temp~4_combout\,
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux18~2_combout\,
	combout => \ALUCOMP|Mux18~3_combout\);

-- Location: LCCOMB_X44_Y15_N22
\MUXA|salida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~14_combout\ = (\PROGCOUNT|addr_out\(14) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(14),
	combout => \MUXA|salida[14]~14_combout\);

-- Location: LCCOMB_X45_Y15_N4
\ALUCOMP|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~0_combout\ = (\MUXA|salida[14]~14_combout\ & ((\ALUCONTRL|op[0]~0_combout\) # ((\MUXB|Mux17~0_combout\ & \ALUCONTRL|op\(1))))) # (!\MUXA|salida[14]~14_combout\ & (\ALUCONTRL|op[0]~0_combout\ & ((\MUXB|Mux17~0_combout\) # 
-- (!\ALUCONTRL|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~14_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datac => \ALUCONTRL|op\(1),
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux17~0_combout\);

-- Location: LCCOMB_X43_Y15_N14
\ALUCOMP|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~38_combout\ = (\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[14]~14_combout\ & (\ALUCOMP|Add0~37\ & VCC)) # (!\MUXA|salida[14]~14_combout\ & (!\ALUCOMP|Add0~37\)))) # (!\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[14]~14_combout\ & 
-- (!\ALUCOMP|Add0~37\)) # (!\MUXA|salida[14]~14_combout\ & ((\ALUCOMP|Add0~37\) # (GND)))))
-- \ALUCOMP|Add0~39\ = CARRY((\ALUCOMP|Add0~35_combout\ & (!\MUXA|salida[14]~14_combout\ & !\ALUCOMP|Add0~37\)) # (!\ALUCOMP|Add0~35_combout\ & ((!\ALUCOMP|Add0~37\) # (!\MUXA|salida[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~35_combout\,
	datab => \MUXA|salida[14]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~37\,
	combout => \ALUCOMP|Add0~38_combout\,
	cout => \ALUCOMP|Add0~39\);

-- Location: LCCOMB_X44_Y15_N28
\ALUCOMP|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux17~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux17~0_combout\ & (\ALUCOMP|LessThan0~19_combout\)) # (!\ALUCOMP|Mux17~0_combout\ & ((\ALUCOMP|Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux17~0_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Add0~38_combout\,
	combout => \ALUCOMP|Mux17~1_combout\);

-- Location: LCCOMB_X44_Y15_N14
\ALUCOMP|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (((!\MUXB|Mux17~0_combout\)) # (!\MUXA|salida[14]~14_combout\))) # (!\ALUCOMP|Mux18~0_combout\ & (((\ALUCOMP|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux18~0_combout\,
	datab => \MUXA|salida[14]~14_combout\,
	datac => \MUXB|Mux17~0_combout\,
	datad => \ALUCOMP|Mux17~1_combout\,
	combout => \ALUCOMP|Mux17~2_combout\);

-- Location: LCCOMB_X43_Y15_N16
\ALUCOMP|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~40_combout\ = ((\MUXA|salida[15]~15_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~39\)))) # (GND)
-- \ALUCOMP|Add0~41\ = CARRY((\MUXA|salida[15]~15_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~39\))) # (!\MUXA|salida[15]~15_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~15_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~39\,
	combout => \ALUCOMP|Add0~40_combout\,
	cout => \ALUCOMP|Add0~41\);

-- Location: LCCOMB_X42_Y15_N10
\MUXA|salida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~15_combout\ = (\PROGCOUNT|addr_out\(15) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(15),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[15]~15_combout\);

-- Location: LCCOMB_X42_Y17_N28
\ALUCOMP|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[15]~15_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCONTRL|op~1_combout\ & \ALUCOMP|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[15]~15_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \ALUCOMP|Mux21~0_combout\,
	combout => \ALUCOMP|Mux16~0_combout\);

-- Location: LCCOMB_X42_Y17_N22
\ALUCOMP|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~1_combout\ = (\ALUCONTRL|op\(1) & (((\ALUCOMP|Mux16~0_combout\)))) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux16~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux16~0_combout\ & ((\ALUCOMP|Add0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Add0~74_combout\,
	datac => \ALUCOMP|Add0~40_combout\,
	datad => \ALUCOMP|Mux16~0_combout\,
	combout => \ALUCOMP|Mux16~1_combout\);

-- Location: LCCOMB_X45_Y15_N30
\ALUCOMP|temp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~6_combout\ = (!\NEWST|CS\(1) & (\NEWST|CS\(0) & (\INSTREG|imm_out\(14) & \PROGCOUNT|addr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \ALUCOMP|temp~6_combout\);

-- Location: LCCOMB_X45_Y15_N12
\ALUCOMP|temp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~7_combout\ = (\NEWST|CS\(1) & (\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(16))))) # (!\NEWST|CS\(1) & ((\PROGCOUNT|addr_out\(16)) # ((\NEWST|CS\(0) & \INSTREG|imm_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \ALUCOMP|temp~7_combout\);

-- Location: LCCOMB_X44_Y15_N24
\MUXA|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~16_combout\ = (\PROGCOUNT|addr_out\(16) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \MUXA|salida[16]~16_combout\);

-- Location: LCCOMB_X43_Y15_N18
\ALUCOMP|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~42_combout\ = (\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[16]~16_combout\ & (\ALUCOMP|Add0~41\ & VCC)) # (!\MUXA|salida[16]~16_combout\ & (!\ALUCOMP|Add0~41\)))) # (!\ALUCOMP|Add0~35_combout\ & ((\MUXA|salida[16]~16_combout\ & 
-- (!\ALUCOMP|Add0~41\)) # (!\MUXA|salida[16]~16_combout\ & ((\ALUCOMP|Add0~41\) # (GND)))))
-- \ALUCOMP|Add0~43\ = CARRY((\ALUCOMP|Add0~35_combout\ & (!\MUXA|salida[16]~16_combout\ & !\ALUCOMP|Add0~41\)) # (!\ALUCOMP|Add0~35_combout\ & ((!\ALUCOMP|Add0~41\) # (!\MUXA|salida[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~35_combout\,
	datab => \MUXA|salida[16]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~41\,
	combout => \ALUCOMP|Add0~42_combout\,
	cout => \ALUCOMP|Add0~43\);

-- Location: LCCOMB_X44_Y15_N10
\ALUCOMP|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~0_combout\ = (\ALUCONTRL|op\(1) & ((\ALUCOMP|temp~6_combout\) # ((\ALUCONTRL|op[0]~0_combout\)))) # (!\ALUCONTRL|op\(1) & (((!\ALUCONTRL|op[0]~0_combout\ & \ALUCOMP|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|temp~6_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCOMP|Add0~42_combout\,
	combout => \ALUCOMP|Mux15~0_combout\);

-- Location: LCCOMB_X44_Y15_N12
\ALUCOMP|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~1_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\ALUCOMP|Mux15~0_combout\ & (\ALUCOMP|temp~7_combout\)) # (!\ALUCOMP|Mux15~0_combout\ & ((\ALUCOMP|LessThan0~19_combout\))))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|temp~7_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \ALUCOMP|Mux15~0_combout\,
	combout => \ALUCOMP|Mux15~1_combout\);

-- Location: LCCOMB_X44_Y15_N18
\ALUCOMP|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~2_combout\ = (\ALUCOMP|Mux18~0_combout\ & (!\ALUCOMP|temp~6_combout\)) # (!\ALUCOMP|Mux18~0_combout\ & ((\ALUCOMP|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|temp~6_combout\,
	datac => \ALUCOMP|Mux18~0_combout\,
	datad => \ALUCOMP|Mux15~1_combout\,
	combout => \ALUCOMP|Mux15~2_combout\);

-- Location: LCCOMB_X43_Y15_N20
\ALUCOMP|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~44_combout\ = ((\MUXA|salida[17]~17_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~43\)))) # (GND)
-- \ALUCOMP|Add0~45\ = CARRY((\MUXA|salida[17]~17_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~43\))) # (!\MUXA|salida[17]~17_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~17_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~43\,
	combout => \ALUCOMP|Add0~44_combout\,
	cout => \ALUCOMP|Add0~45\);

-- Location: LCCOMB_X42_Y17_N16
\MUXA|salida[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~17_combout\ = (\PROGCOUNT|addr_out\(17) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(17),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[17]~17_combout\);

-- Location: LCCOMB_X42_Y17_N18
\ALUCOMP|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[17]~17_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op~1_combout\)))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \MUXA|salida[17]~17_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux14~0_combout\);

-- Location: LCCOMB_X42_Y17_N24
\ALUCOMP|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~1_combout\ = (\ALUCONTRL|op\(1) & (((\ALUCOMP|Mux14~0_combout\)))) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux14~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux14~0_combout\ & ((\ALUCOMP|Add0~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Add0~74_combout\,
	datac => \ALUCOMP|Add0~44_combout\,
	datad => \ALUCOMP|Mux14~0_combout\,
	combout => \ALUCOMP|Mux14~1_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[18]~I\ : cycloneii_io
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
	padio => ww_MemDir(18),
	combout => \MemDir~combout\(18));

-- Location: LCCOMB_X45_Y17_N0
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(18) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(18)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(18),
	datac => \MemDir~combout\(18),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(18));

-- Location: LCCOMB_X45_Y17_N20
\MUXA|salida[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~18_combout\ = (\PROGCOUNT|addr_out\(18) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(18),
	combout => \MUXA|salida[18]~18_combout\);

-- Location: LCCOMB_X42_Y17_N14
\ALUCOMP|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[18]~18_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCONTRL|op~1_combout\ & \ALUCOMP|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[18]~18_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \ALUCOMP|Mux21~0_combout\,
	combout => \ALUCOMP|Mux13~0_combout\);

-- Location: LCCOMB_X43_Y15_N22
\ALUCOMP|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~46_combout\ = (\MUXA|salida[18]~18_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~45\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~45\)))) # (!\MUXA|salida[18]~18_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~45\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~45\) # (GND)))))
-- \ALUCOMP|Add0~47\ = CARRY((\MUXA|salida[18]~18_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~45\)) # (!\MUXA|salida[18]~18_combout\ & ((!\ALUCOMP|Add0~45\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[18]~18_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~45\,
	combout => \ALUCOMP|Add0~46_combout\,
	cout => \ALUCOMP|Add0~47\);

-- Location: LCCOMB_X42_Y17_N20
\ALUCOMP|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux13~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux13~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux13~0_combout\ & ((\ALUCOMP|Add0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux13~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~46_combout\,
	combout => \ALUCOMP|Mux13~1_combout\);

-- Location: LCCOMB_X43_Y15_N24
\ALUCOMP|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~48_combout\ = ((\MUXA|salida[19]~19_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~47\)))) # (GND)
-- \ALUCOMP|Add0~49\ = CARRY((\MUXA|salida[19]~19_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~47\))) # (!\MUXA|salida[19]~19_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~19_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~47\,
	combout => \ALUCOMP|Add0~48_combout\,
	cout => \ALUCOMP|Add0~49\);

-- Location: LCCOMB_X42_Y17_N30
\MUXA|salida[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~19_combout\ = (\PROGCOUNT|addr_out\(19) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(19),
	combout => \MUXA|salida[19]~19_combout\);

-- Location: LCCOMB_X42_Y17_N0
\ALUCOMP|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\MUXA|salida[19]~19_combout\)) # (!\ALUCOMP|Mux21~0_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCOMP|Mux21~0_combout\ & (\ALUCONTRL|op~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \MUXA|salida[19]~19_combout\,
	combout => \ALUCOMP|Mux12~0_combout\);

-- Location: LCCOMB_X42_Y17_N10
\ALUCOMP|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~1_combout\ = (\ALUCONTRL|op\(1) & (((\ALUCOMP|Mux12~0_combout\)))) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux12~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux12~0_combout\ & ((\ALUCOMP|Add0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Add0~74_combout\,
	datac => \ALUCOMP|Add0~48_combout\,
	datad => \ALUCOMP|Mux12~0_combout\,
	combout => \ALUCOMP|Mux12~1_combout\);

-- Location: LCCOMB_X43_Y15_N26
\ALUCOMP|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~50_combout\ = (\MUXA|salida[20]~20_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~49\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~49\)))) # (!\MUXA|salida[20]~20_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~49\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~49\) # (GND)))))
-- \ALUCOMP|Add0~51\ = CARRY((\MUXA|salida[20]~20_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~49\)) # (!\MUXA|salida[20]~20_combout\ & ((!\ALUCOMP|Add0~49\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~20_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~49\,
	combout => \ALUCOMP|Add0~50_combout\,
	cout => \ALUCOMP|Add0~51\);

-- Location: LCCOMB_X44_Y17_N8
\MUXA|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~20_combout\ = (\PROGCOUNT|addr_out\(20) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(20),
	combout => \MUXA|salida[20]~20_combout\);

-- Location: LCCOMB_X45_Y15_N10
\ALUCOMP|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[20]~20_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op~1_combout\)))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datac => \MUXA|salida[20]~20_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux11~0_combout\);

-- Location: LCCOMB_X44_Y15_N16
\ALUCOMP|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~1_combout\ = (\ALUCONTRL|op\(1) & (((\ALUCOMP|Mux11~0_combout\)))) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux11~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux11~0_combout\ & (\ALUCOMP|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Add0~50_combout\,
	datac => \ALUCOMP|Mux11~0_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux11~1_combout\);

-- Location: LCCOMB_X45_Y15_N8
\ALUCOMP|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[21]~21_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux21~0_combout\ & \ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~21_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux10~0_combout\);

-- Location: LCCOMB_X43_Y15_N28
\ALUCOMP|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~52_combout\ = ((\MUXA|salida[21]~21_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~51\)))) # (GND)
-- \ALUCOMP|Add0~53\ = CARRY((\MUXA|salida[21]~21_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~51\))) # (!\MUXA|salida[21]~21_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~21_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~51\,
	combout => \ALUCOMP|Add0~52_combout\,
	cout => \ALUCOMP|Add0~53\);

-- Location: LCCOMB_X44_Y15_N20
\ALUCOMP|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux10~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux10~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux10~0_combout\ & (\ALUCOMP|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux10~0_combout\,
	datac => \ALUCOMP|Add0~52_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux10~1_combout\);

-- Location: LCCOMB_X45_Y15_N20
\ALUCOMP|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[22]~22_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux21~0_combout\ & \ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~22_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux9~0_combout\);

-- Location: LCCOMB_X43_Y15_N30
\ALUCOMP|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~54_combout\ = (\MUXA|salida[22]~22_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~53\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~53\)))) # (!\MUXA|salida[22]~22_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~53\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~53\) # (GND)))))
-- \ALUCOMP|Add0~55\ = CARRY((\MUXA|salida[22]~22_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~53\)) # (!\MUXA|salida[22]~22_combout\ & ((!\ALUCOMP|Add0~53\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~22_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~53\,
	combout => \ALUCOMP|Add0~54_combout\,
	cout => \ALUCOMP|Add0~55\);

-- Location: LCCOMB_X44_Y15_N30
\ALUCOMP|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux9~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux9~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux9~0_combout\ & (\ALUCOMP|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux9~0_combout\,
	datac => \ALUCOMP|Add0~54_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux9~1_combout\);

-- Location: LCCOMB_X44_Y14_N30
\ALUCOMP|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[23]~23_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCONTRL|op~1_combout\))))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~23_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux8~0_combout\);

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[23]~I\ : cycloneii_io
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
	padio => ww_MemDir(23),
	combout => \MemDir~combout\(23));

-- Location: LCCOMB_X45_Y18_N12
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(23) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(23)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(23),
	datab => \MemDir~combout\(23),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(23));

-- Location: LCCOMB_X44_Y14_N24
\MUXA|salida[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~23_combout\ = (\PROGCOUNT|addr_out\(23) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(23),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[23]~23_combout\);

-- Location: LCCOMB_X43_Y14_N0
\ALUCOMP|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~56_combout\ = ((\ALUCONTRL|op~1_combout\ $ (\MUXA|salida[23]~23_combout\ $ (!\ALUCOMP|Add0~55\)))) # (GND)
-- \ALUCOMP|Add0~57\ = CARRY((\ALUCONTRL|op~1_combout\ & ((\MUXA|salida[23]~23_combout\) # (!\ALUCOMP|Add0~55\))) # (!\ALUCONTRL|op~1_combout\ & (\MUXA|salida[23]~23_combout\ & !\ALUCOMP|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \MUXA|salida[23]~23_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~55\,
	combout => \ALUCOMP|Add0~56_combout\,
	cout => \ALUCOMP|Add0~57\);

-- Location: LCCOMB_X43_Y14_N26
\ALUCOMP|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux8~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux8~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux8~0_combout\ & ((\ALUCOMP|Add0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux8~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~56_combout\,
	combout => \ALUCOMP|Mux8~1_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[24]~I\ : cycloneii_io
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
	padio => ww_MemDir(24),
	combout => \MemDir~combout\(24));

-- Location: LCCOMB_X45_Y18_N10
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(24) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(24)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(24),
	datac => \MemDir~combout\(24),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(24));

-- Location: LCCOMB_X44_Y14_N8
\MUXA|salida[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~24_combout\ = (\PROGCOUNT|addr_out\(24) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(24),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[24]~24_combout\);

-- Location: LCCOMB_X44_Y14_N6
\ALUCOMP|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[24]~24_combout\))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op~1_combout\)))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datac => \MUXA|salida[24]~24_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y14_N2
\ALUCOMP|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~58_combout\ = (\ALUCONTRL|op~1_combout\ & ((\MUXA|salida[24]~24_combout\ & (\ALUCOMP|Add0~57\ & VCC)) # (!\MUXA|salida[24]~24_combout\ & (!\ALUCOMP|Add0~57\)))) # (!\ALUCONTRL|op~1_combout\ & ((\MUXA|salida[24]~24_combout\ & 
-- (!\ALUCOMP|Add0~57\)) # (!\MUXA|salida[24]~24_combout\ & ((\ALUCOMP|Add0~57\) # (GND)))))
-- \ALUCOMP|Add0~59\ = CARRY((\ALUCONTRL|op~1_combout\ & (!\MUXA|salida[24]~24_combout\ & !\ALUCOMP|Add0~57\)) # (!\ALUCONTRL|op~1_combout\ & ((!\ALUCOMP|Add0~57\) # (!\MUXA|salida[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \MUXA|salida[24]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~57\,
	combout => \ALUCOMP|Add0~58_combout\,
	cout => \ALUCOMP|Add0~59\);

-- Location: LCCOMB_X43_Y14_N28
\ALUCOMP|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~1_combout\ = (\ALUCOMP|Mux7~0_combout\ & ((\ALUCONTRL|op\(1)) # ((\ALUCOMP|Add0~74_combout\)))) # (!\ALUCOMP|Mux7~0_combout\ & (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux7~0_combout\,
	datab => \ALUCONTRL|op\(1),
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~58_combout\,
	combout => \ALUCOMP|Mux7~1_combout\);

-- Location: LCCOMB_X44_Y14_N14
\ALUCOMP|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[25]~25_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux21~0_combout\ & \ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~25_combout\,
	datab => \ALUCONTRL|op[0]~0_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y14_N12
\MUXA|salida[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~25_combout\ = (\PROGCOUNT|addr_out\(25) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(25),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[25]~25_combout\);

-- Location: LCCOMB_X43_Y14_N4
\ALUCOMP|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~60_combout\ = ((\ALUCONTRL|op~1_combout\ $ (\MUXA|salida[25]~25_combout\ $ (!\ALUCOMP|Add0~59\)))) # (GND)
-- \ALUCOMP|Add0~61\ = CARRY((\ALUCONTRL|op~1_combout\ & ((\MUXA|salida[25]~25_combout\) # (!\ALUCOMP|Add0~59\))) # (!\ALUCONTRL|op~1_combout\ & (\MUXA|salida[25]~25_combout\ & !\ALUCOMP|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \MUXA|salida[25]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~59\,
	combout => \ALUCOMP|Add0~60_combout\,
	cout => \ALUCOMP|Add0~61\);

-- Location: LCCOMB_X43_Y14_N30
\ALUCOMP|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux6~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux6~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux6~0_combout\ & (\ALUCOMP|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux6~0_combout\,
	datac => \ALUCOMP|Add0~60_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux6~1_combout\);

-- Location: LCCOMB_X42_Y17_N12
\ALUCOMP|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[26]~26_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCONTRL|op~1_combout\))))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~26_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCONTRL|op~1_combout\,
	datad => \ALUCONTRL|op[0]~0_combout\,
	combout => \ALUCOMP|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y14_N6
\ALUCOMP|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~62_combout\ = (\MUXA|salida[26]~26_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~61\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~61\)))) # (!\MUXA|salida[26]~26_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~61\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~61\) # (GND)))))
-- \ALUCOMP|Add0~63\ = CARRY((\MUXA|salida[26]~26_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~61\)) # (!\MUXA|salida[26]~26_combout\ & ((!\ALUCOMP|Add0~61\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~26_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~61\,
	combout => \ALUCOMP|Add0~62_combout\,
	cout => \ALUCOMP|Add0~63\);

-- Location: LCCOMB_X42_Y17_N6
\ALUCOMP|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux5~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux5~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux5~0_combout\ & ((\ALUCOMP|Add0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux5~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~62_combout\,
	combout => \ALUCOMP|Mux5~1_combout\);

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MemDir[27]~I\ : cycloneii_io
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
	padio => ww_MemDir(27),
	combout => \MemDir~combout\(27));

-- Location: LCCOMB_X45_Y18_N24
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(27) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(27))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(27),
	datac => \PROGCOUNT|addr_out\(27),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(27));

-- Location: LCCOMB_X44_Y14_N2
\MUXA|salida[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~27_combout\ = (\PROGCOUNT|addr_out\(27) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(27),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[27]~27_combout\);

-- Location: LCCOMB_X44_Y14_N20
\ALUCOMP|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\MUXA|salida[27]~27_combout\) # (!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \MUXA|salida[27]~27_combout\,
	combout => \ALUCOMP|Mux4~0_combout\);

-- Location: LCCOMB_X43_Y14_N8
\ALUCOMP|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~64_combout\ = ((\ALUCONTRL|op~1_combout\ $ (\MUXA|salida[27]~27_combout\ $ (!\ALUCOMP|Add0~63\)))) # (GND)
-- \ALUCOMP|Add0~65\ = CARRY((\ALUCONTRL|op~1_combout\ & ((\MUXA|salida[27]~27_combout\) # (!\ALUCOMP|Add0~63\))) # (!\ALUCONTRL|op~1_combout\ & (\MUXA|salida[27]~27_combout\ & !\ALUCOMP|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datab => \MUXA|salida[27]~27_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~63\,
	combout => \ALUCOMP|Add0~64_combout\,
	cout => \ALUCOMP|Add0~65\);

-- Location: LCCOMB_X43_Y14_N24
\ALUCOMP|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux4~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux4~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux4~0_combout\ & (\ALUCOMP|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux4~0_combout\,
	datac => \ALUCOMP|Add0~64_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux4~1_combout\);

-- Location: LCCOMB_X44_Y14_N26
\MUXA|salida[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~28_combout\ = (\PROGCOUNT|addr_out\(28) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(28),
	combout => \MUXA|salida[28]~28_combout\);

-- Location: LCCOMB_X44_Y14_N0
\ALUCOMP|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & (((\MUXA|salida[28]~28_combout\) # (!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \MUXA|salida[28]~28_combout\,
	combout => \ALUCOMP|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y14_N10
\ALUCOMP|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~66_combout\ = (\MUXA|salida[28]~28_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~65\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~65\)))) # (!\MUXA|salida[28]~28_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~65\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~65\) # (GND)))))
-- \ALUCOMP|Add0~67\ = CARRY((\MUXA|salida[28]~28_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~65\)) # (!\MUXA|salida[28]~28_combout\ & ((!\ALUCOMP|Add0~65\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~28_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~65\,
	combout => \ALUCOMP|Add0~66_combout\,
	cout => \ALUCOMP|Add0~67\);

-- Location: LCCOMB_X44_Y14_N18
\ALUCOMP|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux3~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux3~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux3~0_combout\ & ((\ALUCOMP|Add0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux3~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~66_combout\,
	combout => \ALUCOMP|Mux3~1_combout\);

-- Location: LCCOMB_X43_Y18_N8
\MUXA|salida[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~29_combout\ = (\PROGCOUNT|addr_out\(29) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(29),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[29]~29_combout\);

-- Location: LCCOMB_X42_Y14_N0
\ALUCOMP|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCONTRL|op[0]~0_combout\ & (\MUXA|salida[29]~29_combout\)) # (!\ALUCONTRL|op[0]~0_combout\ & ((\ALUCONTRL|op~1_combout\))))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCONTRL|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \MUXA|salida[29]~29_combout\,
	datac => \ALUCONTRL|op[0]~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux2~0_combout\);

-- Location: LCCOMB_X43_Y14_N12
\ALUCOMP|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~68_combout\ = ((\MUXA|salida[29]~29_combout\ $ (\ALUCONTRL|op~1_combout\ $ (!\ALUCOMP|Add0~67\)))) # (GND)
-- \ALUCOMP|Add0~69\ = CARRY((\MUXA|salida[29]~29_combout\ & ((\ALUCONTRL|op~1_combout\) # (!\ALUCOMP|Add0~67\))) # (!\MUXA|salida[29]~29_combout\ & (\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~29_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~67\,
	combout => \ALUCOMP|Add0~68_combout\,
	cout => \ALUCOMP|Add0~69\);

-- Location: LCCOMB_X43_Y14_N18
\ALUCOMP|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux2~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux2~0_combout\ & (\ALUCOMP|Add0~74_combout\)) # (!\ALUCOMP|Mux2~0_combout\ & ((\ALUCOMP|Add0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux2~0_combout\,
	datac => \ALUCOMP|Add0~74_combout\,
	datad => \ALUCOMP|Add0~68_combout\,
	combout => \ALUCOMP|Mux2~1_combout\);

-- Location: LCCOMB_X43_Y18_N10
\MUXA|salida[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~30_combout\ = (\PROGCOUNT|addr_out\(30) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(30),
	combout => \MUXA|salida[30]~30_combout\);

-- Location: LCCOMB_X44_Y14_N28
\ALUCOMP|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[30]~30_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux21~0_combout\ & \ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[30]~30_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux1~0_combout\);

-- Location: LCCOMB_X43_Y14_N14
\ALUCOMP|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~70_combout\ = (\MUXA|salida[30]~30_combout\ & ((\ALUCONTRL|op~1_combout\ & (\ALUCOMP|Add0~69\ & VCC)) # (!\ALUCONTRL|op~1_combout\ & (!\ALUCOMP|Add0~69\)))) # (!\MUXA|salida[30]~30_combout\ & ((\ALUCONTRL|op~1_combout\ & 
-- (!\ALUCOMP|Add0~69\)) # (!\ALUCONTRL|op~1_combout\ & ((\ALUCOMP|Add0~69\) # (GND)))))
-- \ALUCOMP|Add0~71\ = CARRY((\MUXA|salida[30]~30_combout\ & (!\ALUCONTRL|op~1_combout\ & !\ALUCOMP|Add0~69\)) # (!\MUXA|salida[30]~30_combout\ & ((!\ALUCOMP|Add0~69\) # (!\ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~30_combout\,
	datab => \ALUCONTRL|op~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~69\,
	combout => \ALUCOMP|Add0~70_combout\,
	cout => \ALUCOMP|Add0~71\);

-- Location: LCCOMB_X43_Y14_N20
\ALUCOMP|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux1~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux1~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux1~0_combout\ & (\ALUCOMP|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux1~0_combout\,
	datac => \ALUCOMP|Add0~70_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux1~1_combout\);

-- Location: LCCOMB_X43_Y18_N0
\MUXA|salida[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~31_combout\ = (\PROGCOUNT|addr_out\(31) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(31),
	combout => \MUXA|salida[31]~31_combout\);

-- Location: LCCOMB_X44_Y14_N10
\ALUCOMP|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~0_combout\ = (\ALUCONTRL|op[0]~0_combout\ & ((\MUXA|salida[31]~31_combout\) # ((!\ALUCOMP|Mux21~0_combout\)))) # (!\ALUCONTRL|op[0]~0_combout\ & (((\ALUCOMP|Mux21~0_combout\ & \ALUCONTRL|op~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op[0]~0_combout\,
	datab => \MUXA|salida[31]~31_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCONTRL|op~1_combout\,
	combout => \ALUCOMP|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y14_N16
\ALUCOMP|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~72_combout\ = \ALUCONTRL|op~1_combout\ $ (\ALUCOMP|Add0~71\ $ (!\MUXA|salida[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~1_combout\,
	datad => \MUXA|salida[31]~31_combout\,
	cin => \ALUCOMP|Add0~71\,
	combout => \ALUCOMP|Add0~72_combout\);

-- Location: LCCOMB_X43_Y14_N22
\ALUCOMP|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~1_combout\ = (\ALUCONTRL|op\(1) & (\ALUCOMP|Mux0~0_combout\)) # (!\ALUCONTRL|op\(1) & ((\ALUCOMP|Mux0~0_combout\ & ((\ALUCOMP|Add0~74_combout\))) # (!\ALUCOMP|Mux0~0_combout\ & (\ALUCOMP|Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(1),
	datab => \ALUCOMP|Mux0~0_combout\,
	datac => \ALUCOMP|Add0~72_combout\,
	datad => \ALUCOMP|Add0~74_combout\,
	combout => \ALUCOMP|Mux0~1_combout\);

-- Location: LCCOMB_X45_Y15_N22
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\NEWST|CS\(1) & (\INSTREG|imm_out\(14) & \NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \INSTREG|imm_out\(14),
	datad => \NEWST|CS\(0),
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCCOMB_X45_Y15_N24
\MUXRegDst|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[1]~1_combout\ = ((\INSTREG|imm_out\(14)) # (!\NEWST|CS\(0))) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \INSTREG|imm_out\(14),
	datad => \NEWST|CS\(0),
	combout => \MUXRegDst|salida[1]~1_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCFF_X42_Y16_N17
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCFF_X42_Y15_N19
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCFF_X42_Y16_N27
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCFF_X42_Y15_N9
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCFF_X42_Y16_N9
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCFF_X44_Y16_N11
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCFF_X42_Y16_N23
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCFF_X42_Y16_N5
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCFF_X44_Y16_N27
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCFF_X42_Y17_N3
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCFF_X42_Y17_N27
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCFF_X42_Y15_N29
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCFF_X44_Y16_N21
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: LCFF_X44_Y15_N5
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCFF_X44_Y15_N15
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCFF_X42_Y17_N23
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCFF_X44_Y15_N19
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCFF_X42_Y17_N25
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCFF_X42_Y17_N21
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCFF_X42_Y17_N11
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCFF_X44_Y15_N17
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCFF_X44_Y15_N21
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCFF_X44_Y15_N31
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCFF_X43_Y14_N27
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCFF_X43_Y14_N29
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCFF_X43_Y14_N31
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCFF_X42_Y17_N7
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCFF_X43_Y14_N25
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCFF_X44_Y14_N19
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCFF_X43_Y14_N19
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCFF_X43_Y14_N21
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCFF_X43_Y14_N23
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[0]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[1]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[2]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(2));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[3]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[4]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[5]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[6]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(6));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[7]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(7));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[8]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(8));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[9]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(9));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[10]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(10));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[11]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(11));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[12]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(12));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[13]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[14]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(14));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[15]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(15));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[16]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(16));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[17]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(17));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[18]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(18));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[19]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(19));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[20]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(20));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[21]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(21));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[22]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(22));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[23]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(23));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[24]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(24));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[25]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(25));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[26]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(26));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[27]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(27));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[28]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(28));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[29]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(29));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[30]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(30));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Res[31]~I\ : cycloneii_io
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
	datain => \ALUCOMP|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(31));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrReg[0]~I\ : cycloneii_io
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
	datain => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(0));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrReg[1]~I\ : cycloneii_io
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
	datain => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(1));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrReg[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(2));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrReg[3]~I\ : cycloneii_io
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
	datain => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrReg[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(4));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[0]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(0));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[1]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(1));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[2]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(2));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[3]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(3));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[4]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[5]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(5));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[6]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(6));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[7]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(7));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[8]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(8));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[9]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(9));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[10]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(10));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[11]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(11));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[12]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(12));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[13]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(13));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[14]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(14));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[15]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(15));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[16]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(16));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[17]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(17));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[18]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(18));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[19]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(19));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[20]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(20));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[21]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(21));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[22]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(22));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[23]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(23));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[24]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(24));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[25]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(25));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[26]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(26));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[27]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(27));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[28]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(28));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[29]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(29));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[30]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(30));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wrData[31]~I\ : cycloneii_io
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
	datain => \regALU|dt_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(31));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sts[0]~I\ : cycloneii_io
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
	datain => \NEWST|CS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(0));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sts[1]~I\ : cycloneii_io
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
	datain => \NEWST|CS\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(1));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sts[2]~I\ : cycloneii_io
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
	datain => \NEWST|CS\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(2));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sts[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(3));
END structure;


