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

-- DATE "11/17/2018 10:58:49"

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
	PCMUX : OUT std_logic_vector(31 DOWNTO 0);
	ActDir : OUT std_logic_vector(31 DOWNTO 0);
	AREG : OUT std_logic_vector(4 DOWNTO 0);
	BREG : OUT std_logic_vector(4 DOWNTO 0);
	ALOUT : OUT std_logic_vector(31 DOWNTO 0);
	ALUA : OUT std_logic_vector(31 DOWNTO 0);
	ALUB : OUT std_logic_vector(31 DOWNTO 0);
	wrReg : OUT std_logic_vector(4 DOWNTO 0);
	wrData : OUT std_logic_vector(31 DOWNTO 0);
	nextIns : OUT std_logic_vector(31 DOWNTO 0);
	sts : OUT std_logic_vector(3 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- PCMUX[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[1]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[3]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[5]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[7]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[8]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[9]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[10]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[11]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[12]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[13]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[14]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[15]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[16]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[17]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[18]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[19]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[20]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[21]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[22]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[23]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[24]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[25]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[26]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[27]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[28]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[29]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[30]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCMUX[31]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[0]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[2]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[5]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[6]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[7]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[8]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[9]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[10]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[11]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[12]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[13]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[14]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[15]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[16]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[17]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[18]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[19]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[20]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[21]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[22]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[23]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[24]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[25]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[26]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[27]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[28]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[29]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[30]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ActDir[31]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AREG[0]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AREG[1]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AREG[2]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AREG[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AREG[4]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BREG[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BREG[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BREG[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BREG[3]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BREG[4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[2]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[3]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[5]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[6]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[8]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[9]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[10]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[11]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[12]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[13]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[14]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[15]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[16]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[17]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[18]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[19]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[20]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[21]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[22]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[23]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[24]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[25]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[26]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[27]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[28]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[29]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[30]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALOUT[31]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[0]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[1]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[2]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[4]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[6]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[7]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[8]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[9]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[10]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[11]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[12]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[13]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[14]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[15]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[16]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[17]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[18]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[19]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[20]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[21]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[22]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[23]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[24]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[25]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[26]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[27]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[28]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[29]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[30]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUA[31]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[0]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[1]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[5]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[6]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[8]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[9]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[10]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[11]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[12]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[13]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[15]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[16]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[17]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[18]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[19]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[20]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[21]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[22]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[23]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[24]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[25]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[26]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[27]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[28]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[29]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[30]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUB[31]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[1]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[4]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[1]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[3]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[4]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[5]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[6]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[7]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[8]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[9]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[10]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[11]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[12]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[13]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[14]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[15]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[16]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[17]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[18]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[19]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[20]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[21]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[22]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[23]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[24]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[25]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[26]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[27]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[28]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[29]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[30]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[31]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[1]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[6]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[9]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[10]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[11]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[12]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[13]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[14]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[15]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[16]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[17]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[18]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[19]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[20]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[21]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[22]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[23]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[24]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[25]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[26]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[27]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[28]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[29]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[30]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[31]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[1]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_PCMUX : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ActDir : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AREG : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_BREG : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ALOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wrReg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wrData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_nextIns : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sts : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|ALUsrcB[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUCOMP|Add0~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~10_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~19_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~33_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~37_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~57_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~1_combout\ : std_logic;
SIGNAL \CONTROLU|MemRd~0_combout\ : std_logic;
SIGNAL \MEM|MEM~260_regout\ : std_logic;
SIGNAL \MEM|MEM~68_regout\ : std_logic;
SIGNAL \MEM|MEM~132_regout\ : std_logic;
SIGNAL \MEM|MEM~261_regout\ : std_logic;
SIGNAL \MEM|MEM~69_regout\ : std_logic;
SIGNAL \MEM|MEM~37_regout\ : std_logic;
SIGNAL \MEM|MEM~301_combout\ : std_logic;
SIGNAL \MEM|MEM~304_combout\ : std_logic;
SIGNAL \MEM|MEM~316_combout\ : std_logic;
SIGNAL \MEM|MEM~68feeder_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLU|ALUop[1]~0_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \ALUCOMP|Mux28~0_combout\ : std_logic;
SIGNAL \MEM|MEM~182feeder_combout\ : std_logic;
SIGNAL \CONTROLU|MemWr~0_combout\ : std_logic;
SIGNAL \MEM|MEM~315_combout\ : std_logic;
SIGNAL \MEM|MEM~182_regout\ : std_logic;
SIGNAL \MEM|MEM~308_combout\ : std_logic;
SIGNAL \CONTROLU|MemRd~1_combout\ : std_logic;
SIGNAL \MEM|MEM~73feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~318_combout\ : std_logic;
SIGNAL \MEM|MEM~73_regout\ : std_logic;
SIGNAL \MEM|MEM~307_combout\ : std_logic;
SIGNAL \MEM|MEM~105feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~317_combout\ : std_logic;
SIGNAL \MEM|MEM~105_regout\ : std_logic;
SIGNAL \MEM|MEM~305_combout\ : std_logic;
SIGNAL \MEM|MEM~306_combout\ : std_logic;
SIGNAL \REGFILE|MEM~293_combout\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~2_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~3_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~6_combout\ : std_logic;
SIGNAL \ALUCONTRL|op~0_combout\ : std_logic;
SIGNAL \MUXA|salida[18]~14_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux17~0_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out[14]~feeder_combout\ : std_logic;
SIGNAL \MUXA|salida[14]~18_combout\ : std_logic;
SIGNAL \MUXA|salida[13]~19_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~20_combout\ : std_logic;
SIGNAL \MEM|MEM~321_combout\ : std_logic;
SIGNAL \MUXB|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~14_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux24~0_combout\ : std_logic;
SIGNAL \MUXA|salida[7]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~3_combout\ : std_logic;
SIGNAL \MEM|MEM~311_combout\ : std_logic;
SIGNAL \MEM|MEM~148feeder_combout\ : std_logic;
SIGNAL \MEM|MEM~320_combout\ : std_logic;
SIGNAL \MEM|MEM~148_regout\ : std_logic;
SIGNAL \MEM|MEM~309_combout\ : std_logic;
SIGNAL \MEM|MEM~310_combout\ : std_logic;
SIGNAL \REGFILE|MEM~292_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcA~0_combout\ : std_logic;
SIGNAL \MUXA|salida[1]~31_combout\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~2_cout\ : std_logic;
SIGNAL \ALUCOMP|Add0~4\ : std_logic;
SIGNAL \ALUCOMP|Add0~7\ : std_logic;
SIGNAL \ALUCOMP|Add0~9\ : std_logic;
SIGNAL \ALUCOMP|Add0~11\ : std_logic;
SIGNAL \ALUCOMP|Add0~13\ : std_logic;
SIGNAL \ALUCOMP|Add0~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~5_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~16\ : std_logic;
SIGNAL \ALUCOMP|Add0~18\ : std_logic;
SIGNAL \ALUCOMP|Add0~20\ : std_logic;
SIGNAL \ALUCOMP|Add0~22\ : std_logic;
SIGNAL \ALUCOMP|Add0~24\ : std_logic;
SIGNAL \ALUCOMP|Add0~26\ : std_logic;
SIGNAL \ALUCOMP|Add0~28\ : std_logic;
SIGNAL \ALUCOMP|Add0~30\ : std_logic;
SIGNAL \ALUCOMP|Add0~32\ : std_logic;
SIGNAL \ALUCOMP|Add0~34\ : std_logic;
SIGNAL \ALUCOMP|Add0~35_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux16~0_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~17_combout\ : std_logic;
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
SIGNAL \ALUCOMP|Add0~55_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux6~0_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~53_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux7~0_combout\ : std_logic;
SIGNAL \MUXA|salida[24]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~51_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux8~0_combout\ : std_logic;
SIGNAL \MUXA|salida[23]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~45_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux11~0_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~43_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux12~0_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux20~3_combout\ : std_logic;
SIGNAL \MUXA|salida[11]~21_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~29_combout\ : std_logic;
SIGNAL \MUXA|salida[2]~30_combout\ : std_logic;
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
SIGNAL \ALUCOMP|Mux30~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux30~4_combout\ : std_logic;
SIGNAL \MUXPC|salida[1]~1_combout\ : std_logic;
SIGNAL \regB|dt_out[0]~0_combout\ : std_logic;
SIGNAL \MEM|MEM~100_regout\ : std_logic;
SIGNAL \MEM|MEM~319_combout\ : std_logic;
SIGNAL \MEM|MEM~36_regout\ : std_logic;
SIGNAL \MEM|MEM~296_combout\ : std_logic;
SIGNAL \MEM|MEM~297_combout\ : std_logic;
SIGNAL \MEM|MEM~313_combout\ : std_logic;
SIGNAL \MEM|MEM~196_regout\ : std_logic;
SIGNAL \MEM|MEM~314_combout\ : std_logic;
SIGNAL \MEM|MEM~228_regout\ : std_logic;
SIGNAL \MEM|MEM~164_regout\ : std_logic;
SIGNAL \MEM|MEM~294_combout\ : std_logic;
SIGNAL \MEM|MEM~295_combout\ : std_logic;
SIGNAL \MEM|MEM~298_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux26~2_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux29~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[2]~2_combout\ : std_logic;
SIGNAL \MEM|MEM~312_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~3_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt~4_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[1]~2_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~2_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[1]~3_combout\ : std_logic;
SIGNAL \CONTROLU|ALUsrcB[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|nxt_st[2]~1_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|NextSt[0]~1_combout\ : std_logic;
SIGNAL \CONTROLU|IorD~0_combout\ : std_logic;
SIGNAL \regA|dt_out[0]~0_combout\ : std_logic;
SIGNAL \MUXA|salida[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux31~5_combout\ : std_logic;
SIGNAL \MUXPC|salida[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux28~1_combout\ : std_logic;
SIGNAL \MUXPC|salida[3]~3_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux27~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[4]~4_combout\ : std_logic;
SIGNAL \MUXPC|salida[5]~5_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux25~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[6]~6_combout\ : std_logic;
SIGNAL \MUXPC|salida[7]~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~21_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux23~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[8]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~23_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux22~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[9]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux21~0_combout\ : std_logic;
SIGNAL \regALU|dt_out[10]~feeder_combout\ : std_logic;
SIGNAL \MUXPC|salida[10]~10_combout\ : std_logic;
SIGNAL \MUXPC|salida[11]~11_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux19~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[12]~12_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~31_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux18~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[13]~13_combout\ : std_logic;
SIGNAL \MUXPC|salida[14]~14_combout\ : std_logic;
SIGNAL \MUXPC|salida[15]~15_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux15~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[16]~16_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~39_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux14~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[17]~17_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~41_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux13~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[18]~18_combout\ : std_logic;
SIGNAL \MUXPC|salida[19]~19_combout\ : std_logic;
SIGNAL \MUXPC|salida[20]~20_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~47_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux10~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[21]~21_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~49_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux9~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[22]~22_combout\ : std_logic;
SIGNAL \MUXPC|salida[23]~23_combout\ : std_logic;
SIGNAL \MUXPC|salida[24]~24_combout\ : std_logic;
SIGNAL \MUXPC|salida[25]~25_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux5~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[26]~26_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~56\ : std_logic;
SIGNAL \ALUCOMP|Add0~58\ : std_logic;
SIGNAL \ALUCOMP|Add0~59_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux4~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[27]~27_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~60\ : std_logic;
SIGNAL \ALUCOMP|Add0~61_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux3~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[28]~28_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~62\ : std_logic;
SIGNAL \ALUCOMP|Add0~63_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux2~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[29]~29_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~64\ : std_logic;
SIGNAL \ALUCOMP|Add0~65_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux1~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[30]~30_combout\ : std_logic;
SIGNAL \MUXA|salida[31]~1_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~66\ : std_logic;
SIGNAL \ALUCOMP|Add0~67_combout\ : std_logic;
SIGNAL \ALUCOMP|Mux0~0_combout\ : std_logic;
SIGNAL \MUXPC|salida[31]~31_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \MEM|MEM~101_regout\ : std_logic;
SIGNAL \MEM|MEM~133_regout\ : std_logic;
SIGNAL \MEM|MEM~302_combout\ : std_logic;
SIGNAL \MEM|MEM~197_regout\ : std_logic;
SIGNAL \MEM|MEM~229_regout\ : std_logic;
SIGNAL \MEM|MEM~165_regout\ : std_logic;
SIGNAL \MEM|MEM~299_combout\ : std_logic;
SIGNAL \MEM|MEM~300_combout\ : std_logic;
SIGNAL \MEM|MEM~303_combout\ : std_logic;
SIGNAL \MUXA|salida[4]~28_combout\ : std_logic;
SIGNAL \MUXA|salida[6]~26_combout\ : std_logic;
SIGNAL \MUXA|salida[9]~23_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~22_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~15_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~11_combout\ : std_logic;
SIGNAL \MUXA|salida[22]~10_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~5_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~4_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~2_combout\ : std_logic;
SIGNAL \CONTROLU|RegDst~0_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[0]~0_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[1]~1_combout\ : std_logic;
SIGNAL \MUXRegDst|salida[2]~2_combout\ : std_logic;
SIGNAL \CONTROLU|MemtoReg~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[0]~0_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[1]~1_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[2]~2_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[3]~3_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[4]~4_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[5]~5_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[6]~6_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[7]~7_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[8]~8_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[9]~9_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[10]~10_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[11]~11_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[12]~12_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[13]~13_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[14]~14_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[15]~15_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[16]~16_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[17]~17_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[18]~18_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[19]~19_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[20]~20_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[21]~21_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[22]~22_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[23]~23_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[24]~24_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[25]~25_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[26]~26_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[27]~27_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[28]~28_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[29]~29_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[30]~30_combout\ : std_logic;
SIGNAL \MUXMemReg|salida[31]~31_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regB|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INSTREG|op_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLU|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INSTREG|func_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INSTREG|r1_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INSTREG|imm_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEM|dataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INSTREG|r2_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regA|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MDR|dt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
PCMUX <= ww_PCMUX;
ActDir <= ww_ActDir;
AREG <= ww_AREG;
BREG <= ww_BREG;
ALOUT <= ww_ALOUT;
ALUA <= ww_ALUA;
ALUB <= ww_ALUB;
wrReg <= ww_wrReg;
wrData <= ww_wrData;
nextIns <= ww_nextIns;
sts <= ww_sts;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\CONTROLU|nxt_st[1]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|nxt_st[1]~0_combout\);

\CONTROLU|ALUsrcB[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|ALUsrcB[0]~0_combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCCOMB_X46_Y6_N18
\ALUCOMP|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~3_combout\ = (\MUXA|salida[0]~0_combout\ & ((\ALUCOMP|Add0~0_combout\ & (\ALUCOMP|Add0~2_cout\ & VCC)) # (!\ALUCOMP|Add0~0_combout\ & (!\ALUCOMP|Add0~2_cout\)))) # (!\MUXA|salida[0]~0_combout\ & ((\ALUCOMP|Add0~0_combout\ & 
-- (!\ALUCOMP|Add0~2_cout\)) # (!\ALUCOMP|Add0~0_combout\ & ((\ALUCOMP|Add0~2_cout\) # (GND)))))
-- \ALUCOMP|Add0~4\ = CARRY((\MUXA|salida[0]~0_combout\ & (!\ALUCOMP|Add0~0_combout\ & !\ALUCOMP|Add0~2_cout\)) # (!\MUXA|salida[0]~0_combout\ & ((!\ALUCOMP|Add0~2_cout\) # (!\ALUCOMP|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~0_combout\,
	datab => \ALUCOMP|Add0~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~2_cout\,
	combout => \ALUCOMP|Add0~3_combout\,
	cout => \ALUCOMP|Add0~4\);

-- Location: LCCOMB_X46_Y6_N20
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = ((\ALUCOMP|Add0~5_combout\ $ (\MUXA|salida[1]~31_combout\ $ (!\ALUCOMP|Add0~4\)))) # (GND)
-- \ALUCOMP|Add0~7\ = CARRY((\ALUCOMP|Add0~5_combout\ & ((\MUXA|salida[1]~31_combout\) # (!\ALUCOMP|Add0~4\))) # (!\ALUCOMP|Add0~5_combout\ & (\MUXA|salida[1]~31_combout\ & !\ALUCOMP|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~5_combout\,
	datab => \MUXA|salida[1]~31_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~4\,
	combout => \ALUCOMP|Add0~6_combout\,
	cout => \ALUCOMP|Add0~7\);

-- Location: LCCOMB_X46_Y6_N22
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = (\MUXA|salida[2]~30_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~7\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~7\)))) # (!\MUXA|salida[2]~30_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~7\)) # 
-- (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~7\) # (GND)))))
-- \ALUCOMP|Add0~9\ = CARRY((\MUXA|salida[2]~30_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~7\)) # (!\MUXA|salida[2]~30_combout\ & ((!\ALUCOMP|Add0~7\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[2]~30_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~7\,
	combout => \ALUCOMP|Add0~8_combout\,
	cout => \ALUCOMP|Add0~9\);

-- Location: LCCOMB_X46_Y6_N24
\ALUCOMP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~10_combout\ = ((\MUXA|salida[3]~29_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~9\)))) # (GND)
-- \ALUCOMP|Add0~11\ = CARRY((\MUXA|salida[3]~29_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~9\))) # (!\MUXA|salida[3]~29_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~29_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~9\,
	combout => \ALUCOMP|Add0~10_combout\,
	cout => \ALUCOMP|Add0~11\);

-- Location: LCCOMB_X46_Y6_N26
\ALUCOMP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~12_combout\ = (\MUXA|salida[4]~28_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~11\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~11\)))) # (!\MUXA|salida[4]~28_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~11\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~11\) # (GND)))))
-- \ALUCOMP|Add0~13\ = CARRY((\MUXA|salida[4]~28_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~11\)) # (!\MUXA|salida[4]~28_combout\ & ((!\ALUCOMP|Add0~11\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~28_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~11\,
	combout => \ALUCOMP|Add0~12_combout\,
	cout => \ALUCOMP|Add0~13\);

-- Location: LCCOMB_X46_Y6_N30
\ALUCOMP|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~17_combout\ = (\MUXA|salida[6]~26_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~16\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~16\)))) # (!\MUXA|salida[6]~26_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~16\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~16\) # (GND)))))
-- \ALUCOMP|Add0~18\ = CARRY((\MUXA|salida[6]~26_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~16\)) # (!\MUXA|salida[6]~26_combout\ & ((!\ALUCOMP|Add0~16\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~26_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~16\,
	combout => \ALUCOMP|Add0~17_combout\,
	cout => \ALUCOMP|Add0~18\);

