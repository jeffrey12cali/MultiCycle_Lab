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

-- DATE "10/19/2018 17:26:42"

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
	testSel1 : IN std_logic;
	testSel2 : IN std_logic_vector(1 DOWNTO 0);
	testSel3 : IN std_logic;
	testSel4 : IN std_logic;
	testMemory : IN std_logic_vector(31 DOWNTO 0);
	testRes : OUT std_logic_vector(31 DOWNTO 0);
	testIrw : IN std_logic
	);
END MultiCycle;

-- Design Ports Information
-- testSel3	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel4	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testRes[0]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[1]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[2]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[3]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[4]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[5]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[6]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[7]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[8]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[9]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[10]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[11]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[12]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[13]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[14]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[15]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[16]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[17]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[18]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[19]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[20]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[21]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[22]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[23]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[24]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[25]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[26]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[27]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[28]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[29]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[30]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[31]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testSel2[0]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel2[1]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel1	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[0]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[1]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[8]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[9]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[10]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[11]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[12]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[13]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[14]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[15]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[16]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[17]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[18]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[19]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[20]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[21]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[22]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[23]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[24]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[25]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[26]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[27]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[28]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[29]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[30]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testMemory[31]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testIrw	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_testSel1 : std_logic;
SIGNAL ww_testSel2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_testSel3 : std_logic;
SIGNAL ww_testSel4 : std_logic;
SIGNAL ww_testMemory : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testRes : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_testIrw : std_logic;
SIGNAL \testIrw~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \unit8|Equal1~0_combout\ : std_logic;
SIGNAL \unit8|Equal1~1_combout\ : std_logic;
SIGNAL \unit8|Equal1~2_combout\ : std_logic;
SIGNAL \unit8|Equal1~3_combout\ : std_logic;
SIGNAL \unit8|Equal1~4_combout\ : std_logic;
SIGNAL \unit8|Equal1~5_combout\ : std_logic;
SIGNAL \unit8|Equal1~6_combout\ : std_logic;
SIGNAL \unit8|Equal1~7_combout\ : std_logic;
SIGNAL \unit8|Equal1~8_combout\ : std_logic;
SIGNAL \unit8|Equal1~9_combout\ : std_logic;
SIGNAL \unit8|data_out[2]~0_combout\ : std_logic;
SIGNAL \unit8|data_out[0]~1_combout\ : std_logic;
SIGNAL \unit8|data_out[0]~2_combout\ : std_logic;
SIGNAL \unit1|Add0~2_combout\ : std_logic;
SIGNAL \unit1|Add0~3_combout\ : std_logic;
SIGNAL \unit2|Mux29~0_combout\ : std_logic;
SIGNAL \testIrw~combout\ : std_logic;
SIGNAL \testIrw~clkctrl_outclk\ : std_logic;
SIGNAL \unit1|Mux31~0_combout\ : std_logic;
SIGNAL \unit1|Add0~0_combout\ : std_logic;
SIGNAL \unit1|Mux31~1_combout\ : std_logic;
SIGNAL \unit1|Add0~4\ : std_logic;
SIGNAL \unit1|Add0~5_combout\ : std_logic;
SIGNAL \unit1|Mux30~0_combout\ : std_logic;
SIGNAL \unit2|Mux29~1_combout\ : std_logic;
SIGNAL \unit1|Add0~7_combout\ : std_logic;
SIGNAL \unit1|Add0~6\ : std_logic;
SIGNAL \unit1|Add0~8_combout\ : std_logic;
SIGNAL \unit1|Mux29~2_combout\ : std_logic;
SIGNAL \unit1|Mux29~4_combout\ : std_logic;
SIGNAL \unit1|Mux29~3_combout\ : std_logic;
SIGNAL \unit1|Add0~9\ : std_logic;
SIGNAL \unit1|Add0~10_combout\ : std_logic;
SIGNAL \unit1|Mux28~2_combout\ : std_logic;
SIGNAL \testSel1~combout\ : std_logic;
SIGNAL \unit1|Add0~11\ : std_logic;
SIGNAL \unit1|Add0~12_combout\ : std_logic;
SIGNAL \unit1|Mux27~0_combout\ : std_logic;
SIGNAL \unit1|Add0~13\ : std_logic;
SIGNAL \unit1|Add0~14_combout\ : std_logic;
SIGNAL \unit1|Mux26~2_combout\ : std_logic;
SIGNAL \unit1|Add0~15\ : std_logic;
SIGNAL \unit1|Add0~16_combout\ : std_logic;
SIGNAL \unit1|Mux25~2_combout\ : std_logic;
SIGNAL \unit1|Add0~17\ : std_logic;
SIGNAL \unit1|Add0~18_combout\ : std_logic;
SIGNAL \unit1|Mux24~0_combout\ : std_logic;
SIGNAL \unit1|Add0~19\ : std_logic;
SIGNAL \unit1|Add0~20_combout\ : std_logic;
SIGNAL \unit1|Mux23~0_combout\ : std_logic;
SIGNAL \unit1|Add0~21\ : std_logic;
SIGNAL \unit1|Add0~22_combout\ : std_logic;
SIGNAL \unit1|Mux22~2_combout\ : std_logic;
SIGNAL \unit1|Add0~1_combout\ : std_logic;
SIGNAL \unit1|Add0~23\ : std_logic;
SIGNAL \unit1|Add0~24_combout\ : std_logic;
SIGNAL \unit1|Mux21~2_combout\ : std_logic;
SIGNAL \unit7|func_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \testSel2~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \testMemory~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_testSel1 <= testSel1;
ww_testSel2 <= testSel2;
ww_testSel3 <= testSel3;
ww_testSel4 <= testSel4;
ww_testMemory <= testMemory;
testRes <= ww_testRes;
ww_testIrw <= testIrw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\testIrw~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \testIrw~combout\);

