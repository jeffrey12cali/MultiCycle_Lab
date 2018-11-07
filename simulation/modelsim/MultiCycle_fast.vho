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

-- DATE "11/07/2018 14:53:32"

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
-- Res[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[1]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[2]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[3]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[7]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[8]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[9]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[11]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[12]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[13]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[14]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[15]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[16]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[17]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[18]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[19]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[20]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[21]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[22]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[23]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[24]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[25]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[26]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[27]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[28]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[29]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[30]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[31]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[3]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[4]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[1]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[5]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[7]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[8]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[9]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[10]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[11]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[12]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[13]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[14]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[15]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[16]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[17]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[18]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[19]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[20]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[21]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[22]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[23]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[24]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[25]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[26]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[27]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[28]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[29]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[30]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[31]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[2]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[9]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[11]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[12]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[14]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[15]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[16]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[17]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[18]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[19]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[20]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[21]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[22]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[23]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[24]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[25]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[26]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[27]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[28]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[29]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[30]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[31]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[0]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[3]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[6]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[7]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[8]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[9]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[10]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[11]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[12]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[13]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[14]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[15]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[16]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[17]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[18]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[19]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[20]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[21]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[22]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[23]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[24]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[25]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[26]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[27]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[28]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[29]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[30]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[31]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CONTROLU|PCwr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|RegWr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|comb~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|IRwr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|MemRd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MUXA|salida[0]~0_combout\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~2_combout\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \MUXA|salida[4]~4_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~5_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \MUXB|Mux23~0_combout\ : std_logic;
SIGNAL \MUXB|Mux22~0_combout\ : std_logic;
SIGNAL \MUXB|Mux21~0_combout\ : std_logic;
SIGNAL \MUXA|salida[11]~11_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~12_combout\ : std_logic;
SIGNAL \MUXB|Mux18~0_combout\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~15_combout\ : std_logic;
SIGNAL \MUXB|Mux15~0_combout\ : std_logic;
SIGNAL \MUXB|Mux14~0_combout\ : std_logic;
SIGNAL \MUXB|Mux13~0_combout\ : std_logic;
SIGNAL \MUXB|Mux12~0_combout\ : std_logic;
SIGNAL \MUXB|Mux11~0_combout\ : std_logic;
SIGNAL \MUXB|Mux10~0_combout\ : std_logic;
SIGNAL \MUXB|Mux9~0_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~23_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~24_combout\ : std_logic;
SIGNAL \MUXB|Mux6~0_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~26_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~27_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~28_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~29_combout\ : std_logic;
SIGNAL \MUXB|Mux1~0_combout\ : std_logic;
SIGNAL \MUXB|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM~100_regout\ : std_logic;
SIGNAL \REGFILE|MEM~293_combout\ : std_logic;
SIGNAL \REGFILE|MEM~69_regout\ : std_logic;
SIGNAL \REGFILE|MEM~294_combout\ : std_logic;
SIGNAL \REGFILE|MEM~102_regout\ : std_logic;
SIGNAL \REGFILE|MEM~297_combout\ : std_logic;
SIGNAL \REGFILE|MEM~71_regout\ : std_logic;
SIGNAL \REGFILE|MEM~298_combout\ : std_logic;
SIGNAL \REGFILE|MEM~104_regout\ : std_logic;
SIGNAL \REGFILE|MEM~301_combout\ : std_logic;
SIGNAL \REGFILE|MEM~105_regout\ : std_logic;
SIGNAL \REGFILE|MEM~303_combout\ : std_logic;
SIGNAL \REGFILE|MEM~74_regout\ : std_logic;
SIGNAL \REGFILE|MEM~304_combout\ : std_logic;
SIGNAL \REGFILE|MEM~75_regout\ : std_logic;
SIGNAL \REGFILE|MEM~306_combout\ : std_logic;
SIGNAL \REGFILE|MEM~76_regout\ : std_logic;
SIGNAL \REGFILE|MEM~308_combout\ : std_logic;
SIGNAL \REGFILE|MEM~77_regout\ : std_logic;
SIGNAL \REGFILE|MEM~310_combout\ : std_logic;
SIGNAL \REGFILE|MEM~109_regout\ : std_logic;
SIGNAL \REGFILE|MEM~78_regout\ : std_logic;
SIGNAL \REGFILE|MEM~46_regout\ : std_logic;
SIGNAL \REGFILE|MEM~312_combout\ : std_logic;
SIGNAL \REGFILE|MEM~110_regout\ : std_logic;
SIGNAL \REGFILE|MEM~313_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111_regout\ : std_logic;
SIGNAL \REGFILE|MEM~315_combout\ : std_logic;
SIGNAL \REGFILE|MEM~48_regout\ : std_logic;
SIGNAL \REGFILE|MEM~112_regout\ : std_logic;
SIGNAL \REGFILE|MEM~317_combout\ : std_logic;
SIGNAL \REGFILE|MEM~81_regout\ : std_logic;
SIGNAL \REGFILE|MEM~318_combout\ : std_logic;
SIGNAL \REGFILE|MEM~82_regout\ : std_logic;
SIGNAL \REGFILE|MEM~320_combout\ : std_logic;
SIGNAL \REGFILE|MEM~115_regout\ : std_logic;
SIGNAL \REGFILE|MEM~323_combout\ : std_logic;
SIGNAL \REGFILE|MEM~84_regout\ : std_logic;
SIGNAL \REGFILE|MEM~324_combout\ : std_logic;
SIGNAL \REGFILE|MEM~85_regout\ : std_logic;
SIGNAL \REGFILE|MEM~326_combout\ : std_logic;
SIGNAL \REGFILE|MEM~117_regout\ : std_logic;
SIGNAL \REGFILE|MEM~86_regout\ : std_logic;
SIGNAL \REGFILE|MEM~328_combout\ : std_logic;
SIGNAL \REGFILE|MEM~87_regout\ : std_logic;
SIGNAL \REGFILE|MEM~330_combout\ : std_logic;
SIGNAL \REGFILE|MEM~88_regout\ : std_logic;
SIGNAL \REGFILE|MEM~332_combout\ : std_logic;
SIGNAL \REGFILE|MEM~120_regout\ : std_logic;
SIGNAL \REGFILE|MEM~89_regout\ : std_logic;
SIGNAL \REGFILE|MEM~334_combout\ : std_logic;
SIGNAL \REGFILE|MEM~90_regout\ : std_logic;
SIGNAL \REGFILE|MEM~336_combout\ : std_logic;
SIGNAL \REGFILE|MEM~123_regout\ : std_logic;
SIGNAL \REGFILE|MEM~339_combout\ : std_logic;
SIGNAL \REGFILE|MEM~124_regout\ : std_logic;
SIGNAL \REGFILE|MEM~341_combout\ : std_logic;
SIGNAL \REGFILE|MEM~93_regout\ : std_logic;
SIGNAL \REGFILE|MEM~61_regout\ : std_logic;
SIGNAL \REGFILE|MEM~342_combout\ : std_logic;
SIGNAL \REGFILE|MEM~126_regout\ : std_logic;
SIGNAL \REGFILE|MEM~345_combout\ : std_logic;
SIGNAL \REGFILE|MEM~63_regout\ : std_logic;
SIGNAL \REGFILE|MEM~127_regout\ : std_logic;
SIGNAL \REGFILE|MEM~347_combout\ : std_logic;
SIGNAL \REGFILE|MEM~128_regout\ : std_logic;
SIGNAL \REGFILE|MEM~349_combout\ : std_logic;
SIGNAL \REGFILE|MEM~129_regout\ : std_logic;
SIGNAL \REGFILE|MEM~351_combout\ : std_logic;
SIGNAL \REGFILE|MEM~98_regout\ : std_logic;
SIGNAL \REGFILE|MEM~66_regout\ : std_logic;
SIGNAL \REGFILE|MEM~352_combout\ : std_logic;
SIGNAL \REGFILE|MEM~130_regout\ : std_logic;
SIGNAL \REGFILE|MEM~353_combout\ : std_logic;
SIGNAL \REGFILE|MEM~99_regout\ : std_logic;
SIGNAL \REGFILE|MEM~67_regout\ : std_logic;
SIGNAL \REGFILE|MEM~354_combout\ : std_logic;
SIGNAL \REGFILE|MEM~131_regout\ : std_logic;
SIGNAL \REGFILE|MEM~355_combout\ : std_logic;
SIGNAL \CONTROLU|MemRd~combout\ : std_logic;
SIGNAL \CONTROLU|RegWr~combout\ : std_logic;
SIGNAL \CONTROLU|RegWr~clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|MemRd~clkctrl_outclk\ : std_logic;
SIGNAL \REGFILE|MEM~100feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~102feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~71feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~75feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~109feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~78feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~110feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~46feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~111feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~115feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~85feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~88feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~90feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~123feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~61feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~63feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~129feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~99feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~131feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|comb~1clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|Equal2~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|comb~1_combout\ : std_logic;
SIGNAL \CONTROLU|IRwr~combout\ : std_logic;
SIGNAL \CONTROLU|IRwr~clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|PCwr~combout\ : std_logic;
SIGNAL \CONTROLU|PCwr~clkctrl_outclk\ : std_logic;
SIGNAL \MEM|MEM~293_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal1~0_combout\ : std_logic;
SIGNAL \MEM|MEM~292_combout\ : std_logic;
SIGNAL \REGFILE|MEM~356_combout\ : std_logic;
SIGNAL \CONTROLU|Equal3~0_combout\ : std_logic;
SIGNAL \CONTROLU|RegDst~combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~68_regout\ : std_logic;
SIGNAL \REGFILE|MEM~36feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~36_regout\ : std_logic;
SIGNAL \REGFILE|MEM~292_combout\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM~37_regout\ : std_logic;
SIGNAL \REGFILE|MEM~101feeder_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[1]~1_combout\ : std_logic;
SIGNAL \REGFILE|MEM~101_regout\ : std_logic;
SIGNAL \REGFILE|MEM~295_combout\ : std_logic;
SIGNAL \CONTROLU|comb~3_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcA~combout\ : std_logic;
SIGNAL \MUXA|salida[1]~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~1\ : std_logic;
SIGNAL \ALUCOMP|Add0~2_combout\ : std_logic;
SIGNAL \regALU|dt_out[1]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~70feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~70_regout\ : std_logic;
SIGNAL \REGFILE|MEM~38_regout\ : std_logic;
SIGNAL \REGFILE|MEM~296_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~3\ : std_logic;
SIGNAL \ALUCOMP|Add0~4_combout\ : std_logic;
SIGNAL \regALU|dt_out[2]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~103feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~103_regout\ : std_logic;
SIGNAL \REGFILE|MEM~39_regout\ : std_logic;
SIGNAL \REGFILE|MEM~299_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM~72feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~72_regout\ : std_logic;
SIGNAL \REGFILE|MEM~40feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~40_regout\ : std_logic;
SIGNAL \REGFILE|MEM~300_combout\ : std_logic;
SIGNAL \MUXB|Mux27~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~7\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \REGFILE|MEM~41_regout\ : std_logic;
SIGNAL \REGFILE|MEM~73_regout\ : std_logic;
SIGNAL \REGFILE|MEM~302_combout\ : std_logic;
SIGNAL \MUXB|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~9\ : std_logic;
SIGNAL \ALUCOMP|Add0~10_combout\ : std_logic;
SIGNAL \REGFILE|MEM~42feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~42_regout\ : std_logic;
SIGNAL \REGFILE|MEM~106feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~106_regout\ : std_logic;
SIGNAL \REGFILE|MEM~305_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~11\ : std_logic;
SIGNAL \ALUCOMP|Add0~12_combout\ : std_logic;
SIGNAL \REGFILE|MEM~107feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~107_regout\ : std_logic;
SIGNAL \REGFILE|MEM~43_regout\ : std_logic;
SIGNAL \REGFILE|MEM~307_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~13\ : std_logic;
SIGNAL \ALUCOMP|Add0~14_combout\ : std_logic;
SIGNAL \REGFILE|MEM~44feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~44_regout\ : std_logic;
SIGNAL \REGFILE|MEM~108_regout\ : std_logic;
SIGNAL \REGFILE|MEM~309_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~15\ : std_logic;
SIGNAL \ALUCOMP|Add0~16_combout\ : std_logic;
SIGNAL \REGFILE|MEM~45_regout\ : std_logic;
SIGNAL \REGFILE|MEM~311_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~17\ : std_logic;
SIGNAL \ALUCOMP|Add0~18_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~10_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~19\ : std_logic;
SIGNAL \ALUCOMP|Add0~20_combout\ : std_logic;
SIGNAL \REGFILE|MEM~47_regout\ : std_logic;
SIGNAL \REGFILE|MEM~79feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~79_regout\ : std_logic;
SIGNAL \REGFILE|MEM~314_combout\ : std_logic;
SIGNAL \MUXB|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21\ : std_logic;
SIGNAL \ALUCOMP|Add0~22_combout\ : std_logic;
SIGNAL \regALU|dt_out[11]~feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~80_regout\ : std_logic;
SIGNAL \REGFILE|MEM~316_combout\ : std_logic;
SIGNAL \MUXB|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~23\ : std_logic;
SIGNAL \ALUCOMP|Add0~24_combout\ : std_logic;
SIGNAL \REGFILE|MEM~49_regout\ : std_logic;
SIGNAL \REGFILE|MEM~113_regout\ : std_logic;
SIGNAL \REGFILE|MEM~319_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~25\ : std_logic;
SIGNAL \ALUCOMP|Add0~26_combout\ : std_logic;
SIGNAL \REGFILE|MEM~114feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~114_regout\ : std_logic;
SIGNAL \REGFILE|MEM~50feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~50_regout\ : std_logic;
SIGNAL \REGFILE|MEM~321_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~27\ : std_logic;
SIGNAL \ALUCOMP|Add0~28_combout\ : std_logic;
SIGNAL \REGFILE|MEM~51feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~51_regout\ : std_logic;
SIGNAL \REGFILE|MEM~83_regout\ : std_logic;
SIGNAL \REGFILE|MEM~322_combout\ : std_logic;
SIGNAL \MUXB|Mux16~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~29\ : std_logic;
SIGNAL \ALUCOMP|Add0~30_combout\ : std_logic;
SIGNAL \REGFILE|MEM~116feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~116_regout\ : std_logic;
SIGNAL \REGFILE|MEM~52_regout\ : std_logic;
SIGNAL \REGFILE|MEM~325_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~31\ : std_logic;
SIGNAL \ALUCOMP|Add0~32_combout\ : std_logic;
SIGNAL \REGFILE|MEM~53_regout\ : std_logic;
SIGNAL \REGFILE|MEM~327_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33\ : std_logic;
SIGNAL \ALUCOMP|Add0~34_combout\ : std_logic;
SIGNAL \REGFILE|MEM~54_regout\ : std_logic;
SIGNAL \REGFILE|MEM~118_regout\ : std_logic;
SIGNAL \REGFILE|MEM~329_combout\ : std_logic;
SIGNAL \MUXA|salida[18]~18_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35\ : std_logic;
SIGNAL \ALUCOMP|Add0~36_combout\ : std_logic;
SIGNAL \REGFILE|MEM~55_regout\ : std_logic;
SIGNAL \REGFILE|MEM~119feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~119_regout\ : std_logic;
SIGNAL \REGFILE|MEM~331_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37\ : std_logic;
SIGNAL \ALUCOMP|Add0~38_combout\ : std_logic;
SIGNAL \REGFILE|MEM~56_regout\ : std_logic;
SIGNAL \REGFILE|MEM~333_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~39\ : std_logic;
SIGNAL \ALUCOMP|Add0~40_combout\ : std_logic;
SIGNAL \REGFILE|MEM~57_regout\ : std_logic;
SIGNAL \REGFILE|MEM~121_regout\ : std_logic;
SIGNAL \REGFILE|MEM~335_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~21_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41\ : std_logic;
SIGNAL \ALUCOMP|Add0~42_combout\ : std_logic;
SIGNAL \REGFILE|MEM~58feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~58_regout\ : std_logic;
SIGNAL \REGFILE|MEM~122feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~122_regout\ : std_logic;
SIGNAL \REGFILE|MEM~337_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43\ : std_logic;
SIGNAL \ALUCOMP|Add0~44_combout\ : std_logic;
SIGNAL \REGFILE|MEM~59feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~59_regout\ : std_logic;
SIGNAL \REGFILE|MEM~91feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~91_regout\ : std_logic;
SIGNAL \REGFILE|MEM~338_combout\ : std_logic;
SIGNAL \MUXB|Mux8~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~45\ : std_logic;
SIGNAL \ALUCOMP|Add0~46_combout\ : std_logic;
SIGNAL \REGFILE|MEM~60feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~60_regout\ : std_logic;
SIGNAL \REGFILE|MEM~92_regout\ : std_logic;
SIGNAL \REGFILE|MEM~340_combout\ : std_logic;
SIGNAL \MUXB|Mux7~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47\ : std_logic;
SIGNAL \ALUCOMP|Add0~48_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~125_regout\ : std_logic;
SIGNAL \REGFILE|MEM~343_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~49\ : std_logic;
SIGNAL \ALUCOMP|Add0~50_combout\ : std_logic;
SIGNAL \REGFILE|MEM~62feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~62_regout\ : std_logic;
SIGNAL \REGFILE|MEM~94_regout\ : std_logic;
SIGNAL \REGFILE|MEM~344_combout\ : std_logic;
SIGNAL \MUXB|Mux5~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51\ : std_logic;
SIGNAL \ALUCOMP|Add0~52_combout\ : std_logic;
SIGNAL \REGFILE|MEM~95_regout\ : std_logic;
SIGNAL \REGFILE|MEM~346_combout\ : std_logic;
SIGNAL \MUXB|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~53\ : std_logic;
SIGNAL \ALUCOMP|Add0~54_combout\ : std_logic;
SIGNAL \REGFILE|MEM~64_regout\ : std_logic;
SIGNAL \REGFILE|MEM~96_regout\ : std_logic;
SIGNAL \REGFILE|MEM~348_combout\ : std_logic;
SIGNAL \MUXB|Mux3~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~55\ : std_logic;
SIGNAL \ALUCOMP|Add0~56_combout\ : std_logic;
SIGNAL \REGFILE|MEM~65_regout\ : std_logic;
SIGNAL \REGFILE|MEM~97feeder_combout\ : std_logic;
SIGNAL \REGFILE|MEM~97_regout\ : std_logic;
SIGNAL \REGFILE|MEM~350_combout\ : std_logic;
SIGNAL \MUXB|Mux2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~57\ : std_logic;
SIGNAL \ALUCOMP|Add0~58_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~30_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~59\ : std_logic;
SIGNAL \ALUCOMP|Add0~60_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~61\ : std_logic;
SIGNAL \ALUCOMP|Add0~62_combout\ : std_logic;
SIGNAL \INSTREG|jump_out\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|NextSt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|ALUsrcB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regA|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM|dataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regB|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemDir~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INSTREG|r2_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INSTREG|ALT_INV_r2_out\ : std_logic_vector(0 DOWNTO 0);

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

\CONTROLU|PCwr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|PCwr~combout\);