-- Location: LCCOMB_X46_Y5_N0
\ALUCOMP|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~19_combout\ = ((\ALUCONTRL|op~0_combout\ $ (\MUXA|salida[7]~25_combout\ $ (!\ALUCOMP|Add0~18\)))) # (GND)
-- \ALUCOMP|Add0~20\ = CARRY((\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[7]~25_combout\) # (!\ALUCOMP|Add0~18\))) # (!\ALUCONTRL|op~0_combout\ & (\MUXA|salida[7]~25_combout\ & !\ALUCOMP|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[7]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~18\,
	combout => \ALUCOMP|Add0~19_combout\,
	cout => \ALUCOMP|Add0~20\);

-- Location: LCCOMB_X46_Y5_N10
\ALUCOMP|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~29_combout\ = (\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[12]~20_combout\ & (\ALUCOMP|Add0~28\ & VCC)) # (!\MUXA|salida[12]~20_combout\ & (!\ALUCOMP|Add0~28\)))) # (!\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[12]~20_combout\ & 
-- (!\ALUCOMP|Add0~28\)) # (!\MUXA|salida[12]~20_combout\ & ((\ALUCOMP|Add0~28\) # (GND)))))
-- \ALUCOMP|Add0~30\ = CARRY((\ALUCONTRL|op~0_combout\ & (!\MUXA|salida[12]~20_combout\ & !\ALUCOMP|Add0~28\)) # (!\ALUCONTRL|op~0_combout\ & ((!\ALUCOMP|Add0~28\) # (!\MUXA|salida[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[12]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~28\,
	combout => \ALUCOMP|Add0~29_combout\,
	cout => \ALUCOMP|Add0~30\);

-- Location: LCCOMB_X46_Y5_N14
\ALUCOMP|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~33_combout\ = (\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[14]~18_combout\ & (\ALUCOMP|Add0~32\ & VCC)) # (!\MUXA|salida[14]~18_combout\ & (!\ALUCOMP|Add0~32\)))) # (!\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[14]~18_combout\ & 
-- (!\ALUCOMP|Add0~32\)) # (!\MUXA|salida[14]~18_combout\ & ((\ALUCOMP|Add0~32\) # (GND)))))
-- \ALUCOMP|Add0~34\ = CARRY((\ALUCONTRL|op~0_combout\ & (!\MUXA|salida[14]~18_combout\ & !\ALUCOMP|Add0~32\)) # (!\ALUCONTRL|op~0_combout\ & ((!\ALUCOMP|Add0~32\) # (!\MUXA|salida[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[14]~18_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~32\,
	combout => \ALUCOMP|Add0~33_combout\,
	cout => \ALUCOMP|Add0~34\);

-- Location: LCCOMB_X46_Y5_N18
\ALUCOMP|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~37_combout\ = (\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[16]~16_combout\ & (\ALUCOMP|Add0~36\ & VCC)) # (!\MUXA|salida[16]~16_combout\ & (!\ALUCOMP|Add0~36\)))) # (!\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[16]~16_combout\ & 
-- (!\ALUCOMP|Add0~36\)) # (!\MUXA|salida[16]~16_combout\ & ((\ALUCOMP|Add0~36\) # (GND)))))
-- \ALUCOMP|Add0~38\ = CARRY((\ALUCONTRL|op~0_combout\ & (!\MUXA|salida[16]~16_combout\ & !\ALUCOMP|Add0~36\)) # (!\ALUCONTRL|op~0_combout\ & ((!\ALUCOMP|Add0~36\) # (!\MUXA|salida[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[16]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~36\,
	combout => \ALUCOMP|Add0~37_combout\,
	cout => \ALUCOMP|Add0~38\);

-- Location: LCCOMB_X46_Y4_N6
\ALUCOMP|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~57_combout\ = (\MUXA|salida[26]~6_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~56\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~56\)))) # (!\MUXA|salida[26]~6_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~56\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~56\) # (GND)))))
-- \ALUCOMP|Add0~58\ = CARRY((\MUXA|salida[26]~6_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~56\)) # (!\MUXA|salida[26]~6_combout\ & ((!\ALUCOMP|Add0~56\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[26]~6_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~56\,
	combout => \ALUCOMP|Add0~57_combout\,
	cout => \ALUCOMP|Add0~58\);

-- Location: LCCOMB_X46_Y6_N10
\ALUCOMP|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~5_combout\ = \MUXB|Mux30~0_combout\ $ (((\INSTREG|func_out\(1) & \CONTROLU|ALUop[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|func_out\(1),
	datac => \CONTROLU|ALUop[1]~0_combout\,
	datad => \MUXB|Mux30~0_combout\,
	combout => \ALUCOMP|Add0~5_combout\);

-- Location: LCCOMB_X47_Y5_N18
\ALUCOMP|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~3_combout\ = (\CONTROLU|ALUop[1]~0_combout\ & ((\INSTREG|imm_out\(0) & (\INSTREG|func_out\(1))) # (!\INSTREG|imm_out\(0) & ((\ALUCOMP|Add0~6_combout\))))) # (!\CONTROLU|ALUop[1]~0_combout\ & (((\ALUCOMP|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \CONTROLU|ALUop[1]~0_combout\,
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCOMP|Add0~6_combout\,
	combout => \ALUCOMP|Mux30~3_combout\);

-- Location: LCCOMB_X47_Y7_N16
\ALUCOMP|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~1_combout\ = (\MUXA|salida[11]~21_combout\) # ((!\CONTROLU|ALUsrcB[0]~0_combout\ & (\CONTROLU|nxt_st[1]~0_combout\ & \INSTREG|imm_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUsrcB[0]~0_combout\,
	datab => \CONTROLU|nxt_st[1]~0_combout\,
	datac => \MUXA|salida[11]~21_combout\,
	datad => \INSTREG|imm_out\(11),
	combout => \ALUCOMP|Mux20~1_combout\);

-- Location: LCCOMB_X46_Y6_N2
\CONTROLU|MemRd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemRd~0_combout\ = (!\rst~combout\ & ((\NEWST|CS\(0)) # ((\NEWST|CS\(2)) # (\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \NEWST|CS\(2),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|MemRd~0_combout\);

-- Location: LCFF_X45_Y7_N7
\MEM|MEM~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~260_regout\);

-- Location: LCFF_X43_Y6_N13
\MEM|MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM|MEM~68feeder_combout\,
	ena => \MEM|MEM~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~68_regout\);

-- Location: LCFF_X45_Y6_N27
\MEM|MEM~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~132_regout\);

-- Location: LCFF_X45_Y7_N11
\MEM|MEM~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~261_regout\);

-- Location: LCFF_X43_Y6_N15
\MEM|MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~69_regout\);

-- Location: LCFF_X44_Y6_N15
\MEM|MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~37_regout\);

-- Location: LCCOMB_X44_Y6_N14
\MEM|MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~301_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~69_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~37_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~69_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~37_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~301_combout\);

-- Location: LCCOMB_X45_Y6_N30
\MEM|MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~304_combout\ = (\MUXPC|salida[1]~1_combout\ & (!\MEM|MEM~105_regout\ & (!\MUXPC|salida[0]~0_combout\))) # (!\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\ & !\MEM|MEM~73_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~105_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MEM|MEM~73_regout\,
	combout => \MEM|MEM~304_combout\);