-- Location: LCCOMB_X38_Y26_N0
\unit8|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~0_combout\ = (!\testMemory~combout\(3) & (!\testMemory~combout\(2) & (!\testMemory~combout\(5) & !\testMemory~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(3),
	datab => \testMemory~combout\(2),
	datac => \testMemory~combout\(5),
	datad => \testMemory~combout\(4),
	combout => \unit8|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y26_N2
\unit8|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~1_combout\ = (!\testMemory~combout\(9) & (!\testMemory~combout\(8) & (!\testMemory~combout\(7) & !\testMemory~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(9),
	datab => \testMemory~combout\(8),
	datac => \testMemory~combout\(7),
	datad => \testMemory~combout\(6),
	combout => \unit8|Equal1~1_combout\);

-- Location: LCCOMB_X38_Y26_N28
\unit8|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~2_combout\ = (!\testMemory~combout\(10) & (!\testMemory~combout\(12) & (!\testMemory~combout\(13) & !\testMemory~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(10),
	datab => \testMemory~combout\(12),
	datac => \testMemory~combout\(13),
	datad => \testMemory~combout\(11),
	combout => \unit8|Equal1~2_combout\);

-- Location: LCCOMB_X38_Y26_N30
\unit8|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~3_combout\ = (!\testMemory~combout\(16) & (!\testMemory~combout\(17) & (!\testMemory~combout\(15) & !\testMemory~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(16),
	datab => \testMemory~combout\(17),
	datac => \testMemory~combout\(15),
	datad => \testMemory~combout\(14),
	combout => \unit8|Equal1~3_combout\);

-- Location: LCCOMB_X38_Y26_N16
\unit8|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~4_combout\ = (\unit8|Equal1~0_combout\ & (\unit8|Equal1~1_combout\ & (\unit8|Equal1~3_combout\ & \unit8|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|Equal1~0_combout\,
	datab => \unit8|Equal1~1_combout\,
	datac => \unit8|Equal1~3_combout\,
	datad => \unit8|Equal1~2_combout\,
	combout => \unit8|Equal1~4_combout\);

-- Location: LCCOMB_X49_Y12_N0
\unit8|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~5_combout\ = (!\testMemory~combout\(21) & (!\testMemory~combout\(19) & (!\testMemory~combout\(20) & !\testMemory~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(21),
	datab => \testMemory~combout\(19),
	datac => \testMemory~combout\(20),
	datad => \testMemory~combout\(18),
	combout => \unit8|Equal1~5_combout\);

-- Location: LCCOMB_X49_Y12_N2
\unit8|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~6_combout\ = (!\testMemory~combout\(25) & (!\testMemory~combout\(22) & (!\testMemory~combout\(23) & !\testMemory~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(25),
	datab => \testMemory~combout\(22),
	datac => \testMemory~combout\(23),
	datad => \testMemory~combout\(24),
	combout => \unit8|Equal1~6_combout\);

-- Location: LCCOMB_X49_Y12_N4
\unit8|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~7_combout\ = (!\testMemory~combout\(26) & (!\testMemory~combout\(29) & (!\testMemory~combout\(27) & !\testMemory~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(26),
	datab => \testMemory~combout\(29),
	datac => \testMemory~combout\(27),
	datad => \testMemory~combout\(28),
	combout => \unit8|Equal1~7_combout\);

-- Location: LCCOMB_X49_Y12_N6
\unit8|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~8_combout\ = (!\testMemory~combout\(31) & !\testMemory~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testMemory~combout\(31),
	datac => \testMemory~combout\(30),
	combout => \unit8|Equal1~8_combout\);

-- Location: LCCOMB_X49_Y12_N8
\unit8|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|Equal1~9_combout\ = (\unit8|Equal1~8_combout\ & (\unit8|Equal1~6_combout\ & (\unit8|Equal1~7_combout\ & \unit8|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|Equal1~8_combout\,
	datab => \unit8|Equal1~6_combout\,
	datac => \unit8|Equal1~7_combout\,
	datad => \unit8|Equal1~5_combout\,
	combout => \unit8|Equal1~9_combout\);

-- Location: LCCOMB_X14_Y2_N10
\unit8|data_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|data_out[2]~0_combout\ = (((!\testMemory~combout\(1) & !\testMemory~combout\(0))) # (!\unit8|Equal1~9_combout\)) # (!\unit8|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|Equal1~4_combout\,
	datab => \testMemory~combout\(1),
	datac => \testMemory~combout\(0),
	datad => \unit8|Equal1~9_combout\,
	combout => \unit8|data_out[2]~0_combout\);

-- Location: LCCOMB_X14_Y2_N12
\unit8|data_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|data_out[0]~1_combout\ = ((\testMemory~combout\(1) $ (!\testMemory~combout\(0))) # (!\unit8|Equal1~9_combout\)) # (!\unit8|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|Equal1~4_combout\,
	datab => \testMemory~combout\(1),
	datac => \testMemory~combout\(0),
	datad => \unit8|Equal1~9_combout\,
	combout => \unit8|data_out[0]~1_combout\);

-- Location: LCCOMB_X14_Y2_N30
\unit8|data_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit8|data_out[0]~2_combout\ = ((!\unit8|Equal1~9_combout\) # (!\testMemory~combout\(0))) # (!\unit8|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|Equal1~4_combout\,
	datab => \testMemory~combout\(0),
	datad => \unit8|Equal1~9_combout\,
	combout => \unit8|data_out[0]~2_combout\);

-- Location: LCCOMB_X14_Y2_N6
\unit7|func_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|func_out\(0) = (GLOBAL(\testIrw~clkctrl_outclk\) & (\unit8|data_out[0]~2_combout\)) # (!GLOBAL(\testIrw~clkctrl_outclk\) & ((\unit7|func_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit8|data_out[0]~2_combout\,
	datac => \testIrw~clkctrl_outclk\,
	datad => \unit7|func_out\(0),
	combout => \unit7|func_out\(0));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(0),
	combout => \testMemory~combout\(0));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(1),
	combout => \testMemory~combout\(1));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(2),
	combout => \testMemory~combout\(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(3),
	combout => \testMemory~combout\(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(4),
	combout => \testMemory~combout\(4));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(5),
	combout => \testMemory~combout\(5));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(6),
	combout => \testMemory~combout\(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(7),
	combout => \testMemory~combout\(7));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(8),
	combout => \testMemory~combout\(8));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(9),
	combout => \testMemory~combout\(9));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(10),
	combout => \testMemory~combout\(10));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(11),
	combout => \testMemory~combout\(11));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(12),
	combout => \testMemory~combout\(12));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(13),
	combout => \testMemory~combout\(13));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(14),
	combout => \testMemory~combout\(14));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(15),
	combout => \testMemory~combout\(15));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(16),
	combout => \testMemory~combout\(16));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(17),
	combout => \testMemory~combout\(17));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(18),
	combout => \testMemory~combout\(18));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(19),
	combout => \testMemory~combout\(19));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(20),
	combout => \testMemory~combout\(20));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(21),
	combout => \testMemory~combout\(21));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(22),
	combout => \testMemory~combout\(22));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(23),
	combout => \testMemory~combout\(23));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(24),
	combout => \testMemory~combout\(24));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(25),
	combout => \testMemory~combout\(25));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(26),
	combout => \testMemory~combout\(26));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(27),
	combout => \testMemory~combout\(27));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(28),
	combout => \testMemory~combout\(28));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(29),
	combout => \testMemory~combout\(29));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(30),
	combout => \testMemory~combout\(30));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testMemory[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testMemory(31),
	combout => \testMemory~combout\(31));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel2(1),
	combout => \testSel2~combout\(1));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel2(0),
	combout => \testSel2~combout\(0));