\CONTROLU|RegWr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|RegWr~combout\);

\CONTROLU|comb~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|comb~1_combout\);

\CONTROLU|IRwr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|IRwr~combout\);

\CONTROLU|MemRd~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|MemRd~combout\);
\INSTREG|ALT_INV_r2_out\(0) <= NOT \INSTREG|r2_out\(0);

-- Location: LCFF_X37_Y21_N31
\regA|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(0));

-- Location: LCCOMB_X37_Y21_N16
\MUXA|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~0_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(0))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|dt_out\(0),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MUXA|salida[0]~0_combout\);

-- Location: LCFF_X37_Y19_N19
\regB|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(1));

-- Location: LCCOMB_X37_Y19_N28
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(1),
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCFF_X37_Y21_N27
\regA|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(2));

-- Location: LCCOMB_X37_Y21_N4
\MUXA|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~2_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(2))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regA|dt_out\(2),
	datac => \PROGCOUNT|addr_out\(2),
	combout => \MUXA|salida[2]~2_combout\);

-- Location: LCFF_X37_Y22_N13
\regB|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(3));

-- Location: LCCOMB_X37_Y22_N22
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(3),
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCFF_X38_Y21_N17
\regA|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(4));

-- Location: LCCOMB_X38_Y21_N10
\MUXA|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~4_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(4))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(4),
	datad => \PROGCOUNT|addr_out\(4),
	combout => \MUXA|salida[4]~4_combout\);

-- Location: LCFF_X37_Y20_N5
\regA|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~303_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(5));

-- Location: LCCOMB_X37_Y20_N2
\MUXA|salida[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~5_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(5))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regA|dt_out\(5),
	datad => \PROGCOUNT|addr_out\(5),
	combout => \MUXA|salida[5]~5_combout\);

-- Location: LCFF_X35_Y18_N27
\regB|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(6));

-- Location: LCCOMB_X35_Y18_N24
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(6),
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCFF_X38_Y18_N31
\regB|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(7));

-- Location: LCCOMB_X37_Y18_N16
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\CONTROLU|ALUsrcB\(0) & (\CONTROLU|ALUsrcB\(1) & (\INSTREG|r2_out\(0)))) # (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & ((\regB|dt_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \INSTREG|r2_out\(0),
	datad => \regB|dt_out\(7),
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCFF_X37_Y19_N7
\regB|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(8));

-- Location: LCCOMB_X37_Y19_N16
\MUXB|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux23~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(8),
	combout => \MUXB|Mux23~0_combout\);

-- Location: LCFF_X37_Y19_N27
\regB|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(9));

-- Location: LCCOMB_X37_Y19_N20
\MUXB|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux22~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(9),
	combout => \MUXB|Mux22~0_combout\);

-- Location: LCFF_X37_Y22_N21
\regB|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(10));

-- Location: LCCOMB_X37_Y22_N10
\MUXB|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux21~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(10) & !\CONTROLU|ALUsrcB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(10),
	datad => \CONTROLU|ALUsrcB\(1),
	combout => \MUXB|Mux21~0_combout\);

-- Location: LCFF_X37_Y22_N17
\regA|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(10));

-- Location: LCFF_X35_Y18_N23
\regA|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(11));

-- Location: LCCOMB_X37_Y21_N12
\MUXA|salida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~11_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(11)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(11),
	datad => \regA|dt_out\(11),
	combout => \MUXA|salida[11]~11_combout\);

-- Location: LCFF_X37_Y20_N21
\regA|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(12));

-- Location: LCCOMB_X37_Y20_N26
\MUXA|salida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~12_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(12))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(12),
	datad => \PROGCOUNT|addr_out\(12),
	combout => \MUXA|salida[12]~12_combout\);

-- Location: LCFF_X37_Y19_N23
\regB|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(13));

-- Location: LCCOMB_X37_Y19_N4
\MUXB|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux18~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(13),
	combout => \MUXB|Mux18~0_combout\);

-- Location: LCFF_X35_Y21_N29
\regB|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(14));

-- Location: LCCOMB_X35_Y21_N30
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\CONTROLU|ALUsrcB\(1) & (\CONTROLU|ALUsrcB\(0) & ((\INSTREG|r2_out\(0))))) # (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(14),
	datad => \INSTREG|r2_out\(0),
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCFF_X35_Y18_N17
\regA|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~323_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(15));

-- Location: LCCOMB_X35_Y21_N8
\MUXA|salida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~15_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(15)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(15),
	datab => \CONTROLU|ALUsrcA~combout\,
	datad => \regA|dt_out\(15),
	combout => \MUXA|salida[15]~15_combout\);

-- Location: LCFF_X36_Y18_N23
\regB|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(16));

-- Location: LCCOMB_X36_Y18_N24
\MUXB|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux15~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(16),
	combout => \MUXB|Mux15~0_combout\);

-- Location: LCFF_X35_Y20_N23
\regB|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(17));

-- Location: LCCOMB_X35_Y20_N30
\MUXB|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux14~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(17),
	combout => \MUXB|Mux14~0_combout\);

-- Location: LCFF_X34_Y20_N25
\regB|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(18));

-- Location: LCCOMB_X35_Y21_N2
\MUXB|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux13~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(18),
	combout => \MUXB|Mux13~0_combout\);

-- Location: LCFF_X35_Y20_N7
\regB|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(19));

-- Location: LCCOMB_X35_Y20_N14
\MUXB|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux12~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(19),
	combout => \MUXB|Mux12~0_combout\);

-- Location: LCFF_X36_Y18_N19
\regB|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(20));

-- Location: LCCOMB_X36_Y18_N0
\MUXB|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux11~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (\regB|dt_out\(20) & !\CONTROLU|ALUsrcB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \regB|dt_out\(20),
	datad => \CONTROLU|ALUsrcB\(1),
	combout => \MUXB|Mux11~0_combout\);

-- Location: LCFF_X37_Y19_N9
\regB|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(21));

-- Location: LCCOMB_X37_Y19_N14
\MUXB|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux10~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(21),
	combout => \MUXB|Mux10~0_combout\);

-- Location: LCFF_X33_Y18_N17
\regB|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(22));

-- Location: LCCOMB_X35_Y20_N0
\MUXB|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux9~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(22),
	combout => \MUXB|Mux9~0_combout\);

-- Location: LCFF_X33_Y18_N23
\regA|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(23));

-- Location: LCCOMB_X35_Y20_N2
\MUXA|salida[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~23_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(23)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(23),
	datad => \regA|dt_out\(23),
	combout => \MUXA|salida[23]~23_combout\);

-- Location: LCFF_X33_Y18_N3
\regA|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(24));

-- Location: LCCOMB_X35_Y20_N12
\MUXA|salida[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~24_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(24)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(24),
	datad => \regA|dt_out\(24),
	combout => \MUXA|salida[24]~24_combout\);

-- Location: LCFF_X36_Y18_N9
\regB|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(25));

-- Location: LCCOMB_X35_Y20_N8
\MUXB|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux6~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(25),
	combout => \MUXB|Mux6~0_combout\);

-- Location: LCFF_X38_Y18_N25
\regA|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(26));

-- Location: LCCOMB_X38_Y18_N6
\MUXA|salida[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~26_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(26))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(26),
	datad => \PROGCOUNT|addr_out\(26),
	combout => \MUXA|salida[26]~26_combout\);

-- Location: LCFF_X38_Y18_N15
\regA|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(27));

-- Location: LCCOMB_X38_Y18_N12
\MUXA|salida[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~27_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(27))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(27),
	datad => \PROGCOUNT|addr_out\(27),
	combout => \MUXA|salida[27]~27_combout\);

-- Location: LCFF_X35_Y22_N21
\regA|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(28));

-- Location: LCCOMB_X35_Y22_N18
\MUXA|salida[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~28_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(28))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(28),
	datad => \PROGCOUNT|addr_out\(28),
	combout => \MUXA|salida[28]~28_combout\);

-- Location: LCFF_X35_Y22_N9
\regA|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(29));

-- Location: LCCOMB_X35_Y22_N26
\MUXA|salida[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~29_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(29))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(29),
	datad => \PROGCOUNT|addr_out\(29),
	combout => \MUXA|salida[29]~29_combout\);

-- Location: LCFF_X34_Y20_N17
\regB|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(30));

-- Location: LCCOMB_X34_Y20_N22
\MUXB|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux1~0_combout\ = (\regB|dt_out\(30) & (!\CONTROLU|ALUsrcB\(1) & !\CONTROLU|ALUsrcB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(30),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \CONTROLU|ALUsrcB\(0),
	combout => \MUXB|Mux1~0_combout\);

-- Location: LCFF_X35_Y20_N25
\regA|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(30));

-- Location: LCFF_X36_Y19_N21
\regB|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(31));

-- Location: LCCOMB_X36_Y19_N30
\MUXB|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~0_combout\ = (\regB|dt_out\(31) & (!\CONTROLU|ALUsrcB\(1) & !\CONTROLU|ALUsrcB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(31),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \CONTROLU|ALUsrcB\(0),
	combout => \MUXB|Mux0~0_combout\);

-- Location: LCFF_X36_Y19_N13
\regA|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(31));

-- Location: LCCOMB_X37_Y17_N20
\CONTROLU|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~0_combout\ = (!\NEWST|CS\(0)) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~0_combout\);

-- Location: LCCOMB_X37_Y17_N14
\CONTROLU|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~2_combout\ = (\NEWST|CS\(1)) # (!\NEWST|CS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~2_combout\);

-- Location: LCFF_X38_Y21_N13
\REGFILE|MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~100feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~100_regout\);

-- Location: LCCOMB_X37_Y21_N30
\REGFILE|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~293_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~100_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~36_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~100_regout\,
	datad => \REGFILE|MEM~36_regout\,
	combout => \REGFILE|MEM~293_combout\);

-- Location: LCFF_X37_Y19_N13
\REGFILE|MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(1),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~69_regout\);

-- Location: LCCOMB_X37_Y19_N18
\REGFILE|MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~294_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~69_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~37_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~69_regout\,
	datac => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~37_regout\,
	combout => \REGFILE|MEM~294_combout\);

-- Location: LCFF_X36_Y22_N19
\REGFILE|MEM~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~102feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~102_regout\);

-- Location: LCCOMB_X37_Y21_N26
\REGFILE|MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~297_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~102_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~38_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~38_regout\,
	datad => \REGFILE|MEM~102_regout\,
	combout => \REGFILE|MEM~297_combout\);