-- Location: LCCOMB_X46_Y7_N14
\MEM|MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~316_combout\ = (\MUXPC|salida[1]~1_combout\ & (\CONTROLU|MemWr~0_combout\ & (\MUXPC|salida[0]~0_combout\ & \MUXPC|salida[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~316_combout\);

-- Location: LCCOMB_X43_Y6_N12
\MEM|MEM~68feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~68feeder_combout\ = \regB|dt_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regB|dt_out\(0),
	combout => \MEM|MEM~68feeder_combout\);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y6_N18
\CONTROLU|nxt_st[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~0_combout\ = (!\rst~combout\ & (!\NEWST|CS\(2) & (\NEWST|CS\(1) $ (\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \rst~combout\,
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|nxt_st[1]~0_combout\);

-- Location: CLKCTRL_G4
\CONTROLU|nxt_st[1]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|nxt_st[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|nxt_st[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y6_N8
\CONTROLU|ALUop[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUop[1]~0_combout\ = (!\NEWST|CS\(0) & (!\rst~combout\ & (\NEWST|CS\(2) & \NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \NEWST|CS\(2),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|ALUop[1]~0_combout\);

-- Location: CLKCTRL_G7
\CONTROLU|ALUsrcB[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|ALUsrcB[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y6_N0
\INSTREG|func_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|func_out\(1) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\MEM|dataOut\(1))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\INSTREG|func_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|dataOut\(1),
	datab => \INSTREG|func_out\(1),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|func_out\(1));

-- Location: LCCOMB_X47_Y5_N2
\ALUCOMP|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~0_combout\ = (\INSTREG|imm_out\(0) & (\CONTROLU|ALUop[1]~0_combout\ & !\INSTREG|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(0),
	datab => \CONTROLU|ALUop[1]~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCOMP|Mux28~0_combout\);

-- Location: LCCOMB_X44_Y7_N16
\MEM|MEM~182feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~182feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MEM|MEM~182feeder_combout\);

-- Location: LCCOMB_X48_Y7_N10
\CONTROLU|MemWr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemWr~0_combout\ = (\NEWST|CS\(0) & (!\rst~combout\ & (!\NEWST|CS\(1) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|MemWr~0_combout\);

-- Location: LCCOMB_X45_Y7_N30
\MEM|MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~315_combout\ = (\MUXPC|salida[2]~2_combout\ & (\CONTROLU|MemWr~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~315_combout\);

-- Location: LCFF_X44_Y7_N17
\MEM|MEM~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM|MEM~182feeder_combout\,
	ena => \MEM|MEM~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~182_regout\);

-- Location: LCCOMB_X46_Y7_N26
\MEM|MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~308_combout\ = (!\MUXPC|salida[1]~1_combout\ & (!\MEM|MEM~182_regout\ & (!\MUXPC|salida[0]~0_combout\ & \MUXPC|salida[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~182_regout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~308_combout\);

-- Location: LCCOMB_X46_Y7_N22
\CONTROLU|MemRd~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemRd~1_combout\ = (!\rst~combout\ & (!\NEWST|CS\(2) & (\NEWST|CS\(1) $ (!\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(2),
	datad => \NEWST|CS\(0),
	combout => \CONTROLU|MemRd~1_combout\);

-- Location: LCFF_X46_Y7_N27
\MEM|dataOut[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~308_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(18));

-- Location: LCCOMB_X46_Y7_N30
\INSTREG|r2_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r2_out\(2) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\MEM|dataOut\(18))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\INSTREG|r2_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(18),
	datac => \INSTREG|r2_out\(2),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|r2_out\(2));

-- Location: LCCOMB_X43_Y6_N0
\MEM|MEM~73feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~73feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MEM|MEM~73feeder_combout\);

-- Location: LCCOMB_X44_Y6_N4
\MEM|MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~318_combout\ = (\MUXPC|salida[0]~0_combout\ & (\CONTROLU|MemWr~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & !\MUXPC|salida[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~318_combout\);

-- Location: LCFF_X43_Y6_N1
\MEM|MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM|MEM~73feeder_combout\,
	ena => \MEM|MEM~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~73_regout\);

-- Location: LCCOMB_X46_Y7_N18
\MEM|MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~307_combout\ = (!\MUXPC|salida[1]~1_combout\ & (!\MEM|MEM~73_regout\ & (\MUXPC|salida[0]~0_combout\ & !\MUXPC|salida[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~73_regout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~307_combout\);

-- Location: LCFF_X46_Y7_N19
\MEM|dataOut[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~307_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(17));

-- Location: LCCOMB_X46_Y7_N4
\INSTREG|r2_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r2_out\(1) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\MEM|dataOut\(17))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\INSTREG|r2_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(17),
	datac => \INSTREG|r2_out\(1),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|r2_out\(1));

-- Location: LCCOMB_X44_Y6_N28
\MEM|MEM~105feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~105feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MEM|MEM~105feeder_combout\);

-- Location: LCCOMB_X44_Y6_N22
\MEM|MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~317_combout\ = (!\MUXPC|salida[2]~2_combout\ & (\CONTROLU|MemWr~0_combout\ & (\MUXPC|salida[1]~1_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~317_combout\);

-- Location: LCFF_X44_Y6_N29
\MEM|MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM|MEM~105feeder_combout\,
	ena => \MEM|MEM~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~105_regout\);

-- Location: LCCOMB_X45_Y6_N2
\MEM|MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~305_combout\ = (\MUXPC|salida[0]~0_combout\ & (!\MEM|MEM~148_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((!\MEM|MEM~105_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~148_regout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MEM|MEM~105_regout\,
	combout => \MEM|MEM~305_combout\);

-- Location: LCCOMB_X46_Y7_N8
\MEM|MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~306_combout\ = (\MUXPC|salida[1]~1_combout\ & (\MEM|MEM~305_combout\ & !\MUXPC|salida[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~305_combout\,
	datad => \MUXPC|salida[2]~2_combout\,
	combout => \MEM|MEM~306_combout\);

-- Location: LCFF_X46_Y7_N9
\MEM|dataOut[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~306_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(16));

-- Location: LCCOMB_X46_Y7_N10
\INSTREG|r2_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r2_out\(0) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\MEM|dataOut\(16))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\INSTREG|r2_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|dataOut\(16),
	datac => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	datad => \INSTREG|r2_out\(0),
	combout => \INSTREG|r2_out\(0));

-- Location: LCCOMB_X46_Y7_N12
\REGFILE|MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~293_combout\ = (!\INSTREG|r2_out\(2) & (\INSTREG|r2_out\(1) & \INSTREG|r2_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r2_out\(2),
	datac => \INSTREG|r2_out\(1),
	datad => \INSTREG|r2_out\(0),
	combout => \REGFILE|MEM~293_combout\);

-- Location: LCFF_X46_Y7_N13
\regB|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(1));

-- Location: LCCOMB_X47_Y6_N20
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (!\CONTROLU|ALUsrcB[0]~0_combout\ & ((\CONTROLU|nxt_st[1]~0_combout\ & (\INSTREG|func_out\(1))) # (!\CONTROLU|nxt_st[1]~0_combout\ & ((\regB|dt_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \CONTROLU|ALUsrcB[0]~0_combout\,
	datac => \regB|dt_out\(1),
	datad => \CONTROLU|nxt_st[1]~0_combout\,
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCCOMB_X48_Y6_N2
\ALUCOMP|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~2_combout\ = (\MUXA|salida[1]~31_combout\ & ((\MUXB|Mux30~0_combout\) # (!\ALUCOMP|Mux28~0_combout\))) # (!\MUXA|salida[1]~31_combout\ & (\MUXB|Mux30~0_combout\ & !\ALUCOMP|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~31_combout\,
	datab => \MUXB|Mux30~0_combout\,
	datad => \ALUCOMP|Mux28~0_combout\,
	combout => \ALUCOMP|Mux30~2_combout\);

-- Location: LCCOMB_X47_Y4_N4
\MUXA|salida[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~3_combout\ = (\PROGCOUNT|addr_out\(29) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(29),
	datab => \rst~combout\,
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[29]~3_combout\);

-- Location: LCCOMB_X45_Y4_N4
\MUXA|salida[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~6_combout\ = (\PROGCOUNT|addr_out\(26) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(26),
	datab => \rst~combout\,
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[26]~6_combout\);

-- Location: LCCOMB_X46_Y6_N4
\ALUCONTRL|op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCONTRL|op~0_combout\ = (\CONTROLU|ALUop[1]~0_combout\ & \INSTREG|func_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|ALUop[1]~0_combout\,
	datad => \INSTREG|func_out\(1),
	combout => \ALUCONTRL|op~0_combout\);

-- Location: LCCOMB_X47_Y4_N18
\MUXA|salida[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~14_combout\ = (\PROGCOUNT|addr_out\(18) & (((\NEWST|CS\(0)) # (\rst~combout\)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(18),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \rst~combout\,
	combout => \MUXA|salida[18]~14_combout\);

-- Location: LCCOMB_X47_Y4_N26
\MUXA|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~16_combout\ = (\PROGCOUNT|addr_out\(16) & (((\NEWST|CS\(0)) # (\rst~combout\)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(16),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \rst~combout\,
	combout => \MUXA|salida[16]~16_combout\);

-- Location: LCCOMB_X47_Y7_N6
\ALUCOMP|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux17~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~33_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux17~0_combout\);

-- Location: LCCOMB_X47_Y7_N12
\PROGCOUNT|addr_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out[14]~feeder_combout\ = \ALUCOMP|Mux17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUCOMP|Mux17~0_combout\,
	combout => \PROGCOUNT|addr_out[14]~feeder_combout\);

-- Location: LCFF_X47_Y7_N13
\PROGCOUNT|addr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \PROGCOUNT|addr_out[14]~feeder_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(14));

-- Location: LCCOMB_X47_Y5_N20
\MUXA|salida[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~18_combout\ = (\PROGCOUNT|addr_out\(14) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(14),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \MUXA|salida[14]~18_combout\);

-- Location: LCCOMB_X49_Y5_N0
\MUXA|salida[13]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~19_combout\ = (\PROGCOUNT|addr_out\(13) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(13),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[13]~19_combout\);

-- Location: LCCOMB_X49_Y5_N10
\MUXA|salida[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~20_combout\ = (\PROGCOUNT|addr_out\(12) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[12]~20_combout\);

-- Location: LCFF_X49_Y6_N31
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCCOMB_X45_Y6_N16
\MEM|MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~321_combout\ = (\MEM|MEM~304_combout\ & ((\CONTROLU|IorD~0_combout\ & (!\regALU|dt_out\(2))) # (!\CONTROLU|IorD~0_combout\ & ((!\PROGCOUNT|addr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~304_combout\,
	datab => \regALU|dt_out\(2),
	datac => \CONTROLU|IorD~0_combout\,
	datad => \PROGCOUNT|addr_out\(2),
	combout => \MEM|MEM~321_combout\);

-- Location: LCFF_X45_Y6_N17
\MEM|dataOut[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~321_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(5));

-- Location: LCCOMB_X46_Y6_N6
\INSTREG|imm_out[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(11) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\MEM|dataOut\(5)))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\INSTREG|imm_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(11),
	datab => \MEM|dataOut\(5),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|imm_out\(11));

-- Location: LCCOMB_X47_Y6_N16
\MUXB|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux20~0_combout\ = (\CONTROLU|nxt_st[1]~0_combout\ & (\INSTREG|imm_out\(11) & !\CONTROLU|ALUsrcB[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st[1]~0_combout\,
	datac => \INSTREG|imm_out\(11),
	datad => \CONTROLU|ALUsrcB[0]~0_combout\,
	combout => \MUXB|Mux20~0_combout\);

-- Location: LCCOMB_X46_Y6_N12
\ALUCOMP|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~14_combout\ = \MUXB|Mux20~0_combout\ $ (((\INSTREG|func_out\(1) & \CONTROLU|ALUop[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|func_out\(1),
	datac => \MUXB|Mux20~0_combout\,
	datad => \CONTROLU|ALUop[1]~0_combout\,
	combout => \ALUCOMP|Add0~14_combout\);

-- Location: LCCOMB_X47_Y6_N8
\MUXA|salida[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~24_combout\ = (\PROGCOUNT|addr_out\(8) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(8),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[8]~24_combout\);

-- Location: LCCOMB_X47_Y4_N12
\ALUCOMP|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux24~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~19_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux24~0_combout\);

-- Location: LCFF_X47_Y4_N13
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux24~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(7));

-- Location: LCCOMB_X47_Y5_N26
\MUXA|salida[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~25_combout\ = (\PROGCOUNT|addr_out\(7) & (((\rst~combout\) # (\NEWST|CS\(0))) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(7),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[7]~25_combout\);

-- Location: LCCOMB_X47_Y5_N28
\ALUCOMP|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~3_combout\ = (\ALUCOMP|Mux26~2_combout\ & ((\MUXA|salida[5]~27_combout\) # ((\MUXB|Mux20~0_combout\) # (\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~27_combout\,
	datab => \MUXB|Mux20~0_combout\,
	datac => \ALUCONTRL|op~0_combout\,
	datad => \ALUCOMP|Mux26~2_combout\,
	combout => \ALUCOMP|Mux26~3_combout\);

-- Location: LCCOMB_X45_Y6_N20
\MEM|MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~311_combout\ = (!\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[2]~2_combout\ & (!\MEM|MEM~105_regout\ & \MUXPC|salida[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~105_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~311_combout\);

-- Location: LCFF_X45_Y6_N21
\MEM|dataOut[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~311_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(23));

-- Location: LCCOMB_X48_Y6_N4
\INSTREG|r1_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r1_out\(2) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\MEM|dataOut\(23)))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\INSTREG|r1_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r1_out\(2),
	datac => \MEM|dataOut\(23),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|r1_out\(2));

-- Location: LCCOMB_X45_Y6_N24
\MEM|MEM~148feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~148feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MEM|MEM~148feeder_combout\);

-- Location: LCCOMB_X45_Y6_N0
\MEM|MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~320_combout\ = (\CONTROLU|MemWr~0_combout\ & (!\MUXPC|salida[2]~2_combout\ & (\MUXPC|salida[0]~0_combout\ & \MUXPC|salida[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemWr~0_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MUXPC|salida[0]~0_combout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~320_combout\);

-- Location: LCFF_X45_Y6_N25
\MEM|MEM~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM|MEM~148feeder_combout\,
	ena => \MEM|MEM~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~148_regout\);

-- Location: LCCOMB_X45_Y7_N24
\MEM|MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~309_combout\ = (\MUXPC|salida[1]~1_combout\) # ((\MEM|MEM~182_regout\ & !\MUXPC|salida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|MEM~182_regout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~309_combout\);

-- Location: LCCOMB_X45_Y6_N6
\MEM|MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~310_combout\ = (\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[2]~2_combout\ & (!\MEM|MEM~148_regout\ & \MEM|MEM~309_combout\))) # (!\MUXPC|salida[0]~0_combout\ & (\MUXPC|salida[2]~2_combout\ & ((!\MEM|MEM~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~148_regout\,
	datad => \MEM|MEM~309_combout\,
	combout => \MEM|MEM~310_combout\);

-- Location: LCFF_X45_Y6_N7
\MEM|dataOut[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~310_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(21));

-- Location: LCCOMB_X48_Y6_N14
\INSTREG|r1_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|r1_out\(0) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\MEM|dataOut\(21)))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\INSTREG|r1_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r1_out\(0),
	datac => \MEM|dataOut\(21),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|r1_out\(0));

-- Location: LCCOMB_X48_Y6_N30
\REGFILE|MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \REGFILE|MEM~292_combout\ = (!\INSTREG|r1_out\(2) & \INSTREG|r1_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|r1_out\(2),
	datac => \INSTREG|r1_out\(0),
	combout => \REGFILE|MEM~292_combout\);

-- Location: LCFF_X48_Y6_N31
\regA|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \REGFILE|MEM~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(1));

-- Location: LCFF_X47_Y5_N3
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux30~4_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X48_Y6_N22
\CONTROLU|ALUsrcA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcA~0_combout\ = (\NEWST|CS\(1) & (!\NEWST|CS\(0) & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \rst~combout\,
	combout => \CONTROLU|ALUsrcA~0_combout\);

-- Location: LCCOMB_X48_Y6_N12
\MUXA|salida[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~31_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & (\regA|dt_out\(1))) # (!\CONTROLU|ALUsrcA~0_combout\ & ((\PROGCOUNT|addr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|dt_out\(1),
	datac => \PROGCOUNT|addr_out\(1),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[1]~31_combout\);

-- Location: LCCOMB_X47_Y6_N26
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (\CONTROLU|ALUsrcB[0]~0_combout\) # ((\CONTROLU|nxt_st[1]~0_combout\ & ((\INSTREG|imm_out\(0)))) # (!\CONTROLU|nxt_st[1]~0_combout\ & (\regB|dt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|dt_out\(0),
	datab => \CONTROLU|ALUsrcB[0]~0_combout\,
	datac => \INSTREG|imm_out\(0),
	datad => \CONTROLU|nxt_st[1]~0_combout\,
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCCOMB_X46_Y6_N14
\ALUCOMP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~0_combout\ = \MUXB|Mux31~0_combout\ $ (((\INSTREG|func_out\(1) & \CONTROLU|ALUop[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|func_out\(1),
	datac => \MUXB|Mux31~0_combout\,
	datad => \CONTROLU|ALUop[1]~0_combout\,
	combout => \ALUCOMP|Add0~0_combout\);

-- Location: LCCOMB_X46_Y6_N16
\ALUCOMP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~2_cout\ = CARRY(\ALUCONTRL|op~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|Add0~2_cout\);

-- Location: LCCOMB_X46_Y6_N28
\ALUCOMP|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~15_combout\ = ((\ALUCOMP|Add0~14_combout\ $ (\MUXA|salida[5]~27_combout\ $ (!\ALUCOMP|Add0~13\)))) # (GND)
-- \ALUCOMP|Add0~16\ = CARRY((\ALUCOMP|Add0~14_combout\ & ((\MUXA|salida[5]~27_combout\) # (!\ALUCOMP|Add0~13\))) # (!\ALUCOMP|Add0~14_combout\ & (\MUXA|salida[5]~27_combout\ & !\ALUCOMP|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~14_combout\,
	datab => \MUXA|salida[5]~27_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~13\,
	combout => \ALUCOMP|Add0~15_combout\,
	cout => \ALUCOMP|Add0~16\);

-- Location: LCCOMB_X47_Y5_N6
\ALUCOMP|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~4_combout\ = (\ALUCOMP|Mux28~0_combout\ & (\ALUCOMP|Mux26~3_combout\)) # (!\ALUCOMP|Mux28~0_combout\ & ((\ALUCOMP|Mux26~3_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~3_combout\ & ((\ALUCOMP|Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Mux26~3_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~15_combout\,
	combout => \ALUCOMP|Mux26~4_combout\);

-- Location: LCCOMB_X47_Y5_N4
\ALUCOMP|Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~5_combout\ = (\ALUCOMP|Mux26~4_combout\) # ((!\INSTREG|func_out\(1) & (\INSTREG|imm_out\(0) & \CONTROLU|ALUop[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \INSTREG|imm_out\(0),
	datac => \CONTROLU|ALUop[1]~0_combout\,
	datad => \ALUCOMP|Mux26~4_combout\,
	combout => \ALUCOMP|Mux26~5_combout\);

-- Location: LCFF_X47_Y5_N23
\PROGCOUNT|addr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux26~5_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(5));

-- Location: LCCOMB_X47_Y5_N12
\MUXA|salida[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~27_combout\ = (\PROGCOUNT|addr_out\(5) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(5),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \MUXA|salida[5]~27_combout\);

-- Location: LCCOMB_X46_Y5_N2
\ALUCOMP|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~21_combout\ = (\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[8]~24_combout\ & (\ALUCOMP|Add0~20\ & VCC)) # (!\MUXA|salida[8]~24_combout\ & (!\ALUCOMP|Add0~20\)))) # (!\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[8]~24_combout\ & 
-- (!\ALUCOMP|Add0~20\)) # (!\MUXA|salida[8]~24_combout\ & ((\ALUCOMP|Add0~20\) # (GND)))))
-- \ALUCOMP|Add0~22\ = CARRY((\ALUCONTRL|op~0_combout\ & (!\MUXA|salida[8]~24_combout\ & !\ALUCOMP|Add0~20\)) # (!\ALUCONTRL|op~0_combout\ & ((!\ALUCOMP|Add0~20\) # (!\MUXA|salida[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[8]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~20\,
	combout => \ALUCOMP|Add0~21_combout\,
	cout => \ALUCOMP|Add0~22\);

-- Location: LCCOMB_X46_Y5_N4
\ALUCOMP|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~23_combout\ = ((\MUXA|salida[9]~23_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~22\)))) # (GND)
-- \ALUCOMP|Add0~24\ = CARRY((\MUXA|salida[9]~23_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~22\))) # (!\MUXA|salida[9]~23_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~23_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~22\,
	combout => \ALUCOMP|Add0~23_combout\,
	cout => \ALUCOMP|Add0~24\);

-- Location: LCCOMB_X46_Y5_N6
\ALUCOMP|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~25_combout\ = (\MUXA|salida[10]~22_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~24\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~24\)))) # (!\MUXA|salida[10]~22_combout\ & ((\ALUCONTRL|op~0_combout\ & 
-- (!\ALUCOMP|Add0~24\)) # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~24\) # (GND)))))
-- \ALUCOMP|Add0~26\ = CARRY((\MUXA|salida[10]~22_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~24\)) # (!\MUXA|salida[10]~22_combout\ & ((!\ALUCOMP|Add0~24\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~22_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~24\,
	combout => \ALUCOMP|Add0~25_combout\,
	cout => \ALUCOMP|Add0~26\);

-- Location: LCCOMB_X46_Y5_N8
\ALUCOMP|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~27_combout\ = ((\MUXA|salida[11]~21_combout\ $ (\ALUCOMP|Add0~14_combout\ $ (!\ALUCOMP|Add0~26\)))) # (GND)
-- \ALUCOMP|Add0~28\ = CARRY((\MUXA|salida[11]~21_combout\ & ((\ALUCOMP|Add0~14_combout\) # (!\ALUCOMP|Add0~26\))) # (!\MUXA|salida[11]~21_combout\ & (\ALUCOMP|Add0~14_combout\ & !\ALUCOMP|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[11]~21_combout\,
	datab => \ALUCOMP|Add0~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~26\,
	combout => \ALUCOMP|Add0~27_combout\,
	cout => \ALUCOMP|Add0~28\);

-- Location: LCCOMB_X46_Y5_N12
\ALUCOMP|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~31_combout\ = ((\ALUCONTRL|op~0_combout\ $ (\MUXA|salida[13]~19_combout\ $ (!\ALUCOMP|Add0~30\)))) # (GND)
-- \ALUCOMP|Add0~32\ = CARRY((\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[13]~19_combout\) # (!\ALUCOMP|Add0~30\))) # (!\ALUCONTRL|op~0_combout\ & (\MUXA|salida[13]~19_combout\ & !\ALUCOMP|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[13]~19_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~30\,
	combout => \ALUCOMP|Add0~31_combout\,
	cout => \ALUCOMP|Add0~32\);

-- Location: LCCOMB_X46_Y5_N16
\ALUCOMP|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~35_combout\ = ((\ALUCONTRL|op~0_combout\ $ (\MUXA|salida[15]~17_combout\ $ (!\ALUCOMP|Add0~34\)))) # (GND)
-- \ALUCOMP|Add0~36\ = CARRY((\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[15]~17_combout\) # (!\ALUCOMP|Add0~34\))) # (!\ALUCONTRL|op~0_combout\ & (\MUXA|salida[15]~17_combout\ & !\ALUCOMP|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[15]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~34\,
	combout => \ALUCOMP|Add0~35_combout\,
	cout => \ALUCOMP|Add0~36\);

-- Location: LCCOMB_X47_Y7_N14
\ALUCOMP|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux16~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Add0~35_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux16~0_combout\);

-- Location: LCFF_X47_Y7_N11
\PROGCOUNT|addr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux16~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(15));

-- Location: LCCOMB_X47_Y5_N14
\MUXA|salida[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~17_combout\ = (\PROGCOUNT|addr_out\(15) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(15),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \MUXA|salida[15]~17_combout\);

-- Location: LCCOMB_X46_Y5_N20
\ALUCOMP|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~39_combout\ = ((\MUXA|salida[17]~15_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~38\)))) # (GND)
-- \ALUCOMP|Add0~40\ = CARRY((\MUXA|salida[17]~15_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~38\))) # (!\MUXA|salida[17]~15_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~15_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~38\,
	combout => \ALUCOMP|Add0~39_combout\,
	cout => \ALUCOMP|Add0~40\);

-- Location: LCCOMB_X46_Y5_N22
\ALUCOMP|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~41_combout\ = (\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[18]~14_combout\ & (\ALUCOMP|Add0~40\ & VCC)) # (!\MUXA|salida[18]~14_combout\ & (!\ALUCOMP|Add0~40\)))) # (!\ALUCONTRL|op~0_combout\ & ((\MUXA|salida[18]~14_combout\ & 
-- (!\ALUCOMP|Add0~40\)) # (!\MUXA|salida[18]~14_combout\ & ((\ALUCOMP|Add0~40\) # (GND)))))
-- \ALUCOMP|Add0~42\ = CARRY((\ALUCONTRL|op~0_combout\ & (!\MUXA|salida[18]~14_combout\ & !\ALUCOMP|Add0~40\)) # (!\ALUCONTRL|op~0_combout\ & ((!\ALUCOMP|Add0~40\) # (!\MUXA|salida[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCONTRL|op~0_combout\,
	datab => \MUXA|salida[18]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~40\,
	combout => \ALUCOMP|Add0~41_combout\,
	cout => \ALUCOMP|Add0~42\);

-- Location: LCCOMB_X46_Y5_N24
\ALUCOMP|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~43_combout\ = ((\MUXA|salida[19]~13_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~42\)))) # (GND)
-- \ALUCOMP|Add0~44\ = CARRY((\MUXA|salida[19]~13_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~42\))) # (!\MUXA|salida[19]~13_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~13_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~42\,
	combout => \ALUCOMP|Add0~43_combout\,
	cout => \ALUCOMP|Add0~44\);

-- Location: LCCOMB_X46_Y5_N26
\ALUCOMP|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~45_combout\ = (\MUXA|salida[20]~12_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~44\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~44\)))) # (!\MUXA|salida[20]~12_combout\ & ((\ALUCONTRL|op~0_combout\ & 
-- (!\ALUCOMP|Add0~44\)) # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~44\) # (GND)))))
-- \ALUCOMP|Add0~46\ = CARRY((\MUXA|salida[20]~12_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~44\)) # (!\MUXA|salida[20]~12_combout\ & ((!\ALUCOMP|Add0~44\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~12_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~44\,
	combout => \ALUCOMP|Add0~45_combout\,
	cout => \ALUCOMP|Add0~46\);

-- Location: LCCOMB_X46_Y5_N28
\ALUCOMP|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~47_combout\ = ((\MUXA|salida[21]~11_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~46\)))) # (GND)
-- \ALUCOMP|Add0~48\ = CARRY((\MUXA|salida[21]~11_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~46\))) # (!\MUXA|salida[21]~11_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~11_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~46\,
	combout => \ALUCOMP|Add0~47_combout\,
	cout => \ALUCOMP|Add0~48\);

-- Location: LCCOMB_X46_Y5_N30
\ALUCOMP|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~49_combout\ = (\MUXA|salida[22]~10_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~48\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~48\)))) # (!\MUXA|salida[22]~10_combout\ & ((\ALUCONTRL|op~0_combout\ & 
-- (!\ALUCOMP|Add0~48\)) # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~48\) # (GND)))))
-- \ALUCOMP|Add0~50\ = CARRY((\MUXA|salida[22]~10_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~48\)) # (!\MUXA|salida[22]~10_combout\ & ((!\ALUCOMP|Add0~48\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~10_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~48\,
	combout => \ALUCOMP|Add0~49_combout\,
	cout => \ALUCOMP|Add0~50\);

-- Location: LCCOMB_X46_Y4_N0
\ALUCOMP|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~51_combout\ = ((\MUXA|salida[23]~9_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~50\)))) # (GND)
-- \ALUCOMP|Add0~52\ = CARRY((\MUXA|salida[23]~9_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~50\))) # (!\MUXA|salida[23]~9_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[23]~9_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~50\,
	combout => \ALUCOMP|Add0~51_combout\,
	cout => \ALUCOMP|Add0~52\);

