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

-- DATE "11/07/2018 10:44:31"

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
-- Res[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[1]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[3]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[6]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[7]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[8]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[10]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[11]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[12]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[13]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[14]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[15]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[16]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[17]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[18]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[19]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[20]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[21]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[22]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[23]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[24]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[25]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[26]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[27]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[28]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[29]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[30]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Res[31]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[2]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[3]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrReg[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[1]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[6]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[9]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[10]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[11]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[12]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[13]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[14]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[15]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[16]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[17]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[18]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[19]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[20]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[21]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[22]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[23]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[24]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[25]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[26]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[27]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[28]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[29]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[30]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrData[31]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[2]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[6]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[8]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[9]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[10]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[11]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[12]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[14]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[15]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[16]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[17]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[18]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[19]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[20]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[21]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[22]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[23]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[24]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[25]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[26]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[27]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[28]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[29]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[30]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextIns[31]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sts[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[4]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[7]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[8]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[9]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[10]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[11]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[12]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[13]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[14]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[15]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[16]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[17]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[18]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[19]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[20]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[21]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[22]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[23]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[24]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[25]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[26]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[27]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[28]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[29]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemDir[30]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|RegWr~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \MUXA|salida[1]~1_combout\ : std_logic;
SIGNAL \MUXB|Mux29~0_combout\ : std_logic;
SIGNAL \MUXA|salida[3]~3_combout\ : std_logic;
SIGNAL \MUXB|Mux27~0_combout\ : std_logic;
SIGNAL \MUXA|salida[5]~5_combout\ : std_logic;
SIGNAL \MUXB|Mux25~0_combout\ : std_logic;
SIGNAL \MUXB|Mux24~0_combout\ : std_logic;
SIGNAL \MUXB|Mux23~0_combout\ : std_logic;
SIGNAL \MUXB|Mux22~0_combout\ : std_logic;
SIGNAL \MUXA|salida[10]~10_combout\ : std_logic;
SIGNAL \MUXB|Mux20~0_combout\ : std_logic;
SIGNAL \MUXA|salida[12]~12_combout\ : std_logic;
SIGNAL \MUXB|Mux18~0_combout\ : std_logic;
SIGNAL \MUXB|Mux17~0_combout\ : std_logic;
SIGNAL \MUXA|salida[15]~15_combout\ : std_logic;
SIGNAL \MUXA|salida[16]~16_combout\ : std_logic;
SIGNAL \MUXA|salida[17]~17_combout\ : std_logic;
SIGNAL \MUXA|salida[19]~19_combout\ : std_logic;
SIGNAL \MUXA|salida[20]~20_combout\ : std_logic;
SIGNAL \MUXA|salida[21]~21_combout\ : std_logic;
SIGNAL \MUXB|Mux9~0_combout\ : std_logic;
SIGNAL \MUXB|Mux8~0_combout\ : std_logic;
SIGNAL \MUXB|Mux7~0_combout\ : std_logic;
SIGNAL \MUXA|salida[25]~25_combout\ : std_logic;
SIGNAL \MUXA|salida[26]~26_combout\ : std_logic;
SIGNAL \MUXA|salida[27]~27_combout\ : std_logic;
SIGNAL \MUXA|salida[28]~28_combout\ : std_logic;
SIGNAL \MUXA|salida[29]~29_combout\ : std_logic;
SIGNAL \MUXA|salida[30]~30_combout\ : std_logic;
SIGNAL \NEWST|CS[0]~0_combout\ : std_logic;
SIGNAL \CONTROLU|RegWr~0_combout\ : std_logic;
SIGNAL \CONTROLU|RegWr~0clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLU|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \MUXA|salida[2]~2_combout\ : std_logic;
SIGNAL \MUXA|salida[8]~8_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~5\ : std_logic;
SIGNAL \ALUCOMP|Add0~7\ : std_logic;
SIGNAL \ALUCOMP|Add0~9\ : std_logic;
SIGNAL \ALUCOMP|Add0~11\ : std_logic;
SIGNAL \ALUCOMP|Add0~13\ : std_logic;
SIGNAL \ALUCOMP|Add0~15\ : std_logic;
SIGNAL \ALUCOMP|Add0~16_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \MUXB|Mux14~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~17\ : std_logic;
SIGNAL \ALUCOMP|Add0~19\ : std_logic;
SIGNAL \ALUCOMP|Add0~21\ : std_logic;
SIGNAL \ALUCOMP|Add0~23\ : std_logic;
SIGNAL \ALUCOMP|Add0~25\ : std_logic;
SIGNAL \ALUCOMP|Add0~27\ : std_logic;
SIGNAL \ALUCOMP|Add0~29\ : std_logic;
SIGNAL \ALUCOMP|Add0~31\ : std_logic;
SIGNAL \ALUCOMP|Add0~33\ : std_logic;
SIGNAL \ALUCOMP|Add0~34_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \MUXB|Mux15~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~32_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \MUXB|Mux16~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~30_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \MUXA|salida[14]~14_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~28_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \MUXA|salida[13]~13_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~26_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \MUXB|Mux19~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~24_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \MUXA|salida[11]~11_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~22_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \MUXB|Mux21~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~20_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \MUXA|salida[9]~9_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~18_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \MUXA|salida[7]~7_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~14_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \MUXA|salida[6]~6_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~12_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \MUXB|Mux26~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~10_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \MUXA|salida[4]~4_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~8_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \MUXB|Mux28~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~6_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MUXA|salida[0]~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~1\ : std_logic;
SIGNAL \ALUCOMP|Add0~3\ : std_logic;
SIGNAL \ALUCOMP|Add0~4_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \MUXB|Mux30~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~2_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \MUXB|Mux31~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MUXB|Mux0~0_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MUXA|salida[31]~31_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \MUXA|salida[18]~18_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~35\ : std_logic;
SIGNAL \ALUCOMP|Add0~37\ : std_logic;
SIGNAL \ALUCOMP|Add0~39\ : std_logic;
SIGNAL \ALUCOMP|Add0~41\ : std_logic;
SIGNAL \ALUCOMP|Add0~43\ : std_logic;
SIGNAL \ALUCOMP|Add0~45\ : std_logic;
SIGNAL \ALUCOMP|Add0~47\ : std_logic;
SIGNAL \ALUCOMP|Add0~49\ : std_logic;
SIGNAL \ALUCOMP|Add0~51\ : std_logic;
SIGNAL \ALUCOMP|Add0~53\ : std_logic;
SIGNAL \ALUCOMP|Add0~55\ : std_logic;
SIGNAL \ALUCOMP|Add0~57\ : std_logic;
SIGNAL \ALUCOMP|Add0~59\ : std_logic;
SIGNAL \ALUCOMP|Add0~61\ : std_logic;
SIGNAL \ALUCOMP|Add0~62_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \MUXB|Mux1~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~60_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \MUXB|Mux2~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~58_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \MUXB|Mux3~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~56_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \MUXB|Mux4~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~54_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \MUXB|Mux5~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~52_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \MUXB|Mux6~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~50_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \MUXA|salida[24]~24_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~48_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \MUXA|salida[23]~23_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~46_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \MUXA|salida[22]~22_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~44_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \MUXB|Mux10~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~42_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \MUXB|Mux11~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~40_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \MUXB|Mux12~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~38_combout\ : std_logic;
SIGNAL \REGFILE|MEM_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \MUXB|Mux13~0_combout\ : std_logic;
SIGNAL \ALUCOMP|Add0~36_combout\ : std_logic;
SIGNAL \PROGCOUNT|addr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MemDir~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \NEWST|CS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLU|NextSt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regALU|dt_out\ : std_logic_vector(31 DOWNTO 0);

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

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\regALU|dt_out\(17) & \regALU|dt_out\(16) & \regALU|dt_out\(15) & \regALU|dt_out\(14) & \regALU|dt_out\(13) & \regALU|dt_out\(12) & \regALU|dt_out\(11) & \regALU|dt_out\(10) & 
\regALU|dt_out\(9) & \regALU|dt_out\(8) & \regALU|dt_out\(7) & \regALU|dt_out\(6) & \regALU|dt_out\(5) & \regALU|dt_out\(4) & \regALU|dt_out\(3) & \regALU|dt_out\(2) & \regALU|dt_out\(1) & \regALU|dt_out\(0) & \regALU|dt_out\(17) & 
\regALU|dt_out\(16) & \regALU|dt_out\(15) & \regALU|dt_out\(14) & \regALU|dt_out\(13) & \regALU|dt_out\(12) & \regALU|dt_out\(11) & \regALU|dt_out\(10) & \regALU|dt_out\(9) & \regALU|dt_out\(8) & \regALU|dt_out\(7) & \regALU|dt_out\(6) & 
\regALU|dt_out\(5) & \regALU|dt_out\(4) & \regALU|dt_out\(3) & \regALU|dt_out\(2) & \regALU|dt_out\(1) & \regALU|dt_out\(0));

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \~GND~combout\;

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a1\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a2\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a3\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a4\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a5\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a6\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a7\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a8\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a9\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a10\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a11\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a12\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a13\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a14\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a15\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a16\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a17\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a0\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a1\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a2\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a3\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a4\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a5\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a6\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a7\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a8\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a9\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a10\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a11\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a12\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a13\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a14\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(32);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a15\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(33);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a16\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(34);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a17\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(35);

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\regALU|dt_out\(31) & \regALU|dt_out\(30) & \regALU|dt_out\(29) & \regALU|dt_out\(28) & \regALU|dt_out\(27) & \regALU|dt_out\(26) & \regALU|dt_out\(25) & \regALU|dt_out\(24) & 
\regALU|dt_out\(23) & \regALU|dt_out\(22) & \regALU|dt_out\(21) & \regALU|dt_out\(20) & \regALU|dt_out\(19) & \regALU|dt_out\(18) & \regALU|dt_out\(31) & \regALU|dt_out\(30) & \regALU|dt_out\(29) & \regALU|dt_out\(28) & \regALU|dt_out\(27) & 
\regALU|dt_out\(26) & \regALU|dt_out\(25) & \regALU|dt_out\(24) & \regALU|dt_out\(23) & \regALU|dt_out\(22) & \regALU|dt_out\(21) & \regALU|dt_out\(20) & \regALU|dt_out\(19) & \regALU|dt_out\(18));

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\(0) <= \~GND~combout\;

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\(0) <= \~GND~combout\;

\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a19\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a20\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a21\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a22\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a23\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a24\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a25\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a26\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a27\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a28\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a29\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a30\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a31\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a18\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(14);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a19\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(15);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a20\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(16);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a21\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(17);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a22\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(18);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a23\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(19);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a24\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(20);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a25\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(21);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a26\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(22);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a27\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(23);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a28\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(24);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a29\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(25);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a30\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(26);
\REGFILE|MEM_rtl_1|auto_generated|ram_block1a31\ <= \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(27);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\CONTROLU|Equal0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|Equal0~0_combout\);