-- Location: LCFF_X36_Y22_N29
\REGFILE|MEM~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~71feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~71_regout\);

-- Location: LCCOMB_X37_Y22_N12
\REGFILE|MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~298_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~71_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~39_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~39_regout\,
	datad => \REGFILE|MEM~71_regout\,
	combout => \REGFILE|MEM~298_combout\);

-- Location: LCFF_X38_Y21_N5
\REGFILE|MEM~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(4),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~104_regout\);

-- Location: LCCOMB_X38_Y21_N16
\REGFILE|MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~301_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~104_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~40_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~104_regout\,
	datac => \REGFILE|MEM~40_regout\,
	combout => \REGFILE|MEM~301_combout\);

-- Location: LCFF_X37_Y20_N9
\REGFILE|MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(5),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~105_regout\);

-- Location: LCCOMB_X37_Y20_N4
\REGFILE|MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~303_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~105_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~41_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~105_regout\,
	datac => \REGFILE|MEM~41_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~303_combout\);

-- Location: LCFF_X36_Y18_N1
\REGFILE|MEM~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(6),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~74_regout\);

-- Location: LCCOMB_X35_Y18_N26
\REGFILE|MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~304_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~74_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~42_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~74_regout\,
	datad => \REGFILE|MEM~42_regout\,
	combout => \REGFILE|MEM~304_combout\);

-- Location: LCFF_X37_Y18_N9
\REGFILE|MEM~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~75feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~75_regout\);

-- Location: LCCOMB_X38_Y18_N30
\REGFILE|MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~306_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~75_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~43_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~43_regout\,
	datac => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~75_regout\,
	combout => \REGFILE|MEM~306_combout\);

-- Location: LCFF_X37_Y19_N29
\REGFILE|MEM~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(8),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~76_regout\);

-- Location: LCCOMB_X37_Y19_N6
\REGFILE|MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~308_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~76_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~44_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~76_regout\,
	datac => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~44_regout\,
	combout => \REGFILE|MEM~308_combout\);

-- Location: LCFF_X36_Y21_N21
\REGFILE|MEM~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(9),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~77_regout\);

-- Location: LCCOMB_X37_Y19_N26
\REGFILE|MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~310_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~77_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~45_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~77_regout\,
	datad => \REGFILE|MEM~45_regout\,
	combout => \REGFILE|MEM~310_combout\);

-- Location: LCFF_X35_Y19_N21
\REGFILE|MEM~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~109feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~109_regout\);

-- Location: LCFF_X36_Y22_N9
\REGFILE|MEM~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~78feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~78_regout\);

-- Location: LCFF_X37_Y22_N15
\REGFILE|MEM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~46feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~46_regout\);

-- Location: LCCOMB_X37_Y22_N20
\REGFILE|MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~312_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~78_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~46_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~46_regout\,
	datad => \REGFILE|MEM~78_regout\,
	combout => \REGFILE|MEM~312_combout\);

-- Location: LCFF_X36_Y22_N15
\REGFILE|MEM~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~110feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~110_regout\);

-- Location: LCCOMB_X37_Y22_N16
\REGFILE|MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~313_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~110_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~46_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~46_regout\,
	datad => \REGFILE|MEM~110_regout\,
	combout => \REGFILE|MEM~313_combout\);

-- Location: LCFF_X34_Y18_N31
\REGFILE|MEM~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~111feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~111_regout\);

-- Location: LCCOMB_X35_Y18_N22
\REGFILE|MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~315_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~111_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~47_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~47_regout\,
	datac => \REGFILE|MEM~111_regout\,
	combout => \REGFILE|MEM~315_combout\);

-- Location: LCFF_X35_Y21_N17
\REGFILE|MEM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(12),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~48_regout\);

-- Location: LCFF_X37_Y20_N3
\REGFILE|MEM~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(12),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~112_regout\);

-- Location: LCCOMB_X37_Y20_N20
\REGFILE|MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~317_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~112_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~48_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~112_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~48_regout\,
	combout => \REGFILE|MEM~317_combout\);

-- Location: LCFF_X37_Y19_N17
\REGFILE|MEM~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(13),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~81_regout\);

-- Location: LCCOMB_X37_Y19_N22
\REGFILE|MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~318_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~81_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~49_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~81_regout\,
	datad => \REGFILE|MEM~49_regout\,
	combout => \REGFILE|MEM~318_combout\);

-- Location: LCFF_X36_Y21_N3
\REGFILE|MEM~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(14),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~82_regout\);

-- Location: LCCOMB_X35_Y21_N28
\REGFILE|MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~320_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~82_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~50_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~50_regout\,
	datab => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~82_regout\,
	combout => \REGFILE|MEM~320_combout\);

-- Location: LCFF_X34_Y18_N29
\REGFILE|MEM~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~115feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~115_regout\);

-- Location: LCCOMB_X35_Y18_N16
\REGFILE|MEM~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~323_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~115_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~51_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~51_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~115_regout\,
	combout => \REGFILE|MEM~323_combout\);

-- Location: LCFF_X36_Y18_N25
\REGFILE|MEM~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(16),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~84_regout\);

-- Location: LCCOMB_X36_Y18_N22
\REGFILE|MEM~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~324_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~84_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~52_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~84_regout\,
	datad => \REGFILE|MEM~52_regout\,
	combout => \REGFILE|MEM~324_combout\);

-- Location: LCFF_X34_Y20_N29
\REGFILE|MEM~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~85feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~85_regout\);

-- Location: LCCOMB_X35_Y20_N22
\REGFILE|MEM~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~326_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~85_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~53_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~53_regout\,
	datad => \REGFILE|MEM~85_regout\,
	combout => \REGFILE|MEM~326_combout\);

-- Location: LCFF_X37_Y20_N25
\REGFILE|MEM~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(17),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~117_regout\);

-- Location: LCFF_X34_Y20_N19
\REGFILE|MEM~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(18),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~86_regout\);

-- Location: LCCOMB_X34_Y20_N24
\REGFILE|MEM~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~328_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~86_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~54_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datab => \REGFILE|MEM~54_regout\,
	datad => \REGFILE|MEM~86_regout\,
	combout => \REGFILE|MEM~328_combout\);

-- Location: LCFF_X36_Y18_N13
\REGFILE|MEM~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(19),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~87_regout\);

-- Location: LCCOMB_X35_Y20_N6
\REGFILE|MEM~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~330_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~87_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~55_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~55_regout\,
	datad => \REGFILE|MEM~87_regout\,
	combout => \REGFILE|MEM~330_combout\);

-- Location: LCFF_X36_Y18_N21
\REGFILE|MEM~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~88feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~88_regout\);

-- Location: LCCOMB_X36_Y18_N18
\REGFILE|MEM~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~332_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~88_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~56_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~88_regout\,
	datad => \REGFILE|MEM~56_regout\,
	combout => \REGFILE|MEM~332_combout\);

-- Location: LCFF_X37_Y20_N7
\REGFILE|MEM~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(20),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~120_regout\);

-- Location: LCFF_X37_Y19_N15
\REGFILE|MEM~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(21),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~89_regout\);

-- Location: LCCOMB_X37_Y19_N8
\REGFILE|MEM~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~334_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~89_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~57_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~89_regout\,
	datad => \REGFILE|MEM~57_regout\,
	combout => \REGFILE|MEM~334_combout\);

-- Location: LCFF_X34_Y18_N3
\REGFILE|MEM~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~90feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~90_regout\);

-- Location: LCCOMB_X33_Y18_N16
\REGFILE|MEM~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~336_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~90_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~58_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~58_regout\,
	datad => \REGFILE|MEM~90_regout\,
	combout => \REGFILE|MEM~336_combout\);

-- Location: LCFF_X34_Y18_N1
\REGFILE|MEM~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~123feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~123_regout\);

-- Location: LCCOMB_X33_Y18_N22
\REGFILE|MEM~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~339_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~123_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~59_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~59_regout\,
	datac => \REGFILE|MEM~123_regout\,
	combout => \REGFILE|MEM~339_combout\);

-- Location: LCFF_X34_Y18_N9
\REGFILE|MEM~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(24),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~124_regout\);

-- Location: LCCOMB_X33_Y18_N2
\REGFILE|MEM~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~341_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~124_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~60_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~60_regout\,
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~124_regout\,
	combout => \REGFILE|MEM~341_combout\);

-- Location: LCFF_X36_Y18_N11
\REGFILE|MEM~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(25),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~93_regout\);

-- Location: LCFF_X35_Y18_N9
\REGFILE|MEM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~61feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~61_regout\);

-- Location: LCCOMB_X36_Y18_N8
\REGFILE|MEM~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~342_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~93_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~61_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~93_regout\,
	datab => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~61_regout\,
	combout => \REGFILE|MEM~342_combout\);

-- Location: LCFF_X37_Y18_N15
\REGFILE|MEM~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(26),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~126_regout\);

-- Location: LCCOMB_X38_Y18_N24
\REGFILE|MEM~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~345_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~126_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~62_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~62_regout\,
	datad => \REGFILE|MEM~126_regout\,
	combout => \REGFILE|MEM~345_combout\);

-- Location: LCFF_X38_Y18_N11
\REGFILE|MEM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~63feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~63_regout\);

-- Location: LCFF_X37_Y18_N31
\REGFILE|MEM~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(27),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~127_regout\);

-- Location: LCCOMB_X38_Y18_N14
\REGFILE|MEM~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~347_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~127_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~63_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~127_regout\,
	datad => \REGFILE|MEM~63_regout\,
	combout => \REGFILE|MEM~347_combout\);

-- Location: LCFF_X36_Y22_N11
\REGFILE|MEM~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(28),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~128_regout\);

-- Location: LCCOMB_X35_Y22_N20
\REGFILE|MEM~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~349_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~128_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~64_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~64_regout\,
	datac => \REGFILE|MEM~128_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~349_combout\);

-- Location: LCFF_X36_Y22_N27
\REGFILE|MEM~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~129feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~129_regout\);

-- Location: LCCOMB_X35_Y22_N8
\REGFILE|MEM~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~351_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~129_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~65_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~65_regout\,
	datac => \REGFILE|MEM~129_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~351_combout\);

-- Location: LCFF_X34_Y20_N23
\REGFILE|MEM~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(30),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~98_regout\);

-- Location: LCFF_X35_Y20_N27
\REGFILE|MEM~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(30),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~66_regout\);

-- Location: LCCOMB_X34_Y20_N16
\REGFILE|MEM~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~352_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~98_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~66_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datab => \REGFILE|MEM~98_regout\,
	datac => \REGFILE|MEM~66_regout\,
	combout => \REGFILE|MEM~352_combout\);

-- Location: LCFF_X37_Y20_N1
\REGFILE|MEM~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(30),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~130_regout\);

-- Location: LCCOMB_X35_Y20_N24
\REGFILE|MEM~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~353_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~130_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~66_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~66_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~130_regout\,
	combout => \REGFILE|MEM~353_combout\);

-- Location: LCFF_X35_Y19_N9
\REGFILE|MEM~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~99feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~99_regout\);

-- Location: LCFF_X36_Y19_N25
\REGFILE|MEM~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(31),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~67_regout\);

-- Location: LCCOMB_X36_Y19_N20
\REGFILE|MEM~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~354_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~99_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~67_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~67_regout\,
	datad => \REGFILE|MEM~99_regout\,
	combout => \REGFILE|MEM~354_combout\);

-- Location: LCFF_X35_Y19_N19
\REGFILE|MEM~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~131feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~131_regout\);

-- Location: LCCOMB_X36_Y19_N12
\REGFILE|MEM~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~355_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~131_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~67_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~67_regout\,
	datad => \REGFILE|MEM~131_regout\,
	combout => \REGFILE|MEM~355_combout\);

-- Location: LCCOMB_X38_Y21_N28
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(4) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(4)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(4),
	datac => \MemDir~combout\(4),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X37_Y20_N6
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(5) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(5)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(5),
	datab => \MemDir~combout\(5),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(5));

-- Location: LCCOMB_X38_Y21_N14
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(11) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(11))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(11),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(11));

-- Location: LCCOMB_X37_Y20_N8
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(12) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(12)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datab => \MemDir~combout\(12),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X35_Y21_N6
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(15) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(15)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(15),
	datac => \MemDir~combout\(15),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(15));

-- Location: LCCOMB_X34_Y20_N20
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(18) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(18))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(18),
	datac => \PROGCOUNT|addr_out\(18),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(18));

-- Location: LCCOMB_X38_Y20_N4
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(22) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(22))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(22),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(22));

-- Location: LCCOMB_X38_Y20_N2
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(23) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(23)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(23),
	datac => \MemDir~combout\(23),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(23));

-- Location: LCCOMB_X34_Y20_N30
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(24) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(24)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(24),
	datac => \MemDir~combout\(24),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(24));

-- Location: LCCOMB_X38_Y18_N0
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(26) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(26)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(26),
	datac => \MemDir~combout\(26),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(26));

-- Location: LCCOMB_X38_Y18_N26
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(27) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(27)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(27),
	datac => \MemDir~combout\(27),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(27));

-- Location: LCCOMB_X35_Y22_N2
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(28) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(28)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(28),
	datac => \MemDir~combout\(28),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X35_Y22_N0
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(29) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(29)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(29),
	datac => \MemDir~combout\(29),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X49_Y14_N28
\CONTROLU|MemRd\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemRd~combout\ = (!\CONTROLU|comb~1_combout\ & ((\CONTROLU|Equal0~0_combout\) # (\CONTROLU|MemRd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~1_combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \CONTROLU|MemRd~combout\,
	combout => \CONTROLU|MemRd~combout\);

-- Location: LCCOMB_X25_Y25_N26
\CONTROLU|RegWr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegWr~combout\ = (!\CONTROLU|comb~0_combout\ & ((\CONTROLU|Equal3~0_combout\) # (\CONTROLU|RegWr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|Equal3~0_combout\,
	datac => \CONTROLU|comb~0_combout\,
	datad => \CONTROLU|RegWr~combout\,
	combout => \CONTROLU|RegWr~combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G10
\CONTROLU|RegWr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|RegWr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|RegWr~clkctrl_outclk\);

-- Location: CLKCTRL_G5
\CONTROLU|MemRd~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|MemRd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|MemRd~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y21_N12
\REGFILE|MEM~100feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~100feeder_combout\ = \regALU|dt_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(0),
	combout => \REGFILE|MEM~100feeder_combout\);

-- Location: LCCOMB_X36_Y22_N18
\REGFILE|MEM~102feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~102feeder_combout\ = \regALU|dt_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(2),
	combout => \REGFILE|MEM~102feeder_combout\);