-- Location: LCCOMB_X46_Y4_N2
\ALUCOMP|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~53_combout\ = (\MUXA|salida[24]~8_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~52\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~52\)))) # (!\MUXA|salida[24]~8_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~52\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~52\) # (GND)))))
-- \ALUCOMP|Add0~54\ = CARRY((\MUXA|salida[24]~8_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~52\)) # (!\MUXA|salida[24]~8_combout\ & ((!\ALUCOMP|Add0~52\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[24]~8_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~52\,
	combout => \ALUCOMP|Add0~53_combout\,
	cout => \ALUCOMP|Add0~54\);

-- Location: LCCOMB_X46_Y4_N4
\ALUCOMP|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~55_combout\ = ((\MUXA|salida[25]~7_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~54\)))) # (GND)
-- \ALUCOMP|Add0~56\ = CARRY((\MUXA|salida[25]~7_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~54\))) # (!\MUXA|salida[25]~7_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~7_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~54\,
	combout => \ALUCOMP|Add0~55_combout\,
	cout => \ALUCOMP|Add0~56\);

-- Location: LCCOMB_X49_Y4_N8
\ALUCOMP|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux6~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~55_combout\,
	combout => \ALUCOMP|Mux6~0_combout\);

-- Location: LCFF_X49_Y4_N15
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux6~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(25));

-- Location: LCCOMB_X49_Y4_N6
\MUXA|salida[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~7_combout\ = (\PROGCOUNT|addr_out\(25) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(25),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[25]~7_combout\);

-- Location: LCCOMB_X46_Y4_N22
\ALUCOMP|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux7~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Add0~53_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux7~0_combout\);

-- Location: LCFF_X46_Y4_N23
\PROGCOUNT|addr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux7~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(24));

-- Location: LCCOMB_X47_Y4_N22
\MUXA|salida[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~8_combout\ = (\PROGCOUNT|addr_out\(24) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(24),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[24]~8_combout\);

-- Location: LCCOMB_X47_Y7_N30
\ALUCOMP|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux8~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Add0~51_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux8~0_combout\);

-- Location: LCFF_X47_Y7_N1
\PROGCOUNT|addr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux8~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(23));

-- Location: LCCOMB_X49_Y4_N28
\MUXA|salida[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~9_combout\ = (\PROGCOUNT|addr_out\(23) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(23),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[23]~9_combout\);

-- Location: LCCOMB_X47_Y4_N10
\ALUCOMP|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux11~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~45_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux11~0_combout\);

-- Location: LCFF_X47_Y4_N29
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux11~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(20));

-- Location: LCCOMB_X47_Y4_N28
\MUXA|salida[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~12_combout\ = (\PROGCOUNT|addr_out\(20) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(20),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[20]~12_combout\);

-- Location: LCCOMB_X49_Y4_N16
\ALUCOMP|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux12~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~43_combout\,
	combout => \ALUCOMP|Mux12~0_combout\);

-- Location: LCFF_X49_Y4_N27
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux12~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(19));

