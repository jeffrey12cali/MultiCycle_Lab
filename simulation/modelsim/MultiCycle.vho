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

-- DATE "10/27/2018 18:55:02"

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
	nextIns : OUT std_logic_vector(31 DOWNTO 0);
	sts : OUT std_logic_vector(3 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- Res[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[3]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[4]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[7]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[8]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[9]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[10]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[11]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[12]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[13]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[14]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[15]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[16]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[17]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[18]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[19]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[20]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[21]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[22]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[23]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[24]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[25]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[26]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[27]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[28]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[29]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[30]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[31]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[2]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[4]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[2]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[3]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[4]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[6]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[7]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[8]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[9]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[11]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[12]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[13]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[14]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[15]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[16]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[17]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[18]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[19]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[20]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[21]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[22]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[23]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[24]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[25]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[26]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[27]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[28]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[29]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[30]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[31]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[0]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[1]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[2]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[3]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[6]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[8]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[9]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[10]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[11]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[12]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[14]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[15]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[16]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[17]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[18]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[19]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[20]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[21]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[22]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[23]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[24]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[25]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[26]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[27]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[28]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[29]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[30]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[31]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[1]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[29]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[30]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[31]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[22]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[23]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[24]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[25]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[26]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[27]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[28]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[16]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[15]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[17]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[18]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[19]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[20]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[21]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[14]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[13]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[11]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[12]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[9]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[10]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[8]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[7]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[5]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_nextIns : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sts : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|IRwr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|comb~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|Equal1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCOMP|Add0~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~49_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~57_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~61_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~75_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~7_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~6_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~13_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~14_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~11_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~15_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~18_combout\ : std_logic;
SIGNAL \MUXA|salida[11]~19_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~22_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~23_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~24_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~25_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~26_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~26_combout\ : std_logic;
SIGNAL \MUXA|salida[4]~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21_combout\ : std_logic;
SIGNAL \MUXB|Mux29~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~24_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~1_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~0_combout\ : std_logic;
SIGNAL \MEM|Equal1~1_combout\ : std_logic;
SIGNAL \CONTROLU|Equal1~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \CONTROLU|comb~6_combout\ : std_logic;
SIGNAL \MEM|Equal0~0_combout\ : std_logic;
SIGNAL \MEM|data_out[19]~3_combout\ : std_logic;
SIGNAL \CONTROLU|comb~7_combout\ : std_logic;
SIGNAL \CONTROLU|comb~11_combout\ : std_logic;
SIGNAL \CONTROLU|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLU|Mux1~0_combout\ : std_logic;
SIGNAL \CONTROLU|Mux0~1_combout\ : std_logic;
SIGNAL \MEM|Equal0~1_combout\ : std_logic;
SIGNAL \CONTROLU|Equal1~0clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|Equal0~1_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[3]~2_combout\ : std_logic;
SIGNAL \CONTROLU|comb~9_combout\ : std_logic;
SIGNAL \CONTROLU|comb~9clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~1_combout\ : std_logic;
SIGNAL \CONTROLU|comb~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal4~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~10_combout\ : std_logic;
SIGNAL \CONTROLU|PCwr~combout\ : std_logic;
SIGNAL \CONTROLU|IRwr~combout\ : std_logic;
SIGNAL \MEM|Equal1~2_combout\ : std_logic;
SIGNAL \MEM|Equal1~0_combout\ : std_logic;
SIGNAL \MEM|Equal1~3_combout\ : std_logic;
SIGNAL \MEM|Equal1~4_combout\ : std_logic;
SIGNAL \MEM|Equal1~7_combout\ : std_logic;
SIGNAL \MEM|Equal1~6_combout\ : std_logic;
SIGNAL \MEM|Equal1~5_combout\ : std_logic;
SIGNAL \MEM|Equal1~8_combout\ : std_logic;
SIGNAL \MEM|Equal3~2_combout\ : std_logic;
SIGNAL \MEM|data_out[2]~1_combout\ : std_logic;
SIGNAL \MEM|data_out[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~3_combout\ : std_logic;
SIGNAL \CONTROLU|IRwr~clkctrl_outclk\ : std_logic;
SIGNAL \regB|dt_out[0]~0_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~5_combout\ : std_logic;
SIGNAL \CONTROLU|comb~4_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcA~combout\ : std_logic;
SIGNAL \MUXA|salida[30]~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~88_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~1_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~15_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~14_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~10_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~9_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~7_combout\ : std_logic;
SIGNAL \MUXA|salida[18]~5_combout\ : std_logic;
SIGNAL \CONTROLU|comb~1_combout\ : std_logic;
SIGNAL \CONTROLU|Equal2~0_combout\ : std_logic;
SIGNAL \MEM|data_out[5]~2_combout\ : std_logic;
SIGNAL \CONTROLU|comb~2_combout\ : std_logic;
SIGNAL \MUXB|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~91_combout\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~92_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~20_combout\ : std_logic;
SIGNAL \MUXB|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~87_combout\ : std_logic;
SIGNAL \REGFILE|Equal35~0_combout\ : std_logic;
SIGNAL \MUXB|Mux23~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~90_combout\ : std_logic;
SIGNAL \REGFILE|Equal33~0_combout\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~89_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~24_combout\ : std_logic;
SIGNAL \MUXB|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~86_combout\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~85_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~29_combout\ : std_logic;
SIGNAL \MUXA|salida[1]~28_combout\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~16_combout\ : std_logic;
SIGNAL \ALUCONTRL|op~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~18_cout\ : std_logic;
SIGNAL \ALUCOMP|Add0~20\ : std_logic;
SIGNAL \ALUCOMP|Add0~23\ : std_logic;
SIGNAL \ALUCOMP|Add0~26\ : std_logic;
SIGNAL \ALUCOMP|Add0~28\ : std_logic;
SIGNAL \ALUCOMP|Add0~30\ : std_logic;
SIGNAL \ALUCOMP|Add0~32\ : std_logic;
SIGNAL \ALUCOMP|Add0~34\ : std_logic;
SIGNAL \ALUCOMP|Add0~36\ : std_logic;
SIGNAL \ALUCOMP|Add0~38\ : std_logic;
SIGNAL \ALUCOMP|Add0~40\ : std_logic;
SIGNAL \ALUCOMP|Add0~42\ : std_logic;
SIGNAL \ALUCOMP|Add0~44\ : std_logic;
SIGNAL \ALUCOMP|Add0~46\ : std_logic;
SIGNAL \ALUCOMP|Add0~48\ : std_logic;
SIGNAL \ALUCOMP|Add0~50\ : std_logic;
SIGNAL \ALUCOMP|Add0~52\ : std_logic;
SIGNAL \ALUCOMP|Add0~54\ : std_logic;
SIGNAL \ALUCOMP|Add0~56\ : std_logic;
SIGNAL \ALUCOMP|Add0~58\ : std_logic;
SIGNAL \ALUCOMP|Add0~60\ : std_logic;
SIGNAL \ALUCOMP|Add0~62\ : std_logic;
SIGNAL \ALUCOMP|Add0~64\ : std_logic;
SIGNAL \ALUCOMP|Add0~66\ : std_logic;
SIGNAL \ALUCOMP|Add0~68\ : std_logic;
SIGNAL \ALUCOMP|Add0~70\ : std_logic;
SIGNAL \ALUCOMP|Add0~72\ : std_logic;
SIGNAL \ALUCOMP|Add0~74\ : std_logic;
SIGNAL \ALUCOMP|Add0~76\ : std_logic;
SIGNAL \ALUCOMP|Add0~78\ : std_logic;
SIGNAL \ALUCOMP|Add0~80\ : std_logic;
SIGNAL \ALUCOMP|Add0~81_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~3_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~6_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~8_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~4_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~9_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~11_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~10_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~12_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~12_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~16_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~17_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~16_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~27_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~28_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~38_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~32_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~30_combout\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~29_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~31_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~39_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~33_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~17_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~18_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~22_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~23_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~19_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~21_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~20_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~40_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~41_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~21_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~34_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~35_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~36_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~37_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~77_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~69_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~2_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~1_combout\ : std_logic;
SIGNAL \ALUCOMP|LessThan0~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~2_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~45_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~2_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~39_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~3_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~3_combout\ : std_logic;
SIGNAL \CONTROLU|PCwrCond~combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~2_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \comb~11clkctrl_outclk\ : std_logic;
SIGNAL \MEM|Equal3~0_combout\ : std_logic;
SIGNAL \MEM|Equal3~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~1_combout\ : std_logic;
SIGNAL \MUXA|salida[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~3_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
SIGNAL \MUXB|Mux29~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~53_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~2_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~55_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~59_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~2_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~63_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~65_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~67_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~71_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~73_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~3_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~9_combout\ : std_logic;
SIGNAL \ALUCOMP|temp~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~79_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~82\ : std_logic;
SIGNAL \ALUCOMP|Add0~83_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~3_combout\ : std_logic;
SIGNAL \CONTROLU|Equal3~0_combout\ : std_logic;
SIGNAL \CONTROLU|RegDst~combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[3]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|comb~8_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux31~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux30~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux29~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux29~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux28~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux28~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux27~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux27~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux26~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux25~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux24~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux24~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux23~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux22~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux21~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux20~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux19~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux18~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux18~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux17~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux17~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux16~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux15~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux15~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux14~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux13~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux12~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux12~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux11~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux10~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux10~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux9~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux8~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux7~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux6~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux5~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux5~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux4~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux3~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux3~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux2~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux2~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux1~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux1~1_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux0~0_combout\ : std_logic;
SIGNAL \JUMPMUX|Mux0~1_combout\ : std_logic;
SIGNAL \regB|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|PCsrc\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INSTREG|func_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CONTROLU|ALUsrcB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INSTREG|r2_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INSTREG|imm_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|NextSt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCONTRL|op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CONTROLU|ALUop\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemDir~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INSTREG|op_out\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_MemDir <= MemDir;
ww_clk <= clk;
Res <= ww_Res;
wrReg <= ww_wrReg;
wrData <= ww_wrData;
nextIns <= ww_nextIns;
sts <= ww_sts;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\CONTROLU|IRwr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|IRwr~combout\);

\comb~11clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~11_combout\);

\CONTROLU|comb~9clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|comb~9_combout\);

\CONTROLU|Equal1~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y19_N18
\ALUCOMP|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~19_combout\ = (\MUXA|salida[0]~0_combout\ & ((\ALUCOMP|Add0~16_combout\ & (\ALUCOMP|Add0~18_cout\ & VCC)) # (!\ALUCOMP|Add0~16_combout\ & (!\ALUCOMP|Add0~18_cout\)))) # (!\MUXA|salida[0]~0_combout\ & ((\ALUCOMP|Add0~16_combout\ & 
-- (!\ALUCOMP|Add0~18_cout\)) # (!\ALUCOMP|Add0~16_combout\ & ((\ALUCOMP|Add0~18_cout\) # (GND)))))
-- \ALUCOMP|Add0~20\ = CARRY((\MUXA|salida[0]~0_combout\ & (!\ALUCOMP|Add0~16_combout\ & !\ALUCOMP|Add0~18_cout\)) # (!\MUXA|salida[0]~0_combout\ & ((!\ALUCOMP|Add0~18_cout\) # (!\ALUCOMP|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~0_combout\,
	datab => \ALUCOMP|Add0~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~18_cout\,
	combout => \ALUCOMP|Add0~19_combout\,
	cout => \ALUCOMP|Add0~20\);

-- Location: LCCOMB_X31_Y19_N20
\ALUCOMP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~22_combout\ = ((\ALUCOMP|Add0~21_combout\ $ (\MUXA|salida[1]~28_combout\ $ (!\ALUCOMP|Add0~20\)))) # (GND)
-- \ALUCOMP|Add0~23\ = CARRY((\ALUCOMP|Add0~21_combout\ & ((\MUXA|salida[1]~28_combout\) # (!\ALUCOMP|Add0~20\))) # (!\ALUCOMP|Add0~21_combout\ & (\MUXA|salida[1]~28_combout\ & !\ALUCOMP|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~21_combout\,
	datab => \MUXA|salida[1]~28_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~20\,
	combout => \ALUCOMP|Add0~22_combout\,
	cout => \ALUCOMP|Add0~23\);

-- Location: LCCOMB_X31_Y19_N22
\ALUCOMP|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~25_combout\ = (\ALUCOMP|Add0~24_combout\ & ((\MUXA|salida[2]~29_combout\ & (\ALUCOMP|Add0~23\ & VCC)) # (!\MUXA|salida[2]~29_combout\ & (!\ALUCOMP|Add0~23\)))) # (!\ALUCOMP|Add0~24_combout\ & ((\MUXA|salida[2]~29_combout\ & 
-- (!\ALUCOMP|Add0~23\)) # (!\MUXA|salida[2]~29_combout\ & ((\ALUCOMP|Add0~23\) # (GND)))))
-- \ALUCOMP|Add0~26\ = CARRY((\ALUCOMP|Add0~24_combout\ & (!\MUXA|salida[2]~29_combout\ & !\ALUCOMP|Add0~23\)) # (!\ALUCOMP|Add0~24_combout\ & ((!\ALUCOMP|Add0~23\) # (!\MUXA|salida[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~24_combout\,
	datab => \MUXA|salida[2]~29_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~23\,
	combout => \ALUCOMP|Add0~25_combout\,
	cout => \ALUCOMP|Add0~26\);

-- Location: LCCOMB_X31_Y19_N26
\ALUCOMP|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~29_combout\ = (\MUXA|salida[4]~27_combout\ & ((\ALUCOMP|Add0~86_combout\ & (\ALUCOMP|Add0~28\ & VCC)) # (!\ALUCOMP|Add0~86_combout\ & (!\ALUCOMP|Add0~28\)))) # (!\MUXA|salida[4]~27_combout\ & ((\ALUCOMP|Add0~86_combout\ & 
-- (!\ALUCOMP|Add0~28\)) # (!\ALUCOMP|Add0~86_combout\ & ((\ALUCOMP|Add0~28\) # (GND)))))
-- \ALUCOMP|Add0~30\ = CARRY((\MUXA|salida[4]~27_combout\ & (!\ALUCOMP|Add0~86_combout\ & !\ALUCOMP|Add0~28\)) # (!\MUXA|salida[4]~27_combout\ & ((!\ALUCOMP|Add0~28\) # (!\ALUCOMP|Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~27_combout\,
	datab => \ALUCOMP|Add0~86_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~28\,
	combout => \ALUCOMP|Add0~29_combout\,
	cout => \ALUCOMP|Add0~30\);

-- Location: LCCOMB_X31_Y19_N30
\ALUCOMP|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~33_combout\ = (\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[6]~24_combout\ & (\ALUCOMP|Add0~32\ & VCC)) # (!\MUXA|salida[6]~24_combout\ & (!\ALUCOMP|Add0~32\)))) # (!\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[6]~24_combout\ & 
-- (!\ALUCOMP|Add0~32\)) # (!\MUXA|salida[6]~24_combout\ & ((\ALUCOMP|Add0~32\) # (GND)))))
-- \ALUCOMP|Add0~34\ = CARRY((\ALUCOMP|Add0~88_combout\ & (!\MUXA|salida[6]~24_combout\ & !\ALUCOMP|Add0~32\)) # (!\ALUCOMP|Add0~88_combout\ & ((!\ALUCOMP|Add0~32\) # (!\MUXA|salida[6]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[6]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~32\,
	combout => \ALUCOMP|Add0~33_combout\,
	cout => \ALUCOMP|Add0~34\);

-- Location: LCCOMB_X31_Y18_N2
\ALUCOMP|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~37_combout\ = (\MUXA|salida[8]~23_combout\ & ((\ALUCOMP|Add0~90_combout\ & (\ALUCOMP|Add0~36\ & VCC)) # (!\ALUCOMP|Add0~90_combout\ & (!\ALUCOMP|Add0~36\)))) # (!\MUXA|salida[8]~23_combout\ & ((\ALUCOMP|Add0~90_combout\ & 
-- (!\ALUCOMP|Add0~36\)) # (!\ALUCOMP|Add0~90_combout\ & ((\ALUCOMP|Add0~36\) # (GND)))))
-- \ALUCOMP|Add0~38\ = CARRY((\MUXA|salida[8]~23_combout\ & (!\ALUCOMP|Add0~90_combout\ & !\ALUCOMP|Add0~36\)) # (!\MUXA|salida[8]~23_combout\ & ((!\ALUCOMP|Add0~36\) # (!\ALUCOMP|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~23_combout\,
	datab => \ALUCOMP|Add0~90_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~36\,
	combout => \ALUCOMP|Add0~37_combout\,
	cout => \ALUCOMP|Add0~38\);

-- Location: LCCOMB_X31_Y18_N6
\ALUCOMP|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~41_combout\ = (\MUXA|salida[10]~22_combout\ & ((\ALUCOMP|Add0~88_combout\ & (\ALUCOMP|Add0~40\ & VCC)) # (!\ALUCOMP|Add0~88_combout\ & (!\ALUCOMP|Add0~40\)))) # (!\MUXA|salida[10]~22_combout\ & ((\ALUCOMP|Add0~88_combout\ & 
-- (!\ALUCOMP|Add0~40\)) # (!\ALUCOMP|Add0~88_combout\ & ((\ALUCOMP|Add0~40\) # (GND)))))
-- \ALUCOMP|Add0~42\ = CARRY((\MUXA|salida[10]~22_combout\ & (!\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~40\)) # (!\MUXA|salida[10]~22_combout\ & ((!\ALUCOMP|Add0~40\) # (!\ALUCOMP|Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~22_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~40\,
	combout => \ALUCOMP|Add0~41_combout\,
	cout => \ALUCOMP|Add0~42\);

-- Location: LCCOMB_X31_Y18_N8
\ALUCOMP|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~43_combout\ = ((\MUXA|salida[11]~19_combout\ $ (\ALUCOMP|Add0~87_combout\ $ (!\ALUCOMP|Add0~42\)))) # (GND)
-- \ALUCOMP|Add0~44\ = CARRY((\MUXA|salida[11]~19_combout\ & ((\ALUCOMP|Add0~87_combout\) # (!\ALUCOMP|Add0~42\))) # (!\MUXA|salida[11]~19_combout\ & (\ALUCOMP|Add0~87_combout\ & !\ALUCOMP|Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~19_combout\,
	datab => \ALUCOMP|Add0~87_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~42\,
	combout => \ALUCOMP|Add0~43_combout\,
	cout => \ALUCOMP|Add0~44\);

-- Location: LCCOMB_X31_Y18_N14
\ALUCOMP|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~49_combout\ = (\MUXA|salida[14]~17_combout\ & ((\ALUCOMP|Add0~92_combout\ & (\ALUCOMP|Add0~48\ & VCC)) # (!\ALUCOMP|Add0~92_combout\ & (!\ALUCOMP|Add0~48\)))) # (!\MUXA|salida[14]~17_combout\ & ((\ALUCOMP|Add0~92_combout\ & 
-- (!\ALUCOMP|Add0~48\)) # (!\ALUCOMP|Add0~92_combout\ & ((\ALUCOMP|Add0~48\) # (GND)))))
-- \ALUCOMP|Add0~50\ = CARRY((\MUXA|salida[14]~17_combout\ & (!\ALUCOMP|Add0~92_combout\ & !\ALUCOMP|Add0~48\)) # (!\MUXA|salida[14]~17_combout\ & ((!\ALUCOMP|Add0~48\) # (!\ALUCOMP|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~17_combout\,
	datab => \ALUCOMP|Add0~92_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~48\,
	combout => \ALUCOMP|Add0~49_combout\,
	cout => \ALUCOMP|Add0~50\);

-- Location: LCCOMB_X31_Y18_N22
\ALUCOMP|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~57_combout\ = (\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[18]~5_combout\ & (\ALUCOMP|Add0~56\ & VCC)) # (!\MUXA|salida[18]~5_combout\ & (!\ALUCOMP|Add0~56\)))) # (!\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[18]~5_combout\ & 
-- (!\ALUCOMP|Add0~56\)) # (!\MUXA|salida[18]~5_combout\ & ((\ALUCOMP|Add0~56\) # (GND)))))
-- \ALUCOMP|Add0~58\ = CARRY((\ALUCOMP|Add0~88_combout\ & (!\MUXA|salida[18]~5_combout\ & !\ALUCOMP|Add0~56\)) # (!\ALUCOMP|Add0~88_combout\ & ((!\ALUCOMP|Add0~56\) # (!\MUXA|salida[18]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[18]~5_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~56\,
	combout => \ALUCOMP|Add0~57_combout\,
	cout => \ALUCOMP|Add0~58\);

-- Location: LCCOMB_X31_Y18_N26
\ALUCOMP|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~61_combout\ = (\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[20]~7_combout\ & (\ALUCOMP|Add0~60\ & VCC)) # (!\MUXA|salida[20]~7_combout\ & (!\ALUCOMP|Add0~60\)))) # (!\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[20]~7_combout\ & 
-- (!\ALUCOMP|Add0~60\)) # (!\MUXA|salida[20]~7_combout\ & ((\ALUCOMP|Add0~60\) # (GND)))))
-- \ALUCOMP|Add0~62\ = CARRY((\ALUCOMP|Add0~88_combout\ & (!\MUXA|salida[20]~7_combout\ & !\ALUCOMP|Add0~60\)) # (!\ALUCOMP|Add0~88_combout\ & ((!\ALUCOMP|Add0~60\) # (!\MUXA|salida[20]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[20]~7_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~60\,
	combout => \ALUCOMP|Add0~61_combout\,
	cout => \ALUCOMP|Add0~62\);

-- Location: LCCOMB_X31_Y17_N8
\ALUCOMP|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~75_combout\ = ((\ALUCOMP|Add0~88_combout\ $ (\MUXA|salida[27]~14_combout\ $ (!\ALUCOMP|Add0~74\)))) # (GND)
-- \ALUCOMP|Add0~76\ = CARRY((\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[27]~14_combout\) # (!\ALUCOMP|Add0~74\))) # (!\ALUCOMP|Add0~88_combout\ & (\MUXA|salida[27]~14_combout\ & !\ALUCOMP|Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[27]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~74\,
	combout => \ALUCOMP|Add0~75_combout\,
	cout => \ALUCOMP|Add0~76\);

-- Location: LCCOMB_X32_Y17_N20
\ALUCOMP|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~7_combout\ = (((!\PROGCOUNT|addr_out\(24)) # (!\PROGCOUNT|addr_out\(23))) # (!\PROGCOUNT|addr_out\(25))) # (!\PROGCOUNT|addr_out\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(22),
	datab => \PROGCOUNT|addr_out\(25),
	datac => \PROGCOUNT|addr_out\(23),
	datad => \PROGCOUNT|addr_out\(24),
	combout => \ALUCOMP|LessThan0~7_combout\);

-- Location: LCCOMB_X33_Y21_N2
\MUXA|salida[19]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~6_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(19),
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	combout => \MUXA|salida[19]~6_combout\);

-- Location: LCCOMB_X33_Y21_N12
\ALUCOMP|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~13_combout\ = (\MUXA|salida[18]~5_combout\ & (\MUXA|salida[19]~6_combout\ & (\MUXA|salida[17]~4_combout\ & \MUXB|Mux25~0_combout\))) # (!\MUXA|salida[18]~5_combout\ & (!\MUXA|salida[19]~6_combout\ & (!\MUXA|salida[17]~4_combout\ & 
-- !\MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[18]~5_combout\,
	datab => \MUXA|salida[19]~6_combout\,
	datac => \MUXA|salida[17]~4_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~13_combout\);

-- Location: LCCOMB_X33_Y21_N6
\ALUCOMP|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~14_combout\ = (\ALUCOMP|LessThan0~13_combout\ & ((\MUXA|salida[21]~8_combout\ & (\MUXA|salida[20]~7_combout\ & \MUXB|Mux25~0_combout\)) # (!\MUXA|salida[21]~8_combout\ & (!\MUXA|salida[20]~7_combout\ & !\MUXB|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~13_combout\,
	datab => \MUXA|salida[21]~8_combout\,
	datac => \MUXA|salida[20]~7_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~14_combout\);

-- Location: LCCOMB_X32_Y20_N26
\MUXA|salida[24]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~11_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(24),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[24]~11_combout\);

-- Location: LCCOMB_X33_Y17_N4
\ALUCOMP|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~15_combout\ = (\MUXB|Mux25~0_combout\ & (\MUXA|salida[24]~11_combout\ & (\MUXA|salida[23]~10_combout\ & \MUXA|salida[22]~9_combout\))) # (!\MUXB|Mux25~0_combout\ & (!\MUXA|salida[24]~11_combout\ & (!\MUXA|salida[23]~10_combout\ & 
-- !\MUXA|salida[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[24]~11_combout\,
	datac => \MUXA|salida[23]~10_combout\,
	datad => \MUXA|salida[22]~9_combout\,
	combout => \ALUCOMP|LessThan0~15_combout\);

-- Location: LCCOMB_X32_Y17_N6
\MUXA|salida[26]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~13_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(26),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[26]~13_combout\);

-- Location: LCCOMB_X33_Y21_N22
\ALUCOMP|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~18_combout\ = \MUXB|Mux25~0_combout\ $ (((\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(15),
	datac => \regB|dt_out\(0),
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~18_combout\);

-- Location: LCCOMB_X32_Y20_N0
\MUXA|salida[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~19_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(11),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[11]~19_combout\);

-- Location: LCCOMB_X32_Y19_N4
\ALUCOMP|LessThan0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~22_combout\ = (\MUXB|Mux15~0_combout\ & (\MUXA|salida[13]~18_combout\ & (\MUXB|Mux17~0_combout\ $ (!\MUXA|salida[14]~17_combout\)))) # (!\MUXB|Mux15~0_combout\ & (!\MUXA|salida[13]~18_combout\ & (\MUXB|Mux17~0_combout\ $ 
-- (!\MUXA|salida[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux15~0_combout\,
	datab => \MUXB|Mux17~0_combout\,
	datac => \MUXA|salida[14]~17_combout\,
	datad => \MUXA|salida[13]~18_combout\,
	combout => \ALUCOMP|LessThan0~22_combout\);

-- Location: LCCOMB_X32_Y19_N18
\ALUCOMP|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~23_combout\ = (\MUXA|salida[12]~20_combout\ & (\MUXB|Mux19~0_combout\ & \MUXA|salida[11]~19_combout\)) # (!\MUXA|salida[12]~20_combout\ & (!\MUXB|Mux19~0_combout\ & !\MUXA|salida[11]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~20_combout\,
	datac => \MUXB|Mux19~0_combout\,
	datad => \MUXA|salida[11]~19_combout\,
	combout => \ALUCOMP|LessThan0~23_combout\);

-- Location: LCCOMB_X32_Y19_N10
\ALUCOMP|LessThan0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~24_combout\ = (\MUXA|salida[10]~22_combout\ & (\MUXA|salida[9]~21_combout\ & \MUXB|Mux25~0_combout\)) # (!\MUXA|salida[10]~22_combout\ & (!\MUXA|salida[9]~21_combout\ & !\MUXB|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~22_combout\,
	datac => \MUXA|salida[9]~21_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~24_combout\);

-- Location: LCCOMB_X33_Y20_N24
\ALUCOMP|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~25_combout\ = \MUXA|salida[8]~23_combout\ $ (((!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(8),
	datad => \MUXA|salida[8]~23_combout\,
	combout => \ALUCOMP|LessThan0~25_combout\);

-- Location: LCCOMB_X32_Y19_N30
\ALUCOMP|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~26_combout\ = (\ALUCOMP|LessThan0~24_combout\ & (\ALUCOMP|LessThan0~23_combout\ & (\ALUCOMP|LessThan0~22_combout\ & !\ALUCOMP|LessThan0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~24_combout\,
	datab => \ALUCOMP|LessThan0~23_combout\,
	datac => \ALUCOMP|LessThan0~22_combout\,
	datad => \ALUCOMP|LessThan0~25_combout\,
	combout => \ALUCOMP|LessThan0~26_combout\);

-- Location: LCCOMB_X33_Y20_N0
\MUXA|salida[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~26_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(5),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[5]~26_combout\);

-- Location: LCCOMB_X36_Y19_N16
\MUXA|salida[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~27_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(4),
	combout => \MUXA|salida[4]~27_combout\);

-- Location: LCCOMB_X30_Y19_N14
\ALUCOMP|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~21_combout\ = \MUXB|Mux30~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \CONTROLU|ALUop\(1),
	datac => \INSTREG|func_out\(1),
	datad => \MUXB|Mux30~0_combout\,
	combout => \ALUCOMP|Add0~21_combout\);

-- Location: LCCOMB_X32_Y19_N14
\MUXB|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~2_combout\ = (\CONTROLU|ALUsrcB\(0) & \INSTREG|imm_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \INSTREG|imm_out\(0),
	combout => \MUXB|Mux29~2_combout\);

-- Location: LCCOMB_X31_Y19_N12
\ALUCOMP|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~24_combout\ = (\CONTROLU|ALUop\(0) & (((!\MUXB|Mux29~2_combout\ & !\MUXB|Mux29~0_combout\)))) # (!\CONTROLU|ALUop\(0) & (\ALUCONTRL|op~0_combout\ $ (((\MUXB|Mux29~2_combout\) # (\MUXB|Mux29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \ALUCONTRL|op~0_combout\,
	datac => \MUXB|Mux29~2_combout\,
	datad => \MUXB|Mux29~0_combout\,
	combout => \ALUCOMP|Add0~24_combout\);

-- Location: LCCOMB_X30_Y19_N30
\MUXA|salida[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~30_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(3),
	combout => \MUXA|salida[3]~30_combout\);

-- Location: LCCOMB_X30_Y19_N20
\ALUCOMP|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~1_combout\ = (\MUXA|salida[3]~30_combout\ & ((\MUXB|Mux28~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[3]~30_combout\ & (\MUXB|Mux28~0_combout\ & (\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~30_combout\,
	datab => \MUXB|Mux28~0_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux28~1_combout\);

-- Location: LCCOMB_X32_Y19_N20
\ALUCOMP|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~2_combout\ = (\MUXB|Mux19~0_combout\ & ((\MUXA|salida[5]~26_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux19~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \MUXB|Mux19~0_combout\,
	datad => \MUXA|salida[5]~26_combout\,
	combout => \ALUCOMP|Mux26~2_combout\);

-- Location: LCCOMB_X36_Y19_N12
\ALUCOMP|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~1_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[6]~24_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \MUXA|salida[6]~24_combout\,
	combout => \ALUCOMP|Mux25~1_combout\);

-- Location: LCCOMB_X33_Y20_N22
\ALUCOMP|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~1_combout\ = (\MUXA|salida[8]~23_combout\ & ((\MUXB|Mux23~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[8]~23_combout\ & (\MUXB|Mux23~0_combout\ & (\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~23_combout\,
	datab => \MUXB|Mux23~0_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux23~1_combout\);

-- Location: LCCOMB_X34_Y21_N10
\ALUCOMP|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~3_combout\ = (\MUXA|salida[10]~22_combout\ & ((\MUXB|Mux25~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[10]~22_combout\ & (\MUXB|Mux25~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~22_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux21~3_combout\);

-- Location: LCCOMB_X32_Y19_N24
\ALUCOMP|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~2_combout\ = (\MUXA|salida[11]~19_combout\ & ((\MUXB|Mux19~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[11]~19_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \MUXA|salida[11]~19_combout\,
	datad => \MUXB|Mux19~0_combout\,
	combout => \ALUCOMP|Mux20~2_combout\);

-- Location: LCCOMB_X31_Y19_N6
\ALUCOMP|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~1_combout\ = (\MUXA|salida[12]~20_combout\ & ((\MUXB|Mux19~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[12]~20_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~20_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux19~0_combout\,
	combout => \ALUCOMP|Mux19~1_combout\);

-- Location: LCCOMB_X34_Y20_N14
\MUXA|salida[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~31_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(15),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[15]~31_combout\);

-- Location: LCCOMB_X36_Y19_N4
\ALUCOMP|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~1_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[24]~11_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[24]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \MUXA|salida[24]~11_combout\,
	combout => \ALUCOMP|Mux7~1_combout\);

-- Location: LCCOMB_X31_Y17_N24
\ALUCOMP|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~0_combout\ = (\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Add0~75_combout\) # ((\ALUCONTRL|op\(0))))) # (!\ALUCOMP|Mux21~0_combout\ & (((\ALUCOMP|temp~9_combout\ & !\ALUCONTRL|op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Add0~75_combout\,
	datac => \ALUCOMP|temp~9_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y20_N6
\MEM|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~1_combout\ = (!\PROGCOUNT|addr_out\(12) & (!\PROGCOUNT|addr_out\(11) & (!\PROGCOUNT|addr_out\(9) & !\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datab => \PROGCOUNT|addr_out\(11),
	datac => \PROGCOUNT|addr_out\(9),
	datad => \PROGCOUNT|addr_out\(10),
	combout => \MEM|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y20_N4
\CONTROLU|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal1~0_combout\ = (!\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y17_N30
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\ALUCOMP|Mux6~3_combout\ & ((\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|temp~9_combout\))) # (!\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux6~3_combout\,
	datab => \ALUCOMP|Mux4~1_combout\,
	datac => \ALUCOMP|temp~9_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X34_Y20_N30
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\ALUCOMP|Mux14~3_combout\ & (!\ALUCOMP|Mux12~3_combout\ & (!\ALUCOMP|Mux10~3_combout\ & !\ALUCOMP|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux14~3_combout\,
	datab => \ALUCOMP|Mux12~3_combout\,
	datac => \ALUCOMP|Mux10~3_combout\,
	datad => \ALUCOMP|Mux8~3_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X34_Y17_N10
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\comb~4_combout\ & (!\ALUCOMP|Mux0~3_combout\ & (\comb~3_combout\ & !\ALUCOMP|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datab => \ALUCOMP|Mux0~3_combout\,
	datac => \comb~3_combout\,
	datad => \ALUCOMP|Mux2~3_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X32_Y21_N22
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\ALUCOMP|Mux13~2_combout\ & (!\ALUCOMP|Mux15~2_combout\ & (!\ALUCOMP|Mux11~2_combout\ & !\ALUCOMP|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux13~2_combout\,
	datab => \ALUCOMP|Mux15~2_combout\,
	datac => \ALUCOMP|Mux11~2_combout\,
	datad => \ALUCOMP|Mux9~2_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X30_Y18_N12
\CONTROLU|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~6_combout\ = ((!\NEWST|CS\(3) & !\NEWST|CS\(0))) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~6_combout\);

-- Location: LCCOMB_X32_Y18_N6
\MEM|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~0_combout\ = (\PROGCOUNT|addr_out\(3)) # ((\PROGCOUNT|addr_out\(1)) # ((\PROGCOUNT|addr_out\(2)) # (!\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \PROGCOUNT|addr_out\(1),
	datac => \PROGCOUNT|addr_out\(4),
	datad => \PROGCOUNT|addr_out\(2),
	combout => \MEM|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y20_N24
\MEM|data_out[19]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[19]~3_combout\ = ((!\MEM|Equal0~0_combout\ & (\MEM|Equal1~4_combout\ & \MEM|Equal1~8_combout\))) # (!\MEM|data_out[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal0~0_combout\,
	datab => \MEM|Equal1~4_combout\,
	datac => \MEM|Equal1~8_combout\,
	datad => \MEM|data_out[5]~2_combout\,
	combout => \MEM|data_out[19]~3_combout\);

-- Location: LCCOMB_X30_Y18_N24
\CONTROLU|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~7_combout\ = (\NEWST|CS\(3) & ((\NEWST|CS\(1)) # (\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~7_combout\);

-- Location: LCCOMB_X34_Y17_N20
\CONTROLU|comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~11_combout\ = (!\NEWST|CS\(1) & (\NEWST|CS\(0) $ (!\NEWST|CS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|comb~11_combout\);

-- Location: LCCOMB_X30_Y20_N18
\CONTROLU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Mux0~0_combout\ = (!\INSTREG|op_out\(2) & \INSTREG|op_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|op_out\(2),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\CONTROLU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Mux1~0_combout\ = (\INSTREG|op_out\(2)) # (\INSTREG|op_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|op_out\(2),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y20_N26
\CONTROLU|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Mux0~1_combout\ = \INSTREG|op_out\(2) $ (\INSTREG|op_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|op_out\(2),
	datad => \INSTREG|op_out\(1),
	combout => \CONTROLU|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y20_N4
\MEM|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal0~1_combout\ = (\MEM|Equal0~0_combout\) # ((!\MEM|Equal1~8_combout\) # (!\MEM|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal0~0_combout\,
	datac => \MEM|Equal1~4_combout\,
	datad => \MEM|Equal1~8_combout\,
	combout => \MEM|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y17_N12
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(28) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(28)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datab => \MemDir~combout\(28),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X32_Y20_N14
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(11) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(11))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(11),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(11));

-- Location: LCCOMB_X32_Y20_N10
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(12) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(12)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datab => \MemDir~combout\(12),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X33_Y20_N12
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(5) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(5)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datac => \MemDir~combout\(5),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(5));

-- Location: LCCOMB_X34_Y19_N16
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(3) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(3))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(3),
	datac => \PROGCOUNT|addr_out\(3),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X30_Y20_N20
\CONTROLU|nxt_st[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(0) = (GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & ((\CONTROLU|Mux0~0_combout\))) # (!GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(0),
	datac => \CONTROLU|Equal1~0clkctrl_outclk\,
	datad => \CONTROLU|Mux0~0_combout\,
	combout => \CONTROLU|nxt_st\(0));

-- Location: LCCOMB_X30_Y20_N30
\CONTROLU|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(1) = (GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & ((!\CONTROLU|Mux1~0_combout\))) # (!GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(1),
	datac => \CONTROLU|Equal1~0clkctrl_outclk\,
	datad => \CONTROLU|Mux1~0_combout\,
	combout => \CONTROLU|nxt_st\(1));

-- Location: LCCOMB_X30_Y20_N0
\CONTROLU|nxt_st[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(3) = (GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & ((\CONTROLU|Mux0~1_combout\))) # (!GLOBAL(\CONTROLU|Equal1~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(3),
	datac => \CONTROLU|Equal1~0clkctrl_outclk\,
	datad => \CONTROLU|Mux0~1_combout\,
	combout => \CONTROLU|nxt_st\(3));

-- Location: LCCOMB_X30_Y20_N10
\INSTREG|op_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|op_out\(1) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((!\MEM|data_out[19]~3_combout\))) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (\INSTREG|op_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|op_out\(1),
	datac => \MEM|data_out[19]~3_combout\,
	datad => \CONTROLU|IRwr~clkctrl_outclk\,
	combout => \INSTREG|op_out\(1));

-- Location: LCCOMB_X30_Y20_N16
\INSTREG|op_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|op_out\(2) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (!\MEM|Equal0~1_combout\)) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((\INSTREG|op_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|Equal0~1_combout\,
	datac => \INSTREG|op_out\(2),
	datad => \CONTROLU|IRwr~clkctrl_outclk\,
	combout => \INSTREG|op_out\(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G8
\CONTROLU|Equal1~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|Equal1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|Equal1~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y20_N20
\CONTROLU|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~1_combout\ = (!\NEWST|CS\(0) & (!\NEWST|CS\(3) & !\NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y20_N18
\CONTROLU|NextSt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~0_combout\ = (!\NEWST|CS\(3) & ((\NEWST|CS\(0) & (\CONTROLU|nxt_st\(0) & !\NEWST|CS\(1))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(0),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|NextSt[0]~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\CONTROLU|NextSt[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(0) = (\CONTROLU|Equal0~1_combout\) # ((GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & ((\CONTROLU|NextSt[0]~0_combout\))) # (!GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & (\CONTROLU|NextSt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|NextSt\(0),
	datab => \CONTROLU|comb~9clkctrl_outclk\,
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \CONTROLU|NextSt[0]~0_combout\,
	combout => \CONTROLU|NextSt\(0));

-- Location: LCFF_X31_Y20_N11
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \CONTROLU|NextSt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X31_Y20_N14
\CONTROLU|NextSt[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[3]~2_combout\ = (\CONTROLU|nxt_st\(3) & (\NEWST|CS\(0) & (!\NEWST|CS\(3) & !\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(3),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|NextSt[3]~2_combout\);

-- Location: LCCOMB_X31_Y20_N24
\CONTROLU|NextSt[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(3) = (!\CONTROLU|Equal0~1_combout\ & ((GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & ((\CONTROLU|NextSt[3]~2_combout\))) # (!GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & (\CONTROLU|NextSt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|NextSt\(3),
	datab => \CONTROLU|comb~9clkctrl_outclk\,
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \CONTROLU|NextSt[3]~2_combout\,
	combout => \CONTROLU|NextSt\(3));

-- Location: LCFF_X31_Y20_N25
\NEWST|CS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(3));

-- Location: LCCOMB_X31_Y20_N28
\CONTROLU|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~9_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(3))) # (!\NEWST|CS\(1) & ((\NEWST|CS\(3)) # (\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~9_combout\);

-- Location: CLKCTRL_G10
\CONTROLU|comb~9clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|comb~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|comb~9clkctrl_outclk\);

-- Location: LCCOMB_X31_Y20_N22
\CONTROLU|NextSt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~1_combout\ = (!\NEWST|CS\(3) & ((\NEWST|CS\(0) & (\CONTROLU|nxt_st\(1) & !\NEWST|CS\(1))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(1),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|NextSt[1]~1_combout\);

-- Location: LCCOMB_X31_Y20_N6
\CONTROLU|NextSt[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(1) = (!\CONTROLU|Equal0~1_combout\ & ((GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & ((\CONTROLU|NextSt[1]~1_combout\))) # (!GLOBAL(\CONTROLU|comb~9clkctrl_outclk\) & (\CONTROLU|NextSt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|NextSt\(1),
	datab => \CONTROLU|comb~9clkctrl_outclk\,
	datac => \CONTROLU|Equal0~1_combout\,
	datad => \CONTROLU|NextSt[1]~1_combout\,
	combout => \CONTROLU|NextSt\(1));

-- Location: LCFF_X31_Y20_N7
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X31_Y20_N16
\CONTROLU|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~0_combout\ = ((!\NEWST|CS\(1) & \NEWST|CS\(0))) # (!\NEWST|CS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~0_combout\);

-- Location: LCCOMB_X31_Y20_N8
\CONTROLU|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal4~0_combout\ = (\NEWST|CS\(3) & (!\NEWST|CS\(1) & !\NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y18_N12
\CONTROLU|ALUop[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUop\(0) = (!\CONTROLU|comb~0_combout\ & ((\CONTROLU|Equal4~0_combout\) # (\CONTROLU|ALUop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~0_combout\,
	datac => \CONTROLU|Equal4~0_combout\,
	datad => \CONTROLU|ALUop\(0),
	combout => \CONTROLU|ALUop\(0));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y17_N2
\CONTROLU|comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~10_combout\ = \NEWST|CS\(3) $ (((\NEWST|CS\(0)) # (\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|comb~10_combout\);

-- Location: LCCOMB_X34_Y17_N30
\CONTROLU|PCwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCwr~combout\ = (!\CONTROLU|comb~10_combout\ & ((\CONTROLU|comb~11_combout\) # (\CONTROLU|PCwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~11_combout\,
	datac => \CONTROLU|comb~10_combout\,
	datad => \CONTROLU|PCwr~combout\,
	combout => \CONTROLU|PCwr~combout\);

-- Location: LCCOMB_X32_Y18_N10
\CONTROLU|IRwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IRwr~combout\ = (!\CONTROLU|comb~9_combout\ & ((\CONTROLU|Equal0~1_combout\) # (\CONTROLU|IRwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|Equal0~1_combout\,
	datac => \CONTROLU|IRwr~combout\,
	datad => \CONTROLU|comb~9_combout\,
	combout => \CONTROLU|IRwr~combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y20_N8
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(2) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(2))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(2),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(2));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y18_N4
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(13) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(13))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(13),
	datac => \PROGCOUNT|addr_out\(13),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(13));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y20_N22
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(16) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(16)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(16),
	datac => \MemDir~combout\(16),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(16));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y21_N8
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(15) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(15))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(15),
	datac => \PROGCOUNT|addr_out\(15),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(15));

-- Location: LCCOMB_X33_Y18_N18
\MEM|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~2_combout\ = (!\PROGCOUNT|addr_out\(14) & (!\PROGCOUNT|addr_out\(13) & (!\PROGCOUNT|addr_out\(16) & !\PROGCOUNT|addr_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(14),
	datab => \PROGCOUNT|addr_out\(13),
	datac => \PROGCOUNT|addr_out\(16),
	datad => \PROGCOUNT|addr_out\(15),
	combout => \MEM|Equal1~2_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y20_N26
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(7) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(7)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(7),
	datac => \MemDir~combout\(7),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y20_N4
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(6) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(6))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(6),
	datac => \PROGCOUNT|addr_out\(6),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(6));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y20_N10
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(8) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(8)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(8),
	datac => \MemDir~combout\(8),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X33_Y20_N2
\MEM|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~0_combout\ = (!\PROGCOUNT|addr_out\(5) & (!\PROGCOUNT|addr_out\(7) & (!\PROGCOUNT|addr_out\(6) & !\PROGCOUNT|addr_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datab => \PROGCOUNT|addr_out\(7),
	datac => \PROGCOUNT|addr_out\(6),
	datad => \PROGCOUNT|addr_out\(8),
	combout => \MEM|Equal1~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y21_N30
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(20) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(20)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(20),
	datac => \MemDir~combout\(20),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(20));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y21_N20
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(18) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(18))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(18),
	datac => \PROGCOUNT|addr_out\(18),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(18));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y21_N10
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(19) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(19)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(19),
	datac => \MemDir~combout\(19),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(19));

-- Location: LCCOMB_X33_Y21_N18
\MEM|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~3_combout\ = (!\PROGCOUNT|addr_out\(17) & (!\PROGCOUNT|addr_out\(20) & (!\PROGCOUNT|addr_out\(18) & !\PROGCOUNT|addr_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(17),
	datab => \PROGCOUNT|addr_out\(20),
	datac => \PROGCOUNT|addr_out\(18),
	datad => \PROGCOUNT|addr_out\(19),
	combout => \MEM|Equal1~3_combout\);

-- Location: LCCOMB_X33_Y18_N16
\MEM|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~4_combout\ = (\MEM|Equal1~1_combout\ & (\MEM|Equal1~2_combout\ & (\MEM|Equal1~0_combout\ & \MEM|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|Equal1~1_combout\,
	datab => \MEM|Equal1~2_combout\,
	datac => \MEM|Equal1~0_combout\,
	datad => \MEM|Equal1~3_combout\,
	combout => \MEM|Equal1~4_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y18_N24
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(30) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(30))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(30),
	datac => \PROGCOUNT|addr_out\(30),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(30));

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y18_N26
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(31) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(31))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(31),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(31));

-- Location: LCCOMB_X34_Y19_N26
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(0) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(0))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(0),
	datab => \PROGCOUNT|addr_out\(0),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X33_Y18_N14
\MEM|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~7_combout\ = (!\PROGCOUNT|addr_out\(29) & (!\PROGCOUNT|addr_out\(30) & (!\PROGCOUNT|addr_out\(31) & !\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(29),
	datab => \PROGCOUNT|addr_out\(30),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MEM|Equal1~7_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y17_N0
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(26) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(26)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(26),
	datac => \MemDir~combout\(26),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(26));

-- Location: LCCOMB_X32_Y17_N2
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(25) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(25))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(25),
	datab => \PROGCOUNT|addr_out\(25),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(25));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y17_N4
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(27) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(27))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(27),
	datac => \PROGCOUNT|addr_out\(27),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(27));

-- Location: LCCOMB_X33_Y18_N8
\MEM|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~6_combout\ = (!\PROGCOUNT|addr_out\(28) & (!\PROGCOUNT|addr_out\(26) & (!\PROGCOUNT|addr_out\(25) & !\PROGCOUNT|addr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datab => \PROGCOUNT|addr_out\(26),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \PROGCOUNT|addr_out\(27),
	combout => \MEM|Equal1~6_combout\);

-- Location: LCCOMB_X34_Y17_N0
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(23) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(23))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(23),
	datab => \PROGCOUNT|addr_out\(23),
	datac => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(23));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y20_N20
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(22) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(22))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(22),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(22));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y20_N4
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(24) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(24))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(24),
	datac => \PROGCOUNT|addr_out\(24),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(24));

-- Location: LCCOMB_X33_Y18_N6
\MEM|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~5_combout\ = (!\PROGCOUNT|addr_out\(21) & (!\PROGCOUNT|addr_out\(23) & (!\PROGCOUNT|addr_out\(22) & !\PROGCOUNT|addr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(21),
	datab => \PROGCOUNT|addr_out\(23),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \PROGCOUNT|addr_out\(24),
	combout => \MEM|Equal1~5_combout\);

-- Location: LCCOMB_X33_Y18_N28
\MEM|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal1~8_combout\ = (\MEM|Equal1~7_combout\ & (\MEM|Equal1~6_combout\ & \MEM|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|Equal1~7_combout\,
	datac => \MEM|Equal1~6_combout\,
	datad => \MEM|Equal1~5_combout\,
	combout => \MEM|Equal1~8_combout\);

-- Location: LCCOMB_X33_Y18_N30
\MEM|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal3~2_combout\ = (!\PROGCOUNT|addr_out\(4) & (\MEM|Equal1~4_combout\ & \MEM|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(4),
	datac => \MEM|Equal1~4_combout\,
	datad => \MEM|Equal1~8_combout\,
	combout => \MEM|Equal3~2_combout\);

-- Location: LCCOMB_X33_Y18_N22
\MEM|data_out[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[2]~1_combout\ = (\PROGCOUNT|addr_out\(3) & (\PROGCOUNT|addr_out\(2) & \MEM|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \MEM|Equal3~2_combout\,
	combout => \MEM|data_out[2]~1_combout\);

-- Location: LCCOMB_X33_Y18_N24
\INSTREG|func_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|func_out\(2) = (\CONTROLU|IRwr~combout\ & ((\MEM|data_out[2]~1_combout\))) # (!\CONTROLU|IRwr~combout\ & (\INSTREG|func_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(2),
	datac => \CONTROLU|IRwr~combout\,
	datad => \MEM|data_out[2]~1_combout\,
	combout => \INSTREG|func_out\(2));

-- Location: LCCOMB_X33_Y18_N26
\MEM|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[0]~0_combout\ = ((!\PROGCOUNT|addr_out\(3) & !\PROGCOUNT|addr_out\(2))) # (!\MEM|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \MEM|Equal3~0_combout\,
	combout => \MEM|data_out[0]~0_combout\);

-- Location: LCCOMB_X33_Y18_N4
\INSTREG|imm_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(0) = (\CONTROLU|IRwr~combout\ & ((\MEM|data_out[0]~0_combout\))) # (!\CONTROLU|IRwr~combout\ & (\INSTREG|imm_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(0),
	datac => \CONTROLU|IRwr~combout\,
	datad => \MEM|data_out[0]~0_combout\,
	combout => \INSTREG|imm_out\(0));

-- Location: LCCOMB_X34_Y20_N10
\ALUCOMP|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~0_combout\ = ((\INSTREG|imm_out\(0) & ((\ALUCONTRL|op\(2)))) # (!\INSTREG|imm_out\(0) & (!\INSTREG|func_out\(2)))) # (!\CONTROLU|ALUop\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|func_out\(2),
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCONTRL|op\(2),
	combout => \ALUCOMP|Mux21~0_combout\);

-- Location: LCCOMB_X30_Y18_N18
\CONTROLU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~0_combout\ = (!\NEWST|CS\(1) & !\NEWST|CS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	combout => \CONTROLU|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y18_N8
\CONTROLU|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~3_combout\ = \NEWST|CS\(1) $ (\NEWST|CS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	combout => \CONTROLU|comb~3_combout\);

-- Location: LCCOMB_X30_Y18_N10
\CONTROLU|ALUsrcB[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB\(0) = (!\CONTROLU|comb~3_combout\ & ((\CONTROLU|Equal0~0_combout\) # (\CONTROLU|ALUsrcB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|Equal0~0_combout\,
	datac => \CONTROLU|comb~3_combout\,
	datad => \CONTROLU|ALUsrcB\(0),
	combout => \CONTROLU|ALUsrcB\(0));

-- Location: CLKCTRL_G7
\CONTROLU|IRwr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|IRwr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|IRwr~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y20_N14
\INSTREG|r2_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r2_out\(3) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (\MEM|data_out[19]~3_combout\)) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((\INSTREG|r2_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|data_out[19]~3_combout\,
	datac => \INSTREG|r2_out\(3),
	datad => \CONTROLU|IRwr~clkctrl_outclk\,
	combout => \INSTREG|r2_out\(3));

-- Location: LCCOMB_X33_Y20_N18
\regB|dt_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|dt_out[0]~0_combout\ = !\INSTREG|r2_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INSTREG|r2_out\(3),
	combout => \regB|dt_out[0]~0_combout\);

-- Location: LCFF_X33_Y20_N19
\regB|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \regB|dt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(0));

-- Location: LCCOMB_X33_Y20_N14
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(0),
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCCOMB_X30_Y18_N2
\CONTROLU|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~5_combout\ = (!\NEWST|CS\(0) & (\NEWST|CS\(1) $ (\NEWST|CS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~5_combout\);

-- Location: LCCOMB_X30_Y18_N16
\CONTROLU|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~4_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(0))) # (!\NEWST|CS\(1) & ((\NEWST|CS\(0)) # (!\NEWST|CS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~4_combout\);

-- Location: LCCOMB_X30_Y18_N0
\CONTROLU|ALUsrcA\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcA~combout\ = (!\CONTROLU|comb~4_combout\ & ((\CONTROLU|comb~5_combout\) # (\CONTROLU|ALUsrcA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~5_combout\,
	datac => \CONTROLU|comb~4_combout\,
	datad => \CONTROLU|ALUsrcA~combout\,
	combout => \CONTROLU|ALUsrcA~combout\);

-- Location: LCCOMB_X35_Y18_N16
\MUXA|salida[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~2_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(30),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[30]~2_combout\);

-- Location: LCCOMB_X35_Y19_N2
\ALUCONTRL|op[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op\(0) = (\CONTROLU|ALUop\(1) & \INSTREG|imm_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCONTRL|op\(0));

-- Location: LCCOMB_X35_Y18_N20
\ALUCOMP|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[30]~2_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXB|Mux25~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & (\MUXA|salida[30]~2_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datac => \MUXA|salida[30]~2_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux1~2_combout\);

-- Location: LCCOMB_X31_Y17_N22
\ALUCOMP|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~88_combout\ = \MUXB|Mux25~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \CONTROLU|ALUop\(0),
	datac => \INSTREG|func_out\(1),
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Add0~88_combout\);

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y18_N28
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(29) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(29)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(29),
	datac => \MemDir~combout\(29),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X34_Y18_N16
\MUXA|salida[29]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~1_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(29),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[29]~1_combout\);

-- Location: LCCOMB_X32_Y17_N8
\MUXA|salida[28]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~15_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datab => \CONTROLU|ALUsrcA~combout\,
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[28]~15_combout\);

-- Location: LCCOMB_X32_Y17_N18
\MUXA|salida[27]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~14_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(27),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[27]~14_combout\);

-- Location: LCCOMB_X34_Y17_N12
\MUXA|salida[23]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~10_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(23),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[23]~10_combout\);

-- Location: LCCOMB_X32_Y20_N24
\MUXA|salida[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~9_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(22),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[22]~9_combout\);

-- Location: LCCOMB_X32_Y21_N0
\MUXA|salida[20]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~7_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(20),
	datac => \regB|dt_out\(0),
	combout => \MUXA|salida[20]~7_combout\);

-- Location: LCCOMB_X32_Y21_N14
\MUXA|salida[18]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~5_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(18),
	combout => \MUXA|salida[18]~5_combout\);

-- Location: LCCOMB_X30_Y18_N28
\CONTROLU|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~1_combout\ = ((!\NEWST|CS\(3) & \NEWST|CS\(0))) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~1_combout\);

-- Location: LCCOMB_X30_Y18_N6
\CONTROLU|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal2~0_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(3) & !\NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y18_N20
\CONTROLU|ALUop[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUop\(1) = (!\CONTROLU|comb~1_combout\ & ((\CONTROLU|ALUop\(1)) # (\CONTROLU|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~1_combout\,
	datac => \CONTROLU|ALUop\(1),
	datad => \CONTROLU|Equal2~0_combout\,
	combout => \CONTROLU|ALUop\(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y18_N0
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(1) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(1)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(1),
	datac => \MemDir~combout\(1),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X33_Y18_N2
\MEM|data_out[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|data_out[5]~2_combout\ = ((\PROGCOUNT|addr_out\(3) & (!\PROGCOUNT|addr_out\(2) & \PROGCOUNT|addr_out\(1))) # (!\PROGCOUNT|addr_out\(3) & ((\PROGCOUNT|addr_out\(1)) # (!\PROGCOUNT|addr_out\(2))))) # (!\MEM|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \PROGCOUNT|addr_out\(2),
	datac => \PROGCOUNT|addr_out\(1),
	datad => \MEM|Equal3~2_combout\,
	combout => \MEM|data_out[5]~2_combout\);

-- Location: LCCOMB_X33_Y18_N0
\INSTREG|imm_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(14) = (\CONTROLU|IRwr~combout\ & ((!\MEM|data_out[5]~2_combout\))) # (!\CONTROLU|IRwr~combout\ & (\INSTREG|imm_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(14),
	datac => \CONTROLU|IRwr~combout\,
	datad => \MEM|data_out[5]~2_combout\,
	combout => \INSTREG|imm_out\(14));

-- Location: LCCOMB_X31_Y20_N12
\CONTROLU|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~2_combout\ = (\NEWST|CS\(3) & (!\NEWST|CS\(1))) # (!\NEWST|CS\(3) & ((\NEWST|CS\(1)) # (!\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(3),
	datab => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~2_combout\);

-- Location: LCCOMB_X31_Y20_N26
\CONTROLU|ALUsrcB[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB\(1) = (!\CONTROLU|comb~2_combout\ & ((\CONTROLU|Equal1~0_combout\) # (\CONTROLU|ALUsrcB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal1~0_combout\,
	datac => \CONTROLU|comb~2_combout\,
	datad => \CONTROLU|ALUsrcB\(1),
	combout => \CONTROLU|ALUsrcB\(1));

-- Location: LCCOMB_X32_Y19_N16
\MUXB|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux15~0_combout\ = (\CONTROLU|ALUsrcB\(0) & (\INSTREG|imm_out\(14) & ((\CONTROLU|ALUsrcB\(1))))) # (!\CONTROLU|ALUsrcB\(0) & (((\regB|dt_out\(0) & !\CONTROLU|ALUsrcB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \INSTREG|imm_out\(14),
	datac => \regB|dt_out\(0),
	datad => \CONTROLU|ALUsrcB\(1),
	combout => \MUXB|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\ALUCOMP|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~91_combout\ = \MUXB|Mux15~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \CONTROLU|ALUop\(1),
	datac => \MUXB|Mux15~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCOMP|Add0~91_combout\);

-- Location: LCCOMB_X33_Y18_N12
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (((\INSTREG|imm_out\(14))))) # (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \regB|dt_out\(0),
	datad => \INSTREG|imm_out\(14),
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\ALUCOMP|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~92_combout\ = \MUXB|Mux17~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\INSTREG|func_out\(1) & \CONTROLU|ALUop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUop\(1),
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|Add0~92_combout\);

-- Location: LCCOMB_X32_Y20_N16
\MUXA|salida[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~20_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[12]~20_combout\);

-- Location: LCCOMB_X32_Y18_N26
\MUXB|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux19~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & ((\CONTROLU|ALUsrcB\(1) & (\INSTREG|imm_out\(14))) # (!\CONTROLU|ALUsrcB\(1) & ((\regB|dt_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \INSTREG|imm_out\(14),
	datad => \regB|dt_out\(0),
	combout => \MUXB|Mux19~0_combout\);

-- Location: LCCOMB_X32_Y18_N22
\ALUCOMP|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~87_combout\ = \MUXB|Mux19~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\INSTREG|func_out\(1) & \CONTROLU|ALUop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUop\(1),
	datad => \MUXB|Mux19~0_combout\,
	combout => \ALUCOMP|Add0~87_combout\);

-- Location: LCCOMB_X33_Y20_N20
\REGFILE|Equal35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|Equal35~0_combout\ = (\INSTREG|imm_out\(14)) # (!\INSTREG|r2_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|imm_out\(14),
	datad => \INSTREG|r2_out\(3),
	combout => \REGFILE|Equal35~0_combout\);

-- Location: LCFF_X33_Y20_N21
\regB|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \REGFILE|Equal35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(8));

-- Location: LCCOMB_X33_Y20_N8
\MUXB|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux23~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(8),
	combout => \MUXB|Mux23~0_combout\);

-- Location: LCCOMB_X32_Y18_N20
\ALUCOMP|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~90_combout\ = \MUXB|Mux23~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\INSTREG|func_out\(1) & \CONTROLU|ALUop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUop\(1),
	datad => \MUXB|Mux23~0_combout\,
	combout => \ALUCOMP|Add0~90_combout\);

-- Location: LCCOMB_X30_Y19_N16
\REGFILE|Equal33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|Equal33~0_combout\ = (!\INSTREG|imm_out\(14)) # (!\INSTREG|r2_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r2_out\(3),
	datad => \INSTREG|imm_out\(14),
	combout => \REGFILE|Equal33~0_combout\);

-- Location: LCFF_X30_Y19_N9
\regB|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \REGFILE|Equal33~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(7));

-- Location: LCCOMB_X30_Y19_N8
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (\CONTROLU|ALUsrcB\(0) & ((\INSTREG|imm_out\(14))))) # (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(7),
	datad => \INSTREG|imm_out\(14),
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\ALUCOMP|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~89_combout\ = \MUXB|Mux24~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \CONTROLU|ALUop\(1),
	datac => \MUXB|Mux24~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCOMP|Add0~89_combout\);

-- Location: LCCOMB_X32_Y20_N12
\MUXA|salida[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~24_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(6),
	combout => \MUXA|salida[6]~24_combout\);

-- Location: LCCOMB_X34_Y19_N20
\MUXB|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux27~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (\CONTROLU|ALUsrcB\(0) & ((\INSTREG|func_out\(2))))) # (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \INSTREG|func_out\(2),
	combout => \MUXB|Mux27~0_combout\);

-- Location: LCCOMB_X31_Y19_N0
\ALUCOMP|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~86_combout\ = \MUXB|Mux27~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \CONTROLU|ALUop\(0),
	datac => \MUXB|Mux27~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCOMP|Add0~86_combout\);

-- Location: LCCOMB_X34_Y19_N10
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (\CONTROLU|ALUsrcB\(0) & ((\INSTREG|func_out\(1))))) # (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \INSTREG|func_out\(1),
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCCOMB_X30_Y19_N26
\ALUCOMP|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~85_combout\ = \MUXB|Mux28~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \CONTROLU|ALUop\(1),
	datac => \MUXB|Mux28~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCOMP|Add0~85_combout\);

-- Location: LCCOMB_X34_Y20_N16
\MUXA|salida[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~29_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(2),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[2]~29_combout\);

-- Location: LCCOMB_X34_Y19_N28
\MUXA|salida[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~28_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(1),
	combout => \MUXA|salida[1]~28_combout\);

-- Location: LCCOMB_X34_Y19_N22
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & ((\CONTROLU|ALUsrcB\(1) & ((\INSTREG|imm_out\(0)))) # (!\CONTROLU|ALUsrcB\(1) & (\regB|dt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \INSTREG|imm_out\(0),
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCCOMB_X31_Y19_N4
\ALUCOMP|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~16_combout\ = \MUXB|Mux31~0_combout\ $ (((\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUop\(0),
	datad => \MUXB|Mux31~0_combout\,
	combout => \ALUCOMP|Add0~16_combout\);

-- Location: LCCOMB_X31_Y19_N2
\ALUCONTRL|op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op~0_combout\ = (\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datad => \INSTREG|func_out\(1),
	combout => \ALUCONTRL|op~0_combout\);

-- Location: LCCOMB_X31_Y19_N16
\ALUCOMP|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~18_cout\ = CARRY((\CONTROLU|ALUop\(0)) # (\ALUCONTRL|op~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(0),
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|Add0~18_cout\);

-- Location: LCCOMB_X31_Y19_N24
\ALUCOMP|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~27_combout\ = ((\MUXA|salida[3]~30_combout\ $ (\ALUCOMP|Add0~85_combout\ $ (!\ALUCOMP|Add0~26\)))) # (GND)
-- \ALUCOMP|Add0~28\ = CARRY((\MUXA|salida[3]~30_combout\ & ((\ALUCOMP|Add0~85_combout\) # (!\ALUCOMP|Add0~26\))) # (!\MUXA|salida[3]~30_combout\ & (\ALUCOMP|Add0~85_combout\ & !\ALUCOMP|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~30_combout\,
	datab => \ALUCOMP|Add0~85_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~26\,
	combout => \ALUCOMP|Add0~27_combout\,
	cout => \ALUCOMP|Add0~28\);

-- Location: LCCOMB_X31_Y19_N28
\ALUCOMP|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~31_combout\ = ((\MUXA|salida[5]~26_combout\ $ (\ALUCOMP|Add0~87_combout\ $ (!\ALUCOMP|Add0~30\)))) # (GND)
-- \ALUCOMP|Add0~32\ = CARRY((\MUXA|salida[5]~26_combout\ & ((\ALUCOMP|Add0~87_combout\) # (!\ALUCOMP|Add0~30\))) # (!\MUXA|salida[5]~26_combout\ & (\ALUCOMP|Add0~87_combout\ & !\ALUCOMP|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~26_combout\,
	datab => \ALUCOMP|Add0~87_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~30\,
	combout => \ALUCOMP|Add0~31_combout\,
	cout => \ALUCOMP|Add0~32\);

-- Location: LCCOMB_X31_Y18_N0
\ALUCOMP|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~35_combout\ = ((\MUXA|salida[7]~25_combout\ $ (\ALUCOMP|Add0~89_combout\ $ (!\ALUCOMP|Add0~34\)))) # (GND)
-- \ALUCOMP|Add0~36\ = CARRY((\MUXA|salida[7]~25_combout\ & ((\ALUCOMP|Add0~89_combout\) # (!\ALUCOMP|Add0~34\))) # (!\MUXA|salida[7]~25_combout\ & (\ALUCOMP|Add0~89_combout\ & !\ALUCOMP|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[7]~25_combout\,
	datab => \ALUCOMP|Add0~89_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~34\,
	combout => \ALUCOMP|Add0~35_combout\,
	cout => \ALUCOMP|Add0~36\);

-- Location: LCCOMB_X31_Y18_N4
\ALUCOMP|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~39_combout\ = ((\MUXA|salida[9]~21_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~38\)))) # (GND)
-- \ALUCOMP|Add0~40\ = CARRY((\MUXA|salida[9]~21_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~38\))) # (!\MUXA|salida[9]~21_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~21_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~38\,
	combout => \ALUCOMP|Add0~39_combout\,
	cout => \ALUCOMP|Add0~40\);

-- Location: LCCOMB_X31_Y18_N10
\ALUCOMP|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~45_combout\ = (\ALUCOMP|Add0~87_combout\ & ((\MUXA|salida[12]~20_combout\ & (\ALUCOMP|Add0~44\ & VCC)) # (!\MUXA|salida[12]~20_combout\ & (!\ALUCOMP|Add0~44\)))) # (!\ALUCOMP|Add0~87_combout\ & ((\MUXA|salida[12]~20_combout\ & 
-- (!\ALUCOMP|Add0~44\)) # (!\MUXA|salida[12]~20_combout\ & ((\ALUCOMP|Add0~44\) # (GND)))))
-- \ALUCOMP|Add0~46\ = CARRY((\ALUCOMP|Add0~87_combout\ & (!\MUXA|salida[12]~20_combout\ & !\ALUCOMP|Add0~44\)) # (!\ALUCOMP|Add0~87_combout\ & ((!\ALUCOMP|Add0~44\) # (!\MUXA|salida[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~87_combout\,
	datab => \MUXA|salida[12]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~44\,
	combout => \ALUCOMP|Add0~45_combout\,
	cout => \ALUCOMP|Add0~46\);

-- Location: LCCOMB_X31_Y18_N12
\ALUCOMP|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~47_combout\ = ((\MUXA|salida[13]~18_combout\ $ (\ALUCOMP|Add0~91_combout\ $ (!\ALUCOMP|Add0~46\)))) # (GND)
-- \ALUCOMP|Add0~48\ = CARRY((\MUXA|salida[13]~18_combout\ & ((\ALUCOMP|Add0~91_combout\) # (!\ALUCOMP|Add0~46\))) # (!\MUXA|salida[13]~18_combout\ & (\ALUCOMP|Add0~91_combout\ & !\ALUCOMP|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~18_combout\,
	datab => \ALUCOMP|Add0~91_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~46\,
	combout => \ALUCOMP|Add0~47_combout\,
	cout => \ALUCOMP|Add0~48\);

-- Location: LCCOMB_X31_Y18_N16
\ALUCOMP|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~51_combout\ = ((\MUXA|salida[15]~31_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~50\)))) # (GND)
-- \ALUCOMP|Add0~52\ = CARRY((\MUXA|salida[15]~31_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~50\))) # (!\MUXA|salida[15]~31_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~31_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~50\,
	combout => \ALUCOMP|Add0~51_combout\,
	cout => \ALUCOMP|Add0~52\);

-- Location: LCCOMB_X31_Y18_N18
\ALUCOMP|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~53_combout\ = (\MUXA|salida[16]~16_combout\ & ((\ALUCOMP|Add0~91_combout\ & (\ALUCOMP|Add0~52\ & VCC)) # (!\ALUCOMP|Add0~91_combout\ & (!\ALUCOMP|Add0~52\)))) # (!\MUXA|salida[16]~16_combout\ & ((\ALUCOMP|Add0~91_combout\ & 
-- (!\ALUCOMP|Add0~52\)) # (!\ALUCOMP|Add0~91_combout\ & ((\ALUCOMP|Add0~52\) # (GND)))))
-- \ALUCOMP|Add0~54\ = CARRY((\MUXA|salida[16]~16_combout\ & (!\ALUCOMP|Add0~91_combout\ & !\ALUCOMP|Add0~52\)) # (!\MUXA|salida[16]~16_combout\ & ((!\ALUCOMP|Add0~52\) # (!\ALUCOMP|Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~16_combout\,
	datab => \ALUCOMP|Add0~91_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~52\,
	combout => \ALUCOMP|Add0~53_combout\,
	cout => \ALUCOMP|Add0~54\);

-- Location: LCCOMB_X31_Y18_N20
\ALUCOMP|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~55_combout\ = ((\MUXA|salida[17]~4_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~54\)))) # (GND)
-- \ALUCOMP|Add0~56\ = CARRY((\MUXA|salida[17]~4_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~54\))) # (!\MUXA|salida[17]~4_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~4_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~54\,
	combout => \ALUCOMP|Add0~55_combout\,
	cout => \ALUCOMP|Add0~56\);

-- Location: LCCOMB_X31_Y18_N24
\ALUCOMP|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~59_combout\ = ((\MUXA|salida[19]~6_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~58\)))) # (GND)
-- \ALUCOMP|Add0~60\ = CARRY((\MUXA|salida[19]~6_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~58\))) # (!\MUXA|salida[19]~6_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~6_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~58\,
	combout => \ALUCOMP|Add0~59_combout\,
	cout => \ALUCOMP|Add0~60\);

-- Location: LCCOMB_X31_Y18_N28
\ALUCOMP|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~63_combout\ = ((\MUXA|salida[21]~8_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~62\)))) # (GND)
-- \ALUCOMP|Add0~64\ = CARRY((\MUXA|salida[21]~8_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~62\))) # (!\MUXA|salida[21]~8_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~8_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~62\,
	combout => \ALUCOMP|Add0~63_combout\,
	cout => \ALUCOMP|Add0~64\);

-- Location: LCCOMB_X31_Y18_N30
\ALUCOMP|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~65_combout\ = (\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[22]~9_combout\ & (\ALUCOMP|Add0~64\ & VCC)) # (!\MUXA|salida[22]~9_combout\ & (!\ALUCOMP|Add0~64\)))) # (!\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[22]~9_combout\ & 
-- (!\ALUCOMP|Add0~64\)) # (!\MUXA|salida[22]~9_combout\ & ((\ALUCOMP|Add0~64\) # (GND)))))
-- \ALUCOMP|Add0~66\ = CARRY((\ALUCOMP|Add0~88_combout\ & (!\MUXA|salida[22]~9_combout\ & !\ALUCOMP|Add0~64\)) # (!\ALUCOMP|Add0~88_combout\ & ((!\ALUCOMP|Add0~64\) # (!\MUXA|salida[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[22]~9_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~64\,
	combout => \ALUCOMP|Add0~65_combout\,
	cout => \ALUCOMP|Add0~66\);

-- Location: LCCOMB_X31_Y17_N0
\ALUCOMP|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~67_combout\ = ((\ALUCOMP|Add0~88_combout\ $ (\MUXA|salida[23]~10_combout\ $ (!\ALUCOMP|Add0~66\)))) # (GND)
-- \ALUCOMP|Add0~68\ = CARRY((\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[23]~10_combout\) # (!\ALUCOMP|Add0~66\))) # (!\ALUCOMP|Add0~88_combout\ & (\MUXA|salida[23]~10_combout\ & !\ALUCOMP|Add0~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[23]~10_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~66\,
	combout => \ALUCOMP|Add0~67_combout\,
	cout => \ALUCOMP|Add0~68\);

-- Location: LCCOMB_X31_Y17_N2
\ALUCOMP|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~69_combout\ = (\MUXA|salida[24]~11_combout\ & ((\ALUCOMP|Add0~88_combout\ & (\ALUCOMP|Add0~68\ & VCC)) # (!\ALUCOMP|Add0~88_combout\ & (!\ALUCOMP|Add0~68\)))) # (!\MUXA|salida[24]~11_combout\ & ((\ALUCOMP|Add0~88_combout\ & 
-- (!\ALUCOMP|Add0~68\)) # (!\ALUCOMP|Add0~88_combout\ & ((\ALUCOMP|Add0~68\) # (GND)))))
-- \ALUCOMP|Add0~70\ = CARRY((\MUXA|salida[24]~11_combout\ & (!\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~68\)) # (!\MUXA|salida[24]~11_combout\ & ((!\ALUCOMP|Add0~68\) # (!\ALUCOMP|Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[24]~11_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~68\,
	combout => \ALUCOMP|Add0~69_combout\,
	cout => \ALUCOMP|Add0~70\);

-- Location: LCCOMB_X31_Y17_N4
\ALUCOMP|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~71_combout\ = ((\MUXA|salida[25]~12_combout\ $ (\ALUCOMP|Add0~88_combout\ $ (!\ALUCOMP|Add0~70\)))) # (GND)
-- \ALUCOMP|Add0~72\ = CARRY((\MUXA|salida[25]~12_combout\ & ((\ALUCOMP|Add0~88_combout\) # (!\ALUCOMP|Add0~70\))) # (!\MUXA|salida[25]~12_combout\ & (\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~12_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~70\,
	combout => \ALUCOMP|Add0~71_combout\,
	cout => \ALUCOMP|Add0~72\);

-- Location: LCCOMB_X31_Y17_N6
\ALUCOMP|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~73_combout\ = (\MUXA|salida[26]~13_combout\ & ((\ALUCOMP|Add0~88_combout\ & (\ALUCOMP|Add0~72\ & VCC)) # (!\ALUCOMP|Add0~88_combout\ & (!\ALUCOMP|Add0~72\)))) # (!\MUXA|salida[26]~13_combout\ & ((\ALUCOMP|Add0~88_combout\ & 
-- (!\ALUCOMP|Add0~72\)) # (!\ALUCOMP|Add0~88_combout\ & ((\ALUCOMP|Add0~72\) # (GND)))))
-- \ALUCOMP|Add0~74\ = CARRY((\MUXA|salida[26]~13_combout\ & (!\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~72\)) # (!\MUXA|salida[26]~13_combout\ & ((!\ALUCOMP|Add0~72\) # (!\ALUCOMP|Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~13_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~72\,
	combout => \ALUCOMP|Add0~73_combout\,
	cout => \ALUCOMP|Add0~74\);

-- Location: LCCOMB_X31_Y17_N10
\ALUCOMP|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~77_combout\ = (\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[28]~15_combout\ & (\ALUCOMP|Add0~76\ & VCC)) # (!\MUXA|salida[28]~15_combout\ & (!\ALUCOMP|Add0~76\)))) # (!\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[28]~15_combout\ & 
-- (!\ALUCOMP|Add0~76\)) # (!\MUXA|salida[28]~15_combout\ & ((\ALUCOMP|Add0~76\) # (GND)))))
-- \ALUCOMP|Add0~78\ = CARRY((\ALUCOMP|Add0~88_combout\ & (!\MUXA|salida[28]~15_combout\ & !\ALUCOMP|Add0~76\)) # (!\ALUCOMP|Add0~88_combout\ & ((!\ALUCOMP|Add0~76\) # (!\MUXA|salida[28]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[28]~15_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~76\,
	combout => \ALUCOMP|Add0~77_combout\,
	cout => \ALUCOMP|Add0~78\);

-- Location: LCCOMB_X31_Y17_N12
\ALUCOMP|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~79_combout\ = ((\ALUCOMP|Add0~88_combout\ $ (\MUXA|salida[29]~1_combout\ $ (!\ALUCOMP|Add0~78\)))) # (GND)
-- \ALUCOMP|Add0~80\ = CARRY((\ALUCOMP|Add0~88_combout\ & ((\MUXA|salida[29]~1_combout\) # (!\ALUCOMP|Add0~78\))) # (!\ALUCOMP|Add0~88_combout\ & (\MUXA|salida[29]~1_combout\ & !\ALUCOMP|Add0~78\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~88_combout\,
	datab => \MUXA|salida[29]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~78\,
	combout => \ALUCOMP|Add0~79_combout\,
	cout => \ALUCOMP|Add0~80\);

-- Location: LCCOMB_X31_Y17_N14
\ALUCOMP|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~81_combout\ = (\MUXA|salida[30]~2_combout\ & ((\ALUCOMP|Add0~88_combout\ & (\ALUCOMP|Add0~80\ & VCC)) # (!\ALUCOMP|Add0~88_combout\ & (!\ALUCOMP|Add0~80\)))) # (!\MUXA|salida[30]~2_combout\ & ((\ALUCOMP|Add0~88_combout\ & 
-- (!\ALUCOMP|Add0~80\)) # (!\ALUCOMP|Add0~88_combout\ & ((\ALUCOMP|Add0~80\) # (GND)))))
-- \ALUCOMP|Add0~82\ = CARRY((\MUXA|salida[30]~2_combout\ & (!\ALUCOMP|Add0~88_combout\ & !\ALUCOMP|Add0~80\)) # (!\MUXA|salida[30]~2_combout\ & ((!\ALUCOMP|Add0~80\) # (!\ALUCOMP|Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~2_combout\,
	datab => \ALUCOMP|Add0~88_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~80\,
	combout => \ALUCOMP|Add0~81_combout\,
	cout => \ALUCOMP|Add0~82\);

-- Location: LCCOMB_X34_Y18_N18
\MUXA|salida[31]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~3_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(31),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[31]~3_combout\);

-- Location: LCCOMB_X34_Y18_N4
\ALUCOMP|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~6_combout\ = (\MUXA|salida[29]~1_combout\ & (\MUXA|salida[31]~3_combout\ & (\MUXA|salida[30]~2_combout\ & \MUXB|Mux25~0_combout\))) # (!\MUXA|salida[29]~1_combout\ & (!\MUXA|salida[31]~3_combout\ & (!\MUXA|salida[30]~2_combout\ & 
-- !\MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~1_combout\,
	datab => \MUXA|salida[31]~3_combout\,
	datac => \MUXA|salida[30]~2_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y17_N24
\ALUCOMP|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~8_combout\ = ((!\PROGCOUNT|addr_out\(26)) # (!\PROGCOUNT|addr_out\(27))) # (!\PROGCOUNT|addr_out\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datac => \PROGCOUNT|addr_out\(27),
	datad => \PROGCOUNT|addr_out\(26),
	combout => \ALUCOMP|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y17_N26
\ALUCOMP|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~4_combout\ = (!\CONTROLU|ALUsrcA~combout\ & (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(0),
	combout => \ALUCOMP|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y17_N22
\ALUCOMP|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~9_combout\ = (\ALUCOMP|LessThan0~4_combout\ & ((\ALUCOMP|LessThan0~7_combout\) # (\ALUCOMP|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~7_combout\,
	datac => \ALUCOMP|LessThan0~8_combout\,
	datad => \ALUCOMP|LessThan0~4_combout\,
	combout => \ALUCOMP|LessThan0~9_combout\);

-- Location: LCCOMB_X33_Y18_N20
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(21) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(21))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(21),
	datac => \PROGCOUNT|addr_out\(21),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(21));

-- Location: LCCOMB_X33_Y21_N0
\ALUCOMP|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~11_combout\ = ((!\PROGCOUNT|addr_out\(21)) # (!\PROGCOUNT|addr_out\(20))) # (!\PROGCOUNT|addr_out\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(19),
	datac => \PROGCOUNT|addr_out\(20),
	datad => \PROGCOUNT|addr_out\(21),
	combout => \ALUCOMP|LessThan0~11_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y21_N16
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(17) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(17))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(17),
	datac => \PROGCOUNT|addr_out\(17),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(17));

-- Location: LCCOMB_X33_Y21_N14
\ALUCOMP|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~10_combout\ = (((\PROGCOUNT|addr_out\(16) & !\PROGCOUNT|addr_out\(15))) # (!\PROGCOUNT|addr_out\(18))) # (!\PROGCOUNT|addr_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(16),
	datab => \PROGCOUNT|addr_out\(15),
	datac => \PROGCOUNT|addr_out\(17),
	datad => \PROGCOUNT|addr_out\(18),
	combout => \ALUCOMP|LessThan0~10_combout\);

-- Location: LCCOMB_X33_Y21_N26
\ALUCOMP|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~12_combout\ = (!\CONTROLU|ALUsrcA~combout\ & (\MUXB|Mux25~0_combout\ & ((\ALUCOMP|LessThan0~11_combout\) # (\ALUCOMP|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \ALUCOMP|LessThan0~11_combout\,
	datac => \ALUCOMP|LessThan0~10_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~12_combout\);

-- Location: LCCOMB_X32_Y17_N16
\MUXA|salida[25]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~12_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(25),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[25]~12_combout\);

-- Location: LCCOMB_X32_Y17_N10
\ALUCOMP|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~16_combout\ = (\MUXA|salida[26]~13_combout\ & (\MUXA|salida[27]~14_combout\ & (\MUXA|salida[25]~12_combout\ & \MUXB|Mux25~0_combout\))) # (!\MUXA|salida[26]~13_combout\ & (!\MUXA|salida[27]~14_combout\ & (!\MUXA|salida[25]~12_combout\ & 
-- !\MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~13_combout\,
	datab => \MUXA|salida[27]~14_combout\,
	datac => \MUXA|salida[25]~12_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~16_combout\);

-- Location: LCCOMB_X32_Y17_N28
\ALUCOMP|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~17_combout\ = (\ALUCOMP|LessThan0~15_combout\ & (\ALUCOMP|LessThan0~16_combout\ & (\MUXA|salida[28]~15_combout\ $ (!\MUXB|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~15_combout\,
	datab => \MUXA|salida[28]~15_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCOMP|LessThan0~16_combout\,
	combout => \ALUCOMP|LessThan0~17_combout\);

-- Location: LCCOMB_X32_Y20_N28
\MUXA|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~16_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(16),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[16]~16_combout\);

-- Location: LCCOMB_X33_Y20_N30
\MUXA|salida[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~25_combout\ = (\CONTROLU|ALUsrcA~combout\) # (\PROGCOUNT|addr_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(7),
	combout => \MUXA|salida[7]~25_combout\);

-- Location: LCCOMB_X33_Y19_N20
\ALUCOMP|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~27_combout\ = (\MUXB|Mux24~0_combout\ & (((!\MUXA|salida[6]~24_combout\ & \MUXB|Mux25~0_combout\)) # (!\MUXA|salida[7]~25_combout\))) # (!\MUXB|Mux24~0_combout\ & (!\MUXA|salida[7]~25_combout\ & (!\MUXA|salida[6]~24_combout\ & 
-- \MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~25_combout\,
	datac => \MUXA|salida[6]~24_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~27_combout\);

-- Location: LCCOMB_X33_Y19_N14
\ALUCOMP|LessThan0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~28_combout\ = (\MUXB|Mux24~0_combout\ & ((\MUXA|salida[6]~24_combout\ $ (\MUXB|Mux25~0_combout\)) # (!\MUXA|salida[7]~25_combout\))) # (!\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~25_combout\) # (\MUXA|salida[6]~24_combout\ $ 
-- (\MUXB|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~25_combout\,
	datac => \MUXA|salida[6]~24_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|LessThan0~28_combout\);

-- Location: LCCOMB_X34_Y19_N4
\ALUCOMP|LessThan0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~38_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((!\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (!\PROGCOUNT|addr_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(4),
	datad => \regB|dt_out\(0),
	combout => \ALUCOMP|LessThan0~38_combout\);

-- Location: LCCOMB_X34_Y19_N24
\ALUCOMP|LessThan0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~32_combout\ = (\MUXB|Mux28~0_combout\ & ((\CONTROLU|ALUsrcA~combout\ & ((!\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (!\PROGCOUNT|addr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \MUXB|Mux28~0_combout\,
	combout => \ALUCOMP|LessThan0~32_combout\);

-- Location: LCCOMB_X34_Y19_N14
\ALUCOMP|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~30_combout\ = \MUXB|Mux28~0_combout\ $ (((\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \MUXB|Mux28~0_combout\,
	combout => \ALUCOMP|LessThan0~30_combout\);

-- Location: LCCOMB_X34_Y19_N8
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & ((\CONTROLU|ALUsrcB\(1) & (\INSTREG|func_out\(1))) # (!\CONTROLU|ALUsrcB\(1) & ((\regB|dt_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(0),
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCCOMB_X34_Y19_N0
\ALUCOMP|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~29_combout\ = (\MUXB|Mux30~0_combout\ & (((!\MUXA|salida[0]~0_combout\ & \MUXB|Mux31~0_combout\)) # (!\MUXA|salida[1]~28_combout\))) # (!\MUXB|Mux30~0_combout\ & (!\MUXA|salida[0]~0_combout\ & (\MUXB|Mux31~0_combout\ & 
-- !\MUXA|salida[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~0_combout\,
	datab => \MUXB|Mux31~0_combout\,
	datac => \MUXB|Mux30~0_combout\,
	datad => \MUXA|salida[1]~28_combout\,
	combout => \ALUCOMP|LessThan0~29_combout\);

-- Location: LCCOMB_X34_Y19_N30
\ALUCOMP|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~31_combout\ = (!\ALUCOMP|LessThan0~30_combout\ & ((\MUXB|Mux29~1_combout\ & ((\ALUCOMP|LessThan0~29_combout\) # (!\MUXA|salida[2]~29_combout\))) # (!\MUXB|Mux29~1_combout\ & (!\MUXA|salida[2]~29_combout\ & 
-- \ALUCOMP|LessThan0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux29~1_combout\,
	datab => \ALUCOMP|LessThan0~30_combout\,
	datac => \MUXA|salida[2]~29_combout\,
	datad => \ALUCOMP|LessThan0~29_combout\,
	combout => \ALUCOMP|LessThan0~31_combout\);

-- Location: LCCOMB_X34_Y19_N2
\ALUCOMP|LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~39_combout\ = (\MUXB|Mux27~0_combout\ & ((\ALUCOMP|LessThan0~38_combout\) # ((\ALUCOMP|LessThan0~32_combout\) # (\ALUCOMP|LessThan0~31_combout\)))) # (!\MUXB|Mux27~0_combout\ & (\ALUCOMP|LessThan0~38_combout\ & 
-- ((\ALUCOMP|LessThan0~32_combout\) # (\ALUCOMP|LessThan0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux27~0_combout\,
	datab => \ALUCOMP|LessThan0~38_combout\,
	datac => \ALUCOMP|LessThan0~32_combout\,
	datad => \ALUCOMP|LessThan0~31_combout\,
	combout => \ALUCOMP|LessThan0~39_combout\);

-- Location: LCCOMB_X33_Y19_N24
\ALUCOMP|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~33_combout\ = (!\ALUCOMP|LessThan0~28_combout\ & ((\MUXA|salida[5]~26_combout\ & (\MUXB|Mux19~0_combout\ & \ALUCOMP|LessThan0~39_combout\)) # (!\MUXA|salida[5]~26_combout\ & ((\MUXB|Mux19~0_combout\) # 
-- (\ALUCOMP|LessThan0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~26_combout\,
	datab => \MUXB|Mux19~0_combout\,
	datac => \ALUCOMP|LessThan0~28_combout\,
	datad => \ALUCOMP|LessThan0~39_combout\,
	combout => \ALUCOMP|LessThan0~33_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y18_N16
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(14) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(14))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(14),
	datac => \comb~11clkctrl_outclk\,
	datad => \PROGCOUNT|addr_out\(14),
	combout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X33_Y19_N16
\MUXA|salida[14]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~17_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(14),
	combout => \MUXA|salida[14]~17_combout\);

-- Location: LCCOMB_X32_Y18_N18
\MUXA|salida[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~18_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(13),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[13]~18_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y20_N2
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(10) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(10)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(10),
	datac => \MemDir~combout\(10),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X32_Y20_N30
\MUXA|salida[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~22_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(10),
	combout => \MUXA|salida[10]~22_combout\);

-- Location: LCCOMB_X33_Y20_N6
\MUXA|salida[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~23_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|dt_out\(0),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(8),
	combout => \MUXA|salida[8]~23_combout\);

-- Location: LCCOMB_X33_Y20_N16
\ALUCOMP|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~19_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(8) & !\MUXA|salida[8]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(8),
	datad => \MUXA|salida[8]~23_combout\,
	combout => \ALUCOMP|LessThan0~19_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y20_N8
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(9) = (GLOBAL(\comb~11clkctrl_outclk\) & ((\MemDir~combout\(9)))) # (!GLOBAL(\comb~11clkctrl_outclk\) & (\PROGCOUNT|addr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(9),
	datac => \MemDir~combout\(9),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X32_Y20_N18
\MUXA|salida[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~21_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(9),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[9]~21_combout\);

-- Location: LCCOMB_X33_Y19_N10
\ALUCOMP|LessThan0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~20_combout\ = (\MUXB|Mux25~0_combout\ & (((\ALUCOMP|LessThan0~19_combout\) # (!\MUXA|salida[9]~21_combout\)) # (!\MUXA|salida[10]~22_combout\))) # (!\MUXB|Mux25~0_combout\ & (!\MUXA|salida[10]~22_combout\ & 
-- (\ALUCOMP|LessThan0~19_combout\ & !\MUXA|salida[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[10]~22_combout\,
	datac => \ALUCOMP|LessThan0~19_combout\,
	datad => \MUXA|salida[9]~21_combout\,
	combout => \ALUCOMP|LessThan0~20_combout\);

-- Location: LCCOMB_X33_Y19_N0
\ALUCOMP|LessThan0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~40_combout\ = (\MUXA|salida[11]~19_combout\ & (\MUXB|Mux19~0_combout\ & ((\ALUCOMP|LessThan0~20_combout\) # (!\MUXA|salida[12]~20_combout\)))) # (!\MUXA|salida[11]~19_combout\ & ((\MUXB|Mux19~0_combout\) # 
-- ((!\MUXA|salida[12]~20_combout\ & \ALUCOMP|LessThan0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~19_combout\,
	datab => \MUXB|Mux19~0_combout\,
	datac => \MUXA|salida[12]~20_combout\,
	datad => \ALUCOMP|LessThan0~20_combout\,
	combout => \ALUCOMP|LessThan0~40_combout\);

-- Location: LCCOMB_X33_Y19_N22
\ALUCOMP|LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~41_combout\ = (\MUXB|Mux15~0_combout\ & ((\ALUCOMP|LessThan0~40_combout\) # (!\MUXA|salida[13]~18_combout\))) # (!\MUXB|Mux15~0_combout\ & (!\MUXA|salida[13]~18_combout\ & \ALUCOMP|LessThan0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux15~0_combout\,
	datac => \MUXA|salida[13]~18_combout\,
	datad => \ALUCOMP|LessThan0~40_combout\,
	combout => \ALUCOMP|LessThan0~41_combout\);

-- Location: LCCOMB_X33_Y19_N12
\ALUCOMP|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~21_combout\ = (\MUXB|Mux17~0_combout\ & ((\ALUCOMP|LessThan0~41_combout\) # (!\MUXA|salida[14]~17_combout\))) # (!\MUXB|Mux17~0_combout\ & (!\MUXA|salida[14]~17_combout\ & \ALUCOMP|LessThan0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux17~0_combout\,
	datac => \MUXA|salida[14]~17_combout\,
	datad => \ALUCOMP|LessThan0~41_combout\,
	combout => \ALUCOMP|LessThan0~21_combout\);

-- Location: LCCOMB_X33_Y19_N30
\ALUCOMP|LessThan0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~34_combout\ = (\ALUCOMP|LessThan0~21_combout\) # ((\ALUCOMP|LessThan0~26_combout\ & ((\ALUCOMP|LessThan0~27_combout\) # (\ALUCOMP|LessThan0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~26_combout\,
	datab => \ALUCOMP|LessThan0~27_combout\,
	datac => \ALUCOMP|LessThan0~33_combout\,
	datad => \ALUCOMP|LessThan0~21_combout\,
	combout => \ALUCOMP|LessThan0~34_combout\);

-- Location: LCCOMB_X33_Y19_N28
\ALUCOMP|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~35_combout\ = (\MUXB|Mux15~0_combout\ & (((!\ALUCOMP|LessThan0~18_combout\ & \ALUCOMP|LessThan0~34_combout\)) # (!\MUXA|salida[16]~16_combout\))) # (!\MUXB|Mux15~0_combout\ & (!\ALUCOMP|LessThan0~18_combout\ & 
-- (!\MUXA|salida[16]~16_combout\ & \ALUCOMP|LessThan0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~18_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datac => \MUXA|salida[16]~16_combout\,
	datad => \ALUCOMP|LessThan0~34_combout\,
	combout => \ALUCOMP|LessThan0~35_combout\);

-- Location: LCCOMB_X33_Y19_N26
\ALUCOMP|LessThan0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~36_combout\ = (\ALUCOMP|LessThan0~17_combout\ & ((\ALUCOMP|LessThan0~12_combout\) # ((\ALUCOMP|LessThan0~14_combout\ & \ALUCOMP|LessThan0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~14_combout\,
	datab => \ALUCOMP|LessThan0~12_combout\,
	datac => \ALUCOMP|LessThan0~17_combout\,
	datad => \ALUCOMP|LessThan0~35_combout\,
	combout => \ALUCOMP|LessThan0~36_combout\);

-- Location: LCCOMB_X33_Y19_N18
\ALUCOMP|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~37_combout\ = (\ALUCOMP|LessThan0~5_combout\) # ((\ALUCOMP|LessThan0~6_combout\ & ((\ALUCOMP|LessThan0~9_combout\) # (\ALUCOMP|LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~5_combout\,
	datab => \ALUCOMP|LessThan0~6_combout\,
	datac => \ALUCOMP|LessThan0~9_combout\,
	datad => \ALUCOMP|LessThan0~36_combout\,
	combout => \ALUCOMP|LessThan0~37_combout\);

-- Location: LCCOMB_X34_Y18_N14
\ALUCOMP|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~81_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~81_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y18_N30
\ALUCOMP|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux1~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux1~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux1~2_combout\,
	datad => \ALUCOMP|Mux1~4_combout\,
	combout => \ALUCOMP|Mux1~3_combout\);

-- Location: LCCOMB_X33_Y17_N30
\ALUCOMP|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[28]~15_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[28]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXB|Mux25~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXA|salida[28]~15_combout\,
	combout => \ALUCOMP|Mux3~2_combout\);

-- Location: LCCOMB_X33_Y17_N2
\ALUCOMP|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & (\ALUCOMP|LessThan0~37_combout\)) # (!\INSTREG|imm_out\(0) & ((\ALUCOMP|Add0~77_combout\))))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \ALUCOMP|Add0~77_combout\,
	combout => \ALUCOMP|Mux3~4_combout\);

-- Location: LCCOMB_X33_Y17_N0
\ALUCOMP|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux3~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux3~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux3~2_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux3~4_combout\,
	combout => \ALUCOMP|Mux3~3_combout\);

-- Location: LCCOMB_X33_Y19_N8
\ALUCOMP|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~0_combout\ = (\ALUCOMP|LessThan0~6_combout\ & ((\ALUCOMP|LessThan0~9_combout\) # (\ALUCOMP|LessThan0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|LessThan0~6_combout\,
	datac => \ALUCOMP|LessThan0~9_combout\,
	datad => \ALUCOMP|LessThan0~36_combout\,
	combout => \ALUCOMP|Mux31~0_combout\);

-- Location: LCCOMB_X35_Y19_N6
\ALUCOMP|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~0_combout\ = (\ALUCONTRL|op\(0) & ((\ALUCOMP|LessThan0~5_combout\) # ((\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (((\ALUCOMP|Add0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|LessThan0~5_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Add0~69_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y19_N22
\ALUCOMP|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux7~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux7~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux7~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux7~0_combout\,
	combout => \ALUCOMP|Mux7~2_combout\);

-- Location: LCCOMB_X34_Y21_N30
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (!\ALUCOMP|Mux5~3_combout\ & (!\ALUCOMP|Mux1~3_combout\ & (!\ALUCOMP|Mux3~3_combout\ & !\ALUCOMP|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux5~3_combout\,
	datab => \ALUCOMP|Mux1~3_combout\,
	datac => \ALUCOMP|Mux3~3_combout\,
	datad => \ALUCOMP|Mux7~2_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X35_Y19_N18
\ALUCOMP|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~1_combout\ = (\MUXA|salida[4]~27_combout\ & ((\MUXB|Mux27~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[4]~27_combout\ & (\ALUCONTRL|op\(0) & (\MUXB|Mux27~0_combout\ & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~27_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \MUXB|Mux27~0_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux27~1_combout\);

-- Location: LCCOMB_X33_Y21_N24
\ALUCOMP|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~5_combout\ = (\ALUCOMP|LessThan0~4_combout\ & (((!\PROGCOUNT|addr_out\(31)) # (!\PROGCOUNT|addr_out\(29))) # (!\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(30),
	datab => \PROGCOUNT|addr_out\(29),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \ALUCOMP|LessThan0~4_combout\,
	combout => \ALUCOMP|LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y19_N10
\ALUCOMP|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~29_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|LessThan0~5_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux27~0_combout\);

-- Location: LCCOMB_X35_Y19_N24
\ALUCOMP|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux27~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux27~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux27~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux27~0_combout\,
	combout => \ALUCOMP|Mux27~2_combout\);

-- Location: LCCOMB_X36_Y19_N20
\ALUCOMP|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~33_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Mux31~0_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux25~0_combout\);

-- Location: LCCOMB_X36_Y19_N28
\ALUCOMP|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux25~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux25~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux25~1_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux25~0_combout\,
	datad => \ALUCOMP|Mux21~0_combout\,
	combout => \ALUCOMP|Mux25~2_combout\);

-- Location: LCCOMB_X35_Y19_N20
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\ALUCOMP|Mux29~2_combout\ & (!\ALUCOMP|Mux31~3_combout\ & (!\ALUCOMP|Mux27~2_combout\ & !\ALUCOMP|Mux25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux29~2_combout\,
	datab => \ALUCOMP|Mux31~3_combout\,
	datac => \ALUCOMP|Mux27~2_combout\,
	datad => \ALUCOMP|Mux25~2_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X34_Y21_N22
\ALUCOMP|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~37_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux23~0_combout\);

-- Location: LCCOMB_X34_Y21_N18
\ALUCOMP|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux23~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux23~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux23~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux23~0_combout\,
	combout => \ALUCOMP|Mux23~2_combout\);

-- Location: LCCOMB_X34_Y21_N2
\ALUCOMP|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~2_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|Mux31~0_combout\) # (\ALUCOMP|LessThan0~5_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~41_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux31~0_combout\,
	datad => \ALUCOMP|LessThan0~5_combout\,
	combout => \ALUCOMP|Mux21~2_combout\);

-- Location: LCCOMB_X34_Y21_N14
\ALUCOMP|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~4_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux21~3_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux21~2_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~3_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux21~2_combout\,
	combout => \ALUCOMP|Mux21~4_combout\);

-- Location: LCCOMB_X32_Y19_N26
\ALUCOMP|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~0_combout\ = (\ALUCONTRL|op\(0) & ((\ALUCOMP|LessThan0~5_combout\) # ((\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (((\ALUCOMP|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Add0~45_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux19~0_combout\);

-- Location: LCCOMB_X32_Y19_N8
\ALUCOMP|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux19~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux19~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux19~1_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux19~0_combout\,
	combout => \ALUCOMP|Mux19~2_combout\);

-- Location: LCCOMB_X34_Y21_N12
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\ALUCOMP|Mux17~2_combout\ & (!\ALUCOMP|Mux23~2_combout\ & (!\ALUCOMP|Mux21~4_combout\ & !\ALUCOMP|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux17~2_combout\,
	datab => \ALUCOMP|Mux23~2_combout\,
	datac => \ALUCOMP|Mux21~4_combout\,
	datad => \ALUCOMP|Mux19~2_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X34_Y21_N0
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\comb~8_combout\ & (\comb~9_combout\ & (\comb~6_combout\ & \comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~9_combout\,
	datac => \comb~6_combout\,
	datad => \comb~7_combout\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X33_Y19_N6
\ALUCOMP|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~2_combout\ = (\MUXA|salida[13]~18_combout\ & ((\MUXB|Mux15~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[13]~18_combout\ & (\MUXB|Mux15~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[13]~18_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux18~2_combout\);

-- Location: LCCOMB_X34_Y18_N10
\ALUCOMP|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~47_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCOMP|Add0~47_combout\,
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux18~4_combout\);

-- Location: LCCOMB_X34_Y18_N22
\ALUCOMP|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux18~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux18~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux18~2_combout\,
	datad => \ALUCOMP|Mux18~4_combout\,
	combout => \ALUCOMP|Mux18~3_combout\);

-- Location: LCCOMB_X35_Y18_N8
\ALUCOMP|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[9]~21_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXB|Mux25~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & (\MUXA|salida[9]~21_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datac => \MUXA|salida[9]~21_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux22~2_combout\);

-- Location: LCCOMB_X34_Y18_N6
\ALUCOMP|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~39_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~39_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux22~4_combout\);

-- Location: LCCOMB_X34_Y18_N20
\ALUCOMP|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux22~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux22~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux22~2_combout\,
	datad => \ALUCOMP|Mux22~4_combout\,
	combout => \ALUCOMP|Mux22~3_combout\);

-- Location: LCCOMB_X32_Y19_N22
\ALUCOMP|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~43_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~43_combout\,
	datab => \CONTROLU|ALUop\(1),
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux20~4_combout\);

-- Location: LCCOMB_X32_Y19_N2
\ALUCOMP|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux20~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux20~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux20~2_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux20~4_combout\,
	combout => \ALUCOMP|Mux20~3_combout\);

-- Location: LCCOMB_X35_Y18_N22
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\ALUCOMP|Mux16~3_combout\ & (!\ALUCOMP|Mux18~3_combout\ & (!\ALUCOMP|Mux22~3_combout\ & !\ALUCOMP|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux16~3_combout\,
	datab => \ALUCOMP|Mux18~3_combout\,
	datac => \ALUCOMP|Mux22~3_combout\,
	datad => \ALUCOMP|Mux20~3_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X32_Y19_N12
\ALUCOMP|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~31_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCOMP|Add0~31_combout\,
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux26~4_combout\);

-- Location: LCCOMB_X32_Y19_N0
\ALUCOMP|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux26~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux26~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux26~4_combout\,
	combout => \ALUCOMP|Mux26~3_combout\);

-- Location: LCCOMB_X32_Y18_N28
\CONTROLU|PCwrCond\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCwrCond~combout\ = (!\CONTROLU|comb~0_combout\ & ((\CONTROLU|Equal4~0_combout\) # (\CONTROLU|PCwrCond~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~0_combout\,
	datac => \CONTROLU|Equal4~0_combout\,
	datad => \CONTROLU|PCwrCond~combout\,
	combout => \CONTROLU|PCwrCond~combout\);

-- Location: LCCOMB_X30_Y19_N4
\ALUCOMP|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~2_combout\ = (\MUXB|Mux30~0_combout\ & ((\MUXA|salida[1]~28_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux30~0_combout\ & (\MUXA|salida[1]~28_combout\ & (\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux30~0_combout\,
	datab => \MUXA|salida[1]~28_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux30~2_combout\);

-- Location: LCCOMB_X33_Y19_N2
\ALUCOMP|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~0_combout\ = (\ALUCOMP|LessThan0~6_combout\ & ((\ALUCOMP|LessThan0~9_combout\) # (\ALUCOMP|LessThan0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|LessThan0~6_combout\,
	datac => \ALUCOMP|LessThan0~9_combout\,
	datad => \ALUCOMP|LessThan0~36_combout\,
	combout => \ALUCOMP|Mux30~0_combout\);

-- Location: LCCOMB_X32_Y19_N6
\ALUCOMP|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~1_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux30~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~22_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux30~0_combout\,
	combout => \ALUCOMP|Mux30~1_combout\);

-- Location: LCCOMB_X31_Y19_N14
\ALUCOMP|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux30~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux30~1_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux30~2_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux30~1_combout\,
	combout => \ALUCOMP|Mux30~3_combout\);

-- Location: LCCOMB_X32_Y19_N28
\ALUCOMP|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux30~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|Add0~27_combout\,
	datac => \ALUCOMP|LessThan0~5_combout\,
	datad => \ALUCOMP|Mux30~0_combout\,
	combout => \ALUCOMP|Mux28~0_combout\);

-- Location: LCCOMB_X31_Y19_N10
\ALUCOMP|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux28~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux28~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~1_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux28~0_combout\,
	combout => \ALUCOMP|Mux28~2_combout\);

-- Location: LCCOMB_X31_Y19_N8
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\CONTROLU|PCwrCond~combout\ & (!\ALUCOMP|Mux30~3_combout\ & !\ALUCOMP|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|PCwrCond~combout\,
	datac => \ALUCOMP|Mux30~3_combout\,
	datad => \ALUCOMP|Mux28~2_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X35_Y18_N18
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\ALUCOMP|Mux24~3_combout\ & (\comb~1_combout\ & (!\ALUCOMP|Mux26~3_combout\ & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~3_combout\,
	datab => \comb~1_combout\,
	datac => \ALUCOMP|Mux26~3_combout\,
	datad => \comb~0_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X34_Y17_N6
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\CONTROLU|PCwr~combout\) # ((\comb~5_combout\ & (\comb~10_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \CONTROLU|PCwr~combout\,
	datac => \comb~10_combout\,
	datad => \comb~2_combout\,
	combout => \comb~11_combout\);

-- Location: CLKCTRL_G6
\comb~11clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~11clkctrl_outclk\);

-- Location: LCCOMB_X35_Y19_N14
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(4) = (GLOBAL(\comb~11clkctrl_outclk\) & (\MemDir~combout\(4))) # (!GLOBAL(\comb~11clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(4),
	datac => \PROGCOUNT|addr_out\(4),
	datad => \comb~11clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X33_Y18_N10
\MEM|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal3~0_combout\ = (!\PROGCOUNT|addr_out\(1) & (!\PROGCOUNT|addr_out\(4) & (\MEM|Equal1~4_combout\ & \MEM|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(1),
	datab => \PROGCOUNT|addr_out\(4),
	datac => \MEM|Equal1~4_combout\,
	datad => \MEM|Equal1~8_combout\,
	combout => \MEM|Equal3~0_combout\);

-- Location: LCCOMB_X32_Y18_N24
\MEM|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|Equal3~1_combout\ = (\PROGCOUNT|addr_out\(3) & (\MEM|Equal3~0_combout\ & !\PROGCOUNT|addr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datac => \MEM|Equal3~0_combout\,
	datad => \PROGCOUNT|addr_out\(2),
	combout => \MEM|Equal3~1_combout\);

-- Location: LCCOMB_X32_Y18_N0
\INSTREG|func_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|func_out\(1) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((\MEM|Equal3~1_combout\))) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (\INSTREG|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|func_out\(1),
	datac => \MEM|Equal3~1_combout\,
	datad => \CONTROLU|IRwr~clkctrl_outclk\,
	combout => \INSTREG|func_out\(1));

-- Location: LCCOMB_X35_Y19_N4
\ALUCONTRL|op[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op\(2) = (\CONTROLU|ALUop\(0)) # ((\CONTROLU|ALUop\(1) & \INSTREG|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datac => \CONTROLU|ALUop\(0),
	datad => \INSTREG|func_out\(1),
	combout => \ALUCONTRL|op\(2));

-- Location: LCCOMB_X35_Y19_N16
\ALUCOMP|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~1_combout\ = (\CONTROLU|ALUop\(1) & ((\ALUCONTRL|op\(2) & (\INSTREG|func_out\(2))) # (!\ALUCONTRL|op\(2) & (!\INSTREG|func_out\(2) & \INSTREG|imm_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCONTRL|op\(2),
	datac => \INSTREG|func_out\(2),
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux21~1_combout\);

-- Location: LCCOMB_X34_Y19_N6
\MUXA|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~0_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regB|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MUXA|salida[0]~0_combout\);

-- Location: LCCOMB_X35_Y19_N30
\ALUCOMP|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~2_combout\ = (\MUXA|salida[0]~0_combout\ & ((\MUXB|Mux31~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[0]~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & (\ALUCONTRL|op\(0) & \MUXB|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \MUXA|salida[0]~0_combout\,
	datad => \MUXB|Mux31~0_combout\,
	combout => \ALUCOMP|Mux31~2_combout\);

-- Location: LCCOMB_X35_Y19_N0
\ALUCOMP|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~1_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~19_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|LessThan0~5_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux31~1_combout\);

-- Location: LCCOMB_X35_Y19_N8
\ALUCOMP|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux31~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux31~1_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux31~2_combout\,
	datad => \ALUCOMP|Mux31~1_combout\,
	combout => \ALUCOMP|Mux31~3_combout\);

-- Location: LCCOMB_X34_Y19_N18
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & ((\INSTREG|func_out\(2))))) # (!\CONTROLU|ALUsrcB\(1) & ((\CONTROLU|ALUsrcB\(0)) # ((\regB|dt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \INSTREG|func_out\(2),
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y19_N12
\MUXB|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~1_combout\ = (\MUXB|Mux29~0_combout\) # ((\CONTROLU|ALUsrcB\(0) & \INSTREG|imm_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux29~0_combout\,
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \INSTREG|imm_out\(0),
	combout => \MUXB|Mux29~1_combout\);

-- Location: LCCOMB_X35_Y19_N26
\ALUCOMP|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~1_combout\ = (\MUXA|salida[2]~29_combout\ & ((\MUXB|Mux29~1_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[2]~29_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~29_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux29~1_combout\,
	combout => \ALUCOMP|Mux29~1_combout\);

-- Location: LCCOMB_X35_Y19_N28
\ALUCOMP|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~25_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|LessThan0~5_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux29~0_combout\);

-- Location: LCCOMB_X35_Y19_N12
\ALUCOMP|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux29~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux29~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux29~1_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux29~0_combout\,
	combout => \ALUCOMP|Mux29~2_combout\);

-- Location: LCCOMB_X33_Y19_N4
\ALUCOMP|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~2_combout\ = (\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~25_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXB|Mux24~0_combout\ & (\MUXA|salida[7]~25_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~25_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux24~2_combout\);

-- Location: LCCOMB_X34_Y18_N2
\ALUCOMP|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~35_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCOMP|Add0~35_combout\,
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux24~4_combout\);

-- Location: LCCOMB_X34_Y18_N30
\ALUCOMP|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux24~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux24~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~2_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux24~4_combout\,
	combout => \ALUCOMP|Mux24~3_combout\);

-- Location: LCCOMB_X34_Y21_N16
\ALUCOMP|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~1_combout\ = (\MUXA|salida[14]~17_combout\ & ((\MUXB|Mux17~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[14]~17_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[14]~17_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux17~0_combout\,
	combout => \ALUCOMP|Mux17~1_combout\);

-- Location: LCCOMB_X34_Y21_N26
\ALUCOMP|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~49_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux17~0_combout\);

-- Location: LCCOMB_X34_Y21_N20
\ALUCOMP|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux17~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux17~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux17~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux17~0_combout\,
	combout => \ALUCOMP|Mux17~2_combout\);

-- Location: LCCOMB_X34_Y20_N24
\ALUCOMP|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~2_combout\ = (\MUXA|salida[15]~31_combout\ & ((\MUXB|Mux25~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[15]~31_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~31_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Mux16~2_combout\);

-- Location: LCCOMB_X34_Y20_N0
\ALUCOMP|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~51_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~51_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux16~4_combout\);

-- Location: LCCOMB_X34_Y20_N28
\ALUCOMP|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux16~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux16~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|Mux16~2_combout\,
	datad => \ALUCOMP|Mux16~4_combout\,
	combout => \ALUCOMP|Mux16~3_combout\);

-- Location: LCCOMB_X32_Y21_N8
\ALUCOMP|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~1_combout\ = (\MUXA|salida[16]~16_combout\ & ((\MUXB|Mux15~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[16]~16_combout\ & (\ALUCONTRL|op\(0) & (\MUXB|Mux15~0_combout\ & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXA|salida[16]~16_combout\,
	datac => \MUXB|Mux15~0_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux15~1_combout\);

-- Location: LCCOMB_X32_Y21_N28
\ALUCOMP|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~0_combout\ = (\ALUCONTRL|op\(0) & ((\ALUCOMP|LessThan0~5_combout\) # ((\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (((\ALUCOMP|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Mux31~0_combout\,
	datad => \ALUCOMP|Add0~53_combout\,
	combout => \ALUCOMP|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y21_N18
\ALUCOMP|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux15~1_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux15~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux15~1_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux15~0_combout\,
	combout => \ALUCOMP|Mux15~2_combout\);

-- Location: LCCOMB_X33_Y21_N4
\MUXA|salida[17]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~4_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(17),
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regB|dt_out\(0),
	combout => \MUXA|salida[17]~4_combout\);

-- Location: LCCOMB_X34_Y20_N4
\ALUCOMP|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[17]~4_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXB|Mux25~0_combout\ & (\MUXA|salida[17]~4_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[17]~4_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux14~2_combout\);

-- Location: LCCOMB_X34_Y20_N18
\ALUCOMP|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~55_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~55_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux14~4_combout\);

-- Location: LCCOMB_X34_Y20_N20
\ALUCOMP|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux14~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux14~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux14~2_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux14~4_combout\,
	combout => \ALUCOMP|Mux14~3_combout\);

-- Location: LCCOMB_X32_Y21_N12
\ALUCOMP|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~1_combout\ = (\MUXA|salida[18]~5_combout\ & ((\MUXB|Mux25~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[18]~5_combout\ & (\ALUCONTRL|op\(0) & (\MUXB|Mux25~0_combout\ & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXA|salida[18]~5_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux13~1_combout\);

-- Location: LCCOMB_X32_Y21_N26
\ALUCOMP|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~57_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Mux31~0_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y21_N24
\ALUCOMP|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux13~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux13~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux13~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux13~0_combout\,
	combout => \ALUCOMP|Mux13~2_combout\);

-- Location: LCCOMB_X34_Y20_N26
\ALUCOMP|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~2_combout\ = (\MUXA|salida[19]~6_combout\ & ((\MUXB|Mux25~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[19]~6_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~6_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Mux12~2_combout\);

-- Location: LCCOMB_X34_Y20_N2
\ALUCOMP|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~59_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~59_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux12~4_combout\);

-- Location: LCCOMB_X34_Y20_N22
\ALUCOMP|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux12~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux12~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux12~2_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux12~4_combout\,
	combout => \ALUCOMP|Mux12~3_combout\);

-- Location: LCCOMB_X32_Y21_N6
\ALUCOMP|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~1_combout\ = (\MUXA|salida[20]~7_combout\ & ((\MUXB|Mux25~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[20]~7_combout\ & (\ALUCONTRL|op\(0) & (\MUXB|Mux25~0_combout\ & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXA|salida[20]~7_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux11~1_combout\);

-- Location: LCCOMB_X32_Y21_N30
\ALUCOMP|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~0_combout\ = (\ALUCONTRL|op\(0) & (((\ALUCOMP|LessThan0~5_combout\) # (\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (\ALUCOMP|Add0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~61_combout\,
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Mux31~0_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux11~0_combout\);

-- Location: LCCOMB_X32_Y21_N4
\ALUCOMP|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux11~1_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux11~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux11~1_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux11~0_combout\,
	combout => \ALUCOMP|Mux11~2_combout\);

-- Location: LCCOMB_X32_Y18_N14
\MUXA|salida[21]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~8_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regB|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(21),
	datad => \regB|dt_out\(0),
	combout => \MUXA|salida[21]~8_combout\);

-- Location: LCCOMB_X33_Y17_N14
\ALUCOMP|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[21]~8_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXB|Mux25~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXA|salida[21]~8_combout\,
	combout => \ALUCOMP|Mux10~2_combout\);

-- Location: LCCOMB_X33_Y17_N18
\ALUCOMP|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~63_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCOMP|Add0~63_combout\,
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux10~4_combout\);

-- Location: LCCOMB_X33_Y17_N20
\ALUCOMP|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux10~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux10~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \ALUCOMP|Mux10~2_combout\,
	datac => \ALUCOMP|Mux21~0_combout\,
	datad => \ALUCOMP|Mux10~4_combout\,
	combout => \ALUCOMP|Mux10~3_combout\);

-- Location: LCCOMB_X33_Y21_N28
\ALUCOMP|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~1_combout\ = (\MUXA|salida[22]~9_combout\ & ((\MUXB|Mux25~0_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXA|salida[22]~9_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXB|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \MUXA|salida[22]~9_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXB|Mux25~0_combout\,
	combout => \ALUCOMP|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y21_N2
\ALUCOMP|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~0_combout\ = (\ALUCONTRL|op\(0) & ((\ALUCOMP|LessThan0~5_combout\) # ((\ALUCOMP|Mux31~0_combout\)))) # (!\ALUCONTRL|op\(0) & (((\ALUCOMP|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op\(0),
	datab => \ALUCOMP|LessThan0~5_combout\,
	datac => \ALUCOMP|Add0~65_combout\,
	datad => \ALUCOMP|Mux31~0_combout\,
	combout => \ALUCOMP|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y21_N10
\ALUCOMP|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux9~1_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux9~0_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux9~1_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux9~0_combout\,
	combout => \ALUCOMP|Mux9~2_combout\);

-- Location: LCCOMB_X34_Y17_N24
\ALUCOMP|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[23]~10_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\MUXA|salida[23]~10_combout\ & (\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[23]~10_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|Mux21~1_combout\,
	combout => \ALUCOMP|Mux8~2_combout\);

-- Location: LCCOMB_X34_Y20_N6
\ALUCOMP|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~67_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~67_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux8~4_combout\);

-- Location: LCCOMB_X34_Y20_N12
\ALUCOMP|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (((!\ALUCOMP|Mux8~2_combout\)))) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux8~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~0_combout\,
	datab => \ALUCOMP|Mux8~2_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux8~4_combout\,
	combout => \ALUCOMP|Mux8~3_combout\);

-- Location: LCCOMB_X32_Y17_N14
\ALUCOMP|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~2_combout\ = (\MUXA|salida[25]~12_combout\ & ((\MUXB|Mux25~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[25]~12_combout\ & (\MUXB|Mux25~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~12_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux6~2_combout\);

-- Location: LCCOMB_X33_Y17_N6
\ALUCOMP|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~71_combout\)))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \ALUCOMP|Add0~71_combout\,
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \INSTREG|imm_out\(0),
	combout => \ALUCOMP|Mux6~4_combout\);

-- Location: LCCOMB_X33_Y17_N26
\ALUCOMP|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux6~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux6~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux6~2_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux6~4_combout\,
	combout => \ALUCOMP|Mux6~3_combout\);

-- Location: LCCOMB_X32_Y17_N30
\ALUCOMP|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~2_combout\ = (\MUXA|salida[26]~13_combout\ & ((\MUXB|Mux25~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[26]~13_combout\ & (\MUXB|Mux25~0_combout\ & (!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~13_combout\,
	datab => \MUXB|Mux25~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux5~2_combout\);

-- Location: LCCOMB_X33_Y17_N10
\ALUCOMP|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & (\ALUCOMP|LessThan0~37_combout\)) # (!\INSTREG|imm_out\(0) & ((\ALUCOMP|Add0~73_combout\))))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|LessThan0~37_combout\,
	datad => \ALUCOMP|Add0~73_combout\,
	combout => \ALUCOMP|Mux5~4_combout\);

-- Location: LCCOMB_X33_Y17_N28
\ALUCOMP|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux5~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux5~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux5~2_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux5~4_combout\,
	combout => \ALUCOMP|Mux5~3_combout\);

-- Location: LCCOMB_X31_Y17_N20
\ALUCOMP|temp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~9_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(0) & \MUXA|salida[27]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \MUXA|salida[27]~14_combout\,
	combout => \ALUCOMP|temp~9_combout\);

-- Location: LCCOMB_X31_Y17_N26
\ALUCOMP|temp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|temp~8_combout\ = (\MUXA|salida[27]~14_combout\) # ((!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(0),
	datad => \MUXA|salida[27]~14_combout\,
	combout => \ALUCOMP|temp~8_combout\);

-- Location: LCCOMB_X31_Y17_N28
\ALUCOMP|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~1_combout\ = (\ALUCOMP|Mux4~0_combout\ & (((\ALUCOMP|LessThan0~37_combout\) # (!\ALUCONTRL|op\(0))))) # (!\ALUCOMP|Mux4~0_combout\ & (\ALUCOMP|temp~8_combout\ & (\ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux4~0_combout\,
	datab => \ALUCOMP|temp~8_combout\,
	datac => \ALUCONTRL|op\(0),
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y17_N18
\ALUCOMP|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~2_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|temp~9_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datac => \ALUCOMP|temp~9_combout\,
	datad => \ALUCOMP|Mux4~1_combout\,
	combout => \ALUCOMP|Mux4~2_combout\);

-- Location: LCCOMB_X35_Y18_N26
\ALUCOMP|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~2_combout\ = (\MUXA|salida[29]~1_combout\ & ((\MUXB|Mux25~0_combout\) # ((!\ALUCOMP|Mux21~1_combout\ & \ALUCONTRL|op\(0))))) # (!\MUXA|salida[29]~1_combout\ & (!\ALUCOMP|Mux21~1_combout\ & (\MUXB|Mux25~0_combout\ & \ALUCONTRL|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux21~1_combout\,
	datab => \MUXA|salida[29]~1_combout\,
	datac => \MUXB|Mux25~0_combout\,
	datad => \ALUCONTRL|op\(0),
	combout => \ALUCOMP|Mux2~2_combout\);

-- Location: LCCOMB_X34_Y18_N12
\ALUCOMP|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~4_combout\ = (\CONTROLU|ALUop\(1) & ((\INSTREG|imm_out\(0) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\INSTREG|imm_out\(0) & (\ALUCOMP|Add0~79_combout\)))) # (!\CONTROLU|ALUop\(1) & (((\ALUCOMP|Add0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|Add0~79_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux2~4_combout\);

-- Location: LCCOMB_X34_Y18_N8
\ALUCOMP|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux2~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux2~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux2~2_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux2~4_combout\,
	combout => \ALUCOMP|Mux2~3_combout\);

-- Location: LCCOMB_X34_Y17_N26
\ALUCOMP|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~2_combout\ = (\MUXB|Mux25~0_combout\ & ((\MUXA|salida[31]~3_combout\) # ((\ALUCONTRL|op\(0) & !\ALUCOMP|Mux21~1_combout\)))) # (!\MUXB|Mux25~0_combout\ & (\ALUCONTRL|op\(0) & (!\ALUCOMP|Mux21~1_combout\ & \MUXA|salida[31]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \ALUCONTRL|op\(0),
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \MUXA|salida[31]~3_combout\,
	combout => \ALUCOMP|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y17_N16
\ALUCOMP|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~83_combout\ = \ALUCOMP|Add0~88_combout\ $ (\ALUCOMP|Add0~82\ $ (!\MUXA|salida[31]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALUCOMP|Add0~88_combout\,
	datad => \MUXA|salida[31]~3_combout\,
	cin => \ALUCOMP|Add0~82\,
	combout => \ALUCOMP|Add0~83_combout\);

-- Location: LCCOMB_X34_Y17_N18
\ALUCOMP|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~4_combout\ = (\INSTREG|imm_out\(0) & ((\CONTROLU|ALUop\(1) & ((\ALUCOMP|LessThan0~37_combout\))) # (!\CONTROLU|ALUop\(1) & (\ALUCOMP|Add0~83_combout\)))) # (!\INSTREG|imm_out\(0) & (((\ALUCOMP|Add0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(0),
	datab => \CONTROLU|ALUop\(1),
	datac => \ALUCOMP|Add0~83_combout\,
	datad => \ALUCOMP|LessThan0~37_combout\,
	combout => \ALUCOMP|Mux0~4_combout\);

-- Location: LCCOMB_X34_Y17_N14
\ALUCOMP|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~3_combout\ = (\ALUCOMP|Mux21~1_combout\ & (!\ALUCOMP|Mux0~2_combout\)) # (!\ALUCOMP|Mux21~1_combout\ & ((\ALUCOMP|Mux21~0_combout\ & ((\ALUCOMP|Mux0~4_combout\))) # (!\ALUCOMP|Mux21~0_combout\ & (\ALUCOMP|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux0~2_combout\,
	datab => \ALUCOMP|Mux21~0_combout\,
	datac => \ALUCOMP|Mux21~1_combout\,
	datad => \ALUCOMP|Mux0~4_combout\,
	combout => \ALUCOMP|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y18_N14
\CONTROLU|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal3~0_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(3) & \NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y18_N30
\CONTROLU|RegDst\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegDst~combout\ = (!\CONTROLU|comb~6_combout\ & ((\CONTROLU|Equal3~0_combout\) # (\CONTROLU|RegDst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~6_combout\,
	datac => \CONTROLU|Equal3~0_combout\,
	datad => \CONTROLU|RegDst~combout\,
	combout => \CONTROLU|RegDst~combout\);

-- Location: LCCOMB_X30_Y19_N28
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\CONTROLU|RegDst~combout\ & \INSTREG|imm_out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|RegDst~combout\,
	datad => \INSTREG|imm_out\(14),
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\MUXRegDst|salida[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[3]~1_combout\ = (\CONTROLU|RegDst~combout\ & (\INSTREG|imm_out\(14))) # (!\CONTROLU|RegDst~combout\ & ((\INSTREG|r2_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(14),
	datab => \CONTROLU|RegDst~combout\,
	datac => \INSTREG|r2_out\(3),
	combout => \MUXRegDst|salida[3]~1_combout\);

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

-- Location: LCFF_X35_Y19_N9
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux31~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCFF_X31_Y19_N15
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCFF_X35_Y19_N13
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCFF_X31_Y19_N11
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCFF_X35_Y19_N25
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCFF_X32_Y19_N1
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCFF_X36_Y19_N29
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCFF_X34_Y18_N31
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCFF_X34_Y21_N19
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCFF_X34_Y18_N21
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCFF_X34_Y21_N15
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCFF_X32_Y19_N3
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCFF_X32_Y19_N9
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: LCFF_X34_Y18_N23
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCFF_X34_Y21_N21
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCFF_X34_Y20_N29
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCFF_X32_Y21_N19
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCFF_X34_Y20_N21
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCFF_X32_Y21_N25
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCFF_X34_Y20_N23
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCFF_X32_Y21_N5
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCFF_X33_Y17_N21
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCFF_X32_Y21_N11
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCFF_X34_Y20_N13
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCFF_X35_Y19_N23
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCFF_X33_Y17_N27
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCFF_X33_Y17_N29
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCFF_X31_Y17_N19
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCFF_X33_Y17_N1
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCFF_X34_Y18_N9
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCFF_X35_Y18_N31
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCFF_X34_Y17_N15
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: LCCOMB_X31_Y20_N30
\CONTROLU|PCsrc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCsrc\(0) = (!\CONTROLU|comb~0_combout\ & ((\CONTROLU|Equal4~0_combout\) # (\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal4~0_combout\,
	datab => \CONTROLU|comb~0_combout\,
	datad => \CONTROLU|PCsrc\(0),
	combout => \CONTROLU|PCsrc\(0));

-- Location: LCCOMB_X30_Y18_N22
\CONTROLU|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~8_combout\ = (!\NEWST|CS\(1) & (\NEWST|CS\(3) & \NEWST|CS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(3),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~8_combout\);

-- Location: LCCOMB_X30_Y18_N4
\CONTROLU|PCsrc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCsrc\(1) = (\CONTROLU|comb~7_combout\ & ((\CONTROLU|PCsrc\(1)) # (\CONTROLU|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~7_combout\,
	datac => \CONTROLU|PCsrc\(1),
	datad => \CONTROLU|comb~8_combout\,
	combout => \CONTROLU|PCsrc\(1));

-- Location: LCCOMB_X42_Y19_N24
\JUMPMUX|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux31~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(0)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux31~3_combout\,
	datab => \regALU|dt_out\(0),
	datac => \CONTROLU|PCsrc\(0),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux31~0_combout\);

-- Location: LCCOMB_X42_Y19_N18
\JUMPMUX|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux30~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(1)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \ALUCOMP|Mux30~3_combout\,
	datac => \regALU|dt_out\(1),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux30~0_combout\);

-- Location: LCCOMB_X34_Y17_N16
\JUMPMUX|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux29~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|imm_out\(0))))) # (!\CONTROLU|PCsrc\(1) & (\regALU|dt_out\(2) & ((\CONTROLU|PCsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(2),
	datab => \CONTROLU|PCsrc\(1),
	datac => \INSTREG|imm_out\(0),
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y17_N28
\JUMPMUX|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux29~1_combout\ = (\JUMPMUX|Mux29~0_combout\) # ((!\CONTROLU|PCsrc\(1) & (\ALUCOMP|Mux29~2_combout\ & !\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMPMUX|Mux29~0_combout\,
	datab => \CONTROLU|PCsrc\(1),
	datac => \ALUCOMP|Mux29~2_combout\,
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux29~1_combout\);

-- Location: LCCOMB_X36_Y19_N14
\JUMPMUX|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux28~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|func_out\(1))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \regALU|dt_out\(3),
	datad => \INSTREG|func_out\(1),
	combout => \JUMPMUX|Mux28~0_combout\);

-- Location: LCCOMB_X42_Y19_N12
\JUMPMUX|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux28~1_combout\ = (\JUMPMUX|Mux28~0_combout\) # ((!\CONTROLU|PCsrc\(1) & (!\CONTROLU|PCsrc\(0) & \ALUCOMP|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \JUMPMUX|Mux28~0_combout\,
	datac => \CONTROLU|PCsrc\(0),
	datad => \ALUCOMP|Mux28~2_combout\,
	combout => \JUMPMUX|Mux28~1_combout\);

-- Location: LCCOMB_X36_Y19_N22
\JUMPMUX|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux27~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|func_out\(2))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \INSTREG|func_out\(2),
	datad => \regALU|dt_out\(4),
	combout => \JUMPMUX|Mux27~0_combout\);

-- Location: LCCOMB_X42_Y19_N2
\JUMPMUX|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux27~1_combout\ = (\JUMPMUX|Mux27~0_combout\) # ((\ALUCOMP|Mux27~2_combout\ & (!\CONTROLU|PCsrc\(0) & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux27~2_combout\,
	datab => \JUMPMUX|Mux27~0_combout\,
	datac => \CONTROLU|PCsrc\(0),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux27~1_combout\);

-- Location: LCCOMB_X36_Y19_N24
\JUMPMUX|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux26~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(5)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~3_combout\,
	datab => \CONTROLU|PCsrc\(0),
	datac => \regALU|dt_out\(5),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux26~0_combout\);

-- Location: LCCOMB_X36_Y19_N26
\JUMPMUX|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux25~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(6))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \regALU|dt_out\(6),
	datad => \ALUCOMP|Mux25~2_combout\,
	combout => \JUMPMUX|Mux25~0_combout\);

-- Location: LCCOMB_X35_Y18_N28
\JUMPMUX|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux24~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|imm_out\(14))))) # (!\CONTROLU|PCsrc\(1) & (\regALU|dt_out\(7) & (\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(7),
	datab => \CONTROLU|PCsrc\(0),
	datac => \CONTROLU|PCsrc\(1),
	datad => \INSTREG|imm_out\(14),
	combout => \JUMPMUX|Mux24~0_combout\);

-- Location: LCCOMB_X35_Y18_N12
\JUMPMUX|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux24~1_combout\ = (\JUMPMUX|Mux24~0_combout\) # ((\ALUCOMP|Mux24~3_combout\ & (!\CONTROLU|PCsrc\(1) & !\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux24~3_combout\,
	datab => \CONTROLU|PCsrc\(1),
	datac => \CONTROLU|PCsrc\(0),
	datad => \JUMPMUX|Mux24~0_combout\,
	combout => \JUMPMUX|Mux24~1_combout\);

-- Location: LCCOMB_X34_Y21_N4
\JUMPMUX|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux23~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(8)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \ALUCOMP|Mux23~2_combout\,
	datac => \regALU|dt_out\(8),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux23~0_combout\);

-- Location: LCCOMB_X42_Y20_N8
\JUMPMUX|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux22~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(9))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux22~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(9),
	datab => \CONTROLU|PCsrc\(0),
	datac => \CONTROLU|PCsrc\(1),
	datad => \ALUCOMP|Mux22~3_combout\,
	combout => \JUMPMUX|Mux22~0_combout\);

-- Location: LCCOMB_X34_Y21_N28
\JUMPMUX|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux21~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(10))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux21~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \regALU|dt_out\(10),
	datac => \ALUCOMP|Mux21~4_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux21~0_combout\);

-- Location: LCCOMB_X31_Y21_N8
\JUMPMUX|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux20~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(11))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux20~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(11),
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux20~3_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux20~0_combout\);

-- Location: LCCOMB_X42_Y19_N8
\JUMPMUX|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux19~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(12)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \ALUCOMP|Mux19~2_combout\,
	datac => \regALU|dt_out\(12),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux19~0_combout\);

-- Location: LCCOMB_X35_Y18_N14
\JUMPMUX|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux18~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|imm_out\(14))))) # (!\CONTROLU|PCsrc\(1) & (\regALU|dt_out\(13) & (\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(13),
	datab => \CONTROLU|PCsrc\(1),
	datac => \CONTROLU|PCsrc\(0),
	datad => \INSTREG|imm_out\(14),
	combout => \JUMPMUX|Mux18~0_combout\);

-- Location: LCCOMB_X35_Y18_N0
\JUMPMUX|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux18~1_combout\ = (\JUMPMUX|Mux18~0_combout\) # ((!\CONTROLU|PCsrc\(1) & (!\CONTROLU|PCsrc\(0) & \ALUCOMP|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \JUMPMUX|Mux18~0_combout\,
	datac => \CONTROLU|PCsrc\(0),
	datad => \ALUCOMP|Mux18~3_combout\,
	combout => \JUMPMUX|Mux18~1_combout\);

-- Location: LCCOMB_X34_Y21_N24
\JUMPMUX|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux17~0_combout\ = (\CONTROLU|PCsrc\(1) & (\INSTREG|imm_out\(14))) # (!\CONTROLU|PCsrc\(1) & (((\regALU|dt_out\(14) & \CONTROLU|PCsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(14),
	datab => \regALU|dt_out\(14),
	datac => \CONTROLU|PCsrc\(0),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux17~0_combout\);

-- Location: LCCOMB_X34_Y21_N6
\JUMPMUX|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux17~1_combout\ = (\JUMPMUX|Mux17~0_combout\) # ((!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux17~2_combout\ & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \JUMPMUX|Mux17~0_combout\,
	datac => \ALUCOMP|Mux17~2_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux17~1_combout\);

-- Location: LCCOMB_X42_Y20_N18
\JUMPMUX|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux16~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(15)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux16~3_combout\,
	datab => \CONTROLU|PCsrc\(0),
	datac => \CONTROLU|PCsrc\(1),
	datad => \regALU|dt_out\(15),
	combout => \JUMPMUX|Mux16~0_combout\);

-- Location: LCCOMB_X42_Y19_N26
\JUMPMUX|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux15~0_combout\ = (\CONTROLU|PCsrc\(1) & (\INSTREG|imm_out\(14))) # (!\CONTROLU|PCsrc\(1) & (((\CONTROLU|PCsrc\(0) & \regALU|dt_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \INSTREG|imm_out\(14),
	datac => \CONTROLU|PCsrc\(0),
	datad => \regALU|dt_out\(16),
	combout => \JUMPMUX|Mux15~0_combout\);

-- Location: LCCOMB_X42_Y19_N28
\JUMPMUX|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux15~1_combout\ = (\JUMPMUX|Mux15~0_combout\) # ((\ALUCOMP|Mux15~2_combout\ & (!\CONTROLU|PCsrc\(0) & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux15~2_combout\,
	datab => \JUMPMUX|Mux15~0_combout\,
	datac => \CONTROLU|PCsrc\(0),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux15~1_combout\);

-- Location: LCCOMB_X42_Y20_N0
\JUMPMUX|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux14~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(17)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux14~3_combout\,
	datab => \regALU|dt_out\(17),
	datac => \CONTROLU|PCsrc\(1),
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux14~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\JUMPMUX|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux13~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(18))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \regALU|dt_out\(18),
	datad => \ALUCOMP|Mux13~2_combout\,
	combout => \JUMPMUX|Mux13~0_combout\);

-- Location: LCCOMB_X42_Y19_N30
\JUMPMUX|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux12~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|imm_out\(14))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \INSTREG|imm_out\(14),
	datac => \regALU|dt_out\(19),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux12~0_combout\);

-- Location: LCCOMB_X42_Y19_N4
\JUMPMUX|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux12~1_combout\ = (\JUMPMUX|Mux12~0_combout\) # ((!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux12~3_combout\ & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \JUMPMUX|Mux12~0_combout\,
	datac => \ALUCOMP|Mux12~3_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux12~1_combout\);

-- Location: LCCOMB_X32_Y21_N20
\JUMPMUX|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux11~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(20)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux11~2_combout\,
	datad => \regALU|dt_out\(20),
	combout => \JUMPMUX|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y17_N16
\JUMPMUX|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux10~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\INSTREG|r2_out\(3))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \INSTREG|r2_out\(3),
	datad => \regALU|dt_out\(21),
	combout => \JUMPMUX|Mux10~0_combout\);

-- Location: LCCOMB_X33_Y17_N8
\JUMPMUX|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux10~1_combout\ = (\JUMPMUX|Mux10~0_combout\) # ((!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux10~3_combout\ & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMPMUX|Mux10~0_combout\,
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux10~3_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux10~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\JUMPMUX|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux9~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(22)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux9~2_combout\,
	datad => \regALU|dt_out\(22),
	combout => \JUMPMUX|Mux9~0_combout\);

-- Location: LCCOMB_X42_Y20_N10
\JUMPMUX|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux8~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(23)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux8~3_combout\,
	datab => \CONTROLU|PCsrc\(1),
	datac => \regALU|dt_out\(23),
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux8~0_combout\);

-- Location: LCCOMB_X42_Y19_N22
\JUMPMUX|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux7~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(24))) # (!\CONTROLU|PCsrc\(0) & ((\ALUCOMP|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \regALU|dt_out\(24),
	datac => \ALUCOMP|Mux7~2_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux7~0_combout\);

-- Location: LCCOMB_X33_Y17_N22
\JUMPMUX|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux6~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(25)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux6~3_combout\,
	datad => \regALU|dt_out\(25),
	combout => \JUMPMUX|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y17_N4
\JUMPMUX|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux5~0_combout\ = (\CONTROLU|PCsrc\(1) & (\INSTREG|r2_out\(3))) # (!\CONTROLU|PCsrc\(1) & (((\CONTROLU|PCsrc\(0) & \regALU|dt_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(3),
	datab => \CONTROLU|PCsrc\(1),
	datac => \CONTROLU|PCsrc\(0),
	datad => \regALU|dt_out\(26),
	combout => \JUMPMUX|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y21_N8
\JUMPMUX|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux5~1_combout\ = (\JUMPMUX|Mux5~0_combout\) # ((!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux5~3_combout\ & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \ALUCOMP|Mux5~3_combout\,
	datac => \CONTROLU|PCsrc\(1),
	datad => \JUMPMUX|Mux5~0_combout\,
	combout => \JUMPMUX|Mux5~1_combout\);

-- Location: LCCOMB_X42_Y19_N16
\JUMPMUX|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux4~0_combout\ = (!\CONTROLU|PCsrc\(1) & ((\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(27)))) # (!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \ALUCOMP|Mux4~2_combout\,
	datac => \regALU|dt_out\(27),
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y17_N12
\JUMPMUX|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux3~0_combout\ = (\CONTROLU|PCsrc\(1) & (\PROGCOUNT|addr_out\(28))) # (!\CONTROLU|PCsrc\(1) & (((\regALU|dt_out\(28) & \CONTROLU|PCsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(28),
	datab => \regALU|dt_out\(28),
	datac => \CONTROLU|PCsrc\(1),
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y17_N24
\JUMPMUX|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux3~1_combout\ = (\JUMPMUX|Mux3~0_combout\) # ((\ALUCOMP|Mux3~3_combout\ & (!\CONTROLU|PCsrc\(1) & !\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMPMUX|Mux3~0_combout\,
	datab => \ALUCOMP|Mux3~3_combout\,
	datac => \CONTROLU|PCsrc\(1),
	datad => \CONTROLU|PCsrc\(0),
	combout => \JUMPMUX|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y18_N10
\JUMPMUX|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux2~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\PROGCOUNT|addr_out\(29))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & (\regALU|dt_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \regALU|dt_out\(29),
	datad => \PROGCOUNT|addr_out\(29),
	combout => \JUMPMUX|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y18_N6
\JUMPMUX|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux2~1_combout\ = (\JUMPMUX|Mux2~0_combout\) # ((!\CONTROLU|PCsrc\(1) & (\ALUCOMP|Mux2~3_combout\ & !\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \ALUCOMP|Mux2~3_combout\,
	datac => \CONTROLU|PCsrc\(0),
	datad => \JUMPMUX|Mux2~0_combout\,
	combout => \JUMPMUX|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y19_N18
\JUMPMUX|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux1~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\PROGCOUNT|addr_out\(30))))) # (!\CONTROLU|PCsrc\(1) & (\CONTROLU|PCsrc\(0) & ((\regALU|dt_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \PROGCOUNT|addr_out\(30),
	datad => \regALU|dt_out\(30),
	combout => \JUMPMUX|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y19_N6
\JUMPMUX|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux1~1_combout\ = (\JUMPMUX|Mux1~0_combout\) # ((!\CONTROLU|PCsrc\(0) & (\ALUCOMP|Mux1~3_combout\ & !\CONTROLU|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(0),
	datab => \JUMPMUX|Mux1~0_combout\,
	datac => \ALUCOMP|Mux1~3_combout\,
	datad => \CONTROLU|PCsrc\(1),
	combout => \JUMPMUX|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y17_N8
\JUMPMUX|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux0~0_combout\ = (\CONTROLU|PCsrc\(1) & (((\PROGCOUNT|addr_out\(31))))) # (!\CONTROLU|PCsrc\(1) & (\regALU|dt_out\(31) & (\CONTROLU|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(31),
	datab => \CONTROLU|PCsrc\(1),
	datac => \CONTROLU|PCsrc\(0),
	datad => \PROGCOUNT|addr_out\(31),
	combout => \JUMPMUX|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y17_N22
\JUMPMUX|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \JUMPMUX|Mux0~1_combout\ = (\JUMPMUX|Mux0~0_combout\) # ((!\CONTROLU|PCsrc\(1) & (!\CONTROLU|PCsrc\(0) & \ALUCOMP|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|PCsrc\(1),
	datab => \CONTROLU|PCsrc\(0),
	datac => \ALUCOMP|Mux0~3_combout\,
	datad => \JUMPMUX|Mux0~0_combout\,
	combout => \JUMPMUX|Mux0~1_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux31~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(0));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(1));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(9));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(10));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(11));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(15));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(17));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(18));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(19));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(20));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(21));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(22));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(23));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(24));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(25));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(26));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(27));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(28));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(29));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(30));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(31));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \INSTREG|imm_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(1));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXRegDst|salida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(3));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[0]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(0));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[1]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[2]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(2));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[3]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[4]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[5]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(5));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[6]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(6));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[7]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(7));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[8]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(8));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[9]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(9));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[10]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(10));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[11]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(11));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[12]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(12));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[13]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(13));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[14]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(14));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[15]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(15));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[16]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(16));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[17]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(17));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[18]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(18));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[19]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(19));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[20]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(20));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[21]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(21));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[22]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(22));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[23]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(23));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[24]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(24));

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[25]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(25));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[26]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(26));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[27]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(27));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[28]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(28));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[29]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(29));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[30]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(30));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextIns[31]~I\ : cycloneii_io
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
	datain => \JUMPMUX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(31));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \NEWST|CS\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(3));
END structure;