-- Location: LCCOMB_X36_Y22_N28
\REGFILE|MEM~71feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~71feeder_combout\ = \regALU|dt_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(3),
	combout => \REGFILE|MEM~71feeder_combout\);

-- Location: LCCOMB_X37_Y18_N8
\REGFILE|MEM~75feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~75feeder_combout\ = \regALU|dt_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(7),
	combout => \REGFILE|MEM~75feeder_combout\);

-- Location: LCCOMB_X35_Y19_N20
\REGFILE|MEM~109feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~109feeder_combout\ = \regALU|dt_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(9),
	combout => \REGFILE|MEM~109feeder_combout\);

-- Location: LCCOMB_X36_Y22_N8
\REGFILE|MEM~78feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~78feeder_combout\ = \regALU|dt_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(10),
	combout => \REGFILE|MEM~78feeder_combout\);

-- Location: LCCOMB_X36_Y22_N14
\REGFILE|MEM~110feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~110feeder_combout\ = \regALU|dt_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(10),
	combout => \REGFILE|MEM~110feeder_combout\);

-- Location: LCCOMB_X37_Y22_N14
\REGFILE|MEM~46feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~46feeder_combout\ = \regALU|dt_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(10),
	combout => \REGFILE|MEM~46feeder_combout\);

-- Location: LCCOMB_X34_Y18_N30
\REGFILE|MEM~111feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~111feeder_combout\ = \regALU|dt_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(11),
	combout => \REGFILE|MEM~111feeder_combout\);

-- Location: LCCOMB_X34_Y18_N28
\REGFILE|MEM~115feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~115feeder_combout\ = \regALU|dt_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(15),
	combout => \REGFILE|MEM~115feeder_combout\);

-- Location: LCCOMB_X34_Y20_N28
\REGFILE|MEM~85feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~85feeder_combout\ = \regALU|dt_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(17),
	combout => \REGFILE|MEM~85feeder_combout\);

-- Location: LCCOMB_X36_Y18_N20
\REGFILE|MEM~88feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~88feeder_combout\ = \regALU|dt_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(20),
	combout => \REGFILE|MEM~88feeder_combout\);

-- Location: LCCOMB_X34_Y18_N2
\REGFILE|MEM~90feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~90feeder_combout\ = \regALU|dt_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(22),
	combout => \REGFILE|MEM~90feeder_combout\);

-- Location: LCCOMB_X34_Y18_N0
\REGFILE|MEM~123feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~123feeder_combout\ = \regALU|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(23),
	combout => \REGFILE|MEM~123feeder_combout\);

-- Location: LCCOMB_X35_Y18_N8
\REGFILE|MEM~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~61feeder_combout\ = \regALU|dt_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(25),
	combout => \REGFILE|MEM~61feeder_combout\);

-- Location: LCCOMB_X38_Y18_N10
\REGFILE|MEM~63feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~63feeder_combout\ = \regALU|dt_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(27),
	combout => \REGFILE|MEM~63feeder_combout\);

-- Location: LCCOMB_X36_Y22_N26
\REGFILE|MEM~129feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~129feeder_combout\ = \regALU|dt_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(29),
	combout => \REGFILE|MEM~129feeder_combout\);

-- Location: LCCOMB_X35_Y19_N8
\REGFILE|MEM~99feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~99feeder_combout\ = \regALU|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(31),
	combout => \REGFILE|MEM~99feeder_combout\);

-- Location: LCCOMB_X35_Y19_N18
\REGFILE|MEM~131feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~131feeder_combout\ = \regALU|dt_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(31),
	combout => \REGFILE|MEM~131feeder_combout\);

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

-- Location: CLKCTRL_G7
\CONTROLU|comb~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|comb~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|comb~1clkctrl_outclk\);

-- Location: LCCOMB_X37_Y17_N4
\CONTROLU|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal2~0_combout\ = (!\NEWST|CS\(0) & \NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y17_N26
\CONTROLU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~0_combout\ = (!\NEWST|CS\(0) & !\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y17_N12
\CONTROLU|NextSt[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(0) = (\CONTROLU|Equal0~0_combout\) # ((GLOBAL(\CONTROLU|comb~1clkctrl_outclk\) & ((\CONTROLU|Equal2~0_combout\))) # (!GLOBAL(\CONTROLU|comb~1clkctrl_outclk\) & (\CONTROLU|NextSt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|NextSt\(0),
	datab => \CONTROLU|comb~1clkctrl_outclk\,
	datac => \CONTROLU|Equal2~0_combout\,
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \CONTROLU|NextSt\(0));

-- Location: LCFF_X37_Y17_N13
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \CONTROLU|NextSt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X37_Y17_N10
\CONTROLU|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~1_combout\ = (\NEWST|CS\(1)) # (\NEWST|CS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~1_combout\);

-- Location: LCCOMB_X49_Y14_N30
\CONTROLU|IRwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IRwr~combout\ = (!\CONTROLU|comb~1_combout\ & ((\CONTROLU|Equal0~0_combout\) # (\CONTROLU|IRwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~1_combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \CONTROLU|IRwr~combout\,
	combout => \CONTROLU|IRwr~combout\);

-- Location: CLKCTRL_G4
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y14_N6
\CONTROLU|PCwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|PCwr~combout\ = (!\CONTROLU|comb~1_combout\ & ((\CONTROLU|Equal0~0_combout\) # (\CONTROLU|PCwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|comb~1_combout\,
	datac => \CONTROLU|Equal0~0_combout\,
	datad => \CONTROLU|PCwr~combout\,
	combout => \CONTROLU|PCwr~combout\);

-- Location: CLKCTRL_G6
\CONTROLU|PCwr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|PCwr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|PCwr~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y21_N0
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(0) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(0)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \MemDir~combout\(0),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X37_Y21_N8
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(2) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(2))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(2),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y21_N6
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(1) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(1)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(1),
	datab => \MemDir~combout\(1),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X37_Y21_N22
\MEM|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~293_combout\ = (\PROGCOUNT|addr_out\(0) & (!\PROGCOUNT|addr_out\(2) & !\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \PROGCOUNT|addr_out\(1),
	combout => \MEM|MEM~293_combout\);

-- Location: LCFF_X37_Y21_N23
\MEM|dataOut[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|MemRd~clkctrl_outclk\,
	datain => \MEM|MEM~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(22));

-- Location: LCCOMB_X37_Y21_N14
\INSTREG|jump_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|jump_out\(22) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((\MEM|dataOut\(22)))) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (\INSTREG|jump_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \CONTROLU|IRwr~clkctrl_outclk\,
	datad => \MEM|dataOut\(22),
	combout => \INSTREG|jump_out\(22));

-- Location: LCCOMB_X38_Y21_N30
\CONTROLU|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(1) = (\CONTROLU|Equal1~0_combout\ & ((!\INSTREG|jump_out\(22)))) # (!\CONTROLU|Equal1~0_combout\ & (\CONTROLU|nxt_st\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st\(1),
	datac => \CONTROLU|Equal1~0_combout\,
	datad => \INSTREG|jump_out\(22),
	combout => \CONTROLU|nxt_st\(1));

-- Location: LCCOMB_X37_Y17_N24
\CONTROLU|NextSt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~0_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(1) & \CONTROLU|nxt_st\(1))) # (!\NEWST|CS\(0) & (\NEWST|CS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datad => \CONTROLU|nxt_st\(1),
	combout => \CONTROLU|NextSt[1]~0_combout\);

-- Location: LCCOMB_X37_Y17_N18
\CONTROLU|NextSt[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(1) = (!\CONTROLU|Equal0~0_combout\ & ((GLOBAL(\CONTROLU|comb~1clkctrl_outclk\) & ((\CONTROLU|NextSt[1]~0_combout\))) # (!GLOBAL(\CONTROLU|comb~1clkctrl_outclk\) & (\CONTROLU|NextSt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~1clkctrl_outclk\,
	datab => \CONTROLU|NextSt\(1),
	datac => \CONTROLU|NextSt[1]~0_combout\,
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \CONTROLU|NextSt\(1));

-- Location: LCFF_X37_Y17_N19
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X37_Y17_N22
\CONTROLU|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal1~0_combout\ = (!\NEWST|CS\(1) & \NEWST|CS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y17_N6
\CONTROLU|ALUsrcB[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB\(1) = (!\CONTROLU|comb~2_combout\ & ((\CONTROLU|Equal1~0_combout\) # (\CONTROLU|ALUsrcB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~2_combout\,
	datac => \CONTROLU|Equal1~0_combout\,
	datad => \CONTROLU|ALUsrcB\(1),
	combout => \CONTROLU|ALUsrcB\(1));

-- Location: LCCOMB_X37_Y21_N28
\MEM|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~292_combout\ = (!\PROGCOUNT|addr_out\(0) & (!\PROGCOUNT|addr_out\(2) & !\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \PROGCOUNT|addr_out\(1),
	combout => \MEM|MEM~292_combout\);

-- Location: LCFF_X37_Y21_N29
\MEM|dataOut[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|MemRd~clkctrl_outclk\,
	datain => \MEM|MEM~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(16));

-- Location: LCCOMB_X36_Y18_N4
\INSTREG|r2_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r2_out\(0) = (GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & ((\MEM|dataOut\(16)))) # (!GLOBAL(\CONTROLU|IRwr~clkctrl_outclk\) & (\INSTREG|r2_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \CONTROLU|IRwr~clkctrl_outclk\,
	datad => \MEM|dataOut\(16),
	combout => \INSTREG|r2_out\(0));

-- Location: LCCOMB_X37_Y19_N24
\REGFILE|MEM~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~356_combout\ = !\regALU|dt_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regALU|dt_out\(0),
	combout => \REGFILE|MEM~356_combout\);

-- Location: LCCOMB_X37_Y17_N28
\CONTROLU|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal3~0_combout\ = (\NEWST|CS\(1) & \NEWST|CS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|Equal3~0_combout\);

-- Location: LCCOMB_X37_Y17_N30
\CONTROLU|RegDst\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegDst~combout\ = (!\CONTROLU|comb~0_combout\ & ((\CONTROLU|Equal3~0_combout\) # (\CONTROLU|RegDst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|comb~0_combout\,
	datab => \CONTROLU|Equal3~0_combout\,
	datad => \CONTROLU|RegDst~combout\,
	combout => \CONTROLU|RegDst~combout\);

-- Location: LCCOMB_X36_Y18_N16
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\INSTREG|r2_out\(0) & !\CONTROLU|RegDst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r2_out\(0),
	datad => \CONTROLU|RegDst~combout\,
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCFF_X37_Y19_N25
\REGFILE|MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~356_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~68_regout\);

-- Location: LCCOMB_X36_Y19_N8
\REGFILE|MEM~36feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~36feeder_combout\ = \regALU|dt_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(0),
	combout => \REGFILE|MEM~36feeder_combout\);

-- Location: LCFF_X36_Y19_N9
\REGFILE|MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~36feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~36_regout\);

-- Location: LCCOMB_X37_Y19_N2
\REGFILE|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~292_combout\ = (\INSTREG|r2_out\(0) & (!\REGFILE|MEM~68_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~36_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~68_regout\,
	datad => \REGFILE|MEM~36_regout\,
	combout => \REGFILE|MEM~292_combout\);

-- Location: LCFF_X37_Y19_N3
\regB|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(0));

-- Location: LCCOMB_X37_Y19_N12
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & ((\CONTROLU|ALUsrcB\(0)) # (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(0),
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCCOMB_X36_Y21_N0
\ALUCOMP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~0_combout\ = (\MUXA|salida[0]~0_combout\ & (\MUXB|Mux31~0_combout\ $ (VCC))) # (!\MUXA|salida[0]~0_combout\ & (\MUXB|Mux31~0_combout\ & VCC))
-- \ALUCOMP|Add0~1\ = CARRY((\MUXA|salida[0]~0_combout\ & \MUXB|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~0_combout\,
	datab => \MUXB|Mux31~0_combout\,
	datad => VCC,
	combout => \ALUCOMP|Add0~0_combout\,
	cout => \ALUCOMP|Add0~1\);

-- Location: LCFF_X37_Y19_N5
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCFF_X36_Y19_N27
\REGFILE|MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(1),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~37_regout\);

-- Location: LCCOMB_X37_Y20_N10
\REGFILE|MEM~101feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~101feeder_combout\ = \regALU|dt_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(1),
	combout => \REGFILE|MEM~101feeder_combout\);

-- Location: LCCOMB_X36_Y18_N6
\MUXRegDst|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[1]~1_combout\ = (\INSTREG|r2_out\(0) & \CONTROLU|RegDst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r2_out\(0),
	datad => \CONTROLU|RegDst~combout\,
	combout => \MUXRegDst|salida[1]~1_combout\);

-- Location: LCFF_X37_Y20_N11
\REGFILE|MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~101feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~101_regout\);

-- Location: LCCOMB_X37_Y21_N18
\REGFILE|MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~295_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~101_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~37_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~37_regout\,
	datad => \REGFILE|MEM~101_regout\,
	combout => \REGFILE|MEM~295_combout\);

-- Location: LCFF_X37_Y21_N19
\regA|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(1));

-- Location: LCCOMB_X37_Y17_N8
\CONTROLU|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|comb~3_combout\ = (\NEWST|CS\(0)) # (!\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|comb~3_combout\);

-- Location: LCCOMB_X37_Y17_N16
\CONTROLU|ALUsrcA\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcA~combout\ = (!\CONTROLU|comb~3_combout\ & ((\CONTROLU|Equal2~0_combout\) # (\CONTROLU|ALUsrcA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|Equal2~0_combout\,
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \CONTROLU|comb~3_combout\,
	combout => \CONTROLU|ALUsrcA~combout\);

-- Location: LCCOMB_X37_Y21_N24
\MUXA|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~1_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(1))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|dt_out\(1),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(1),
	combout => \MUXA|salida[1]~1_combout\);