-- Location: LCCOMB_X49_Y4_N18
\MUXA|salida[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~13_combout\ = (\PROGCOUNT|addr_out\(19) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \PROGCOUNT|addr_out\(19),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[19]~13_combout\);

-- Location: LCCOMB_X47_Y5_N0
\ALUCOMP|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~0_combout\ = (\CONTROLU|ALUop[1]~0_combout\ & ((\INSTREG|imm_out\(0) & (\INSTREG|func_out\(1))) # (!\INSTREG|imm_out\(0) & ((\ALUCOMP|Add0~27_combout\))))) # (!\CONTROLU|ALUop[1]~0_combout\ & (((\ALUCOMP|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|func_out\(1),
	datab => \CONTROLU|ALUop[1]~0_combout\,
	datac => \INSTREG|imm_out\(0),
	datad => \ALUCOMP|Add0~27_combout\,
	combout => \ALUCOMP|Mux20~0_combout\);

-- Location: LCCOMB_X47_Y4_N16
\ALUCOMP|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~2_combout\ = (\ALUCOMP|Mux20~0_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux20~0_combout\ & (\ALUCOMP|Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux20~1_combout\,
	datab => \ALUCOMP|Mux20~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux20~2_combout\);

-- Location: LCCOMB_X47_Y4_N14
\ALUCOMP|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux20~3_combout\ = (\ALUCOMP|Mux26~2_combout\ & (((\ALUCOMP|Mux20~2_combout\)) # (!\INSTREG|func_out\(1)))) # (!\ALUCOMP|Mux26~2_combout\ & (((\ALUCOMP|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \INSTREG|func_out\(1),
	datac => \ALUCOMP|Mux20~2_combout\,
	datad => \ALUCOMP|Mux20~0_combout\,
	combout => \ALUCOMP|Mux20~3_combout\);

-- Location: LCFF_X47_Y4_N25
\PROGCOUNT|addr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux20~3_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(11));

-- Location: LCCOMB_X47_Y4_N24
\MUXA|salida[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~21_combout\ = (\PROGCOUNT|addr_out\(11) & (((\NEWST|CS\(0)) # (\rst~combout\)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(11),
	datad => \rst~combout\,
	combout => \MUXA|salida[11]~21_combout\);

-- Location: LCCOMB_X49_Y6_N16
\MUXA|salida[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~29_combout\ = (\PROGCOUNT|addr_out\(3) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(3),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[3]~29_combout\);

-- Location: LCCOMB_X49_Y6_N6
\MUXA|salida[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~30_combout\ = (\PROGCOUNT|addr_out\(2) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(2),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[2]~30_combout\);

-- Location: LCCOMB_X48_Y5_N0
\ALUCOMP|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~1_cout\ = CARRY((!\MUXA|salida[0]~0_combout\ & \MUXB|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[0]~0_combout\,
	datab => \MUXB|Mux31~0_combout\,
	datad => VCC,
	cout => \ALUCOMP|LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y5_N2
\ALUCOMP|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~3_cout\ = CARRY((\MUXB|Mux30~0_combout\ & (\MUXA|salida[1]~31_combout\ & !\ALUCOMP|LessThan0~1_cout\)) # (!\MUXB|Mux30~0_combout\ & ((\MUXA|salida[1]~31_combout\) # (!\ALUCOMP|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux30~0_combout\,
	datab => \MUXA|salida[1]~31_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~1_cout\,
	cout => \ALUCOMP|LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y5_N4
\ALUCOMP|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~5_cout\ = CARRY((!\MUXA|salida[2]~30_combout\ & !\ALUCOMP|LessThan0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[2]~30_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~3_cout\,
	cout => \ALUCOMP|LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y5_N6
\ALUCOMP|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~7_cout\ = CARRY((\MUXA|salida[3]~29_combout\) # (!\ALUCOMP|LessThan0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[3]~29_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~5_cout\,
	cout => \ALUCOMP|LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y5_N8
\ALUCOMP|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~9_cout\ = CARRY((!\MUXA|salida[4]~28_combout\ & !\ALUCOMP|LessThan0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[4]~28_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~7_cout\,
	cout => \ALUCOMP|LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y5_N10
\ALUCOMP|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~11_cout\ = CARRY((\MUXA|salida[5]~27_combout\ & ((!\ALUCOMP|LessThan0~9_cout\) # (!\MUXB|Mux20~0_combout\))) # (!\MUXA|salida[5]~27_combout\ & (!\MUXB|Mux20~0_combout\ & !\ALUCOMP|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[5]~27_combout\,
	datab => \MUXB|Mux20~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~9_cout\,
	cout => \ALUCOMP|LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y5_N12
\ALUCOMP|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~13_cout\ = CARRY((!\MUXA|salida[6]~26_combout\ & !\ALUCOMP|LessThan0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[6]~26_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~11_cout\,
	cout => \ALUCOMP|LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y5_N14
\ALUCOMP|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~15_cout\ = CARRY((\MUXA|salida[7]~25_combout\) # (!\ALUCOMP|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[7]~25_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~13_cout\,
	cout => \ALUCOMP|LessThan0~15_cout\);

-- Location: LCCOMB_X48_Y5_N16
\ALUCOMP|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~17_cout\ = CARRY((!\MUXA|salida[8]~24_combout\ & !\ALUCOMP|LessThan0~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[8]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~15_cout\,
	cout => \ALUCOMP|LessThan0~17_cout\);

-- Location: LCCOMB_X48_Y5_N18
\ALUCOMP|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~19_cout\ = CARRY((\MUXA|salida[9]~23_combout\) # (!\ALUCOMP|LessThan0~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[9]~23_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~17_cout\,
	cout => \ALUCOMP|LessThan0~19_cout\);

-- Location: LCCOMB_X48_Y5_N20
\ALUCOMP|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~21_cout\ = CARRY((!\MUXA|salida[10]~22_combout\ & !\ALUCOMP|LessThan0~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~22_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~19_cout\,
	cout => \ALUCOMP|LessThan0~21_cout\);

-- Location: LCCOMB_X48_Y5_N22
\ALUCOMP|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~23_cout\ = CARRY((\MUXB|Mux20~0_combout\ & (\MUXA|salida[11]~21_combout\ & !\ALUCOMP|LessThan0~21_cout\)) # (!\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~21_combout\) # (!\ALUCOMP|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux20~0_combout\,
	datab => \MUXA|salida[11]~21_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~21_cout\,
	cout => \ALUCOMP|LessThan0~23_cout\);

-- Location: LCCOMB_X48_Y5_N24
\ALUCOMP|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~25_cout\ = CARRY((!\MUXA|salida[12]~20_combout\ & !\ALUCOMP|LessThan0~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[12]~20_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~23_cout\,
	cout => \ALUCOMP|LessThan0~25_cout\);

-- Location: LCCOMB_X48_Y5_N26
\ALUCOMP|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~27_cout\ = CARRY((\MUXA|salida[13]~19_combout\) # (!\ALUCOMP|LessThan0~25_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[13]~19_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~25_cout\,
	cout => \ALUCOMP|LessThan0~27_cout\);

-- Location: LCCOMB_X48_Y5_N28
\ALUCOMP|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~29_cout\ = CARRY((!\MUXA|salida[14]~18_combout\ & !\ALUCOMP|LessThan0~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[14]~18_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~27_cout\,
	cout => \ALUCOMP|LessThan0~29_cout\);

-- Location: LCCOMB_X48_Y5_N30
\ALUCOMP|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~31_cout\ = CARRY((\MUXA|salida[15]~17_combout\) # (!\ALUCOMP|LessThan0~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[15]~17_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~29_cout\,
	cout => \ALUCOMP|LessThan0~31_cout\);

-- Location: LCCOMB_X48_Y4_N0
\ALUCOMP|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~33_cout\ = CARRY((!\MUXA|salida[16]~16_combout\ & !\ALUCOMP|LessThan0~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[16]~16_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~31_cout\,
	cout => \ALUCOMP|LessThan0~33_cout\);

-- Location: LCCOMB_X48_Y4_N2
\ALUCOMP|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~35_cout\ = CARRY((\MUXA|salida[17]~15_combout\) # (!\ALUCOMP|LessThan0~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~15_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~33_cout\,
	cout => \ALUCOMP|LessThan0~35_cout\);

-- Location: LCCOMB_X48_Y4_N4
\ALUCOMP|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~37_cout\ = CARRY((!\MUXA|salida[18]~14_combout\ & !\ALUCOMP|LessThan0~35_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[18]~14_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~35_cout\,
	cout => \ALUCOMP|LessThan0~37_cout\);

-- Location: LCCOMB_X48_Y4_N6
\ALUCOMP|LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~39_cout\ = CARRY((\MUXA|salida[19]~13_combout\) # (!\ALUCOMP|LessThan0~37_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[19]~13_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~37_cout\,
	cout => \ALUCOMP|LessThan0~39_cout\);

-- Location: LCCOMB_X48_Y4_N8
\ALUCOMP|LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~41_cout\ = CARRY((!\MUXA|salida[20]~12_combout\ & !\ALUCOMP|LessThan0~39_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[20]~12_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~39_cout\,
	cout => \ALUCOMP|LessThan0~41_cout\);

-- Location: LCCOMB_X48_Y4_N10
\ALUCOMP|LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~43_cout\ = CARRY((\MUXA|salida[21]~11_combout\) # (!\ALUCOMP|LessThan0~41_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~11_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~41_cout\,
	cout => \ALUCOMP|LessThan0~43_cout\);

-- Location: LCCOMB_X48_Y4_N12
\ALUCOMP|LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~45_cout\ = CARRY((!\MUXA|salida[22]~10_combout\ & !\ALUCOMP|LessThan0~43_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[22]~10_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~43_cout\,
	cout => \ALUCOMP|LessThan0~45_cout\);

-- Location: LCCOMB_X48_Y4_N14
\ALUCOMP|LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~47_cout\ = CARRY((\MUXA|salida[23]~9_combout\) # (!\ALUCOMP|LessThan0~45_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[23]~9_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~45_cout\,
	cout => \ALUCOMP|LessThan0~47_cout\);

-- Location: LCCOMB_X48_Y4_N16
\ALUCOMP|LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~49_cout\ = CARRY((!\MUXA|salida[24]~8_combout\ & !\ALUCOMP|LessThan0~47_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[24]~8_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~47_cout\,
	cout => \ALUCOMP|LessThan0~49_cout\);

-- Location: LCCOMB_X48_Y4_N18
\ALUCOMP|LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~51_cout\ = CARRY((\MUXA|salida[25]~7_combout\) # (!\ALUCOMP|LessThan0~49_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[25]~7_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~49_cout\,
	cout => \ALUCOMP|LessThan0~51_cout\);

-- Location: LCCOMB_X48_Y4_N20
\ALUCOMP|LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~53_cout\ = CARRY((!\MUXA|salida[26]~6_combout\ & !\ALUCOMP|LessThan0~51_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[26]~6_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~51_cout\,
	cout => \ALUCOMP|LessThan0~53_cout\);

-- Location: LCCOMB_X48_Y4_N22
\ALUCOMP|LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~55_cout\ = CARRY((\MUXA|salida[27]~5_combout\) # (!\ALUCOMP|LessThan0~53_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[27]~5_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~53_cout\,
	cout => \ALUCOMP|LessThan0~55_cout\);

-- Location: LCCOMB_X48_Y4_N24
\ALUCOMP|LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~57_cout\ = CARRY((!\MUXA|salida[28]~4_combout\ & !\ALUCOMP|LessThan0~55_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~4_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~55_cout\,
	cout => \ALUCOMP|LessThan0~57_cout\);

-- Location: LCCOMB_X48_Y4_N26
\ALUCOMP|LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~59_cout\ = CARRY((\MUXA|salida[29]~3_combout\) # (!\ALUCOMP|LessThan0~57_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[29]~3_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~57_cout\,
	cout => \ALUCOMP|LessThan0~59_cout\);

-- Location: LCCOMB_X48_Y4_N28
\ALUCOMP|LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~61_cout\ = CARRY((!\MUXA|salida[30]~2_combout\ & !\ALUCOMP|LessThan0~59_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|LessThan0~59_cout\,
	cout => \ALUCOMP|LessThan0~61_cout\);

-- Location: LCCOMB_X48_Y4_N30
\ALUCOMP|LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|LessThan0~62_combout\ = (!\MUXA|salida[31]~1_combout\ & \ALUCOMP|LessThan0~61_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[31]~1_combout\,
	cin => \ALUCOMP|LessThan0~61_cout\,
	combout => \ALUCOMP|LessThan0~62_combout\);

-- Location: LCCOMB_X47_Y5_N30
\ALUCOMP|Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~5_combout\ = (\INSTREG|imm_out\(0) & (\CONTROLU|ALUop[1]~0_combout\ & ((!\ALUCOMP|LessThan0~62_combout\) # (!\ALUCOMP|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux30~3_combout\,
	datab => \INSTREG|imm_out\(0),
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \CONTROLU|ALUop[1]~0_combout\,
	combout => \ALUCOMP|Mux30~5_combout\);

-- Location: LCCOMB_X47_Y5_N24
\ALUCOMP|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux30~4_combout\ = (\ALUCOMP|Mux28~0_combout\ & (((!\ALUCOMP|Mux30~2_combout\)))) # (!\ALUCOMP|Mux28~0_combout\ & ((\ALUCOMP|Mux30~3_combout\ & ((!\ALUCOMP|Mux30~5_combout\))) # (!\ALUCOMP|Mux30~3_combout\ & (\ALUCOMP|Mux30~2_combout\ & 
-- \ALUCOMP|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux30~3_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux30~2_combout\,
	datad => \ALUCOMP|Mux30~5_combout\,
	combout => \ALUCOMP|Mux30~4_combout\);

-- Location: LCFF_X47_Y5_N25
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCCOMB_X45_Y6_N26
\MUXPC|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[1]~1_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(1)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(1),
	datab => \CONTROLU|IorD~0_combout\,
	datad => \regALU|dt_out\(1),
	combout => \MUXPC|salida[1]~1_combout\);

-- Location: LCCOMB_X46_Y7_N24
\regB|dt_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|dt_out[0]~0_combout\ = !\INSTREG|r2_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INSTREG|r2_out\(2),
	combout => \regB|dt_out[0]~0_combout\);

-- Location: LCFF_X46_Y7_N25
\regB|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regB|dt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|dt_out\(0));

-- Location: LCFF_X44_Y6_N9
\MEM|MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~100_regout\);

-- Location: LCCOMB_X44_Y6_N2
\MEM|MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~319_combout\ = (!\MUXPC|salida[2]~2_combout\ & (\CONTROLU|MemWr~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~319_combout\);

-- Location: LCFF_X44_Y6_N11
\MEM|MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~36_regout\);

-- Location: LCCOMB_X44_Y6_N10
\MEM|MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~296_combout\ = (\MUXPC|salida[1]~1_combout\ & (((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & ((\MUXPC|salida[0]~0_combout\ & (\MEM|MEM~68_regout\)) # (!\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~36_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~68_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~36_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~296_combout\);

-- Location: LCCOMB_X44_Y6_N8
\MEM|MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~297_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~296_combout\ & (\MEM|MEM~132_regout\)) # (!\MEM|MEM~296_combout\ & ((\MEM|MEM~100_regout\))))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~132_regout\,
	datab => \MUXPC|salida[1]~1_combout\,
	datac => \MEM|MEM~100_regout\,
	datad => \MEM|MEM~296_combout\,
	combout => \MEM|MEM~297_combout\);

-- Location: LCCOMB_X45_Y7_N2
\MEM|MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~313_combout\ = (\MUXPC|salida[2]~2_combout\ & (\CONTROLU|MemWr~0_combout\ & (!\MUXPC|salida[1]~1_combout\ & \MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~313_combout\);

-- Location: LCFF_X45_Y7_N29
\MEM|MEM~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~196_regout\);

-- Location: LCCOMB_X45_Y7_N4
\MEM|MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~314_combout\ = (\MUXPC|salida[2]~2_combout\ & (\CONTROLU|MemWr~0_combout\ & (\MUXPC|salida[1]~1_combout\ & !\MUXPC|salida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datab => \CONTROLU|MemWr~0_combout\,
	datac => \MUXPC|salida[1]~1_combout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~314_combout\);

-- Location: LCFF_X44_Y7_N25
\MEM|MEM~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~228_regout\);

-- Location: LCFF_X44_Y7_N27
\MEM|MEM~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(0),
	sload => VCC,
	ena => \MEM|MEM~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~164_regout\);

-- Location: LCCOMB_X44_Y7_N26
\MEM|MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~294_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~228_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~164_regout\ & !\MUXPC|salida[0]~0_combout\))))

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
	combout => \MEM|MEM~294_combout\);

-- Location: LCCOMB_X45_Y7_N28
\MEM|MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~295_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~294_combout\ & (\MEM|MEM~260_regout\)) # (!\MEM|MEM~294_combout\ & ((\MEM|MEM~196_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~260_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~196_regout\,
	datad => \MEM|MEM~294_combout\,
	combout => \MEM|MEM~295_combout\);

-- Location: LCCOMB_X46_Y7_N16
\MEM|MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~298_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~295_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~297_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~297_combout\,
	datad => \MEM|MEM~295_combout\,
	combout => \MEM|MEM~298_combout\);

-- Location: LCFF_X46_Y7_N17
\MEM|dataOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~298_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(0));

-- Location: LCCOMB_X46_Y7_N6
\INSTREG|imm_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|imm_out\(0) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\MEM|dataOut\(0)))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\INSTREG|imm_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTREG|imm_out\(0),
	datac => \MEM|dataOut\(0),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|imm_out\(0));

-- Location: LCCOMB_X47_Y5_N22
\ALUCOMP|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux26~2_combout\ = (\INSTREG|imm_out\(0) & \CONTROLU|ALUop[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(0),
	datad => \CONTROLU|ALUop[1]~0_combout\,
	combout => \ALUCOMP|Mux26~2_combout\);

-- Location: LCCOMB_X49_Y6_N30
\ALUCOMP|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux29~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~8_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux29~0_combout\);

-- Location: LCFF_X49_Y6_N1
\PROGCOUNT|addr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux29~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(2));

-- Location: LCCOMB_X45_Y6_N12
\MUXPC|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[2]~2_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(2)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \PROGCOUNT|addr_out\(2),
	datad => \regALU|dt_out\(2),
	combout => \MUXPC|salida[2]~2_combout\);

-- Location: LCCOMB_X45_Y6_N22
\MEM|MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~312_combout\ = (\MUXPC|salida[0]~0_combout\ & (!\MUXPC|salida[2]~2_combout\ & (!\MEM|MEM~148_regout\ & \MUXPC|salida[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[0]~0_combout\,
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~148_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~312_combout\);

-- Location: LCFF_X45_Y6_N23
\MEM|dataOut[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~312_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(29));

-- Location: LCCOMB_X47_Y6_N14
\INSTREG|op_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \INSTREG|op_out\(3) = (GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & ((\MEM|dataOut\(29)))) # (!GLOBAL(\CONTROLU|ALUsrcB[0]~0clkctrl_outclk\) & (\INSTREG|op_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|op_out\(3),
	datac => \MEM|dataOut\(29),
	datad => \CONTROLU|ALUsrcB[0]~0clkctrl_outclk\,
	combout => \INSTREG|op_out\(3));

-- Location: LCCOMB_X47_Y6_N0
\CONTROLU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|Equal0~0_combout\ = (!\NEWST|CS\(1) & (\NEWST|CS\(0) & !\NEWST|CS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y6_N6
\CONTROLU|nxt_st[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~3_combout\ = (\INSTREG|op_out\(3) & (\INSTREG|r1_out\(0) & !\CONTROLU|Equal0~0_combout\)) # (!\INSTREG|op_out\(3) & (!\INSTREG|r1_out\(0) & \CONTROLU|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|op_out\(3),
	datac => \INSTREG|r1_out\(0),
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \CONTROLU|nxt_st[2]~3_combout\);

-- Location: LCCOMB_X47_Y6_N28
\CONTROLU|nxt_st[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(2) = (GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & ((\CONTROLU|nxt_st[2]~3_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st[1]~0clkctrl_outclk\,
	datac => \CONTROLU|nxt_st\(2),
	datad => \CONTROLU|nxt_st[2]~3_combout\,
	combout => \CONTROLU|nxt_st\(2));

-- Location: LCCOMB_X47_Y6_N12
\CONTROLU|NextSt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt~4_combout\ = (\NEWST|CS\(0) & (!\NEWST|CS\(2) & ((\NEWST|CS\(1)) # (\CONTROLU|nxt_st\(2))))) # (!\NEWST|CS\(0) & (\NEWST|CS\(1) & ((\NEWST|CS\(2)) # (\CONTROLU|nxt_st\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(2),
	datad => \CONTROLU|nxt_st\(2),
	combout => \CONTROLU|NextSt~4_combout\);

-- Location: LCFF_X47_Y6_N13
\NEWST|CS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt~4_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(2));

-- Location: LCCOMB_X47_Y6_N2
\CONTROLU|nxt_st[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[1]~2_combout\ = (\INSTREG|op_out\(3) & (\INSTREG|r1_out\(0) & \CONTROLU|Equal0~0_combout\)) # (!\INSTREG|op_out\(3) & ((\INSTREG|r1_out\(0)) # (\CONTROLU|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|op_out\(3),
	datac => \INSTREG|r1_out\(0),
	datad => \CONTROLU|Equal0~0_combout\,
	combout => \CONTROLU|nxt_st[1]~2_combout\);

-- Location: LCCOMB_X47_Y6_N10
\CONTROLU|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(1) = (GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & ((\CONTROLU|nxt_st[1]~2_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|nxt_st[1]~0clkctrl_outclk\,
	datac => \CONTROLU|nxt_st\(1),
	datad => \CONTROLU|nxt_st[1]~2_combout\,
	combout => \CONTROLU|nxt_st\(1));

-- Location: LCCOMB_X47_Y6_N22
\CONTROLU|NextSt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~2_combout\ = (\NEWST|CS\(2) & (\NEWST|CS\(1) & (!\NEWST|CS\(0)))) # (!\NEWST|CS\(2) & (\CONTROLU|nxt_st\(1) & (\NEWST|CS\(1) $ (\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(2),
	datac => \NEWST|CS\(0),
	datad => \CONTROLU|nxt_st\(1),
	combout => \CONTROLU|NextSt[1]~2_combout\);

-- Location: LCCOMB_X47_Y6_N24
\CONTROLU|NextSt[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[1]~3_combout\ = (\CONTROLU|MemRd~0_combout\ & \CONTROLU|NextSt[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemRd~0_combout\,
	datad => \CONTROLU|NextSt[1]~2_combout\,
	combout => \CONTROLU|NextSt[1]~3_combout\);

-- Location: LCFF_X47_Y6_N25
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X47_Y6_N30
\CONTROLU|ALUsrcB[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|ALUsrcB[0]~0_combout\ = (!\NEWST|CS\(2) & (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & !\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \CONTROLU|ALUsrcB[0]~0_combout\);

-- Location: LCCOMB_X48_Y6_N28
\CONTROLU|nxt_st[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st[2]~1_combout\ = (\INSTREG|r1_out\(0) & ((\NEWST|CS\(1)) # ((\NEWST|CS\(2)) # (!\NEWST|CS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \INSTREG|r1_out\(0),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|nxt_st[2]~1_combout\);

-- Location: LCCOMB_X48_Y6_N10
\CONTROLU|nxt_st[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|nxt_st\(0) = (GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & ((\CONTROLU|nxt_st[2]~1_combout\))) # (!GLOBAL(\CONTROLU|nxt_st[1]~0clkctrl_outclk\) & (\CONTROLU|nxt_st\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|nxt_st\(0),
	datac => \CONTROLU|nxt_st[1]~0clkctrl_outclk\,
	datad => \CONTROLU|nxt_st[2]~1_combout\,
	combout => \CONTROLU|nxt_st\(0));

-- Location: LCCOMB_X48_Y6_N18
\CONTROLU|NextSt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~0_combout\ = (\NEWST|CS\(2) & (!\NEWST|CS\(0) & (\NEWST|CS\(1)))) # (!\NEWST|CS\(2) & (\CONTROLU|nxt_st\(0) & (\NEWST|CS\(0) $ (\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \CONTROLU|nxt_st\(0),
	combout => \CONTROLU|NextSt[0]~0_combout\);

-- Location: LCCOMB_X47_Y6_N4
\CONTROLU|NextSt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt[0]~1_combout\ = (\CONTROLU|ALUsrcB[0]~0_combout\) # ((\CONTROLU|MemRd~0_combout\ & \CONTROLU|NextSt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemRd~0_combout\,
	datab => \CONTROLU|ALUsrcB[0]~0_combout\,
	datad => \CONTROLU|NextSt[0]~0_combout\,
	combout => \CONTROLU|NextSt[0]~1_combout\);

-- Location: LCFF_X47_Y6_N5
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X49_Y6_N28
\CONTROLU|IorD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|IorD~0_combout\ = (\NEWST|CS\(0) & (!\rst~combout\ & (\NEWST|CS\(2) $ (\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(2),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \CONTROLU|IorD~0_combout\);

-- Location: LCFF_X48_Y6_N3
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux31~5_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X48_Y6_N0
\regA|dt_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \regA|dt_out[0]~0_combout\ = !\INSTREG|r1_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r1_out\(2),
	combout => \regA|dt_out[0]~0_combout\);

-- Location: LCFF_X48_Y6_N1
\regA|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regA|dt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|dt_out\(0));

-- Location: LCCOMB_X48_Y6_N16
\MUXA|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~0_combout\ = (\CONTROLU|ALUsrcA~0_combout\ & ((\regA|dt_out\(0)))) # (!\CONTROLU|ALUsrcA~0_combout\ & (\PROGCOUNT|addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(0),
	datac => \regA|dt_out\(0),
	datad => \CONTROLU|ALUsrcA~0_combout\,
	combout => \MUXA|salida[0]~0_combout\);

-- Location: LCCOMB_X45_Y6_N18
\ALUCOMP|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~6_combout\ = (\MUXA|salida[0]~0_combout\) # ((\CONTROLU|ALUop[1]~0_combout\ & \INSTREG|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|ALUop[1]~0_combout\,
	datac => \INSTREG|func_out\(1),
	datad => \MUXA|salida[0]~0_combout\,
	combout => \ALUCOMP|Mux31~6_combout\);

-- Location: LCCOMB_X49_Y6_N4
\ALUCOMP|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~4_combout\ = (\ALUCOMP|Mux28~0_combout\ & (\MUXB|Mux31~0_combout\ & ((\ALUCOMP|Mux31~6_combout\)))) # (!\ALUCOMP|Mux28~0_combout\ & (\ALUCOMP|Mux26~2_combout\ & ((\MUXB|Mux31~0_combout\) # (\ALUCOMP|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \MUXB|Mux31~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|Mux31~6_combout\,
	combout => \ALUCOMP|Mux31~4_combout\);

-- Location: LCCOMB_X48_Y6_N20
\ALUCOMP|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux31~5_combout\ = (\ALUCOMP|Mux28~0_combout\ & (((!\ALUCOMP|Mux31~4_combout\)))) # (!\ALUCOMP|Mux28~0_combout\ & ((\ALUCOMP|Mux31~4_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux31~4_combout\ & (\ALUCOMP|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~3_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux31~4_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux31~5_combout\);

-- Location: LCFF_X48_Y6_N21
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCCOMB_X45_Y6_N4
\MUXPC|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[0]~0_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(0))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \regALU|dt_out\(0),
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MUXPC|salida[0]~0_combout\);

-- Location: LCCOMB_X49_Y6_N14
\ALUCOMP|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux28~1_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~10_combout\,
	datab => \ALUCOMP|Mux26~2_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux28~1_combout\);

-- Location: LCFF_X49_Y6_N15
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: LCFF_X49_Y6_N9
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux28~1_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X49_Y6_N0
\MUXPC|salida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[3]~3_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(3))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(3),
	datab => \PROGCOUNT|addr_out\(3),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[3]~3_combout\);

-- Location: LCCOMB_X48_Y6_N8
\ALUCOMP|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux27~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~12_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux27~0_combout\);

-- Location: LCFF_X48_Y6_N9
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCFF_X48_Y6_N27
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux27~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X49_Y6_N2
\MUXPC|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[4]~4_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(4))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|IorD~0_combout\,
	datac => \regALU|dt_out\(4),
	datad => \PROGCOUNT|addr_out\(4),
	combout => \MUXPC|salida[4]~4_combout\);

-- Location: LCFF_X47_Y5_N5
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux26~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCCOMB_X49_Y5_N8
\MUXPC|salida[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[5]~5_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(5)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \PROGCOUNT|addr_out\(5),
	datad => \regALU|dt_out\(5),
	combout => \MUXPC|salida[5]~5_combout\);

-- Location: LCCOMB_X48_Y6_N24
\ALUCOMP|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux25~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~17_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux25~0_combout\);

-- Location: LCFF_X48_Y6_N7
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux25~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(6));

-- Location: LCFF_X48_Y6_N25
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCCOMB_X49_Y6_N12
\MUXPC|salida[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[6]~6_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(6)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(6),
	datad => \regALU|dt_out\(6),
	combout => \MUXPC|salida[6]~6_combout\);

-- Location: LCFF_X46_Y4_N9
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux24~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCCOMB_X45_Y4_N8
\MUXPC|salida[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[7]~7_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(7)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(7),
	datac => \regALU|dt_out\(7),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[7]~7_combout\);

-- Location: LCCOMB_X47_Y4_N2
\ALUCOMP|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux23~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~21_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux23~0_combout\);

-- Location: LCFF_X47_Y4_N17
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux23~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(8));

-- Location: LCFF_X47_Y4_N3
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: LCCOMB_X45_Y4_N30
\MUXPC|salida[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[8]~8_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(8)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(8),
	datab => \regALU|dt_out\(8),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[8]~8_combout\);

-- Location: LCCOMB_X46_Y4_N18
\ALUCOMP|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux22~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Add0~23_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux22~0_combout\);

-- Location: LCFF_X46_Y4_N13
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux22~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCFF_X46_Y4_N19
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux22~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(9));

-- Location: LCCOMB_X45_Y4_N24
\MUXPC|salida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[9]~9_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(9))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(9),
	datac => \PROGCOUNT|addr_out\(9),
	combout => \MUXPC|salida[9]~9_combout\);

-- Location: LCCOMB_X49_Y5_N28
\ALUCOMP|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux21~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Add0~25_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux21~0_combout\);

-- Location: LCCOMB_X49_Y5_N2
\regALU|dt_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regALU|dt_out[10]~feeder_combout\ = \ALUCOMP|Mux21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUCOMP|Mux21~0_combout\,
	combout => \regALU|dt_out[10]~feeder_combout\);

-- Location: LCFF_X49_Y5_N3
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regALU|dt_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCFF_X49_Y5_N9
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux21~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X49_Y5_N12
\MUXPC|salida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[10]~10_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(10))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(10),
	datad => \PROGCOUNT|addr_out\(10),
	combout => \MUXPC|salida[10]~10_combout\);

-- Location: LCFF_X47_Y4_N15
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCCOMB_X47_Y7_N24
\MUXPC|salida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[11]~11_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(11))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \regALU|dt_out\(11),
	datad => \PROGCOUNT|addr_out\(11),
	combout => \MUXPC|salida[11]~11_combout\);

-- Location: LCCOMB_X49_Y5_N30
\ALUCOMP|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux19~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~29_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux19~0_combout\);

-- Location: LCFF_X49_Y5_N19
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: LCFF_X49_Y5_N13
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux19~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X49_Y5_N24
\MUXPC|salida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[12]~12_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(12))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(12),
	datad => \PROGCOUNT|addr_out\(12),
	combout => \MUXPC|salida[12]~12_combout\);

-- Location: LCCOMB_X49_Y5_N16
\ALUCOMP|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux18~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~31_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux18~0_combout\);

-- Location: LCFF_X49_Y5_N25
\PROGCOUNT|addr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux18~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(13));

-- Location: LCFF_X49_Y5_N27
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCCOMB_X49_Y5_N4
\MUXPC|salida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[13]~13_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(13)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(13),
	datab => \CONTROLU|IorD~0_combout\,
	datad => \regALU|dt_out\(13),
	combout => \MUXPC|salida[13]~13_combout\);

-- Location: LCFF_X47_Y7_N7
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: LCCOMB_X47_Y7_N10
\MUXPC|salida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[14]~14_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(14))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(14),
	datad => \PROGCOUNT|addr_out\(14),
	combout => \MUXPC|salida[14]~14_combout\);

-- Location: LCFF_X47_Y7_N29
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCCOMB_X47_Y7_N26
\MUXPC|salida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[15]~15_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(15))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(15),
	datad => \PROGCOUNT|addr_out\(15),
	combout => \MUXPC|salida[15]~15_combout\);