\CONTROLU|RegWr~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLU|RegWr~0_combout\);

-- Location: M4K_X17_Y22
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "registerFile:REGFILE|altsyncram:MEM_rtl_0|altsyncram_2rc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 1,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \CONTROLU|RegWr~0clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	portadatain => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y21
\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "registerFile:REGFILE|altsyncram:MEM_rtl_0|altsyncram_2rc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 28,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 1,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 28,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \CONTROLU|RegWr~0clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	portadatain => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y22_N2
\MUXA|salida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[1]~1_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(1)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a1\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a1\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(1),
	combout => \MUXA|salida[1]~1_combout\);

-- Location: LCCOMB_X18_Y22_N30
\MUXB|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux29~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a2\,
	combout => \MUXB|Mux29~0_combout\);

-- Location: LCCOMB_X16_Y22_N26
\MUXA|salida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[3]~3_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(3)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a3\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a3\,
	datac => \PROGCOUNT|addr_out\(3),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[3]~3_combout\);

-- Location: LCCOMB_X18_Y22_N18
\MUXB|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux27~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a4\,
	combout => \MUXB|Mux27~0_combout\);

-- Location: LCCOMB_X16_Y22_N18
\MUXA|salida[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[5]~5_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(5)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a5\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a5\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(5),
	combout => \MUXA|salida[5]~5_combout\);

-- Location: LCCOMB_X18_Y22_N22
\MUXB|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux25~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a6\,
	combout => \MUXB|Mux25~0_combout\);

-- Location: LCCOMB_X18_Y22_N8
\MUXB|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux24~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a7\,
	combout => \MUXB|Mux24~0_combout\);