-- Location: LCCOMB_X36_Y21_N2
\ALUCOMP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~2_combout\ = (\MUXB|Mux30~0_combout\ & ((\MUXA|salida[1]~1_combout\ & (\ALUCOMP|Add0~1\ & VCC)) # (!\MUXA|salida[1]~1_combout\ & (!\ALUCOMP|Add0~1\)))) # (!\MUXB|Mux30~0_combout\ & ((\MUXA|salida[1]~1_combout\ & (!\ALUCOMP|Add0~1\)) # 
-- (!\MUXA|salida[1]~1_combout\ & ((\ALUCOMP|Add0~1\) # (GND)))))
-- \ALUCOMP|Add0~3\ = CARRY((\MUXB|Mux30~0_combout\ & (!\MUXA|salida[1]~1_combout\ & !\ALUCOMP|Add0~1\)) # (!\MUXB|Mux30~0_combout\ & ((!\ALUCOMP|Add0~1\) # (!\MUXA|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux30~0_combout\,
	datab => \MUXA|salida[1]~1_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~1\,
	combout => \ALUCOMP|Add0~2_combout\,
	cout => \ALUCOMP|Add0~3\);

-- Location: LCCOMB_X36_Y19_N4
\regALU|dt_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regALU|dt_out[1]~feeder_combout\ = \ALUCOMP|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUCOMP|Add0~2_combout\,
	combout => \regALU|dt_out[1]~feeder_combout\);

-- Location: LCFF_X36_Y19_N5
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regALU|dt_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCCOMB_X37_Y17_N2
\CONTROLU|ALUsrcB[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB\(0) = (!\CONTROLU|comb~1_combout\ & ((\CONTROLU|Equal0~0_combout\) # (\CONTROLU|ALUsrcB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|Equal0~0_combout\,
	datac => \CONTROLU|comb~1_combout\,
	datad => \CONTROLU|ALUsrcB\(0),
	combout => \CONTROLU|ALUsrcB\(0));

-- Location: LCCOMB_X36_Y22_N0
\REGFILE|MEM~70feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~70feeder_combout\ = \regALU|dt_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(2),
	combout => \REGFILE|MEM~70feeder_combout\);

-- Location: LCFF_X36_Y22_N1
\REGFILE|MEM~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~70feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~70_regout\);

-- Location: LCFF_X37_Y22_N7
\REGFILE|MEM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(2),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~38_regout\);

-- Location: LCCOMB_X37_Y22_N0
\REGFILE|MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~296_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~70_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~38_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~70_regout\,
	datad => \REGFILE|MEM~38_regout\,
	combout => \REGFILE|MEM~296_combout\);

-- Location: LCFF_X37_Y22_N1
\regB|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(2));

-- Location: LCCOMB_X37_Y22_N18
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(2),
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X36_Y21_N4
\ALUCOMP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~4_combout\ = ((\MUXA|salida[2]~2_combout\ $ (\MUXB|Mux29~0_combout\ $ (!\ALUCOMP|Add0~3\)))) # (GND)
-- \ALUCOMP|Add0~5\ = CARRY((\MUXA|salida[2]~2_combout\ & ((\MUXB|Mux29~0_combout\) # (!\ALUCOMP|Add0~3\))) # (!\MUXA|salida[2]~2_combout\ & (\MUXB|Mux29~0_combout\ & !\ALUCOMP|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~2_combout\,
	datab => \MUXB|Mux29~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~3\,
	combout => \ALUCOMP|Add0~4_combout\,
	cout => \ALUCOMP|Add0~5\);

-- Location: LCCOMB_X37_Y22_N24
\regALU|dt_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regALU|dt_out[2]~feeder_combout\ = \ALUCOMP|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUCOMP|Add0~4_combout\,
	combout => \regALU|dt_out[2]~feeder_combout\);

-- Location: LCFF_X37_Y22_N25
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regALU|dt_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCCOMB_X38_Y21_N18
\REGFILE|MEM~103feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~103feeder_combout\ = \regALU|dt_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(3),
	combout => \REGFILE|MEM~103feeder_combout\);

-- Location: LCFF_X38_Y21_N19
\REGFILE|MEM~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~103feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~103_regout\);

-- Location: LCFF_X37_Y22_N9
\REGFILE|MEM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(3),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~39_regout\);

-- Location: LCCOMB_X38_Y21_N8
\REGFILE|MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~299_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~103_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~39_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~103_regout\,
	datad => \REGFILE|MEM~39_regout\,
	combout => \REGFILE|MEM~299_combout\);

-- Location: LCFF_X38_Y21_N9
\regA|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(3));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y21_N2
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(3) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(3))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(3),
	datac => \PROGCOUNT|addr_out\(3),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X38_Y21_N22
\MUXA|salida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~3_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(3))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(3),
	datad => \PROGCOUNT|addr_out\(3),
	combout => \MUXA|salida[3]~3_combout\);

-- Location: LCCOMB_X36_Y21_N6
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = (\MUXB|Mux28~0_combout\ & ((\MUXA|salida[3]~3_combout\ & (\ALUCOMP|Add0~5\ & VCC)) # (!\MUXA|salida[3]~3_combout\ & (!\ALUCOMP|Add0~5\)))) # (!\MUXB|Mux28~0_combout\ & ((\MUXA|salida[3]~3_combout\ & (!\ALUCOMP|Add0~5\)) # 
-- (!\MUXA|salida[3]~3_combout\ & ((\ALUCOMP|Add0~5\) # (GND)))))
-- \ALUCOMP|Add0~7\ = CARRY((\MUXB|Mux28~0_combout\ & (!\MUXA|salida[3]~3_combout\ & !\ALUCOMP|Add0~5\)) # (!\MUXB|Mux28~0_combout\ & ((!\ALUCOMP|Add0~5\) # (!\MUXA|salida[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux28~0_combout\,
	datab => \MUXA|salida[3]~3_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~5\,
	combout => \ALUCOMP|Add0~6_combout\,
	cout => \ALUCOMP|Add0~7\);

-- Location: LCFF_X37_Y21_N13
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCCOMB_X36_Y22_N6
\REGFILE|MEM~72feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~72feeder_combout\ = \regALU|dt_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(4),
	combout => \REGFILE|MEM~72feeder_combout\);

-- Location: LCFF_X36_Y22_N7
\REGFILE|MEM~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~72feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~72_regout\);

-- Location: LCCOMB_X39_Y21_N0
\REGFILE|MEM~40feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~40feeder_combout\ = \regALU|dt_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(4),
	combout => \REGFILE|MEM~40feeder_combout\);

-- Location: LCFF_X39_Y21_N1
\REGFILE|MEM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~40feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~40_regout\);

-- Location: LCCOMB_X37_Y22_N28
\REGFILE|MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~300_combout\ = (\INSTREG|r2_out\(0) & (\REGFILE|MEM~72_regout\)) # (!\INSTREG|r2_out\(0) & ((\REGFILE|MEM~40_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~72_regout\,
	datad => \REGFILE|MEM~40_regout\,
	combout => \REGFILE|MEM~300_combout\);

-- Location: LCFF_X37_Y22_N29
\regB|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(4));

-- Location: LCCOMB_X37_Y22_N26
\MUXB|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux27~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(4),
	combout => \MUXB|Mux27~0_combout\);

-- Location: LCCOMB_X36_Y21_N8
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = ((\MUXA|salida[4]~4_combout\ $ (\MUXB|Mux27~0_combout\ $ (!\ALUCOMP|Add0~7\)))) # (GND)
-- \ALUCOMP|Add0~9\ = CARRY((\MUXA|salida[4]~4_combout\ & ((\MUXB|Mux27~0_combout\) # (!\ALUCOMP|Add0~7\))) # (!\MUXA|salida[4]~4_combout\ & (\MUXB|Mux27~0_combout\ & !\ALUCOMP|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~4_combout\,
	datab => \MUXB|Mux27~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~7\,
	combout => \ALUCOMP|Add0~8_combout\,
	cout => \ALUCOMP|Add0~9\);

-- Location: LCFF_X37_Y21_N3
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCFF_X36_Y20_N5
\REGFILE|MEM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(5),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~41_regout\);

-- Location: LCFF_X36_Y21_N9
\REGFILE|MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(5),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~73_regout\);

-- Location: LCCOMB_X37_Y20_N16
\REGFILE|MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~302_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~73_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~41_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~41_regout\,
	datad => \REGFILE|MEM~73_regout\,
	combout => \REGFILE|MEM~302_combout\);

-- Location: LCFF_X37_Y20_N17
\regB|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(5));

-- Location: LCCOMB_X37_Y20_N18
\MUXB|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux26~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & ((\CONTROLU|ALUsrcB\(1) & ((\INSTREG|r2_out\(0)))) # (!\CONTROLU|ALUsrcB\(1) & (\regB|dt_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \regB|dt_out\(5),
	datad => \INSTREG|r2_out\(0),
	combout => \MUXB|Mux26~0_combout\);

-- Location: LCCOMB_X36_Y21_N10
\ALUCOMP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~10_combout\ = (\MUXA|salida[5]~5_combout\ & ((\MUXB|Mux26~0_combout\ & (\ALUCOMP|Add0~9\ & VCC)) # (!\MUXB|Mux26~0_combout\ & (!\ALUCOMP|Add0~9\)))) # (!\MUXA|salida[5]~5_combout\ & ((\MUXB|Mux26~0_combout\ & (!\ALUCOMP|Add0~9\)) # 
-- (!\MUXB|Mux26~0_combout\ & ((\ALUCOMP|Add0~9\) # (GND)))))
-- \ALUCOMP|Add0~11\ = CARRY((\MUXA|salida[5]~5_combout\ & (!\MUXB|Mux26~0_combout\ & !\ALUCOMP|Add0~9\)) # (!\MUXA|salida[5]~5_combout\ & ((!\ALUCOMP|Add0~9\) # (!\MUXB|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~5_combout\,
	datab => \MUXB|Mux26~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~9\,
	combout => \ALUCOMP|Add0~10_combout\,
	cout => \ALUCOMP|Add0~11\);

-- Location: LCFF_X36_Y21_N11
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y21_N26
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(6) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(6)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(6),
	datac => \MemDir~combout\(6),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(6));

-- Location: LCCOMB_X35_Y18_N6
\REGFILE|MEM~42feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~42feeder_combout\ = \regALU|dt_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(6),
	combout => \REGFILE|MEM~42feeder_combout\);

-- Location: LCFF_X35_Y18_N7
\REGFILE|MEM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~42feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~42_regout\);

-- Location: LCCOMB_X37_Y18_N2
\REGFILE|MEM~106feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~106feeder_combout\ = \regALU|dt_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(6),
	combout => \REGFILE|MEM~106feeder_combout\);

-- Location: LCFF_X37_Y18_N3
\REGFILE|MEM~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~106feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~106_regout\);

-- Location: LCCOMB_X36_Y18_N28
\REGFILE|MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~305_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~106_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~42_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~42_regout\,
	datad => \REGFILE|MEM~106_regout\,
	combout => \REGFILE|MEM~305_combout\);

-- Location: LCFF_X36_Y18_N29
\regA|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(6));

-- Location: LCCOMB_X37_Y21_N10
\MUXA|salida[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~6_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(6)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(6),
	datad => \regA|dt_out\(6),
	combout => \MUXA|salida[6]~6_combout\);

-- Location: LCCOMB_X36_Y21_N12
\ALUCOMP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~12_combout\ = ((\MUXB|Mux25~0_combout\ $ (\MUXA|salida[6]~6_combout\ $ (!\ALUCOMP|Add0~11\)))) # (GND)
-- \ALUCOMP|Add0~13\ = CARRY((\MUXB|Mux25~0_combout\ & ((\MUXA|salida[6]~6_combout\) # (!\ALUCOMP|Add0~11\))) # (!\MUXB|Mux25~0_combout\ & (\MUXA|salida[6]~6_combout\ & !\ALUCOMP|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux25~0_combout\,
	datab => \MUXA|salida[6]~6_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~11\,
	combout => \ALUCOMP|Add0~12_combout\,
	cout => \ALUCOMP|Add0~13\);

-- Location: LCFF_X36_Y21_N13
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y18_N4
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(7) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(7))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(7),
	datac => \PROGCOUNT|addr_out\(7),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(7));

-- Location: LCCOMB_X37_Y18_N22
\REGFILE|MEM~107feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~107feeder_combout\ = \regALU|dt_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(7),
	combout => \REGFILE|MEM~107feeder_combout\);

-- Location: LCFF_X37_Y18_N23
\REGFILE|MEM~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~107feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~107_regout\);

-- Location: LCFF_X38_Y18_N19
\REGFILE|MEM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(7),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~43_regout\);

-- Location: LCCOMB_X38_Y18_N28
\REGFILE|MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~307_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~107_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~43_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~107_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~43_regout\,
	combout => \REGFILE|MEM~307_combout\);

-- Location: LCFF_X38_Y18_N29
\regA|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~307_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(7));

-- Location: LCCOMB_X37_Y18_N18
\MUXA|salida[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~7_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(7)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(7),
	datad => \regA|dt_out\(7),
	combout => \MUXA|salida[7]~7_combout\);

-- Location: LCCOMB_X36_Y21_N14
\ALUCOMP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~14_combout\ = (\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~7_combout\ & (\ALUCOMP|Add0~13\ & VCC)) # (!\MUXA|salida[7]~7_combout\ & (!\ALUCOMP|Add0~13\)))) # (!\MUXB|Mux24~0_combout\ & ((\MUXA|salida[7]~7_combout\ & (!\ALUCOMP|Add0~13\)) # 
-- (!\MUXA|salida[7]~7_combout\ & ((\ALUCOMP|Add0~13\) # (GND)))))
-- \ALUCOMP|Add0~15\ = CARRY((\MUXB|Mux24~0_combout\ & (!\MUXA|salida[7]~7_combout\ & !\ALUCOMP|Add0~13\)) # (!\MUXB|Mux24~0_combout\ & ((!\ALUCOMP|Add0~13\) # (!\MUXA|salida[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux24~0_combout\,
	datab => \MUXA|salida[7]~7_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~13\,
	combout => \ALUCOMP|Add0~14_combout\,
	cout => \ALUCOMP|Add0~15\);

-- Location: LCFF_X38_Y18_N21
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCCOMB_X36_Y19_N16
\REGFILE|MEM~44feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~44feeder_combout\ = \regALU|dt_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(8),
	combout => \REGFILE|MEM~44feeder_combout\);

-- Location: LCFF_X36_Y19_N17
\REGFILE|MEM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~44feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~44_regout\);

-- Location: LCFF_X37_Y20_N31
\REGFILE|MEM~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(8),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~108_regout\);

-- Location: LCCOMB_X37_Y19_N30
\REGFILE|MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~309_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~108_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~44_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~44_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~108_regout\,
	combout => \REGFILE|MEM~309_combout\);

-- Location: LCFF_X37_Y19_N31
\regA|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~309_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(8));

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

-- Location: LCCOMB_X37_Y19_N10
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(8) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(8)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(8),
	datab => \MemDir~combout\(8),
	datac => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X37_Y19_N0
\MUXA|salida[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~8_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(8))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regA|dt_out\(8),
	datad => \PROGCOUNT|addr_out\(8),
	combout => \MUXA|salida[8]~8_combout\);