-- Location: LCCOMB_X47_Y7_N20
\ALUCOMP|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux15~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~37_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux15~0_combout\);

-- Location: LCFF_X47_Y7_N5
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCFF_X47_Y7_N27
\PROGCOUNT|addr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux15~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(16));

-- Location: LCCOMB_X47_Y7_N28
\MUXPC|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[16]~16_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(16))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(16),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \MUXPC|salida[16]~16_combout\);

-- Location: LCCOMB_X49_Y4_N20
\ALUCOMP|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux14~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~39_combout\,
	combout => \ALUCOMP|Mux14~0_combout\);

-- Location: LCFF_X49_Y4_N11
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux14~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(17));

-- Location: LCFF_X49_Y4_N21
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCCOMB_X49_Y4_N10
\MUXPC|salida[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[17]~17_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(17)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(17),
	datad => \regALU|dt_out\(17),
	combout => \MUXPC|salida[17]~17_combout\);

-- Location: LCCOMB_X49_Y4_N24
\ALUCOMP|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux13~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~41_combout\,
	combout => \ALUCOMP|Mux13~0_combout\);

-- Location: LCFF_X49_Y4_N3
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux13~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(18));

-- Location: LCFF_X49_Y4_N25
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCCOMB_X49_Y4_N2
\MUXPC|salida[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[18]~18_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(18)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(18),
	datad => \regALU|dt_out\(18),
	combout => \MUXPC|salida[18]~18_combout\);