-- Location: LCCOMB_X18_Y22_N26
\MUXB|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux23~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a8\,
	combout => \MUXB|Mux23~0_combout\);

-- Location: LCCOMB_X18_Y22_N6
\MUXB|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux22~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a9\,
	combout => \MUXB|Mux22~0_combout\);

-- Location: LCCOMB_X14_Y22_N2
\MUXA|salida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[10]~10_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(10))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a10\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(10),
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a10\,
	combout => \MUXA|salida[10]~10_combout\);

-- Location: LCCOMB_X18_Y22_N24
\MUXB|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux20~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a11\,
	combout => \MUXB|Mux20~0_combout\);

-- Location: LCCOMB_X14_Y22_N0
\MUXA|salida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[12]~12_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(12))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a12\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a12\,
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[12]~12_combout\);

-- Location: LCCOMB_X18_Y22_N20
\MUXB|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux18~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a13\,
	combout => \MUXB|Mux18~0_combout\);

-- Location: LCCOMB_X18_Y22_N4
\MUXB|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux17~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a14\,
	combout => \MUXB|Mux17~0_combout\);

-- Location: LCCOMB_X14_Y22_N30
\MUXA|salida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[15]~15_combout\ = (\NEWST|CS\(0) & (((\PROGCOUNT|addr_out\(15))))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a15\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(15),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a15\,
	combout => \MUXA|salida[15]~15_combout\);

-- Location: LCCOMB_X16_Y21_N16
\MUXA|salida[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[16]~16_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(16)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a16\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a16\,
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(16),
	combout => \MUXA|salida[16]~16_combout\);

-- Location: LCCOMB_X16_Y21_N4
\MUXA|salida[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[17]~17_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(17)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a17\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a17\,
	datab => \NEWST|CS\(1),
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(17),
	combout => \MUXA|salida[17]~17_combout\);

-- Location: LCCOMB_X14_Y21_N0
\MUXA|salida[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[19]~19_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(19))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a19\))))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(19),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a19\,
	combout => \MUXA|salida[19]~19_combout\);

-- Location: LCCOMB_X16_Y21_N6
\MUXA|salida[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[20]~20_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(20)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a20\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a20\,
	datad => \PROGCOUNT|addr_out\(20),
	combout => \MUXA|salida[20]~20_combout\);

-- Location: LCCOMB_X14_Y21_N30
\MUXA|salida[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[21]~21_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(21)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a21\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a21\,
	datad => \PROGCOUNT|addr_out\(21),
	combout => \MUXA|salida[21]~21_combout\);

-- Location: LCCOMB_X18_Y21_N16
\MUXB|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux9~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a22\,
	combout => \MUXB|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\MUXB|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux8~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a23\,
	combout => \MUXB|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y21_N26
\MUXB|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux7~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a24\,
	combout => \MUXB|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y21_N2
\MUXA|salida[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[25]~25_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(25))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a25\))))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a25\,
	combout => \MUXA|salida[25]~25_combout\);

-- Location: LCCOMB_X14_Y21_N20
\MUXA|salida[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[26]~26_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(26))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a26\))))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(26),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a26\,
	combout => \MUXA|salida[26]~26_combout\);

-- Location: LCCOMB_X18_Y21_N12
\MUXA|salida[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[27]~27_combout\ = (\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(27))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a27\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(27),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a27\,
	datad => \NEWST|CS\(1),
	combout => \MUXA|salida[27]~27_combout\);

-- Location: LCCOMB_X18_Y21_N24
\MUXA|salida[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[28]~28_combout\ = (\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(28))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a28\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \PROGCOUNT|addr_out\(28),
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a28\,
	combout => \MUXA|salida[28]~28_combout\);

-- Location: LCCOMB_X18_Y21_N6
\MUXA|salida[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[29]~29_combout\ = (\NEWST|CS\(0) & (((\PROGCOUNT|addr_out\(29))))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a29\)) # (!\NEWST|CS\(1) & ((\PROGCOUNT|addr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a29\,
	datad => \PROGCOUNT|addr_out\(29),
	combout => \MUXA|salida[29]~29_combout\);

-- Location: LCCOMB_X18_Y21_N22
\MUXA|salida[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[30]~30_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(30))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a30\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(30),
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a30\,
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[30]~30_combout\);

-- Location: LCCOMB_X16_Y22_N6
\PROGCOUNT|addr_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(1) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(1)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(1),
	datac => \MemDir~combout\(1),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(1));

-- Location: LCCOMB_X16_Y22_N24
\PROGCOUNT|addr_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(3) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(3))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(3),
	datac => \PROGCOUNT|addr_out\(3),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(3));

-- Location: LCCOMB_X16_Y22_N16
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

-- Location: LCCOMB_X14_Y22_N6
\PROGCOUNT|addr_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(7) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(7))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(7),
	datac => \PROGCOUNT|addr_out\(7),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(7));

-- Location: LCCOMB_X14_Y22_N24
\PROGCOUNT|addr_out[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(10) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(10))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(10),
	datac => \PROGCOUNT|addr_out\(10),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(10));

-- Location: LCCOMB_X14_Y22_N10
\PROGCOUNT|addr_out[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(12) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(12)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(12),
	datac => \MemDir~combout\(12),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(12));

-- Location: LCCOMB_X14_Y22_N14
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

-- Location: LCCOMB_X16_Y21_N0
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

-- Location: LCCOMB_X16_Y21_N26
\PROGCOUNT|addr_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(17) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(17)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(17),
	datac => \MemDir~combout\(17),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(17));

-- Location: LCCOMB_X14_Y21_N16
\PROGCOUNT|addr_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(19) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(19))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(19),
	datac => \PROGCOUNT|addr_out\(19),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(19));

-- Location: LCCOMB_X16_Y21_N22
\PROGCOUNT|addr_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(20) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(20))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(20),
	datab => \PROGCOUNT|addr_out\(20),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(20));

-- Location: LCCOMB_X14_Y21_N10
\PROGCOUNT|addr_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(21) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(21)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(21),
	datac => \MemDir~combout\(21),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(21));

-- Location: LCCOMB_X14_Y21_N6
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

-- Location: LCCOMB_X14_Y21_N12
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

-- Location: LCCOMB_X14_Y21_N14
\PROGCOUNT|addr_out[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(25) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(25))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(25),
	datac => \PROGCOUNT|addr_out\(25),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(25));