-- Location: LCCOMB_X36_Y21_N16
\ALUCOMP|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~16_combout\ = ((\MUXB|Mux23~0_combout\ $ (\MUXA|salida[8]~8_combout\ $ (!\ALUCOMP|Add0~15\)))) # (GND)
-- \ALUCOMP|Add0~17\ = CARRY((\MUXB|Mux23~0_combout\ & ((\MUXA|salida[8]~8_combout\) # (!\ALUCOMP|Add0~15\))) # (!\MUXB|Mux23~0_combout\ & (\MUXA|salida[8]~8_combout\ & !\ALUCOMP|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux23~0_combout\,
	datab => \MUXA|salida[8]~8_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~15\,
	combout => \ALUCOMP|Add0~16_combout\,
	cout => \ALUCOMP|Add0~17\);

-- Location: LCFF_X36_Y21_N17
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCFF_X36_Y19_N31
\REGFILE|MEM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(9),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~45_regout\);

-- Location: LCCOMB_X36_Y19_N2
\REGFILE|MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~311_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~109_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~45_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~109_regout\,
	datab => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~45_regout\,
	combout => \REGFILE|MEM~311_combout\);

-- Location: LCFF_X36_Y19_N3
\regA|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(9));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y19_N10
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(9) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(9)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(9),
	datac => \MemDir~combout\(9),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X36_Y19_N28
\MUXA|salida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~9_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(9))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|dt_out\(9),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(9),
	combout => \MUXA|salida[9]~9_combout\);

-- Location: LCCOMB_X36_Y21_N18
\ALUCOMP|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~18_combout\ = (\MUXB|Mux22~0_combout\ & ((\MUXA|salida[9]~9_combout\ & (\ALUCOMP|Add0~17\ & VCC)) # (!\MUXA|salida[9]~9_combout\ & (!\ALUCOMP|Add0~17\)))) # (!\MUXB|Mux22~0_combout\ & ((\MUXA|salida[9]~9_combout\ & (!\ALUCOMP|Add0~17\)) # 
-- (!\MUXA|salida[9]~9_combout\ & ((\ALUCOMP|Add0~17\) # (GND)))))
-- \ALUCOMP|Add0~19\ = CARRY((\MUXB|Mux22~0_combout\ & (!\MUXA|salida[9]~9_combout\ & !\ALUCOMP|Add0~17\)) # (!\MUXB|Mux22~0_combout\ & ((!\ALUCOMP|Add0~17\) # (!\MUXA|salida[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux22~0_combout\,
	datab => \MUXA|salida[9]~9_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~17\,
	combout => \ALUCOMP|Add0~18_combout\,
	cout => \ALUCOMP|Add0~19\);

-- Location: LCFF_X36_Y21_N19
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y21_N24
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(10) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(10))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(10),
	datac => \PROGCOUNT|addr_out\(10),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X37_Y21_N20
\MUXA|salida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~10_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(10))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(10),
	datab => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(10),
	combout => \MUXA|salida[10]~10_combout\);

-- Location: LCCOMB_X36_Y21_N20
\ALUCOMP|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~20_combout\ = ((\MUXB|Mux21~0_combout\ $ (\MUXA|salida[10]~10_combout\ $ (!\ALUCOMP|Add0~19\)))) # (GND)
-- \ALUCOMP|Add0~21\ = CARRY((\MUXB|Mux21~0_combout\ & ((\MUXA|salida[10]~10_combout\) # (!\ALUCOMP|Add0~19\))) # (!\MUXB|Mux21~0_combout\ & (\MUXA|salida[10]~10_combout\ & !\ALUCOMP|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux21~0_combout\,
	datab => \MUXA|salida[10]~10_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~19\,
	combout => \ALUCOMP|Add0~20_combout\,
	cout => \ALUCOMP|Add0~21\);

-- Location: LCFF_X37_Y22_N31
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCFF_X35_Y18_N5
\REGFILE|MEM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(11),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~47_regout\);

-- Location: LCCOMB_X34_Y18_N24
\REGFILE|MEM~79feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~79feeder_combout\ = \regALU|dt_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(11),
	combout => \REGFILE|MEM~79feeder_combout\);

-- Location: LCFF_X34_Y18_N25
\REGFILE|MEM~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~79feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~79_regout\);

-- Location: LCCOMB_X35_Y18_N10
\REGFILE|MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~314_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~79_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~47_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~47_regout\,
	datad => \REGFILE|MEM~79_regout\,
	combout => \REGFILE|MEM~314_combout\);

-- Location: LCFF_X35_Y18_N11
\regB|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(11));

-- Location: LCCOMB_X35_Y18_N28
\MUXB|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux20~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(11),
	combout => \MUXB|Mux20~0_combout\);

-- Location: LCCOMB_X36_Y21_N22
\ALUCOMP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~22_combout\ = (\MUXA|salida[11]~11_combout\ & ((\MUXB|Mux20~0_combout\ & (\ALUCOMP|Add0~21\ & VCC)) # (!\MUXB|Mux20~0_combout\ & (!\ALUCOMP|Add0~21\)))) # (!\MUXA|salida[11]~11_combout\ & ((\MUXB|Mux20~0_combout\ & (!\ALUCOMP|Add0~21\)) # 
-- (!\MUXB|Mux20~0_combout\ & ((\ALUCOMP|Add0~21\) # (GND)))))
-- \ALUCOMP|Add0~23\ = CARRY((\MUXA|salida[11]~11_combout\ & (!\MUXB|Mux20~0_combout\ & !\ALUCOMP|Add0~21\)) # (!\MUXA|salida[11]~11_combout\ & ((!\ALUCOMP|Add0~21\) # (!\MUXB|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~11_combout\,
	datab => \MUXB|Mux20~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~21\,
	combout => \ALUCOMP|Add0~22_combout\,
	cout => \ALUCOMP|Add0~23\);

-- Location: LCCOMB_X35_Y18_N20
\regALU|dt_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regALU|dt_out[11]~feeder_combout\ = \ALUCOMP|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUCOMP|Add0~22_combout\,
	combout => \regALU|dt_out[11]~feeder_combout\);

-- Location: LCFF_X35_Y18_N21
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regALU|dt_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCFF_X36_Y21_N1
\REGFILE|MEM~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(12),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~80_regout\);

-- Location: LCCOMB_X35_Y21_N20
\REGFILE|MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~316_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~80_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~48_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~48_regout\,
	datac => \REGFILE|MEM~80_regout\,
	datad => \INSTREG|r2_out\(0),
	combout => \REGFILE|MEM~316_combout\);

-- Location: LCFF_X35_Y21_N21
\regB|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(12));

-- Location: LCCOMB_X35_Y21_N22
\MUXB|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux19~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & ((\CONTROLU|ALUsrcB\(1) & ((\INSTREG|r2_out\(0)))) # (!\CONTROLU|ALUsrcB\(1) & (\regB|dt_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \regB|dt_out\(12),
	datad => \INSTREG|r2_out\(0),
	combout => \MUXB|Mux19~0_combout\);

-- Location: LCCOMB_X36_Y21_N24
\ALUCOMP|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~24_combout\ = ((\MUXA|salida[12]~12_combout\ $ (\MUXB|Mux19~0_combout\ $ (!\ALUCOMP|Add0~23\)))) # (GND)
-- \ALUCOMP|Add0~25\ = CARRY((\MUXA|salida[12]~12_combout\ & ((\MUXB|Mux19~0_combout\) # (!\ALUCOMP|Add0~23\))) # (!\MUXA|salida[12]~12_combout\ & (\MUXB|Mux19~0_combout\ & !\ALUCOMP|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[12]~12_combout\,
	datab => \MUXB|Mux19~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~23\,
	combout => \ALUCOMP|Add0~24_combout\,
	cout => \ALUCOMP|Add0~25\);

-- Location: LCFF_X36_Y21_N25
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y21_N20
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(13) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(13))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(13),
	datac => \PROGCOUNT|addr_out\(13),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(13));

-- Location: LCFF_X38_Y19_N31
\REGFILE|MEM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(13),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~49_regout\);

-- Location: LCFF_X37_Y18_N21
\REGFILE|MEM~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(13),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~113_regout\);

-- Location: LCCOMB_X38_Y19_N8
\REGFILE|MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~319_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~113_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~49_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~49_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~113_regout\,
	combout => \REGFILE|MEM~319_combout\);

-- Location: LCFF_X38_Y19_N9
\regA|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(13));

-- Location: LCCOMB_X37_Y21_N2
\MUXA|salida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~13_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(13)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(13),
	datad => \regA|dt_out\(13),
	combout => \MUXA|salida[13]~13_combout\);

-- Location: LCCOMB_X36_Y21_N26
\ALUCOMP|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~26_combout\ = (\MUXB|Mux18~0_combout\ & ((\MUXA|salida[13]~13_combout\ & (\ALUCOMP|Add0~25\ & VCC)) # (!\MUXA|salida[13]~13_combout\ & (!\ALUCOMP|Add0~25\)))) # (!\MUXB|Mux18~0_combout\ & ((\MUXA|salida[13]~13_combout\ & 
-- (!\ALUCOMP|Add0~25\)) # (!\MUXA|salida[13]~13_combout\ & ((\ALUCOMP|Add0~25\) # (GND)))))
-- \ALUCOMP|Add0~27\ = CARRY((\MUXB|Mux18~0_combout\ & (!\MUXA|salida[13]~13_combout\ & !\ALUCOMP|Add0~25\)) # (!\MUXB|Mux18~0_combout\ & ((!\ALUCOMP|Add0~25\) # (!\MUXA|salida[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux18~0_combout\,
	datab => \MUXA|salida[13]~13_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~25\,
	combout => \ALUCOMP|Add0~26_combout\,
	cout => \ALUCOMP|Add0~27\);

-- Location: LCFF_X37_Y21_N21
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCCOMB_X34_Y21_N16
\REGFILE|MEM~114feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~114feeder_combout\ = \regALU|dt_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(14),
	combout => \REGFILE|MEM~114feeder_combout\);

-- Location: LCFF_X34_Y21_N17
\REGFILE|MEM~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~114feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~114_regout\);

-- Location: LCCOMB_X35_Y21_N10
\REGFILE|MEM~50feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~50feeder_combout\ = \regALU|dt_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(14),
	combout => \REGFILE|MEM~50feeder_combout\);

-- Location: LCFF_X35_Y21_N11
\REGFILE|MEM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~50feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~50_regout\);

-- Location: LCCOMB_X35_Y21_N24
\REGFILE|MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~321_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~114_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~50_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~114_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~50_regout\,
	combout => \REGFILE|MEM~321_combout\);

-- Location: LCFF_X35_Y21_N25
\regA|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(14));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y21_N0
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(14) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(14)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(14),
	datac => \MemDir~combout\(14),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X35_Y21_N18
\MUXA|salida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~14_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(14))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(14),
	datad => \PROGCOUNT|addr_out\(14),
	combout => \MUXA|salida[14]~14_combout\);

-- Location: LCCOMB_X36_Y21_N28
\ALUCOMP|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~28_combout\ = ((\MUXB|Mux17~0_combout\ $ (\MUXA|salida[14]~14_combout\ $ (!\ALUCOMP|Add0~27\)))) # (GND)
-- \ALUCOMP|Add0~29\ = CARRY((\MUXB|Mux17~0_combout\ & ((\MUXA|salida[14]~14_combout\) # (!\ALUCOMP|Add0~27\))) # (!\MUXB|Mux17~0_combout\ & (\MUXA|salida[14]~14_combout\ & !\ALUCOMP|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux17~0_combout\,
	datab => \MUXA|salida[14]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~27\,
	combout => \ALUCOMP|Add0~28_combout\,
	cout => \ALUCOMP|Add0~29\);

-- Location: LCFF_X36_Y21_N29
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCCOMB_X35_Y18_N14
\REGFILE|MEM~51feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~51feeder_combout\ = \regALU|dt_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(15),
	combout => \REGFILE|MEM~51feeder_combout\);

-- Location: LCFF_X35_Y18_N15
\REGFILE|MEM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~51feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~51_regout\);

-- Location: LCFF_X36_Y18_N31
\REGFILE|MEM~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(15),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~83_regout\);

-- Location: LCCOMB_X35_Y18_N12
\REGFILE|MEM~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~322_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~83_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~51_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~51_regout\,
	datad => \REGFILE|MEM~83_regout\,
	combout => \REGFILE|MEM~322_combout\);

-- Location: LCFF_X35_Y18_N13
\regB|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(15));

-- Location: LCCOMB_X35_Y18_N30
\MUXB|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(15),
	combout => \MUXB|Mux16~0_combout\);

-- Location: LCCOMB_X36_Y21_N30
\ALUCOMP|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~30_combout\ = (\MUXA|salida[15]~15_combout\ & ((\MUXB|Mux16~0_combout\ & (\ALUCOMP|Add0~29\ & VCC)) # (!\MUXB|Mux16~0_combout\ & (!\ALUCOMP|Add0~29\)))) # (!\MUXA|salida[15]~15_combout\ & ((\MUXB|Mux16~0_combout\ & (!\ALUCOMP|Add0~29\)) # 
-- (!\MUXB|Mux16~0_combout\ & ((\ALUCOMP|Add0~29\) # (GND)))))
-- \ALUCOMP|Add0~31\ = CARRY((\MUXA|salida[15]~15_combout\ & (!\MUXB|Mux16~0_combout\ & !\ALUCOMP|Add0~29\)) # (!\MUXA|salida[15]~15_combout\ & ((!\ALUCOMP|Add0~29\) # (!\MUXB|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~15_combout\,
	datab => \MUXB|Mux16~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~29\,
	combout => \ALUCOMP|Add0~30_combout\,
	cout => \ALUCOMP|Add0~31\);

-- Location: LCFF_X36_Y21_N31
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCCOMB_X35_Y19_N2
\REGFILE|MEM~116feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~116feeder_combout\ = \regALU|dt_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(16),
	combout => \REGFILE|MEM~116feeder_combout\);

-- Location: LCFF_X35_Y19_N3
\REGFILE|MEM~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~116feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~116_regout\);

-- Location: LCFF_X35_Y20_N11
\REGFILE|MEM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(16),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~52_regout\);

-- Location: LCCOMB_X35_Y21_N14
\REGFILE|MEM~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~325_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~116_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~52_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~116_regout\,
	datad => \REGFILE|MEM~52_regout\,
	combout => \REGFILE|MEM~325_combout\);

-- Location: LCFF_X35_Y21_N15
\regA|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(16));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y21_N12
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(16) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(16)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(16),
	datac => \MemDir~combout\(16),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(16));

-- Location: LCCOMB_X35_Y21_N4
\MUXA|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~16_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(16))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \regA|dt_out\(16),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \MUXA|salida[16]~16_combout\);