-- Location: LCFF_X49_Y4_N17
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCCOMB_X49_Y7_N28
\MUXPC|salida[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[19]~19_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(19)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \PROGCOUNT|addr_out\(19),
	datac => \regALU|dt_out\(19),
	combout => \MUXPC|salida[19]~19_combout\);

-- Location: LCFF_X47_Y4_N11
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCCOMB_X49_Y6_N18
\MUXPC|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[20]~20_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(20)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(20),
	datab => \CONTROLU|IorD~0_combout\,
	datac => \regALU|dt_out\(20),
	combout => \MUXPC|salida[20]~20_combout\);

-- Location: LCCOMB_X46_Y4_N24
\ALUCOMP|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux10~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~47_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux10~0_combout\);

-- Location: LCFF_X46_Y4_N25
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux10~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(21));

-- Location: LCFF_X46_Y4_N17
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCCOMB_X45_Y4_N14
\MUXPC|salida[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[21]~21_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(21)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(21),
	datab => \regALU|dt_out\(21),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[21]~21_combout\);

-- Location: LCCOMB_X49_Y5_N14
\ALUCOMP|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux9~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~49_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux9~0_combout\);

-- Location: LCFF_X49_Y5_N5
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux9~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(22));

-- Location: LCFF_X49_Y5_N7
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCCOMB_X49_Y5_N6
\MUXPC|salida[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[22]~22_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(22)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \PROGCOUNT|addr_out\(22),
	datac => \regALU|dt_out\(22),
	combout => \MUXPC|salida[22]~22_combout\);

-- Location: LCFF_X47_Y7_N31
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCCOMB_X47_Y7_N0
\MUXPC|salida[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[23]~23_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(23)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(23),
	datad => \regALU|dt_out\(23),
	combout => \MUXPC|salida[23]~23_combout\);

-- Location: LCFF_X46_Y4_N7
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCCOMB_X46_Y4_N28
\MUXPC|salida[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[24]~24_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(24))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(24),
	datad => \PROGCOUNT|addr_out\(24),
	combout => \MUXPC|salida[24]~24_combout\);

-- Location: LCFF_X49_Y4_N9
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCCOMB_X49_Y4_N14
\MUXPC|salida[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[25]~25_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(25)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(25),
	datad => \regALU|dt_out\(25),
	combout => \MUXPC|salida[25]~25_combout\);

-- Location: LCCOMB_X46_Y4_N30
\ALUCOMP|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux5~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Add0~57_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux5~0_combout\);

-- Location: LCFF_X46_Y4_N31
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux5~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(26));

-- Location: LCFF_X46_Y4_N1
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCCOMB_X45_Y4_N20
\MUXPC|salida[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[26]~26_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(26)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datac => \PROGCOUNT|addr_out\(26),
	datad => \regALU|dt_out\(26),
	combout => \MUXPC|salida[26]~26_combout\);

-- Location: LCCOMB_X46_Y4_N8
\ALUCOMP|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~59_combout\ = ((\MUXA|salida[27]~5_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~58\)))) # (GND)
-- \ALUCOMP|Add0~60\ = CARRY((\MUXA|salida[27]~5_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~58\))) # (!\MUXA|salida[27]~5_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[27]~5_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~58\,
	combout => \ALUCOMP|Add0~59_combout\,
	cout => \ALUCOMP|Add0~60\);

-- Location: LCCOMB_X46_Y4_N20
\ALUCOMP|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux4~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux28~0_combout\,
	datab => \ALUCOMP|Add0~59_combout\,
	datac => \ALUCOMP|Mux26~2_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux4~0_combout\);

-- Location: LCFF_X46_Y4_N21
\PROGCOUNT|addr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux4~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(27));

-- Location: LCFF_X46_Y4_N15
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCCOMB_X45_Y4_N2
\MUXPC|salida[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[27]~27_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(27)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(27),
	datac => \regALU|dt_out\(27),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[27]~27_combout\);

-- Location: LCCOMB_X46_Y4_N10
\ALUCOMP|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~61_combout\ = (\MUXA|salida[28]~4_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~60\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~60\)))) # (!\MUXA|salida[28]~4_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~60\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~60\) # (GND)))))
-- \ALUCOMP|Add0~62\ = CARRY((\MUXA|salida[28]~4_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~60\)) # (!\MUXA|salida[28]~4_combout\ & ((!\ALUCOMP|Add0~60\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[28]~4_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~60\,
	combout => \ALUCOMP|Add0~61_combout\,
	cout => \ALUCOMP|Add0~62\);

-- Location: LCCOMB_X47_Y4_N30
\ALUCOMP|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux3~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|LessThan0~62_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|Add0~61_combout\,
	combout => \ALUCOMP|Mux3~0_combout\);

-- Location: LCFF_X48_Y4_N25
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCFF_X47_Y4_N31
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux3~0_combout\,
	aclr => \rst~combout\,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X49_Y4_N26
\MUXPC|salida[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[28]~28_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(28))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(28),
	datad => \PROGCOUNT|addr_out\(28),
	combout => \MUXPC|salida[28]~28_combout\);

-- Location: LCCOMB_X46_Y4_N12
\ALUCOMP|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~63_combout\ = ((\MUXA|salida[29]~3_combout\ $ (\ALUCONTRL|op~0_combout\ $ (!\ALUCOMP|Add0~62\)))) # (GND)
-- \ALUCOMP|Add0~64\ = CARRY((\MUXA|salida[29]~3_combout\ & ((\ALUCONTRL|op~0_combout\) # (!\ALUCOMP|Add0~62\))) # (!\MUXA|salida[29]~3_combout\ & (\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[29]~3_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~62\,
	combout => \ALUCOMP|Add0~63_combout\,
	cout => \ALUCOMP|Add0~64\);

-- Location: LCCOMB_X46_Y4_N26
\ALUCOMP|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux2~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|LessThan0~62_combout\))) # (!\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|Add0~63_combout\,
	datad => \ALUCOMP|LessThan0~62_combout\,
	combout => \ALUCOMP|Mux2~0_combout\);

-- Location: LCFF_X46_Y4_N3
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCFF_X46_Y4_N29
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux2~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X45_Y4_N28
\MUXPC|salida[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[29]~29_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(29))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(29),
	datab => \PROGCOUNT|addr_out\(29),
	datad => \CONTROLU|IorD~0_combout\,
	combout => \MUXPC|salida[29]~29_combout\);

-- Location: LCCOMB_X46_Y4_N14
\ALUCOMP|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~65_combout\ = (\MUXA|salida[30]~2_combout\ & ((\ALUCONTRL|op~0_combout\ & (\ALUCOMP|Add0~64\ & VCC)) # (!\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~64\)))) # (!\MUXA|salida[30]~2_combout\ & ((\ALUCONTRL|op~0_combout\ & (!\ALUCOMP|Add0~64\)) 
-- # (!\ALUCONTRL|op~0_combout\ & ((\ALUCOMP|Add0~64\) # (GND)))))
-- \ALUCOMP|Add0~66\ = CARRY((\MUXA|salida[30]~2_combout\ & (!\ALUCONTRL|op~0_combout\ & !\ALUCOMP|Add0~64\)) # (!\MUXA|salida[30]~2_combout\ & ((!\ALUCOMP|Add0~64\) # (!\ALUCONTRL|op~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~2_combout\,
	datab => \ALUCONTRL|op~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~64\,
	combout => \ALUCOMP|Add0~65_combout\,
	cout => \ALUCOMP|Add0~66\);

-- Location: LCCOMB_X47_Y4_N20
\ALUCOMP|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux1~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|LessThan0~62_combout\,
	datac => \ALUCOMP|Mux28~0_combout\,
	datad => \ALUCOMP|Add0~65_combout\,
	combout => \ALUCOMP|Mux1~0_combout\);

-- Location: LCFF_X47_Y4_N21
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCFF_X47_Y4_N7
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux1~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(30));

-- Location: LCCOMB_X45_Y4_N18
\MUXPC|salida[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[30]~30_combout\ = (\CONTROLU|IorD~0_combout\ & (\regALU|dt_out\(30))) # (!\CONTROLU|IorD~0_combout\ & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \regALU|dt_out\(30),
	datad => \PROGCOUNT|addr_out\(30),
	combout => \MUXPC|salida[30]~30_combout\);

-- Location: LCCOMB_X49_Y4_N30
\MUXA|salida[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~1_combout\ = (\PROGCOUNT|addr_out\(31) & (((\rst~combout\) # (\NEWST|CS\(0))) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(31),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[31]~1_combout\);

-- Location: LCCOMB_X46_Y4_N16
\ALUCOMP|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~67_combout\ = \MUXA|salida[31]~1_combout\ $ (\ALUCOMP|Add0~66\ $ (!\ALUCONTRL|op~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXA|salida[31]~1_combout\,
	datad => \ALUCONTRL|op~0_combout\,
	cin => \ALUCOMP|Add0~66\,
	combout => \ALUCOMP|Add0~67_combout\);

-- Location: LCCOMB_X49_Y4_N4
\ALUCOMP|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Mux0~0_combout\ = (\ALUCOMP|Mux28~0_combout\) # ((\ALUCOMP|Mux26~2_combout\ & (\ALUCOMP|LessThan0~62_combout\)) # (!\ALUCOMP|Mux26~2_combout\ & ((\ALUCOMP|Add0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCOMP|Mux26~2_combout\,
	datab => \ALUCOMP|Mux28~0_combout\,
	datac => \ALUCOMP|LessThan0~62_combout\,
	datad => \ALUCOMP|Add0~67_combout\,
	combout => \ALUCOMP|Mux0~0_combout\);

-- Location: LCFF_X49_Y4_N31
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ALUCOMP|Mux0~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \CONTROLU|ALUsrcB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGCOUNT|addr_out\(31));

-- Location: LCFF_X49_Y4_N5
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: LCCOMB_X49_Y7_N14
\MUXPC|salida[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|salida[31]~31_combout\ = (\CONTROLU|IorD~0_combout\ & ((\regALU|dt_out\(31)))) # (!\CONTROLU|IorD~0_combout\ & (\PROGCOUNT|addr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|IorD~0_combout\,
	datab => \PROGCOUNT|addr_out\(31),
	datad => \regALU|dt_out\(31),
	combout => \MUXPC|salida[31]~31_combout\);

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

-- Location: LCFF_X44_Y6_N17
\MEM|MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~101_regout\);

-- Location: LCFF_X45_Y6_N29
\MEM|MEM~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~133_regout\);

-- Location: LCCOMB_X45_Y6_N28
\MEM|MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~302_combout\ = (\MEM|MEM~301_combout\ & (((\MEM|MEM~133_regout\) # (!\MUXPC|salida[1]~1_combout\)))) # (!\MEM|MEM~301_combout\ & (\MEM|MEM~101_regout\ & ((\MUXPC|salida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~301_combout\,
	datab => \MEM|MEM~101_regout\,
	datac => \MEM|MEM~133_regout\,
	datad => \MUXPC|salida[1]~1_combout\,
	combout => \MEM|MEM~302_combout\);

-- Location: LCFF_X45_Y7_N1
\MEM|MEM~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~197_regout\);

-- Location: LCFF_X44_Y7_N13
\MEM|MEM~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~229_regout\);

-- Location: LCFF_X44_Y7_N15
\MEM|MEM~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \regB|dt_out\(1),
	sload => VCC,
	ena => \MEM|MEM~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|MEM~165_regout\);

-- Location: LCCOMB_X44_Y7_N14
\MEM|MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~299_combout\ = (\MUXPC|salida[1]~1_combout\ & ((\MEM|MEM~229_regout\) # ((\MUXPC|salida[0]~0_combout\)))) # (!\MUXPC|salida[1]~1_combout\ & (((\MEM|MEM~165_regout\ & !\MUXPC|salida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|salida[1]~1_combout\,
	datab => \MEM|MEM~229_regout\,
	datac => \MEM|MEM~165_regout\,
	datad => \MUXPC|salida[0]~0_combout\,
	combout => \MEM|MEM~299_combout\);

-- Location: LCCOMB_X45_Y7_N0
\MEM|MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~300_combout\ = (\MUXPC|salida[0]~0_combout\ & ((\MEM|MEM~299_combout\ & (\MEM|MEM~261_regout\)) # (!\MEM|MEM~299_combout\ & ((\MEM|MEM~197_regout\))))) # (!\MUXPC|salida[0]~0_combout\ & (((\MEM|MEM~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|MEM~261_regout\,
	datab => \MUXPC|salida[0]~0_combout\,
	datac => \MEM|MEM~197_regout\,
	datad => \MEM|MEM~299_combout\,
	combout => \MEM|MEM~300_combout\);

-- Location: LCCOMB_X45_Y6_N14
\MEM|MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM|MEM~303_combout\ = (\MUXPC|salida[2]~2_combout\ & ((\MEM|MEM~300_combout\))) # (!\MUXPC|salida[2]~2_combout\ & (\MEM|MEM~302_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|salida[2]~2_combout\,
	datac => \MEM|MEM~302_combout\,
	datad => \MEM|MEM~300_combout\,
	combout => \MEM|MEM~303_combout\);

-- Location: LCFF_X45_Y6_N15
\MEM|dataOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM|MEM~303_combout\,
	ena => \CONTROLU|MemRd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM|dataOut\(1));