-- Location: LCCOMB_X14_Y21_N24
\PROGCOUNT|addr_out[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(26) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(26))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(26),
	datac => \PROGCOUNT|addr_out\(26),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(26));

-- Location: LCCOMB_X18_Y21_N14
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

-- Location: LCCOMB_X18_Y21_N0
\PROGCOUNT|addr_out[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(28) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(28)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(28),
	datac => \MemDir~combout\(28),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(28));

-- Location: LCCOMB_X18_Y21_N18
\PROGCOUNT|addr_out[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(29) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(29)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(29),
	datac => \MemDir~combout\(29),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(29));

-- Location: LCCOMB_X18_Y21_N20
\PROGCOUNT|addr_out[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(30) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(30))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(30),
	datac => \PROGCOUNT|addr_out\(30),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(30));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y22_N12
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

-- Location: LCFF_X16_Y22_N9
\NEWST|CS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \NEWST|CS[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(0));

-- Location: LCCOMB_X18_Y22_N0
\CONTROLU|NextSt[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|NextSt\(1) = \NEWST|CS\(0) $ (\NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	combout => \CONTROLU|NextSt\(1));

-- Location: LCFF_X18_Y22_N1
\NEWST|CS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \CONTROLU|NextSt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEWST|CS\(1));

-- Location: LCCOMB_X23_Y22_N4
\CONTROLU|RegWr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLU|RegWr~0_combout\ = (\NEWST|CS\(0) & \NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(0),
	datad => \NEWST|CS\(1),
	combout => \CONTROLU|RegWr~0_combout\);

-- Location: CLKCTRL_G10
\CONTROLU|RegWr~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLU|RegWr~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLU|RegWr~0clkctrl_outclk\);

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

-- Location: LCFF_X15_Y22_N1
\regALU|dt_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(0));

-- Location: LCCOMB_X18_Y21_N10
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y22_N0
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

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X16_Y22_N14
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

-- Location: LCCOMB_X16_Y22_N28
\MUXA|salida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[2]~2_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(2)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a2\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a2\,
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(2),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[2]~2_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y22_N20
\PROGCOUNT|addr_out[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(8) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(8))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(8),
	datac => \PROGCOUNT|addr_out\(8),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(8));

-- Location: LCCOMB_X14_Y22_N22
\MUXA|salida[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[8]~8_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(8)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a8\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a8\,
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(8),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[8]~8_combout\);