-- Location: LCCOMB_X36_Y20_N0
\ALUCOMP|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~32_combout\ = ((\MUXB|Mux15~0_combout\ $ (\MUXA|salida[16]~16_combout\ $ (!\ALUCOMP|Add0~31\)))) # (GND)
-- \ALUCOMP|Add0~33\ = CARRY((\MUXB|Mux15~0_combout\ & ((\MUXA|salida[16]~16_combout\) # (!\ALUCOMP|Add0~31\))) # (!\MUXB|Mux15~0_combout\ & (\MUXA|salida[16]~16_combout\ & !\ALUCOMP|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux15~0_combout\,
	datab => \MUXA|salida[16]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~31\,
	combout => \ALUCOMP|Add0~32_combout\,
	cout => \ALUCOMP|Add0~33\);

-- Location: LCFF_X36_Y20_N1
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y20_N8
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(17) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(17))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(17),
	datac => \PROGCOUNT|addr_out\(17),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(17));

-- Location: LCFF_X36_Y20_N11
\REGFILE|MEM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(17),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~53_regout\);

-- Location: LCCOMB_X37_Y20_N28
\REGFILE|MEM~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~327_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~117_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~53_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~117_regout\,
	datab => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~53_regout\,
	combout => \REGFILE|MEM~327_combout\);

-- Location: LCFF_X37_Y20_N29
\regA|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(17));

-- Location: LCCOMB_X37_Y20_N14
\MUXA|salida[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~17_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(17)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(17),
	datad => \regA|dt_out\(17),
	combout => \MUXA|salida[17]~17_combout\);

-- Location: LCCOMB_X36_Y20_N2
\ALUCOMP|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~34_combout\ = (\MUXB|Mux14~0_combout\ & ((\MUXA|salida[17]~17_combout\ & (\ALUCOMP|Add0~33\ & VCC)) # (!\MUXA|salida[17]~17_combout\ & (!\ALUCOMP|Add0~33\)))) # (!\MUXB|Mux14~0_combout\ & ((\MUXA|salida[17]~17_combout\ & 
-- (!\ALUCOMP|Add0~33\)) # (!\MUXA|salida[17]~17_combout\ & ((\ALUCOMP|Add0~33\) # (GND)))))
-- \ALUCOMP|Add0~35\ = CARRY((\MUXB|Mux14~0_combout\ & (!\MUXA|salida[17]~17_combout\ & !\ALUCOMP|Add0~33\)) # (!\MUXB|Mux14~0_combout\ & ((!\ALUCOMP|Add0~33\) # (!\MUXA|salida[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux14~0_combout\,
	datab => \MUXA|salida[17]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~33\,
	combout => \ALUCOMP|Add0~34_combout\,
	cout => \ALUCOMP|Add0~35\);

-- Location: LCFF_X36_Y20_N3
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCFF_X35_Y20_N31
\REGFILE|MEM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(18),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~54_regout\);

-- Location: LCFF_X35_Y19_N1
\REGFILE|MEM~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(18),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~118_regout\);

-- Location: LCCOMB_X35_Y20_N28
\REGFILE|MEM~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~329_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~118_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~54_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~54_regout\,
	datac => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~118_regout\,
	combout => \REGFILE|MEM~329_combout\);

-- Location: LCFF_X35_Y20_N29
\regA|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(18));

-- Location: LCCOMB_X35_Y20_N16
\MUXA|salida[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~18_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(18)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(18),
	datab => \CONTROLU|ALUsrcA~combout\,
	datad => \regA|dt_out\(18),
	combout => \MUXA|salida[18]~18_combout\);

-- Location: LCCOMB_X36_Y20_N4
\ALUCOMP|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~36_combout\ = ((\MUXB|Mux13~0_combout\ $ (\MUXA|salida[18]~18_combout\ $ (!\ALUCOMP|Add0~35\)))) # (GND)
-- \ALUCOMP|Add0~37\ = CARRY((\MUXB|Mux13~0_combout\ & ((\MUXA|salida[18]~18_combout\) # (!\ALUCOMP|Add0~35\))) # (!\MUXB|Mux13~0_combout\ & (\MUXA|salida[18]~18_combout\ & !\ALUCOMP|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux13~0_combout\,
	datab => \MUXA|salida[18]~18_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~35\,
	combout => \ALUCOMP|Add0~36_combout\,
	cout => \ALUCOMP|Add0~37\);

-- Location: LCFF_X35_Y20_N17
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y20_N22
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(19) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(19)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(19),
	datac => \MemDir~combout\(19),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(19));

-- Location: LCFF_X35_Y20_N15
\REGFILE|MEM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(19),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~55_regout\);

-- Location: LCCOMB_X33_Y20_N0
\REGFILE|MEM~119feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~119feeder_combout\ = \regALU|dt_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(19),
	combout => \REGFILE|MEM~119feeder_combout\);

-- Location: LCFF_X33_Y20_N1
\REGFILE|MEM~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~119feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~119_regout\);

-- Location: LCCOMB_X34_Y20_N14
\REGFILE|MEM~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~331_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~119_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~55_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGFILE|MEM~55_regout\,
	datac => \REGFILE|MEM~119_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~331_combout\);

-- Location: LCFF_X34_Y20_N15
\regA|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(19));

-- Location: LCCOMB_X35_Y20_N4
\MUXA|salida[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~19_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(19)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcA~combout\,
	datac => \PROGCOUNT|addr_out\(19),
	datad => \regA|dt_out\(19),
	combout => \MUXA|salida[19]~19_combout\);

-- Location: LCCOMB_X36_Y20_N6
\ALUCOMP|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~38_combout\ = (\MUXB|Mux12~0_combout\ & ((\MUXA|salida[19]~19_combout\ & (\ALUCOMP|Add0~37\ & VCC)) # (!\MUXA|salida[19]~19_combout\ & (!\ALUCOMP|Add0~37\)))) # (!\MUXB|Mux12~0_combout\ & ((\MUXA|salida[19]~19_combout\ & 
-- (!\ALUCOMP|Add0~37\)) # (!\MUXA|salida[19]~19_combout\ & ((\ALUCOMP|Add0~37\) # (GND)))))
-- \ALUCOMP|Add0~39\ = CARRY((\MUXB|Mux12~0_combout\ & (!\MUXA|salida[19]~19_combout\ & !\ALUCOMP|Add0~37\)) # (!\MUXB|Mux12~0_combout\ & ((!\ALUCOMP|Add0~37\) # (!\MUXA|salida[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux12~0_combout\,
	datab => \MUXA|salida[19]~19_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~37\,
	combout => \ALUCOMP|Add0~38_combout\,
	cout => \ALUCOMP|Add0~39\);

-- Location: LCFF_X36_Y20_N7
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCFF_X36_Y20_N17
\REGFILE|MEM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(20),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~56_regout\);

-- Location: LCCOMB_X37_Y20_N12
\REGFILE|MEM~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~333_combout\ = (\INSTREG|jump_out\(22) & (\REGFILE|MEM~120_regout\)) # (!\INSTREG|jump_out\(22) & ((\REGFILE|MEM~56_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~120_regout\,
	datab => \INSTREG|jump_out\(22),
	datad => \REGFILE|MEM~56_regout\,
	combout => \REGFILE|MEM~333_combout\);

-- Location: LCFF_X37_Y20_N13
\regA|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~333_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(20));

-- Location: LCCOMB_X38_Y20_N20
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(20) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(20))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(20),
	datac => \PROGCOUNT|addr_out\(20),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(20));

-- Location: LCCOMB_X37_Y20_N30
\MUXA|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~20_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(20))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \regA|dt_out\(20),
	datad => \PROGCOUNT|addr_out\(20),
	combout => \MUXA|salida[20]~20_combout\);

-- Location: LCCOMB_X36_Y20_N8
\ALUCOMP|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~40_combout\ = ((\MUXB|Mux11~0_combout\ $ (\MUXA|salida[20]~20_combout\ $ (!\ALUCOMP|Add0~39\)))) # (GND)
-- \ALUCOMP|Add0~41\ = CARRY((\MUXB|Mux11~0_combout\ & ((\MUXA|salida[20]~20_combout\) # (!\ALUCOMP|Add0~39\))) # (!\MUXB|Mux11~0_combout\ & (\MUXA|salida[20]~20_combout\ & !\ALUCOMP|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux11~0_combout\,
	datab => \MUXA|salida[20]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~39\,
	combout => \ALUCOMP|Add0~40_combout\,
	cout => \ALUCOMP|Add0~41\);

-- Location: LCFF_X36_Y20_N9
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y20_N30
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(21) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\MemDir~combout\(21)))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(21),
	datac => \MemDir~combout\(21),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(21));

-- Location: LCFF_X36_Y19_N15
\REGFILE|MEM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(21),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~57_regout\);

-- Location: LCFF_X35_Y19_N15
\REGFILE|MEM~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(21),
	sload => VCC,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~121_regout\);

-- Location: LCCOMB_X36_Y19_N18
\REGFILE|MEM~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~335_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~121_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~57_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|jump_out\(22),
	datac => \REGFILE|MEM~57_regout\,
	datad => \REGFILE|MEM~121_regout\,
	combout => \REGFILE|MEM~335_combout\);

-- Location: LCFF_X36_Y19_N19
\regA|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(21));

-- Location: LCCOMB_X37_Y20_N24
\MUXA|salida[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~21_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(21)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(21),
	datad => \regA|dt_out\(21),
	combout => \MUXA|salida[21]~21_combout\);

-- Location: LCCOMB_X36_Y20_N10
\ALUCOMP|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~42_combout\ = (\MUXB|Mux10~0_combout\ & ((\MUXA|salida[21]~21_combout\ & (\ALUCOMP|Add0~41\ & VCC)) # (!\MUXA|salida[21]~21_combout\ & (!\ALUCOMP|Add0~41\)))) # (!\MUXB|Mux10~0_combout\ & ((\MUXA|salida[21]~21_combout\ & 
-- (!\ALUCOMP|Add0~41\)) # (!\MUXA|salida[21]~21_combout\ & ((\ALUCOMP|Add0~41\) # (GND)))))
-- \ALUCOMP|Add0~43\ = CARRY((\MUXB|Mux10~0_combout\ & (!\MUXA|salida[21]~21_combout\ & !\ALUCOMP|Add0~41\)) # (!\MUXB|Mux10~0_combout\ & ((!\ALUCOMP|Add0~41\) # (!\MUXA|salida[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux10~0_combout\,
	datab => \MUXA|salida[21]~21_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~41\,
	combout => \ALUCOMP|Add0~42_combout\,
	cout => \ALUCOMP|Add0~43\);

-- Location: LCFF_X36_Y20_N25
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~42_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCCOMB_X33_Y18_N4
\REGFILE|MEM~58feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~58feeder_combout\ = \regALU|dt_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(22),
	combout => \REGFILE|MEM~58feeder_combout\);

-- Location: LCFF_X33_Y18_N5
\REGFILE|MEM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~58feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~58_regout\);

-- Location: LCCOMB_X34_Y18_N16
\REGFILE|MEM~122feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~122feeder_combout\ = \regALU|dt_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(22),
	combout => \REGFILE|MEM~122feeder_combout\);

-- Location: LCFF_X34_Y18_N17
\REGFILE|MEM~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~122feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~122_regout\);

-- Location: LCCOMB_X33_Y18_N30
\REGFILE|MEM~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~337_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~122_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~58_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|jump_out\(22),
	datab => \REGFILE|MEM~58_regout\,
	datac => \REGFILE|MEM~122_regout\,
	combout => \REGFILE|MEM~337_combout\);

-- Location: LCFF_X33_Y18_N31
\regA|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~337_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(22));

-- Location: LCCOMB_X37_Y20_N22
\MUXA|salida[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~22_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(22)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(22),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \regA|dt_out\(22),
	combout => \MUXA|salida[22]~22_combout\);

-- Location: LCCOMB_X36_Y20_N12
\ALUCOMP|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~44_combout\ = ((\MUXB|Mux9~0_combout\ $ (\MUXA|salida[22]~22_combout\ $ (!\ALUCOMP|Add0~43\)))) # (GND)
-- \ALUCOMP|Add0~45\ = CARRY((\MUXB|Mux9~0_combout\ & ((\MUXA|salida[22]~22_combout\) # (!\ALUCOMP|Add0~43\))) # (!\MUXB|Mux9~0_combout\ & (\MUXA|salida[22]~22_combout\ & !\ALUCOMP|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux9~0_combout\,
	datab => \MUXA|salida[22]~22_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~43\,
	combout => \ALUCOMP|Add0~44_combout\,
	cout => \ALUCOMP|Add0~45\);

-- Location: LCFF_X36_Y20_N13
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCCOMB_X33_Y18_N14
\REGFILE|MEM~59feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~59feeder_combout\ = \regALU|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(23),
	combout => \REGFILE|MEM~59feeder_combout\);

-- Location: LCFF_X33_Y18_N15
\REGFILE|MEM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~59feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~59_regout\);

-- Location: LCCOMB_X34_Y18_N6
\REGFILE|MEM~91feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~91feeder_combout\ = \regALU|dt_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(23),
	combout => \REGFILE|MEM~91feeder_combout\);

-- Location: LCFF_X34_Y18_N7
\REGFILE|MEM~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~91feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~91_regout\);

-- Location: LCCOMB_X33_Y18_N12
\REGFILE|MEM~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~338_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~91_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~59_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~59_regout\,
	datad => \REGFILE|MEM~91_regout\,
	combout => \REGFILE|MEM~338_combout\);

-- Location: LCFF_X33_Y18_N13
\regB|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(23));

-- Location: LCCOMB_X36_Y18_N2
\MUXB|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux8~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datac => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(23),
	combout => \MUXB|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y20_N14
\ALUCOMP|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~46_combout\ = (\MUXA|salida[23]~23_combout\ & ((\MUXB|Mux8~0_combout\ & (\ALUCOMP|Add0~45\ & VCC)) # (!\MUXB|Mux8~0_combout\ & (!\ALUCOMP|Add0~45\)))) # (!\MUXA|salida[23]~23_combout\ & ((\MUXB|Mux8~0_combout\ & (!\ALUCOMP|Add0~45\)) # 
-- (!\MUXB|Mux8~0_combout\ & ((\ALUCOMP|Add0~45\) # (GND)))))
-- \ALUCOMP|Add0~47\ = CARRY((\MUXA|salida[23]~23_combout\ & (!\MUXB|Mux8~0_combout\ & !\ALUCOMP|Add0~45\)) # (!\MUXA|salida[23]~23_combout\ & ((!\ALUCOMP|Add0~45\) # (!\MUXB|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~23_combout\,
	datab => \MUXB|Mux8~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~45\,
	combout => \ALUCOMP|Add0~46_combout\,
	cout => \ALUCOMP|Add0~47\);

-- Location: LCFF_X35_Y20_N9
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCCOMB_X33_Y18_N24
\REGFILE|MEM~60feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~60feeder_combout\ = \regALU|dt_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(24),
	combout => \REGFILE|MEM~60feeder_combout\);

-- Location: LCFF_X33_Y18_N25
\REGFILE|MEM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~60feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~60_regout\);

-- Location: LCFF_X34_Y18_N23
\REGFILE|MEM~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(24),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~92_regout\);

-- Location: LCCOMB_X33_Y18_N8
\REGFILE|MEM~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~340_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~92_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~60_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~60_regout\,
	datad => \REGFILE|MEM~92_regout\,
	combout => \REGFILE|MEM~340_combout\);