-- Location: LCCOMB_X48_Y6_N26
\MUXA|salida[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~28_combout\ = (\PROGCOUNT|addr_out\(4) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(4),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[4]~28_combout\);

-- Location: LCCOMB_X48_Y6_N6
\MUXA|salida[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~26_combout\ = (\PROGCOUNT|addr_out\(6) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(6),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[6]~26_combout\);

-- Location: LCCOMB_X47_Y5_N8
\MUXA|salida[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~23_combout\ = (\PROGCOUNT|addr_out\(9) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \NEWST|CS\(1),
	datad => \PROGCOUNT|addr_out\(9),
	combout => \MUXA|salida[9]~23_combout\);

-- Location: LCCOMB_X47_Y5_N10
\MUXA|salida[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~22_combout\ = (\PROGCOUNT|addr_out\(10) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(10),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \MUXA|salida[10]~22_combout\);

-- Location: LCCOMB_X47_Y4_N8
\MUXA|salida[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~15_combout\ = (\PROGCOUNT|addr_out\(17) & (((\NEWST|CS\(0)) # (\rst~combout\)) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(17),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \rst~combout\,
	combout => \MUXA|salida[17]~15_combout\);

-- Location: LCCOMB_X47_Y4_N0
\MUXA|salida[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~11_combout\ = (\PROGCOUNT|addr_out\(21) & (((\rst~combout\) # (\NEWST|CS\(0))) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \rst~combout\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(21),
	combout => \MUXA|salida[21]~11_combout\);

-- Location: LCCOMB_X47_Y5_N16
\MUXA|salida[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~10_combout\ = (\PROGCOUNT|addr_out\(22) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(22),
	datac => \NEWST|CS\(1),
	datad => \rst~combout\,
	combout => \MUXA|salida[22]~10_combout\);

-- Location: LCCOMB_X47_Y7_N22
\MUXA|salida[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~5_combout\ = (\PROGCOUNT|addr_out\(27) & ((\rst~combout\) # ((\NEWST|CS\(0)) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(27),
	datab => \rst~combout\,
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[27]~5_combout\);

-- Location: LCCOMB_X49_Y4_N12
\MUXA|salida[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~4_combout\ = (\PROGCOUNT|addr_out\(28) & (((\rst~combout\) # (\NEWST|CS\(0))) # (!\NEWST|CS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(28),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[28]~4_combout\);

-- Location: LCCOMB_X47_Y4_N6
\MUXA|salida[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~2_combout\ = (\PROGCOUNT|addr_out\(30) & ((\NEWST|CS\(0)) # ((\rst~combout\) # (!\NEWST|CS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \rst~combout\,
	datac => \PROGCOUNT|addr_out\(30),
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[30]~2_combout\);

-- Location: LCCOMB_X47_Y7_N2
\CONTROLU|RegDst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegDst~0_combout\ = (!\rst~combout\ & (\NEWST|CS\(1) & (\NEWST|CS\(0) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|RegDst~0_combout\);

-- Location: LCCOMB_X46_Y7_N2
\MUXRegDst|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[0]~0_combout\ = (\CONTROLU|RegDst~0_combout\ & (\INSTREG|imm_out\(11))) # (!\CONTROLU|RegDst~0_combout\ & ((\INSTREG|r2_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTREG|imm_out\(11),
	datac => \INSTREG|r2_out\(0),
	datad => \CONTROLU|RegDst~0_combout\,
	combout => \MUXRegDst|salida[0]~0_combout\);

-- Location: LCCOMB_X46_Y7_N20
\MUXRegDst|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[1]~1_combout\ = (\INSTREG|r2_out\(1) & !\CONTROLU|RegDst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r2_out\(1),
	datad => \CONTROLU|RegDst~0_combout\,
	combout => \MUXRegDst|salida[1]~1_combout\);

-- Location: LCCOMB_X46_Y7_N28
\MUXRegDst|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXRegDst|salida[2]~2_combout\ = (\INSTREG|r2_out\(2) & !\CONTROLU|RegDst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTREG|r2_out\(2),
	datad => \CONTROLU|RegDst~0_combout\,
	combout => \MUXRegDst|salida[2]~2_combout\);

-- Location: LCFF_X49_Y7_N21
\MDR|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(0));

-- Location: LCCOMB_X48_Y7_N16
\CONTROLU|MemtoReg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|MemtoReg~0_combout\ = (!\rst~combout\ & (!\NEWST|CS\(0) & (!\NEWST|CS\(1) & \NEWST|CS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \NEWST|CS\(2),
	combout => \CONTROLU|MemtoReg~0_combout\);

-- Location: LCCOMB_X49_Y7_N20
\MUXMemReg|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[0]~0_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(0)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(0),
	datac => \MDR|dt_out\(0),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[0]~0_combout\);

-- Location: LCFF_X49_Y6_N11
\MDR|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(1));

-- Location: LCCOMB_X49_Y6_N10
\MUXMemReg|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[1]~1_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(1)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(1),
	datac => \MDR|dt_out\(1),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[1]~1_combout\);

-- Location: LCCOMB_X49_Y6_N20
\MUXMemReg|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[2]~2_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datad => \regALU|dt_out\(2),
	combout => \MUXMemReg|salida[2]~2_combout\);

-- Location: LCCOMB_X49_Y6_N26
\MUXMemReg|salida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[3]~3_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(3),
	combout => \MUXMemReg|salida[3]~3_combout\);

-- Location: LCCOMB_X49_Y6_N24
\MUXMemReg|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[4]~4_combout\ = (\regALU|dt_out\(4) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regALU|dt_out\(4),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[4]~4_combout\);

-- Location: LCFF_X45_Y4_N27
\MDR|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(5));

-- Location: LCCOMB_X45_Y4_N26
\MUXMemReg|salida[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[5]~5_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(5))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(5),
	datad => \regALU|dt_out\(5),
	combout => \MUXMemReg|salida[5]~5_combout\);

-- Location: LCCOMB_X49_Y6_N8
\MUXMemReg|salida[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[6]~6_combout\ = (\regALU|dt_out\(6) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(6),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[6]~6_combout\);

-- Location: LCCOMB_X45_Y4_N12
\MUXMemReg|salida[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[7]~7_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(7),
	combout => \MUXMemReg|salida[7]~7_combout\);

-- Location: LCCOMB_X45_Y4_N22
\MUXMemReg|salida[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[8]~8_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(8),
	combout => \MUXMemReg|salida[8]~8_combout\);

-- Location: LCCOMB_X45_Y4_N16
\MUXMemReg|salida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[9]~9_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datab => \regALU|dt_out\(9),
	combout => \MUXMemReg|salida[9]~9_combout\);

-- Location: LCCOMB_X49_Y5_N20
\MUXMemReg|salida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[10]~10_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLU|MemtoReg~0_combout\,
	datad => \regALU|dt_out\(10),
	combout => \MUXMemReg|salida[10]~10_combout\);

-- Location: LCCOMB_X44_Y4_N0
\MUXMemReg|salida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[11]~11_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(5)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(11),
	datac => \MDR|dt_out\(5),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[11]~11_combout\);

-- Location: LCCOMB_X49_Y5_N18
\MUXMemReg|salida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[12]~12_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(12),
	combout => \MUXMemReg|salida[12]~12_combout\);

-- Location: LCCOMB_X49_Y5_N26
\MUXMemReg|salida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[13]~13_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(13),
	combout => \MUXMemReg|salida[13]~13_combout\);

-- Location: LCCOMB_X47_Y7_N4
\MUXMemReg|salida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[14]~14_combout\ = (\regALU|dt_out\(14) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(14),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[14]~14_combout\);

-- Location: LCCOMB_X47_Y7_N8
\MUXMemReg|salida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[15]~15_combout\ = (\regALU|dt_out\(15) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(15),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[15]~15_combout\);

-- Location: LCFF_X46_Y7_N1
\MDR|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(16));

-- Location: LCCOMB_X46_Y7_N0
\MUXMemReg|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[16]~16_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(16)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regALU|dt_out\(16),
	datac => \MDR|dt_out\(16),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[16]~16_combout\);

-- Location: LCFF_X49_Y7_N23
\MDR|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(17));

-- Location: LCCOMB_X49_Y7_N22
\MUXMemReg|salida[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[17]~17_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(17))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(17),
	datad => \regALU|dt_out\(17),
	combout => \MUXMemReg|salida[17]~17_combout\);

-- Location: LCFF_X49_Y7_N1
\MDR|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(18));

-- Location: LCCOMB_X49_Y7_N0
\MUXMemReg|salida[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[18]~18_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(18))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(18),
	datad => \regALU|dt_out\(18),
	combout => \MUXMemReg|salida[18]~18_combout\);

-- Location: LCCOMB_X49_Y7_N30
\MUXMemReg|salida[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[19]~19_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(19),
	combout => \MUXMemReg|salida[19]~19_combout\);

-- Location: LCCOMB_X49_Y6_N22
\MUXMemReg|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[20]~20_combout\ = (\regALU|dt_out\(20) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regALU|dt_out\(20),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[20]~20_combout\);

-- Location: LCFF_X45_Y4_N17
\MDR|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(21));

-- Location: LCCOMB_X45_Y4_N6
\MUXMemReg|salida[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[21]~21_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(21))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(21),
	datad => \regALU|dt_out\(21),
	combout => \MUXMemReg|salida[21]~21_combout\);

-- Location: LCCOMB_X49_Y5_N22
\MUXMemReg|salida[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[22]~22_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(21))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(21),
	datad => \regALU|dt_out\(22),
	combout => \MUXMemReg|salida[22]~22_combout\);

-- Location: LCFF_X47_Y7_N19
\MDR|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(23));

-- Location: LCCOMB_X47_Y7_N18
\MUXMemReg|salida[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[23]~23_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(23)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(23),
	datac => \MDR|dt_out\(23),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[23]~23_combout\);

-- Location: LCCOMB_X49_Y7_N12
\MUXMemReg|salida[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[24]~24_combout\ = (\regALU|dt_out\(24) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regALU|dt_out\(24),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[24]~24_combout\);

-- Location: LCCOMB_X49_Y7_N6
\MUXMemReg|salida[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[25]~25_combout\ = (!\CONTROLU|MemtoReg~0_combout\ & \regALU|dt_out\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLU|MemtoReg~0_combout\,
	datac => \regALU|dt_out\(25),
	combout => \MUXMemReg|salida[25]~25_combout\);

-- Location: LCCOMB_X49_Y4_N0
\MUXMemReg|salida[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[26]~26_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(21)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(26),
	datac => \MDR|dt_out\(21),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[26]~26_combout\);

-- Location: LCCOMB_X45_Y4_N0
\MUXMemReg|salida[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[27]~27_combout\ = (\CONTROLU|MemtoReg~0_combout\ & ((\MDR|dt_out\(21)))) # (!\CONTROLU|MemtoReg~0_combout\ & (\regALU|dt_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datab => \regALU|dt_out\(27),
	datac => \MDR|dt_out\(21),
	combout => \MUXMemReg|salida[27]~27_combout\);

-- Location: LCCOMB_X49_Y4_N22
\MUXMemReg|salida[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[28]~28_combout\ = (\regALU|dt_out\(28) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regALU|dt_out\(28),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[28]~28_combout\);

-- Location: LCFF_X45_Y4_N11
\MDR|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM|dataOut\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|dt_out\(29));

-- Location: LCCOMB_X45_Y4_N10
\MUXMemReg|salida[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[29]~29_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(29))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLU|MemtoReg~0_combout\,
	datac => \MDR|dt_out\(29),
	datad => \regALU|dt_out\(29),
	combout => \MUXMemReg|salida[29]~29_combout\);

-- Location: LCCOMB_X44_Y4_N18
\MUXMemReg|salida[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[30]~30_combout\ = (\regALU|dt_out\(30) & !\CONTROLU|MemtoReg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regALU|dt_out\(30),
	datad => \CONTROLU|MemtoReg~0_combout\,
	combout => \MUXMemReg|salida[30]~30_combout\);

-- Location: LCCOMB_X49_Y7_N8
\MUXMemReg|salida[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXMemReg|salida[31]~31_combout\ = (\CONTROLU|MemtoReg~0_combout\ & (\MDR|dt_out\(21))) # (!\CONTROLU|MemtoReg~0_combout\ & ((\regALU|dt_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dt_out\(21),
	datab => \CONTROLU|MemtoReg~0_combout\,
	datad => \regALU|dt_out\(31),
	combout => \MUXMemReg|salida[31]~31_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(0));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(1));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(2));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(4));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(5));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(6));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(7));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(8));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(9));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(10));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(11));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(12));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(13));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(14));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(15));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(16));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(17));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(18));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(19));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(20));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(21));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(22));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(23));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(24));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(25));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(26));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(27));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(28));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(29));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(30));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCMUX[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXPC|salida[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCMUX(31));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(1));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(4));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(5));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(7));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(8));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(9));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(10));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(11));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(12));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(13));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(14));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(15));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(16));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(17));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(18));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(19));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(20));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(21));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(22));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(23));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(24));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(25));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(26));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(27));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(28));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(29));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ActDir(30));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ActDir[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM|dataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ActDir(31));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AREG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r1_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AREG(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AREG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r1_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AREG(1));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AREG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r1_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AREG(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AREG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_AREG(3));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AREG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_AREG(4));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BREG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r2_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BREG(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BREG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r2_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BREG(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BREG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INSTREG|r2_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BREG(2));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BREG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_BREG(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BREG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_BREG(4));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(1));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(4));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux26~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(5));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(7));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(8));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(9));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(10));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALOUT(11));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(12));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(13));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(14));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(15));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(16));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(17));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(18));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(19));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(20));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(21));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(22));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(23));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(24));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(25));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(26));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(27));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(28));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(29));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(30));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALOUT[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUCOMP|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALOUT(31));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(0));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(1));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(2));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(3));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(5));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(6));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(7));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(8));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(9));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(10));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(11));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(12));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(13));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(14));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(15));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(16));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(17));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(18));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(19));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(20));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(21));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(22));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(23));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(24));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(25));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(26));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(27));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(28));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(29));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(30));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUA[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXA|salida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUA(31));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXB|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUB(0));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXB|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUB(1));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(4));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXB|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUB(5));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(6));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(8));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(9));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(10));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUXB|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUB(11));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(12));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(13));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(14));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(15));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(16));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(17));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(18));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(19));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(20));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(21));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(22));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(23));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(24));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(25));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(26));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(27));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(28));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(29));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(30));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUB[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUB(31));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXRegDst|salida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(2));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(0));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(2));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[3]~3_combout\,
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
	datain => \MUXMemReg|salida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(4));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(5));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(6));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[7]~7_combout\,
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
	datain => \MUXMemReg|salida[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(8));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(9));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(10));

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(11));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(12));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(13));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(14));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[15]~15_combout\,
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
	datain => \MUXMemReg|salida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(16));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(17));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(18));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(19));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(20));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(21));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(22));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(23));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(24));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[25]~25_combout\,
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
	datain => \MUXMemReg|salida[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(26));

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(27));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(28));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(29));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(30));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MUXMemReg|salida[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrData(31));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(1));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(2));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(3));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux26~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(5));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(7));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(8));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(9));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(10));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(11));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(12));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(13));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(14));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(15));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(16));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(17));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(18));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(19));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(20));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(21));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(22));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(23));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(24));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(25));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(26));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(27));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(28));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(29));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(30));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(31));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \NEWST|CS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sts(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