-- Location: LCCOMB_X15_Y22_N4
\ALUCOMP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~4_combout\ = ((\MUXB|Mux29~0_combout\ $ (\MUXA|salida[2]~2_combout\ $ (!\ALUCOMP|Add0~3\)))) # (GND)
-- \ALUCOMP|Add0~5\ = CARRY((\MUXB|Mux29~0_combout\ & ((\MUXA|salida[2]~2_combout\) # (!\ALUCOMP|Add0~3\))) # (!\MUXB|Mux29~0_combout\ & (\MUXA|salida[2]~2_combout\ & !\ALUCOMP|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux29~0_combout\,
	datab => \MUXA|salida[2]~2_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~3\,
	combout => \ALUCOMP|Add0~4_combout\,
	cout => \ALUCOMP|Add0~5\);

-- Location: LCCOMB_X15_Y22_N6
\ALUCOMP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~6_combout\ = (\MUXA|salida[3]~3_combout\ & ((\MUXB|Mux28~0_combout\ & (\ALUCOMP|Add0~5\ & VCC)) # (!\MUXB|Mux28~0_combout\ & (!\ALUCOMP|Add0~5\)))) # (!\MUXA|salida[3]~3_combout\ & ((\MUXB|Mux28~0_combout\ & (!\ALUCOMP|Add0~5\)) # 
-- (!\MUXB|Mux28~0_combout\ & ((\ALUCOMP|Add0~5\) # (GND)))))
-- \ALUCOMP|Add0~7\ = CARRY((\MUXA|salida[3]~3_combout\ & (!\MUXB|Mux28~0_combout\ & !\ALUCOMP|Add0~5\)) # (!\MUXA|salida[3]~3_combout\ & ((!\ALUCOMP|Add0~5\) # (!\MUXB|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[3]~3_combout\,
	datab => \MUXB|Mux28~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~5\,
	combout => \ALUCOMP|Add0~6_combout\,
	cout => \ALUCOMP|Add0~7\);

-- Location: LCCOMB_X15_Y22_N8
\ALUCOMP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~8_combout\ = ((\MUXB|Mux27~0_combout\ $ (\MUXA|salida[4]~4_combout\ $ (!\ALUCOMP|Add0~7\)))) # (GND)
-- \ALUCOMP|Add0~9\ = CARRY((\MUXB|Mux27~0_combout\ & ((\MUXA|salida[4]~4_combout\) # (!\ALUCOMP|Add0~7\))) # (!\MUXB|Mux27~0_combout\ & (\MUXA|salida[4]~4_combout\ & !\ALUCOMP|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux27~0_combout\,
	datab => \MUXA|salida[4]~4_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~7\,
	combout => \ALUCOMP|Add0~8_combout\,
	cout => \ALUCOMP|Add0~9\);

-- Location: LCCOMB_X15_Y22_N10
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

-- Location: LCCOMB_X15_Y22_N12
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

-- Location: LCCOMB_X15_Y22_N14
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

-- Location: LCCOMB_X15_Y22_N16
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

-- Location: LCFF_X15_Y22_N17
\regALU|dt_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(8));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y22_N26
\PROGCOUNT|addr_out[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(9) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(9)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGCOUNT|addr_out\(9),
	datac => \MemDir~combout\(9),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y22_N8
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

-- Location: LCCOMB_X16_Y21_N10
\MUXB|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux14~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a17\,
	combout => \MUXB|Mux14~0_combout\);

-- Location: LCCOMB_X15_Y22_N18
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

-- Location: LCCOMB_X15_Y22_N20
\ALUCOMP|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~20_combout\ = ((\MUXA|salida[10]~10_combout\ $ (\MUXB|Mux21~0_combout\ $ (!\ALUCOMP|Add0~19\)))) # (GND)
-- \ALUCOMP|Add0~21\ = CARRY((\MUXA|salida[10]~10_combout\ & ((\MUXB|Mux21~0_combout\) # (!\ALUCOMP|Add0~19\))) # (!\MUXA|salida[10]~10_combout\ & (\MUXB|Mux21~0_combout\ & !\ALUCOMP|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[10]~10_combout\,
	datab => \MUXB|Mux21~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~19\,
	combout => \ALUCOMP|Add0~20_combout\,
	cout => \ALUCOMP|Add0~21\);

-- Location: LCCOMB_X15_Y22_N22
\ALUCOMP|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~22_combout\ = (\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~11_combout\ & (\ALUCOMP|Add0~21\ & VCC)) # (!\MUXA|salida[11]~11_combout\ & (!\ALUCOMP|Add0~21\)))) # (!\MUXB|Mux20~0_combout\ & ((\MUXA|salida[11]~11_combout\ & 
-- (!\ALUCOMP|Add0~21\)) # (!\MUXA|salida[11]~11_combout\ & ((\ALUCOMP|Add0~21\) # (GND)))))
-- \ALUCOMP|Add0~23\ = CARRY((\MUXB|Mux20~0_combout\ & (!\MUXA|salida[11]~11_combout\ & !\ALUCOMP|Add0~21\)) # (!\MUXB|Mux20~0_combout\ & ((!\ALUCOMP|Add0~21\) # (!\MUXA|salida[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux20~0_combout\,
	datab => \MUXA|salida[11]~11_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~21\,
	combout => \ALUCOMP|Add0~22_combout\,
	cout => \ALUCOMP|Add0~23\);

-- Location: LCCOMB_X15_Y22_N24
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

-- Location: LCCOMB_X15_Y22_N26
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

-- Location: LCCOMB_X15_Y22_N28
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

-- Location: LCCOMB_X15_Y22_N30
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

-- Location: LCCOMB_X15_Y21_N0
\ALUCOMP|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~32_combout\ = ((\MUXA|salida[16]~16_combout\ $ (\MUXB|Mux15~0_combout\ $ (!\ALUCOMP|Add0~31\)))) # (GND)
-- \ALUCOMP|Add0~33\ = CARRY((\MUXA|salida[16]~16_combout\ & ((\MUXB|Mux15~0_combout\) # (!\ALUCOMP|Add0~31\))) # (!\MUXA|salida[16]~16_combout\ & (\MUXB|Mux15~0_combout\ & !\ALUCOMP|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[16]~16_combout\,
	datab => \MUXB|Mux15~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~31\,
	combout => \ALUCOMP|Add0~32_combout\,
	cout => \ALUCOMP|Add0~33\);

-- Location: LCCOMB_X15_Y21_N2
\ALUCOMP|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~34_combout\ = (\MUXA|salida[17]~17_combout\ & ((\MUXB|Mux14~0_combout\ & (\ALUCOMP|Add0~33\ & VCC)) # (!\MUXB|Mux14~0_combout\ & (!\ALUCOMP|Add0~33\)))) # (!\MUXA|salida[17]~17_combout\ & ((\MUXB|Mux14~0_combout\ & (!\ALUCOMP|Add0~33\)) # 
-- (!\MUXB|Mux14~0_combout\ & ((\ALUCOMP|Add0~33\) # (GND)))))
-- \ALUCOMP|Add0~35\ = CARRY((\MUXA|salida[17]~17_combout\ & (!\MUXB|Mux14~0_combout\ & !\ALUCOMP|Add0~33\)) # (!\MUXA|salida[17]~17_combout\ & ((!\ALUCOMP|Add0~33\) # (!\MUXB|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[17]~17_combout\,
	datab => \MUXB|Mux14~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~33\,
	combout => \ALUCOMP|Add0~34_combout\,
	cout => \ALUCOMP|Add0~35\);

-- Location: LCFF_X15_Y21_N3
\regALU|dt_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(17));

-- Location: LCCOMB_X18_Y22_N16
\MUXB|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux15~0_combout\ = (\REGFILE|MEM_rtl_1|auto_generated|ram_block1a16\ & \NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a16\,
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux15~0_combout\);

-- Location: LCFF_X15_Y21_N1
\regALU|dt_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(16));

-- Location: LCCOMB_X14_Y22_N16
\MUXB|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux16~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a15\,
	combout => \MUXB|Mux16~0_combout\);

-- Location: LCFF_X15_Y22_N31
\regALU|dt_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(15));

-- Location: LCCOMB_X14_Y22_N18
\MUXA|salida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[14]~14_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(14))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a14\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \PROGCOUNT|addr_out\(14),
	datac => \NEWST|CS\(0),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a14\,
	combout => \MUXA|salida[14]~14_combout\);

-- Location: LCFF_X15_Y22_N29
\regALU|dt_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(14));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y23_N20
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

-- Location: LCCOMB_X16_Y23_N28
\MUXA|salida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[13]~13_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(13)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a13\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a13\,
	datac => \PROGCOUNT|addr_out\(13),
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[13]~13_combout\);

-- Location: LCFF_X15_Y22_N27
\regALU|dt_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(13));

-- Location: LCCOMB_X18_Y22_N28
\MUXB|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux19~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a12\,
	combout => \MUXB|Mux19~0_combout\);

-- Location: LCFF_X15_Y22_N25
\regALU|dt_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(12));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y23_N14
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

-- Location: LCCOMB_X16_Y22_N12
\MUXA|salida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[11]~11_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(11)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a11\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a11\,
	datad => \PROGCOUNT|addr_out\(11),
	combout => \MUXA|salida[11]~11_combout\);

-- Location: LCFF_X15_Y22_N23
\regALU|dt_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(11));

-- Location: LCCOMB_X18_Y22_N12
\MUXB|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux21~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a10\,
	combout => \MUXB|Mux21~0_combout\);

-- Location: LCFF_X15_Y22_N21
\regALU|dt_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(10));

-- Location: LCCOMB_X14_Y22_N4
\MUXA|salida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[9]~9_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(9))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a9\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \PROGCOUNT|addr_out\(9),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a9\,
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[9]~9_combout\);

-- Location: LCFF_X15_Y22_N19
\regALU|dt_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(9));

-- Location: LCCOMB_X14_Y22_N28
\MUXA|salida[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[7]~7_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(7))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a7\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(7),
	datab => \NEWST|CS\(1),
	datac => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a7\,
	datad => \NEWST|CS\(0),
	combout => \MUXA|salida[7]~7_combout\);