-- Location: LCFF_X33_Y18_N9
\regB|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(24));

-- Location: LCCOMB_X35_Y20_N18
\MUXB|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux7~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datac => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(24),
	combout => \MUXB|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y20_N16
\ALUCOMP|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~48_combout\ = ((\MUXA|salida[24]~24_combout\ $ (\MUXB|Mux7~0_combout\ $ (!\ALUCOMP|Add0~47\)))) # (GND)
-- \ALUCOMP|Add0~49\ = CARRY((\MUXA|salida[24]~24_combout\ & ((\MUXB|Mux7~0_combout\) # (!\ALUCOMP|Add0~47\))) # (!\MUXA|salida[24]~24_combout\ & (\MUXB|Mux7~0_combout\ & !\ALUCOMP|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[24]~24_combout\,
	datab => \MUXB|Mux7~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~47\,
	combout => \ALUCOMP|Add0~48_combout\,
	cout => \ALUCOMP|Add0~49\);

-- Location: LCFF_X35_Y20_N21
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCCOMB_X36_Y18_N14
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(25) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(25))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(25),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(25));

-- Location: LCCOMB_X37_Y18_N26
\REGFILE|MEM~125feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~125feeder_combout\ = \regALU|dt_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(25),
	combout => \REGFILE|MEM~125feeder_combout\);

-- Location: LCFF_X37_Y18_N27
\REGFILE|MEM~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~125feeder_combout\,
	ena => \MUXRegDst|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~125_regout\);

-- Location: LCCOMB_X36_Y18_N26
\REGFILE|MEM~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~343_combout\ = (\INSTREG|jump_out\(22) & ((\REGFILE|MEM~125_regout\))) # (!\INSTREG|jump_out\(22) & (\REGFILE|MEM~61_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~61_regout\,
	datab => \REGFILE|MEM~125_regout\,
	datad => \INSTREG|jump_out\(22),
	combout => \REGFILE|MEM~343_combout\);

-- Location: LCFF_X36_Y18_N27
\regA|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~343_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(25));

-- Location: LCCOMB_X36_Y18_N12
\MUXA|salida[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~25_combout\ = (\CONTROLU|ALUsrcA~combout\ & ((\regA|dt_out\(25)))) # (!\CONTROLU|ALUsrcA~combout\ & (\PROGCOUNT|addr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcA~combout\,
	datab => \PROGCOUNT|addr_out\(25),
	datad => \regA|dt_out\(25),
	combout => \MUXA|salida[25]~25_combout\);

-- Location: LCCOMB_X36_Y20_N18
\ALUCOMP|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~50_combout\ = (\MUXB|Mux6~0_combout\ & ((\MUXA|salida[25]~25_combout\ & (\ALUCOMP|Add0~49\ & VCC)) # (!\MUXA|salida[25]~25_combout\ & (!\ALUCOMP|Add0~49\)))) # (!\MUXB|Mux6~0_combout\ & ((\MUXA|salida[25]~25_combout\ & (!\ALUCOMP|Add0~49\)) 
-- # (!\MUXA|salida[25]~25_combout\ & ((\ALUCOMP|Add0~49\) # (GND)))))
-- \ALUCOMP|Add0~51\ = CARRY((\MUXB|Mux6~0_combout\ & (!\MUXA|salida[25]~25_combout\ & !\ALUCOMP|Add0~49\)) # (!\MUXB|Mux6~0_combout\ & ((!\ALUCOMP|Add0~49\) # (!\MUXA|salida[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux6~0_combout\,
	datab => \MUXA|salida[25]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~49\,
	combout => \ALUCOMP|Add0~50_combout\,
	cout => \ALUCOMP|Add0~51\);

-- Location: LCFF_X36_Y20_N19
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCCOMB_X38_Y18_N16
\REGFILE|MEM~62feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~62feeder_combout\ = \regALU|dt_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(26),
	combout => \REGFILE|MEM~62feeder_combout\);

-- Location: LCFF_X38_Y18_N17
\REGFILE|MEM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~62feeder_combout\,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~62_regout\);

-- Location: LCFF_X37_Y18_N29
\REGFILE|MEM~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(26),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~94_regout\);

-- Location: LCCOMB_X38_Y18_N2
\REGFILE|MEM~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~344_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~94_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~62_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~62_regout\,
	datad => \REGFILE|MEM~94_regout\,
	combout => \REGFILE|MEM~344_combout\);

-- Location: LCFF_X38_Y18_N3
\regB|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(26));

-- Location: LCCOMB_X37_Y18_N12
\MUXB|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux5~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(26),
	combout => \MUXB|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y20_N20
\ALUCOMP|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~52_combout\ = ((\MUXA|salida[26]~26_combout\ $ (\MUXB|Mux5~0_combout\ $ (!\ALUCOMP|Add0~51\)))) # (GND)
-- \ALUCOMP|Add0~53\ = CARRY((\MUXA|salida[26]~26_combout\ & ((\MUXB|Mux5~0_combout\) # (!\ALUCOMP|Add0~51\))) # (!\MUXA|salida[26]~26_combout\ & (\MUXB|Mux5~0_combout\ & !\ALUCOMP|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~26_combout\,
	datab => \MUXB|Mux5~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~51\,
	combout => \ALUCOMP|Add0~52_combout\,
	cout => \ALUCOMP|Add0~53\);

-- Location: LCFF_X36_Y20_N21
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCFF_X37_Y18_N25
\REGFILE|MEM~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(27),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~95_regout\);

-- Location: LCCOMB_X38_Y18_N8
\REGFILE|MEM~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~346_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~95_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~63_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM~63_regout\,
	datac => \INSTREG|r2_out\(0),
	datad => \REGFILE|MEM~95_regout\,
	combout => \REGFILE|MEM~346_combout\);

-- Location: LCFF_X38_Y18_N9
\regB|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(27));

-- Location: LCCOMB_X37_Y20_N0
\MUXB|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux4~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(0),
	datab => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(27),
	combout => \MUXB|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y20_N22
\ALUCOMP|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~54_combout\ = (\MUXA|salida[27]~27_combout\ & ((\MUXB|Mux4~0_combout\ & (\ALUCOMP|Add0~53\ & VCC)) # (!\MUXB|Mux4~0_combout\ & (!\ALUCOMP|Add0~53\)))) # (!\MUXA|salida[27]~27_combout\ & ((\MUXB|Mux4~0_combout\ & (!\ALUCOMP|Add0~53\)) # 
-- (!\MUXB|Mux4~0_combout\ & ((\ALUCOMP|Add0~53\) # (GND)))))
-- \ALUCOMP|Add0~55\ = CARRY((\MUXA|salida[27]~27_combout\ & (!\MUXB|Mux4~0_combout\ & !\ALUCOMP|Add0~53\)) # (!\MUXA|salida[27]~27_combout\ & ((!\ALUCOMP|Add0~53\) # (!\MUXB|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[27]~27_combout\,
	datab => \MUXB|Mux4~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~53\,
	combout => \ALUCOMP|Add0~54_combout\,
	cout => \ALUCOMP|Add0~55\);

-- Location: LCFF_X36_Y20_N23
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCFF_X35_Y22_N15
\REGFILE|MEM~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(28),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~64_regout\);

-- Location: LCFF_X36_Y22_N25
\REGFILE|MEM~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(28),
	sload => VCC,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~96_regout\);

-- Location: LCCOMB_X35_Y22_N28
\REGFILE|MEM~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~348_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~96_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~64_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~64_regout\,
	datad => \REGFILE|MEM~96_regout\,
	combout => \REGFILE|MEM~348_combout\);

-- Location: LCFF_X35_Y22_N29
\regB|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(28));

-- Location: LCCOMB_X35_Y22_N14
\MUXB|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux3~0_combout\ = (!\CONTROLU|ALUsrcB\(1) & (!\CONTROLU|ALUsrcB\(0) & \regB|dt_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB\(1),
	datab => \CONTROLU|ALUsrcB\(0),
	datad => \regB|dt_out\(28),
	combout => \MUXB|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y20_N24
\ALUCOMP|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~56_combout\ = ((\MUXA|salida[28]~28_combout\ $ (\MUXB|Mux3~0_combout\ $ (!\ALUCOMP|Add0~55\)))) # (GND)
-- \ALUCOMP|Add0~57\ = CARRY((\MUXA|salida[28]~28_combout\ & ((\MUXB|Mux3~0_combout\) # (!\ALUCOMP|Add0~55\))) # (!\MUXA|salida[28]~28_combout\ & (\MUXB|Mux3~0_combout\ & !\ALUCOMP|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~28_combout\,
	datab => \MUXB|Mux3~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~55\,
	combout => \ALUCOMP|Add0~56_combout\,
	cout => \ALUCOMP|Add0~57\);

-- Location: LCFF_X36_Y20_N15
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Add0~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCFF_X35_Y22_N25
\REGFILE|MEM~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	sdata => \regALU|dt_out\(29),
	sload => VCC,
	ena => \INSTREG|ALT_INV_r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~65_regout\);

-- Location: LCCOMB_X36_Y22_N4
\REGFILE|MEM~97feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~97feeder_combout\ = \regALU|dt_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regALU|dt_out\(29),
	combout => \REGFILE|MEM~97feeder_combout\);

-- Location: LCFF_X36_Y22_N5
\REGFILE|MEM~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONTROLU|RegWr~clkctrl_outclk\,
	datain => \REGFILE|MEM~97feeder_combout\,
	ena => \MUXRegDst|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGFILE|MEM~97_regout\);

-- Location: LCCOMB_X35_Y22_N12
\REGFILE|MEM~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~350_combout\ = (\INSTREG|r2_out\(0) & ((\REGFILE|MEM~97_regout\))) # (!\INSTREG|r2_out\(0) & (\REGFILE|MEM~65_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|r2_out\(0),
	datac => \REGFILE|MEM~65_regout\,
	datad => \REGFILE|MEM~97_regout\,
	combout => \REGFILE|MEM~350_combout\);

-- Location: LCFF_X35_Y22_N13
\regB|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(29));

-- Location: LCCOMB_X35_Y22_N22
\MUXB|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux2~0_combout\ = (!\CONTROLU|ALUsrcB\(0) & (!\CONTROLU|ALUsrcB\(1) & \regB|dt_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|ALUsrcB\(0),
	datac => \CONTROLU|ALUsrcB\(1),
	datad => \regB|dt_out\(29),
	combout => \MUXB|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y20_N26
\ALUCOMP|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~58_combout\ = (\MUXA|salida[29]~29_combout\ & ((\MUXB|Mux2~0_combout\ & (\ALUCOMP|Add0~57\ & VCC)) # (!\MUXB|Mux2~0_combout\ & (!\ALUCOMP|Add0~57\)))) # (!\MUXA|salida[29]~29_combout\ & ((\MUXB|Mux2~0_combout\ & (!\ALUCOMP|Add0~57\)) # 
-- (!\MUXB|Mux2~0_combout\ & ((\ALUCOMP|Add0~57\) # (GND)))))
-- \ALUCOMP|Add0~59\ = CARRY((\MUXA|salida[29]~29_combout\ & (!\MUXB|Mux2~0_combout\ & !\ALUCOMP|Add0~57\)) # (!\MUXA|salida[29]~29_combout\ & ((!\ALUCOMP|Add0~57\) # (!\MUXB|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~29_combout\,
	datab => \MUXB|Mux2~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~57\,
	combout => \ALUCOMP|Add0~58_combout\,
	cout => \ALUCOMP|Add0~59\);

-- Location: LCFF_X36_Y20_N27
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y20_N24
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(30) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(30))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(30),
	datac => \PROGCOUNT|addr_out\(30),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(30));

-- Location: LCCOMB_X35_Y20_N26
\MUXA|salida[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~30_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(30))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(30),
	datab => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(30),
	combout => \MUXA|salida[30]~30_combout\);

-- Location: LCCOMB_X36_Y20_N28
\ALUCOMP|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~60_combout\ = ((\MUXB|Mux1~0_combout\ $ (\MUXA|salida[30]~30_combout\ $ (!\ALUCOMP|Add0~59\)))) # (GND)
-- \ALUCOMP|Add0~61\ = CARRY((\MUXB|Mux1~0_combout\ & ((\MUXA|salida[30]~30_combout\) # (!\ALUCOMP|Add0~59\))) # (!\MUXB|Mux1~0_combout\ & (\MUXA|salida[30]~30_combout\ & !\ALUCOMP|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux1~0_combout\,
	datab => \MUXA|salida[30]~30_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~59\,
	combout => \ALUCOMP|Add0~60_combout\,
	cout => \ALUCOMP|Add0~61\);

-- Location: LCFF_X36_Y20_N29
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y18_N4
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(31) = (GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & (\MemDir~combout\(31))) # (!GLOBAL(\CONTROLU|PCwr~clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(31),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \CONTROLU|PCwr~clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(31));

-- Location: LCCOMB_X36_Y19_N22
\MUXA|salida[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~31_combout\ = (\CONTROLU|ALUsrcA~combout\ & (\regA|dt_out\(31))) # (!\CONTROLU|ALUsrcA~combout\ & ((\PROGCOUNT|addr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|dt_out\(31),
	datac => \CONTROLU|ALUsrcA~combout\,
	datad => \PROGCOUNT|addr_out\(31),
	combout => \MUXA|salida[31]~31_combout\);

-- Location: LCCOMB_X36_Y20_N30
\ALUCOMP|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~62_combout\ = \MUXB|Mux0~0_combout\ $ (\MUXA|salida[31]~31_combout\ $ (\ALUCOMP|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux0~0_combout\,
	datab => \MUXA|salida[31]~31_combout\,
	cin => \ALUCOMP|Add0~61\,
	combout => \ALUCOMP|Add0~62_combout\);

-- Location: LCFF_X36_Y20_N31
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(0));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(1));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(2));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(4));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(6));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(7));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(8));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(10));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(11));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(12));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(13));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(14));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(15));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(16));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(17));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(18));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(19));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(20));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(21));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(22));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(23));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(24));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(25));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(26));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(27));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(28));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(29));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(30));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regALU|dt_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(31));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(3));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(0));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(1));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(3));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(5));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(6));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(8));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(9));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(10));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(11));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~24_combout\,
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
	datain => \ALUCOMP|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(13));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(14));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(15));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(16));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(17));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(18));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~38_combout\,
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
	datain => \ALUCOMP|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(20));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(21));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(22));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(23));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(24));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(25));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(26));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(27));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(28));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(29));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(30));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(31));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