-- Location: LCCOMB_X14_Y2_N22
\unit1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~2_combout\ = \unit7|func_out\(0) $ (((\testSel2~combout\(1) & \testSel2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datac => \testSel2~combout\(1),
	datad => \testSel2~combout\(0),
	combout => \unit1|Add0~2_combout\);

-- Location: LCCOMB_X13_Y2_N6
\unit1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~3_combout\ = (\unit1|Add0~1_combout\ & (\unit1|Add0~2_combout\ $ (VCC))) # (!\unit1|Add0~1_combout\ & (\unit1|Add0~2_combout\ & VCC))
-- \unit1|Add0~4\ = CARRY((\unit1|Add0~1_combout\ & \unit1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datab => \unit1|Add0~2_combout\,
	datad => VCC,
	combout => \unit1|Add0~3_combout\,
	cout => \unit1|Add0~4\);

-- Location: LCCOMB_X14_Y2_N24
\unit2|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|Mux29~0_combout\ = (\testSel2~combout\(1) & \testSel2~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \testSel2~combout\(1),
	datad => \testSel2~combout\(0),
	combout => \unit2|Mux29~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testIrw~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testIrw,
	combout => \testIrw~combout\);

-- Location: CLKCTRL_G3
\testIrw~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \testIrw~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \testIrw~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y2_N26
\unit7|func_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|func_out\(2) = (GLOBAL(\testIrw~clkctrl_outclk\) & (\unit8|data_out[2]~0_combout\)) # (!GLOBAL(\testIrw~clkctrl_outclk\) & ((\unit7|func_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|data_out[2]~0_combout\,
	datac => \testIrw~clkctrl_outclk\,
	datad => \unit7|func_out\(2),
	combout => \unit7|func_out\(2));

-- Location: LCCOMB_X14_Y2_N20
\unit7|func_out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|func_out\(1) = (GLOBAL(\testIrw~clkctrl_outclk\) & (\unit8|data_out[0]~1_combout\)) # (!GLOBAL(\testIrw~clkctrl_outclk\) & ((\unit7|func_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit8|data_out[0]~1_combout\,
	datac => \unit7|func_out\(1),
	datad => \testIrw~clkctrl_outclk\,
	combout => \unit7|func_out\(1));

-- Location: LCCOMB_X14_Y2_N0
\unit1|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux31~0_combout\ = (\unit7|func_out\(2)) # ((\unit7|func_out\(0) & \unit7|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	combout => \unit1|Mux31~0_combout\);

-- Location: LCCOMB_X14_Y2_N2
\unit1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~0_combout\ = (!\unit7|func_out\(2) & !\unit7|func_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	combout => \unit1|Add0~0_combout\);

-- Location: LCCOMB_X13_Y2_N0
\unit1|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux31~1_combout\ = (\unit1|Add0~3_combout\ & ((\unit1|Add0~0_combout\) # ((\unit2|Mux29~0_combout\ & \unit1|Mux31~0_combout\)))) # (!\unit1|Add0~3_combout\ & (\unit2|Mux29~0_combout\ & (\unit1|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~3_combout\,
	datab => \unit2|Mux29~0_combout\,
	datac => \unit1|Mux31~0_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux31~1_combout\);

-- Location: LCCOMB_X13_Y2_N8
\unit1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~5_combout\ = (\unit1|Add0~4\ & (\unit7|func_out\(0) $ ((!\testSel2~combout\(1))))) # (!\unit1|Add0~4\ & ((\unit7|func_out\(0) $ (\testSel2~combout\(1))) # (GND)))
-- \unit1|Add0~6\ = CARRY((\unit7|func_out\(0) $ (!\testSel2~combout\(1))) # (!\unit1|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datab => \testSel2~combout\(1),
	datad => VCC,
	cin => \unit1|Add0~4\,
	combout => \unit1|Add0~5_combout\,
	cout => \unit1|Add0~6\);

-- Location: LCCOMB_X13_Y2_N2
\unit1|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux30~0_combout\ = (\testSel2~combout\(1) & ((\unit1|Mux31~0_combout\) # ((\unit1|Add0~5_combout\ & \unit1|Add0~0_combout\)))) # (!\testSel2~combout\(1) & (\unit1|Add0~5_combout\ & ((\unit1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel2~combout\(1),
	datab => \unit1|Add0~5_combout\,
	datac => \unit1|Mux31~0_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux30~0_combout\);

-- Location: LCCOMB_X14_Y2_N18
\unit2|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|Mux29~1_combout\ = (\testSel2~combout\(1)) # (\testSel2~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \testSel2~combout\(1),
	datad => \testSel2~combout\(0),
	combout => \unit2|Mux29~1_combout\);

-- Location: LCCOMB_X14_Y2_N14
\unit1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~7_combout\ = (!\unit7|func_out\(2) & (!\unit7|func_out\(1) & (\unit7|func_out\(0) $ (\unit2|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	datad => \unit2|Mux29~1_combout\,
	combout => \unit1|Add0~7_combout\);

-- Location: LCCOMB_X13_Y2_N10
\unit1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~8_combout\ = ((\testSel1~combout\ $ (\unit1|Add0~7_combout\ $ (\unit1|Add0~6\)))) # (GND)
-- \unit1|Add0~9\ = CARRY((\testSel1~combout\ & (\unit1|Add0~7_combout\ & !\unit1|Add0~6\)) # (!\testSel1~combout\ & ((\unit1|Add0~7_combout\) # (!\unit1|Add0~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testSel1~combout\,
	datab => \unit1|Add0~7_combout\,
	datad => VCC,
	cin => \unit1|Add0~6\,
	combout => \unit1|Add0~8_combout\,
	cout => \unit1|Add0~9\);

-- Location: LCCOMB_X14_Y2_N28
\unit1|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux29~2_combout\ = (!\testSel1~combout\ & (\unit7|func_out\(1) & ((\testSel2~combout\(1)) # (\testSel2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel1~combout\,
	datab => \testSel2~combout\(1),
	datac => \unit7|func_out\(1),
	datad => \testSel2~combout\(0),
	combout => \unit1|Mux29~2_combout\);

-- Location: LCCOMB_X14_Y2_N16
\unit1|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux29~4_combout\ = (\unit1|Mux31~0_combout\ & (((\testSel2~combout\(1)) # (\testSel2~combout\(0))) # (!\testSel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel1~combout\,
	datab => \unit1|Mux31~0_combout\,
	datac => \testSel2~combout\(1),
	datad => \testSel2~combout\(0),
	combout => \unit1|Mux29~4_combout\);

-- Location: LCCOMB_X14_Y2_N8
\unit1|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux29~3_combout\ = (\unit1|Mux29~2_combout\) # ((\unit1|Mux29~4_combout\) # ((\unit1|Add0~8_combout\ & \unit1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~8_combout\,
	datab => \unit1|Mux29~2_combout\,
	datac => \unit1|Mux29~4_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux29~3_combout\);

-- Location: LCCOMB_X13_Y2_N12
\unit1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~10_combout\ = (\unit1|Add0~1_combout\ & (!\unit1|Add0~9\)) # (!\unit1|Add0~1_combout\ & ((\unit1|Add0~9\) # (GND)))
-- \unit1|Add0~11\ = CARRY((!\unit1|Add0~9\) # (!\unit1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~9\,
	combout => \unit1|Add0~10_combout\,
	cout => \unit1|Add0~11\);

-- Location: LCCOMB_X12_Y2_N24
\unit1|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux28~2_combout\ = (!\unit7|func_out\(1) & (!\unit7|func_out\(2) & \unit1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(1),
	datab => \unit7|func_out\(2),
	datac => \unit1|Add0~10_combout\,
	combout => \unit1|Mux28~2_combout\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel1~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel1,
	combout => \testSel1~combout\);

-- Location: LCCOMB_X13_Y2_N14
\unit1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~12_combout\ = ((\unit1|Add0~1_combout\ $ (\testSel1~combout\ $ (\unit1|Add0~11\)))) # (GND)
-- \unit1|Add0~13\ = CARRY((\unit1|Add0~1_combout\ & ((!\unit1|Add0~11\) # (!\testSel1~combout\))) # (!\unit1|Add0~1_combout\ & (!\testSel1~combout\ & !\unit1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datab => \testSel1~combout\,
	datad => VCC,
	cin => \unit1|Add0~11\,
	combout => \unit1|Add0~12_combout\,
	cout => \unit1|Add0~13\);

-- Location: LCCOMB_X13_Y2_N28
\unit1|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux27~0_combout\ = (\testSel1~combout\ & (((\unit1|Add0~12_combout\ & \unit1|Add0~0_combout\)))) # (!\testSel1~combout\ & ((\unit1|Mux31~0_combout\) # ((\unit1|Add0~12_combout\ & \unit1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel1~combout\,
	datab => \unit1|Mux31~0_combout\,
	datac => \unit1|Add0~12_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux27~0_combout\);

-- Location: LCCOMB_X13_Y2_N16
\unit1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~14_combout\ = (\unit1|Add0~1_combout\ & (!\unit1|Add0~13\)) # (!\unit1|Add0~1_combout\ & ((\unit1|Add0~13\) # (GND)))
-- \unit1|Add0~15\ = CARRY((!\unit1|Add0~13\) # (!\unit1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~13\,
	combout => \unit1|Add0~14_combout\,
	cout => \unit1|Add0~15\);

-- Location: LCCOMB_X12_Y2_N18
\unit1|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux26~2_combout\ = (!\unit7|func_out\(1) & (!\unit7|func_out\(2) & \unit1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(1),
	datab => \unit7|func_out\(2),
	datac => \unit1|Add0~14_combout\,
	combout => \unit1|Mux26~2_combout\);

-- Location: LCCOMB_X13_Y2_N18
\unit1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~16_combout\ = (\unit1|Add0~1_combout\ & (\unit1|Add0~15\ $ (GND))) # (!\unit1|Add0~1_combout\ & (!\unit1|Add0~15\ & VCC))
-- \unit1|Add0~17\ = CARRY((\unit1|Add0~1_combout\ & !\unit1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~15\,
	combout => \unit1|Add0~16_combout\,
	cout => \unit1|Add0~17\);

-- Location: LCCOMB_X12_Y2_N12
\unit1|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux25~2_combout\ = (!\unit7|func_out\(2) & (!\unit7|func_out\(1) & \unit1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	datad => \unit1|Add0~16_combout\,
	combout => \unit1|Mux25~2_combout\);

-- Location: LCCOMB_X13_Y2_N20
\unit1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~18_combout\ = (\unit1|Add0~17\ & (\unit7|func_out\(0) $ ((\unit2|Mux29~1_combout\)))) # (!\unit1|Add0~17\ & ((\unit7|func_out\(0) $ (!\unit2|Mux29~1_combout\)) # (GND)))
-- \unit1|Add0~19\ = CARRY((\unit7|func_out\(0) $ (\unit2|Mux29~1_combout\)) # (!\unit1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datab => \unit2|Mux29~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~17\,
	combout => \unit1|Add0~18_combout\,
	cout => \unit1|Add0~19\);

-- Location: LCCOMB_X13_Y2_N4
\unit1|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux24~0_combout\ = (\unit1|Add0~18_combout\ & ((\unit1|Add0~0_combout\) # ((!\unit2|Mux29~1_combout\ & \unit1|Mux31~0_combout\)))) # (!\unit1|Add0~18_combout\ & (!\unit2|Mux29~1_combout\ & (\unit1|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~18_combout\,
	datab => \unit2|Mux29~1_combout\,
	datac => \unit1|Mux31~0_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux24~0_combout\);

-- Location: LCCOMB_X13_Y2_N22
\unit1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~20_combout\ = ((\unit1|Add0~1_combout\ $ (\testSel1~combout\ $ (!\unit1|Add0~19\)))) # (GND)
-- \unit1|Add0~21\ = CARRY((\unit1|Add0~1_combout\ & ((\testSel1~combout\) # (!\unit1|Add0~19\))) # (!\unit1|Add0~1_combout\ & (\testSel1~combout\ & !\unit1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datab => \testSel1~combout\,
	datad => VCC,
	cin => \unit1|Add0~19\,
	combout => \unit1|Add0~20_combout\,
	cout => \unit1|Add0~21\);

-- Location: LCCOMB_X13_Y2_N30
\unit1|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux23~0_combout\ = (\testSel1~combout\ & ((\unit1|Mux31~0_combout\) # ((\unit1|Add0~20_combout\ & \unit1|Add0~0_combout\)))) # (!\testSel1~combout\ & (\unit1|Add0~20_combout\ & ((\unit1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel1~combout\,
	datab => \unit1|Add0~20_combout\,
	datac => \unit1|Mux31~0_combout\,
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Mux23~0_combout\);

-- Location: LCCOMB_X13_Y2_N24
\unit1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~22_combout\ = (\unit1|Add0~1_combout\ & (!\unit1|Add0~21\)) # (!\unit1|Add0~1_combout\ & ((\unit1|Add0~21\) # (GND)))
-- \unit1|Add0~23\ = CARRY((!\unit1|Add0~21\) # (!\unit1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~21\,
	combout => \unit1|Add0~22_combout\,
	cout => \unit1|Add0~23\);

-- Location: LCCOMB_X12_Y2_N6
\unit1|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux22~2_combout\ = (!\unit7|func_out\(2) & (!\unit7|func_out\(1) & \unit1|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	datad => \unit1|Add0~22_combout\,
	combout => \unit1|Mux22~2_combout\);

-- Location: LCCOMB_X14_Y2_N4
\unit1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~1_combout\ = (\unit7|func_out\(0) & (!\unit7|func_out\(2) & !\unit7|func_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(0),
	datab => \unit7|func_out\(2),
	datac => \unit7|func_out\(1),
	combout => \unit1|Add0~1_combout\);

-- Location: LCCOMB_X13_Y2_N26
\unit1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~24_combout\ = \unit1|Add0~23\ $ (!\unit1|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \unit1|Add0~1_combout\,
	cin => \unit1|Add0~23\,
	combout => \unit1|Add0~24_combout\);

-- Location: LCCOMB_X12_Y2_N0
\unit1|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux21~2_combout\ = (!\unit7|func_out\(1) & (!\unit7|func_out\(2) & \unit1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit7|func_out\(1),
	datab => \unit7|func_out\(2),
	datac => \unit1|Add0~24_combout\,
	combout => \unit1|Mux21~2_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel3~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel3);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel4~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel4);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(0));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(1));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(2));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(3));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(4));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(5));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(6));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(7));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(8));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(9));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(10));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(11));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(12));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(13));

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(14));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(15));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(16));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(17));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(18));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(19));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(20));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(21));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(22));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(23));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(24));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(25));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(26));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(27));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(28));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(29));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(30));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testRes[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|Mux21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(31));
END structure;