-- Location: LCFF_X15_Y22_N15
\regALU|dt_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(7));

-- Location: LCCOMB_X16_Y22_N8
\PROGCOUNT|addr_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(6) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(6))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(6),
	datab => \PROGCOUNT|addr_out\(6),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(6));

-- Location: LCCOMB_X16_Y22_N22
\MUXA|salida[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[6]~6_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(6)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a6\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a6\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(6),
	combout => \MUXA|salida[6]~6_combout\);

-- Location: LCFF_X15_Y22_N13
\regALU|dt_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(6));

-- Location: LCCOMB_X18_Y22_N14
\MUXB|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux26~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a5\,
	combout => \MUXB|Mux26~0_combout\);

-- Location: LCFF_X15_Y22_N11
\regALU|dt_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(5));

-- Location: LCCOMB_X16_Y22_N20
\PROGCOUNT|addr_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(4) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(4))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(4),
	datab => \PROGCOUNT|addr_out\(4),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(4));

-- Location: LCCOMB_X16_Y22_N0
\MUXA|salida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[4]~4_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(4)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a4\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a4\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(4),
	combout => \MUXA|salida[4]~4_combout\);

-- Location: LCFF_X15_Y22_N9
\regALU|dt_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(4));

-- Location: LCCOMB_X18_Y22_N2
\MUXB|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux28~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a3\,
	combout => \MUXB|Mux28~0_combout\);

-- Location: LCFF_X15_Y22_N7
\regALU|dt_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y22_N10
\PROGCOUNT|addr_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(0) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\MemDir~combout\(0)))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\PROGCOUNT|addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(0),
	datac => \MemDir~combout\(0),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(0));

-- Location: LCCOMB_X16_Y22_N30
\MUXA|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[0]~0_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & ((\PROGCOUNT|addr_out\(0)))) # (!\NEWST|CS\(0) & (\REGFILE|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \NEWST|CS\(0),
	datad => \PROGCOUNT|addr_out\(0),
	combout => \MUXA|salida[0]~0_combout\);

-- Location: LCCOMB_X15_Y22_N0
\ALUCOMP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~0_combout\ = (\MUXB|Mux31~0_combout\ & (\MUXA|salida[0]~0_combout\ $ (VCC))) # (!\MUXB|Mux31~0_combout\ & (\MUXA|salida[0]~0_combout\ & VCC))
-- \ALUCOMP|Add0~1\ = CARRY((\MUXB|Mux31~0_combout\ & \MUXA|salida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux31~0_combout\,
	datab => \MUXA|salida[0]~0_combout\,
	datad => VCC,
	combout => \ALUCOMP|Add0~0_combout\,
	cout => \ALUCOMP|Add0~1\);

-- Location: LCCOMB_X15_Y22_N2
\ALUCOMP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~2_combout\ = (\MUXA|salida[1]~1_combout\ & ((\MUXB|Mux30~0_combout\ & (\ALUCOMP|Add0~1\ & VCC)) # (!\MUXB|Mux30~0_combout\ & (!\ALUCOMP|Add0~1\)))) # (!\MUXA|salida[1]~1_combout\ & ((\MUXB|Mux30~0_combout\ & (!\ALUCOMP|Add0~1\)) # 
-- (!\MUXB|Mux30~0_combout\ & ((\ALUCOMP|Add0~1\) # (GND)))))
-- \ALUCOMP|Add0~3\ = CARRY((\MUXA|salida[1]~1_combout\ & (!\MUXB|Mux30~0_combout\ & !\ALUCOMP|Add0~1\)) # (!\MUXA|salida[1]~1_combout\ & ((!\ALUCOMP|Add0~1\) # (!\MUXB|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[1]~1_combout\,
	datab => \MUXB|Mux30~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~1\,
	combout => \ALUCOMP|Add0~2_combout\,
	cout => \ALUCOMP|Add0~3\);

-- Location: LCFF_X15_Y22_N5
\regALU|dt_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(2));

-- Location: LCCOMB_X18_Y22_N10
\MUXB|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux30~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a1\,
	combout => \MUXB|Mux30~0_combout\);

-- Location: LCFF_X15_Y22_N3
\regALU|dt_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(1));

-- Location: LCCOMB_X16_Y22_N4
\MUXB|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux31~0_combout\ = (\NEWST|CS\(1) & (\REGFILE|MEM_rtl_1|auto_generated|ram_block1a0\)) # (!\NEWST|CS\(1) & ((!\NEWST|CS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a0\,
	datac => \NEWST|CS\(0),
	combout => \MUXB|Mux31~0_combout\);

-- Location: LCFF_X15_Y21_N5
\regALU|dt_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(18));

-- Location: LCCOMB_X14_Y21_N8
\PROGCOUNT|addr_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(22) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(22))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDir~combout\(22),
	datac => \PROGCOUNT|addr_out\(22),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(22));

-- Location: LCCOMB_X14_Y21_N18
\MUXB|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux0~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a31\,
	combout => \MUXB|Mux0~0_combout\);

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

-- Location: LCCOMB_X19_Y21_N16
\PROGCOUNT|addr_out[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(31) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(31))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(31),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(31));

-- Location: LCCOMB_X18_Y21_N28
\MUXA|salida[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[31]~31_combout\ = (\NEWST|CS\(0) & (((\PROGCOUNT|addr_out\(31))))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a31\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(0),
	datab => \NEWST|CS\(1),
	datac => \PROGCOUNT|addr_out\(31),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a31\,
	combout => \MUXA|salida[31]~31_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y21_N20
\PROGCOUNT|addr_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGCOUNT|addr_out\(18) = (GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & (\MemDir~combout\(18))) # (!GLOBAL(\CONTROLU|Equal0~0clkctrl_outclk\) & ((\PROGCOUNT|addr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDir~combout\(18),
	datac => \PROGCOUNT|addr_out\(18),
	datad => \CONTROLU|Equal0~0clkctrl_outclk\,
	combout => \PROGCOUNT|addr_out\(18));

-- Location: LCCOMB_X16_Y21_N24
\MUXA|salida[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[18]~18_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(18))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a18~portbdataout\))))) # (!\NEWST|CS\(1) & (((\PROGCOUNT|addr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \NEWST|CS\(0),
	datac => \PROGCOUNT|addr_out\(18),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \MUXA|salida[18]~18_combout\);

