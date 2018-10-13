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

-- DATE "10/13/2018 10:52:04"

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
	testA : IN std_logic_vector(7 DOWNTO 0);
	testSel : IN std_logic_vector(1 DOWNTO 0);
	testOp : IN std_logic_vector(1 DOWNTO 0);
	testRes : OUT std_logic_vector(7 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- testRes[0]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[1]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[2]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[3]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[4]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[5]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[7]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testOp[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel[1]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel[0]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testOp[1]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[2]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[3]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[4]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[5]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[6]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testA[7]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_testA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_testSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_testOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_testRes : std_logic_vector(7 DOWNTO 0);
SIGNAL \unit1|Add0~1_combout\ : std_logic;
SIGNAL \unit1|Add0~3_cout\ : std_logic;
SIGNAL \unit1|Add0~4_combout\ : std_logic;
SIGNAL \unit1|Add0~0_combout\ : std_logic;
SIGNAL \unit1|Add0~6_combout\ : std_logic;
SIGNAL \unit1|Add0~7_combout\ : std_logic;
SIGNAL \unit1|Add0~5\ : std_logic;
SIGNAL \unit1|Add0~8_combout\ : std_logic;
SIGNAL \unit1|Add0~10_combout\ : std_logic;
SIGNAL \unit1|Add0~12_combout\ : std_logic;
SIGNAL \unit1|Add0~9\ : std_logic;
SIGNAL \unit1|Add0~13_combout\ : std_logic;
SIGNAL \unit1|Add0~11_combout\ : std_logic;
SIGNAL \unit1|Add0~15_combout\ : std_logic;
SIGNAL \unit1|Add0~14\ : std_logic;
SIGNAL \unit1|Add0~16_combout\ : std_logic;
SIGNAL \unit1|Add0~18_combout\ : std_logic;
SIGNAL \unit1|Add0~19_combout\ : std_logic;
SIGNAL \unit1|Add0~17\ : std_logic;
SIGNAL \unit1|Add0~20_combout\ : std_logic;
SIGNAL \unit1|Add0~22_combout\ : std_logic;
SIGNAL \unit1|Add0~24_combout\ : std_logic;
SIGNAL \unit1|Add0~21\ : std_logic;
SIGNAL \unit1|Add0~25_combout\ : std_logic;
SIGNAL \unit1|Add0~23_combout\ : std_logic;
SIGNAL \unit1|Add0~27_combout\ : std_logic;
SIGNAL \unit1|Add0~28_combout\ : std_logic;
SIGNAL \unit1|Add0~29_combout\ : std_logic;
SIGNAL \unit1|Add0~26\ : std_logic;
SIGNAL \unit1|Add0~30_combout\ : std_logic;
SIGNAL \unit1|Add0~32_combout\ : std_logic;
SIGNAL \unit1|Add0~31\ : std_logic;
SIGNAL \unit1|Add0~33_combout\ : std_logic;
SIGNAL \unit1|Add0~35_combout\ : std_logic;
SIGNAL \testSel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \testOp~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \testA~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_testA <= testA;
ww_testSel <= testSel;
ww_testOp <= testOp;
testRes <= ww_testRes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(0),
	combout => \testA~combout\(0));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(4),
	combout => \testA~combout\(4));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(5),
	combout => \testA~combout\(5));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(6),
	combout => \testA~combout\(6));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel(1),
	combout => \testSel~combout\(1));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testOp[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testOp(0),
	combout => \testOp~combout\(0));