-- Location: LCCOMB_X15_Y21_N4
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

-- Location: LCCOMB_X15_Y21_N6
\ALUCOMP|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~38_combout\ = (\MUXA|salida[19]~19_combout\ & ((\MUXB|Mux12~0_combout\ & (\ALUCOMP|Add0~37\ & VCC)) # (!\MUXB|Mux12~0_combout\ & (!\ALUCOMP|Add0~37\)))) # (!\MUXA|salida[19]~19_combout\ & ((\MUXB|Mux12~0_combout\ & (!\ALUCOMP|Add0~37\)) # 
-- (!\MUXB|Mux12~0_combout\ & ((\ALUCOMP|Add0~37\) # (GND)))))
-- \ALUCOMP|Add0~39\ = CARRY((\MUXA|salida[19]~19_combout\ & (!\MUXB|Mux12~0_combout\ & !\ALUCOMP|Add0~37\)) # (!\MUXA|salida[19]~19_combout\ & ((!\ALUCOMP|Add0~37\) # (!\MUXB|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[19]~19_combout\,
	datab => \MUXB|Mux12~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~37\,
	combout => \ALUCOMP|Add0~38_combout\,
	cout => \ALUCOMP|Add0~39\);

-- Location: LCCOMB_X15_Y21_N8
\ALUCOMP|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~40_combout\ = ((\MUXA|salida[20]~20_combout\ $ (\MUXB|Mux11~0_combout\ $ (!\ALUCOMP|Add0~39\)))) # (GND)
-- \ALUCOMP|Add0~41\ = CARRY((\MUXA|salida[20]~20_combout\ & ((\MUXB|Mux11~0_combout\) # (!\ALUCOMP|Add0~39\))) # (!\MUXA|salida[20]~20_combout\ & (\MUXB|Mux11~0_combout\ & !\ALUCOMP|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[20]~20_combout\,
	datab => \MUXB|Mux11~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~39\,
	combout => \ALUCOMP|Add0~40_combout\,
	cout => \ALUCOMP|Add0~41\);

-- Location: LCCOMB_X15_Y21_N10
\ALUCOMP|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~42_combout\ = (\MUXA|salida[21]~21_combout\ & ((\MUXB|Mux10~0_combout\ & (\ALUCOMP|Add0~41\ & VCC)) # (!\MUXB|Mux10~0_combout\ & (!\ALUCOMP|Add0~41\)))) # (!\MUXA|salida[21]~21_combout\ & ((\MUXB|Mux10~0_combout\ & (!\ALUCOMP|Add0~41\)) # 
-- (!\MUXB|Mux10~0_combout\ & ((\ALUCOMP|Add0~41\) # (GND)))))
-- \ALUCOMP|Add0~43\ = CARRY((\MUXA|salida[21]~21_combout\ & (!\MUXB|Mux10~0_combout\ & !\ALUCOMP|Add0~41\)) # (!\MUXA|salida[21]~21_combout\ & ((!\ALUCOMP|Add0~41\) # (!\MUXB|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[21]~21_combout\,
	datab => \MUXB|Mux10~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~41\,
	combout => \ALUCOMP|Add0~42_combout\,
	cout => \ALUCOMP|Add0~43\);

-- Location: LCCOMB_X15_Y21_N12
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

-- Location: LCCOMB_X15_Y21_N14
\ALUCOMP|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~46_combout\ = (\MUXB|Mux8~0_combout\ & ((\MUXA|salida[23]~23_combout\ & (\ALUCOMP|Add0~45\ & VCC)) # (!\MUXA|salida[23]~23_combout\ & (!\ALUCOMP|Add0~45\)))) # (!\MUXB|Mux8~0_combout\ & ((\MUXA|salida[23]~23_combout\ & (!\ALUCOMP|Add0~45\)) 
-- # (!\MUXA|salida[23]~23_combout\ & ((\ALUCOMP|Add0~45\) # (GND)))))
-- \ALUCOMP|Add0~47\ = CARRY((\MUXB|Mux8~0_combout\ & (!\MUXA|salida[23]~23_combout\ & !\ALUCOMP|Add0~45\)) # (!\MUXB|Mux8~0_combout\ & ((!\ALUCOMP|Add0~45\) # (!\MUXA|salida[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux8~0_combout\,
	datab => \MUXA|salida[23]~23_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~45\,
	combout => \ALUCOMP|Add0~46_combout\,
	cout => \ALUCOMP|Add0~47\);

-- Location: LCCOMB_X15_Y21_N16
\ALUCOMP|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~48_combout\ = ((\MUXB|Mux7~0_combout\ $ (\MUXA|salida[24]~24_combout\ $ (!\ALUCOMP|Add0~47\)))) # (GND)
-- \ALUCOMP|Add0~49\ = CARRY((\MUXB|Mux7~0_combout\ & ((\MUXA|salida[24]~24_combout\) # (!\ALUCOMP|Add0~47\))) # (!\MUXB|Mux7~0_combout\ & (\MUXA|salida[24]~24_combout\ & !\ALUCOMP|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXB|Mux7~0_combout\,
	datab => \MUXA|salida[24]~24_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~47\,
	combout => \ALUCOMP|Add0~48_combout\,
	cout => \ALUCOMP|Add0~49\);

-- Location: LCCOMB_X15_Y21_N18
\ALUCOMP|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~50_combout\ = (\MUXA|salida[25]~25_combout\ & ((\MUXB|Mux6~0_combout\ & (\ALUCOMP|Add0~49\ & VCC)) # (!\MUXB|Mux6~0_combout\ & (!\ALUCOMP|Add0~49\)))) # (!\MUXA|salida[25]~25_combout\ & ((\MUXB|Mux6~0_combout\ & (!\ALUCOMP|Add0~49\)) # 
-- (!\MUXB|Mux6~0_combout\ & ((\ALUCOMP|Add0~49\) # (GND)))))
-- \ALUCOMP|Add0~51\ = CARRY((\MUXA|salida[25]~25_combout\ & (!\MUXB|Mux6~0_combout\ & !\ALUCOMP|Add0~49\)) # (!\MUXA|salida[25]~25_combout\ & ((!\ALUCOMP|Add0~49\) # (!\MUXB|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[25]~25_combout\,
	datab => \MUXB|Mux6~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~49\,
	combout => \ALUCOMP|Add0~50_combout\,
	cout => \ALUCOMP|Add0~51\);

-- Location: LCCOMB_X15_Y21_N20
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

-- Location: LCCOMB_X15_Y21_N22
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

-- Location: LCCOMB_X15_Y21_N24
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

-- Location: LCCOMB_X15_Y21_N26
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

-- Location: LCCOMB_X15_Y21_N28
\ALUCOMP|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~60_combout\ = ((\MUXA|salida[30]~30_combout\ $ (\MUXB|Mux1~0_combout\ $ (!\ALUCOMP|Add0~59\)))) # (GND)
-- \ALUCOMP|Add0~61\ = CARRY((\MUXA|salida[30]~30_combout\ & ((\MUXB|Mux1~0_combout\) # (!\ALUCOMP|Add0~59\))) # (!\MUXA|salida[30]~30_combout\ & (\MUXB|Mux1~0_combout\ & !\ALUCOMP|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXA|salida[30]~30_combout\,
	datab => \MUXB|Mux1~0_combout\,
	datad => VCC,
	cin => \ALUCOMP|Add0~59\,
	combout => \ALUCOMP|Add0~60_combout\,
	cout => \ALUCOMP|Add0~61\);

-- Location: LCCOMB_X15_Y21_N30
\ALUCOMP|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUCOMP|Add0~62_combout\ = \MUXB|Mux0~0_combout\ $ (\ALUCOMP|Add0~61\ $ (\MUXA|salida[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUXB|Mux0~0_combout\,
	datad => \MUXA|salida[31]~31_combout\,
	cin => \ALUCOMP|Add0~61\,
	combout => \ALUCOMP|Add0~62_combout\);

-- Location: LCFF_X15_Y21_N31
\regALU|dt_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(31));

-- Location: LCCOMB_X18_Y21_N8
\MUXB|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux1~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a30\,
	combout => \MUXB|Mux1~0_combout\);

-- Location: LCFF_X15_Y21_N29
\regALU|dt_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(30));

-- Location: LCCOMB_X16_Y21_N18
\MUXB|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux2~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a29\,
	combout => \MUXB|Mux2~0_combout\);

-- Location: LCFF_X15_Y21_N27
\regALU|dt_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(29));

-- Location: LCCOMB_X18_Y21_N2
\MUXB|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux3~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a28\,
	combout => \MUXB|Mux3~0_combout\);

-- Location: LCFF_X15_Y21_N25
\regALU|dt_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(28));

-- Location: LCCOMB_X18_Y21_N30
\MUXB|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux4~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a27\,
	combout => \MUXB|Mux4~0_combout\);

-- Location: LCFF_X15_Y21_N23
\regALU|dt_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(27));

-- Location: LCCOMB_X18_Y21_N4
\MUXB|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux5~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a26\,
	combout => \MUXB|Mux5~0_combout\);

-- Location: LCFF_X15_Y21_N21
\regALU|dt_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(26));

-- Location: LCCOMB_X16_Y21_N12
\MUXB|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux6~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a25\,
	combout => \MUXB|Mux6~0_combout\);

-- Location: LCFF_X15_Y21_N19
\regALU|dt_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(25));

-- Location: LCCOMB_X14_Y21_N4
\MUXA|salida[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[24]~24_combout\ = (\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(24))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a24\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(24),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a24\,
	combout => \MUXA|salida[24]~24_combout\);

-- Location: LCFF_X15_Y21_N17
\regALU|dt_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(24));

-- Location: LCCOMB_X14_Y21_N26
\MUXA|salida[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[23]~23_combout\ = (\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(23))) # (!\NEWST|CS\(0) & ((\NEWST|CS\(1) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a23\))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGCOUNT|addr_out\(23),
	datab => \NEWST|CS\(0),
	datac => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a23\,
	combout => \MUXA|salida[23]~23_combout\);

-- Location: LCFF_X15_Y21_N15
\regALU|dt_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(23));

-- Location: LCCOMB_X14_Y21_N28
\MUXA|salida[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXA|salida[22]~22_combout\ = (\NEWST|CS\(1) & ((\NEWST|CS\(0) & (\PROGCOUNT|addr_out\(22))) # (!\NEWST|CS\(0) & ((\REGFILE|MEM_rtl_0|auto_generated|ram_block1a22\))))) # (!\NEWST|CS\(1) & (\PROGCOUNT|addr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEWST|CS\(1),
	datab => \PROGCOUNT|addr_out\(22),
	datac => \NEWST|CS\(0),
	datad => \REGFILE|MEM_rtl_0|auto_generated|ram_block1a22\,
	combout => \MUXA|salida[22]~22_combout\);

-- Location: LCFF_X15_Y21_N13
\regALU|dt_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(22));

-- Location: LCCOMB_X16_Y21_N28
\MUXB|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux10~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a21\,
	combout => \MUXB|Mux10~0_combout\);

-- Location: LCFF_X15_Y21_N11
\regALU|dt_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(21));

-- Location: LCCOMB_X16_Y21_N8
\MUXB|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux11~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a20\,
	combout => \MUXB|Mux11~0_combout\);

-- Location: LCFF_X15_Y21_N9
\regALU|dt_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(20));

-- Location: LCCOMB_X16_Y21_N30
\MUXB|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux12~0_combout\ = (\REGFILE|MEM_rtl_1|auto_generated|ram_block1a19\ & \NEWST|CS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a19\,
	datad => \NEWST|CS\(1),
	combout => \MUXB|Mux12~0_combout\);

-- Location: LCFF_X15_Y21_N7
\regALU|dt_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUCOMP|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regALU|dt_out\(19));

-- Location: LCCOMB_X16_Y21_N14
\MUXB|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXB|Mux13~0_combout\ = (\NEWST|CS\(1) & \REGFILE|MEM_rtl_1|auto_generated|ram_block1a18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEWST|CS\(1),
	datad => \REGFILE|MEM_rtl_1|auto_generated|ram_block1a18\,
	combout => \MUXB|Mux13~0_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(0));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(4));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(5));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(6));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(7));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(8));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(9));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(10));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(11));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(12));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(13));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(14));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(15));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(16));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(17));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(18));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(19));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(20));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(21));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(22));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(23));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(24));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(25));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(26));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(27));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(28));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(29));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(30));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Res(31));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(0));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wrReg(1));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALUCOMP|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextIns(28));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