-- Location: LCCOMB_X8_Y5_N26
\unit1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~1_combout\ = \testOp~combout\(0) $ (((!\testSel~combout\(0) & \testSel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel~combout\(0),
	datac => \testSel~combout\(1),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~1_combout\);

-- Location: LCCOMB_X8_Y5_N4
\unit1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~3_cout\ = CARRY(\testOp~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testOp~combout\(0),
	datad => VCC,
	cout => \unit1|Add0~3_cout\);

-- Location: LCCOMB_X8_Y5_N6
\unit1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~4_combout\ = (\testA~combout\(0) & ((\unit1|Add0~1_combout\ & (\unit1|Add0~3_cout\ & VCC)) # (!\unit1|Add0~1_combout\ & (!\unit1|Add0~3_cout\)))) # (!\testA~combout\(0) & ((\unit1|Add0~1_combout\ & (!\unit1|Add0~3_cout\)) # 
-- (!\unit1|Add0~1_combout\ & ((\unit1|Add0~3_cout\) # (GND)))))
-- \unit1|Add0~5\ = CARRY((\testA~combout\(0) & (!\unit1|Add0~1_combout\ & !\unit1|Add0~3_cout\)) # (!\testA~combout\(0) & ((!\unit1|Add0~3_cout\) # (!\unit1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(0),
	datab => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~3_cout\,
	combout => \unit1|Add0~4_combout\,
	cout => \unit1|Add0~5\);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testOp[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testOp(1),
	combout => \testOp~combout\(1));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testSel[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testSel(0),
	combout => \testSel~combout\(0));

-- Location: LCCOMB_X8_Y5_N0
\unit1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~0_combout\ = (\testA~combout\(0) & ((\testOp~combout\(0)) # ((\testSel~combout\(1) & !\testSel~combout\(0))))) # (!\testA~combout\(0) & (\testOp~combout\(0) & (\testSel~combout\(1) & !\testSel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(0),
	datab => \testOp~combout\(0),
	datac => \testSel~combout\(1),
	datad => \testSel~combout\(0),
	combout => \unit1|Add0~0_combout\);

-- Location: LCCOMB_X8_Y5_N30
\unit1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~6_combout\ = (\testOp~combout\(1) & ((\unit1|Add0~0_combout\))) # (!\testOp~combout\(1) & (\unit1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~4_combout\,
	datab => \testOp~combout\(1),
	datad => \unit1|Add0~0_combout\,
	combout => \unit1|Add0~6_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(1),
	combout => \testA~combout\(1));

-- Location: LCCOMB_X8_Y4_N16
\unit1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~7_combout\ = (\testA~combout\(1) & ((\testOp~combout\(0)) # ((!\testSel~combout\(0) & \testSel~combout\(1))))) # (!\testA~combout\(1) & (!\testSel~combout\(0) & (\testSel~combout\(1) & \testOp~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel~combout\(0),
	datab => \testSel~combout\(1),
	datac => \testA~combout\(1),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~7_combout\);

-- Location: LCCOMB_X8_Y5_N8
\unit1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~8_combout\ = ((\testA~combout\(1) $ (\unit1|Add0~1_combout\ $ (!\unit1|Add0~5\)))) # (GND)
-- \unit1|Add0~9\ = CARRY((\testA~combout\(1) & ((\unit1|Add0~1_combout\) # (!\unit1|Add0~5\))) # (!\testA~combout\(1) & (\unit1|Add0~1_combout\ & !\unit1|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(1),
	datab => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~5\,
	combout => \unit1|Add0~8_combout\,
	cout => \unit1|Add0~9\);

-- Location: LCCOMB_X8_Y4_N2
\unit1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~10_combout\ = (\testOp~combout\(1) & (\unit1|Add0~7_combout\)) # (!\testOp~combout\(1) & ((\unit1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~7_combout\,
	datac => \testOp~combout\(1),
	datad => \unit1|Add0~8_combout\,
	combout => \unit1|Add0~10_combout\);

-- Location: LCCOMB_X8_Y4_N12
\unit1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~12_combout\ = \testOp~combout\(0) $ (((\testSel~combout\(1)) # (\testSel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testSel~combout\(1),
	datac => \testSel~combout\(0),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~12_combout\);

-- Location: LCCOMB_X8_Y5_N10
\unit1|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~13_combout\ = (\testA~combout\(2) & ((\unit1|Add0~12_combout\ & (\unit1|Add0~9\ & VCC)) # (!\unit1|Add0~12_combout\ & (!\unit1|Add0~9\)))) # (!\testA~combout\(2) & ((\unit1|Add0~12_combout\ & (!\unit1|Add0~9\)) # (!\unit1|Add0~12_combout\ & 
-- ((\unit1|Add0~9\) # (GND)))))
-- \unit1|Add0~14\ = CARRY((\testA~combout\(2) & (!\unit1|Add0~12_combout\ & !\unit1|Add0~9\)) # (!\testA~combout\(2) & ((!\unit1|Add0~9\) # (!\unit1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(2),
	datab => \unit1|Add0~12_combout\,
	datad => VCC,
	cin => \unit1|Add0~9\,
	combout => \unit1|Add0~13_combout\,
	cout => \unit1|Add0~14\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(2),
	combout => \testA~combout\(2));

-- Location: LCCOMB_X8_Y5_N24
\unit1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~11_combout\ = (\testOp~combout\(0) & ((\testSel~combout\(0)) # ((\testSel~combout\(1)) # (\testA~combout\(2))))) # (!\testOp~combout\(0) & (\testA~combout\(2) & ((\testSel~combout\(0)) # (\testSel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testSel~combout\(0),
	datab => \testOp~combout\(0),
	datac => \testSel~combout\(1),
	datad => \testA~combout\(2),
	combout => \unit1|Add0~11_combout\);

-- Location: LCCOMB_X8_Y5_N2
\unit1|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~15_combout\ = (\testOp~combout\(1) & ((\unit1|Add0~11_combout\))) # (!\testOp~combout\(1) & (\unit1|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~13_combout\,
	datab => \testOp~combout\(1),
	datac => \unit1|Add0~11_combout\,
	combout => \unit1|Add0~15_combout\);

-- Location: LCCOMB_X8_Y5_N12
\unit1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~16_combout\ = ((\testA~combout\(3) $ (\testOp~combout\(0) $ (!\unit1|Add0~14\)))) # (GND)
-- \unit1|Add0~17\ = CARRY((\testA~combout\(3) & ((\testOp~combout\(0)) # (!\unit1|Add0~14\))) # (!\testA~combout\(3) & (\testOp~combout\(0) & !\unit1|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(3),
	datab => \testOp~combout\(0),
	datad => VCC,
	cin => \unit1|Add0~14\,
	combout => \unit1|Add0~16_combout\,
	cout => \unit1|Add0~17\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(3),
	combout => \testA~combout\(3));

-- Location: LCCOMB_X8_Y5_N28
\unit1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~18_combout\ = (\testOp~combout\(1) & (((\testA~combout\(3) & \testOp~combout\(0))))) # (!\testOp~combout\(1) & (\unit1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~16_combout\,
	datab => \testOp~combout\(1),
	datac => \testA~combout\(3),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~18_combout\);

-- Location: LCCOMB_X8_Y4_N6
\unit1|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~19_combout\ = (\testA~combout\(4) & ((\testOp~combout\(0)) # ((\testSel~combout\(1) & !\testSel~combout\(0))))) # (!\testA~combout\(4) & (\testSel~combout\(1) & (!\testSel~combout\(0) & \testOp~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(4),
	datab => \testSel~combout\(1),
	datac => \testSel~combout\(0),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~19_combout\);

-- Location: LCCOMB_X8_Y5_N14
\unit1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~20_combout\ = (\testA~combout\(4) & ((\unit1|Add0~1_combout\ & (\unit1|Add0~17\ & VCC)) # (!\unit1|Add0~1_combout\ & (!\unit1|Add0~17\)))) # (!\testA~combout\(4) & ((\unit1|Add0~1_combout\ & (!\unit1|Add0~17\)) # (!\unit1|Add0~1_combout\ & 
-- ((\unit1|Add0~17\) # (GND)))))
-- \unit1|Add0~21\ = CARRY((\testA~combout\(4) & (!\unit1|Add0~1_combout\ & !\unit1|Add0~17\)) # (!\testA~combout\(4) & ((!\unit1|Add0~17\) # (!\unit1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(4),
	datab => \unit1|Add0~1_combout\,
	datad => VCC,
	cin => \unit1|Add0~17\,
	combout => \unit1|Add0~20_combout\,
	cout => \unit1|Add0~21\);

-- Location: LCCOMB_X8_Y4_N0
\unit1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~22_combout\ = (\testOp~combout\(1) & (\unit1|Add0~19_combout\)) # (!\testOp~combout\(1) & ((\unit1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~19_combout\,
	datac => \testOp~combout\(1),
	datad => \unit1|Add0~20_combout\,
	combout => \unit1|Add0~22_combout\);

-- Location: LCCOMB_X8_Y4_N4
\unit1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~24_combout\ = \testSel~combout\(1) $ (\testOp~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testSel~combout\(1),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~24_combout\);

-- Location: LCCOMB_X8_Y5_N16
\unit1|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~25_combout\ = ((\testA~combout\(5) $ (\unit1|Add0~24_combout\ $ (!\unit1|Add0~21\)))) # (GND)
-- \unit1|Add0~26\ = CARRY((\testA~combout\(5) & ((\unit1|Add0~24_combout\) # (!\unit1|Add0~21\))) # (!\testA~combout\(5) & (\unit1|Add0~24_combout\ & !\unit1|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(5),
	datab => \unit1|Add0~24_combout\,
	datad => VCC,
	cin => \unit1|Add0~21\,
	combout => \unit1|Add0~25_combout\,
	cout => \unit1|Add0~26\);

-- Location: LCCOMB_X8_Y4_N18
\unit1|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~23_combout\ = (\testOp~combout\(1) & ((\testA~combout\(5) & ((\testSel~combout\(1)) # (\testOp~combout\(0)))) # (!\testA~combout\(5) & (\testSel~combout\(1) & \testOp~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(5),
	datab => \testSel~combout\(1),
	datac => \testOp~combout\(1),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~23_combout\);

-- Location: LCCOMB_X8_Y4_N22
\unit1|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~27_combout\ = (\unit1|Add0~23_combout\) # ((!\testOp~combout\(1) & \unit1|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testOp~combout\(1),
	datac => \unit1|Add0~25_combout\,
	datad => \unit1|Add0~23_combout\,
	combout => \unit1|Add0~27_combout\);

-- Location: LCCOMB_X8_Y4_N24
\unit1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~28_combout\ = (\testA~combout\(6) & ((\testOp~combout\(0)) # ((\testSel~combout\(1) & \testSel~combout\(0))))) # (!\testA~combout\(6) & (\testSel~combout\(1) & (\testSel~combout\(0) & \testOp~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(6),
	datab => \testSel~combout\(1),
	datac => \testSel~combout\(0),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~28_combout\);

-- Location: LCCOMB_X8_Y4_N10
\unit1|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~29_combout\ = \testOp~combout\(0) $ (((\testSel~combout\(1) & \testSel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testSel~combout\(1),
	datac => \testSel~combout\(0),
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~29_combout\);

-- Location: LCCOMB_X8_Y5_N18
\unit1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~30_combout\ = (\testA~combout\(6) & ((\unit1|Add0~29_combout\ & (\unit1|Add0~26\ & VCC)) # (!\unit1|Add0~29_combout\ & (!\unit1|Add0~26\)))) # (!\testA~combout\(6) & ((\unit1|Add0~29_combout\ & (!\unit1|Add0~26\)) # (!\unit1|Add0~29_combout\ & 
-- ((\unit1|Add0~26\) # (GND)))))
-- \unit1|Add0~31\ = CARRY((\testA~combout\(6) & (!\unit1|Add0~29_combout\ & !\unit1|Add0~26\)) # (!\testA~combout\(6) & ((!\unit1|Add0~26\) # (!\unit1|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testA~combout\(6),
	datab => \unit1|Add0~29_combout\,
	datad => VCC,
	cin => \unit1|Add0~26\,
	combout => \unit1|Add0~30_combout\,
	cout => \unit1|Add0~31\);

-- Location: LCCOMB_X8_Y4_N20
\unit1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~32_combout\ = (\testOp~combout\(1) & (\unit1|Add0~28_combout\)) # (!\testOp~combout\(1) & ((\unit1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Add0~28_combout\,
	datab => \unit1|Add0~30_combout\,
	datac => \testOp~combout\(1),
	combout => \unit1|Add0~32_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\testA[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_testA(7),
	combout => \testA~combout\(7));

-- Location: LCCOMB_X8_Y5_N20
\unit1|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~33_combout\ = \testA~combout\(7) $ (\unit1|Add0~31\ $ (!\testOp~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \testA~combout\(7),
	datad => \testOp~combout\(0),
	cin => \unit1|Add0~31\,
	combout => \unit1|Add0~33_combout\);

-- Location: LCCOMB_X8_Y5_N22
\unit1|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Add0~35_combout\ = (\testOp~combout\(1) & (\testA~combout\(7) & ((\testOp~combout\(0))))) # (!\testOp~combout\(1) & (((\unit1|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testA~combout\(7),
	datac => \unit1|Add0~33_combout\,
	datad => \testOp~combout\(0),
	combout => \unit1|Add0~35_combout\);

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(0));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(1));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(2));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(3));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(4));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(5));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(6));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(7));
END structure;


