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

-- DATE "10/27/2018 10:56:30"

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

ENTITY 	TestCU IS
    PORT (
	op1 : IN std_logic_vector(5 DOWNTO 0);
	st1 : IN std_logic_vector(3 DOWNTO 0);
	ALUop1 : OUT std_logic_vector(1 DOWNTO 0);
	ALUsrcA1 : OUT std_logic;
	ALUsrcB1 : OUT std_logic_vector(1 DOWNTO 0);
	PCsrc1 : OUT std_logic_vector(1 DOWNTO 0);
	PCwrCond1 : OUT std_logic;
	PCwr1 : OUT std_logic;
	RegWr1 : OUT std_logic;
	RegDst1 : OUT std_logic;
	IorD1 : OUT std_logic;
	MemRd1 : OUT std_logic;
	MemWr1 : OUT std_logic;
	MemtoReg1 : OUT std_logic;
	IRwr1 : OUT std_logic;
	NextSt1 : OUT std_logic_vector(3 DOWNTO 0)
	);
END TestCU;

-- Design Ports Information
-- ALUop1[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUop1[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcA1	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcB1[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcB1[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCsrc1[0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCsrc1[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCwrCond1	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCwr1	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWr1	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDst1	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IorD1	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemRd1	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemWr1	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemtoReg1	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRwr1	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt1[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt1[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt1[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt1[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- st1[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st1[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st1[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st1[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TestCU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_st1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALUop1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUsrcA1 : std_logic;
SIGNAL ww_ALUsrcB1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCsrc1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCwrCond1 : std_logic;
SIGNAL ww_PCwr1 : std_logic;
SIGNAL ww_RegWr1 : std_logic;
SIGNAL ww_RegDst1 : std_logic;
SIGNAL ww_IorD1 : std_logic;
SIGNAL ww_MemRd1 : std_logic;
SIGNAL ww_MemWr1 : std_logic;
SIGNAL ww_MemtoReg1 : std_logic;
SIGNAL ww_IRwr1 : std_logic;
SIGNAL ww_NextSt1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTUN|Equal1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTUN|comb~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTUN|Mux0~0_combout\ : std_logic;
SIGNAL \CONTUN|Mux0~1_combout\ : std_logic;
SIGNAL \CONTUN|comb~0_combout\ : std_logic;
SIGNAL \CONTUN|Equal4~0_combout\ : std_logic;
SIGNAL \CONTUN|comb~1_combout\ : std_logic;
SIGNAL \CONTUN|Equal2~0_combout\ : std_logic;
SIGNAL \CONTUN|comb~2_combout\ : std_logic;
SIGNAL \CONTUN|comb~3_combout\ : std_logic;
SIGNAL \CONTUN|ALUsrcA~combout\ : std_logic;
SIGNAL \CONTUN|Equal0~0_combout\ : std_logic;
SIGNAL \CONTUN|comb~4_combout\ : std_logic;
SIGNAL \CONTUN|comb~5_combout\ : std_logic;
SIGNAL \CONTUN|Equal1~0_combout\ : std_logic;
SIGNAL \CONTUN|comb~6_combout\ : std_logic;
SIGNAL \CONTUN|comb~7_combout\ : std_logic;
SIGNAL \CONTUN|PCwrCond~combout\ : std_logic;
SIGNAL \CONTUN|comb~9_combout\ : std_logic;
SIGNAL \CONTUN|comb~8_combout\ : std_logic;
SIGNAL \CONTUN|PCwr~combout\ : std_logic;
SIGNAL \CONTUN|comb~10_combout\ : std_logic;
SIGNAL \CONTUN|Equal3~0_combout\ : std_logic;
SIGNAL \CONTUN|RegWr~combout\ : std_logic;
SIGNAL \CONTUN|RegDst~combout\ : std_logic;
SIGNAL \CONTUN|MemRd~combout\ : std_logic;
SIGNAL \CONTUN|IRwr~combout\ : std_logic;
SIGNAL \CONTUN|comb~4clkctrl_outclk\ : std_logic;
SIGNAL \CONTUN|Mux2~0_combout\ : std_logic;
SIGNAL \CONTUN|Mux2~1_combout\ : std_logic;
SIGNAL \CONTUN|Equal1~0clkctrl_outclk\ : std_logic;
SIGNAL \CONTUN|NextSt[0]~0_combout\ : std_logic;
SIGNAL \CONTUN|Mux1~0_combout\ : std_logic;
SIGNAL \CONTUN|NextSt[1]~1_combout\ : std_logic;
SIGNAL \CONTUN|NextSt[3]~2_combout\ : std_logic;
SIGNAL \st1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \op1~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CONTUN|NextSt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTUN|ALUop\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CONTUN|nxt_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTUN|PCsrc\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CONTUN|ALUsrcB\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_op1 <= op1;
ww_st1 <= st1;
ALUop1 <= ww_ALUop1;
ALUsrcA1 <= ww_ALUsrcA1;
ALUsrcB1 <= ww_ALUsrcB1;
PCsrc1 <= ww_PCsrc1;
PCwrCond1 <= ww_PCwrCond1;
PCwr1 <= ww_PCwr1;
RegWr1 <= ww_RegWr1;
RegDst1 <= ww_RegDst1;
IorD1 <= ww_IorD1;
MemRd1 <= ww_MemRd1;
MemWr1 <= ww_MemWr1;
MemtoReg1 <= ww_MemtoReg1;
IRwr1 <= ww_IRwr1;
NextSt1 <= ww_NextSt1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CONTUN|Equal1~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTUN|Equal1~0_combout\);

\CONTUN|comb~4clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTUN|comb~4_combout\);

-- Location: LCCOMB_X31_Y26_N22
\CONTUN|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Mux0~0_combout\ = (!\op1~combout\(3) & (!\op1~combout\(0) & (\op1~combout\(1) $ (\op1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(1),
	datab => \op1~combout\(2),
	datac => \op1~combout\(3),
	datad => \op1~combout\(0),
	combout => \CONTUN|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y26_N12
\CONTUN|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Mux0~1_combout\ = (\CONTUN|Mux0~0_combout\ & (!\op1~combout\(5) & !\op1~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Mux0~0_combout\,
	datac => \op1~combout\(5),
	datad => \op1~combout\(4),
	combout => \CONTUN|Mux0~1_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(5),
	combout => \op1~combout\(5));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st1(2),
	combout => \st1~combout\(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st1(0),
	combout => \st1~combout\(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st1(1),
	combout => \st1~combout\(1));

-- Location: LCCOMB_X20_Y26_N28
\CONTUN|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~0_combout\ = (\st1~combout\(3) & (!\st1~combout\(2) & (\st1~combout\(0) & !\st1~combout\(1)))) # (!\st1~combout\(3) & (\st1~combout\(2) $ (((!\st1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~0_combout\);

-- Location: LCCOMB_X20_Y26_N26
\CONTUN|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Equal4~0_combout\ = (\st1~combout\(3) & (!\st1~combout\(2) & (!\st1~combout\(0) & !\st1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|Equal4~0_combout\);

-- Location: LCCOMB_X12_Y26_N0
\CONTUN|ALUop[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|ALUop\(0) = (!\CONTUN|comb~0_combout\ & ((\CONTUN|Equal4~0_combout\) # (\CONTUN|ALUop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~0_combout\,
	datac => \CONTUN|Equal4~0_combout\,
	datad => \CONTUN|ALUop\(0),
	combout => \CONTUN|ALUop\(0));

-- Location: LCCOMB_X20_Y26_N16
\CONTUN|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~1_combout\ = (\st1~combout\(2) & (!\st1~combout\(3) & (\st1~combout\(0) & \st1~combout\(1)))) # (!\st1~combout\(2) & (((!\st1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~1_combout\);

-- Location: LCCOMB_X23_Y26_N14
\CONTUN|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Equal2~0_combout\ = (!\st1~combout\(3) & (\st1~combout\(2) & (!\st1~combout\(0) & \st1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y26_N0
\CONTUN|ALUop[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|ALUop\(1) = (!\CONTUN|comb~1_combout\ & ((\CONTUN|Equal2~0_combout\) # (\CONTUN|ALUop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~1_combout\,
	datac => \CONTUN|Equal2~0_combout\,
	datad => \CONTUN|ALUop\(1),
	combout => \CONTUN|ALUop\(1));

-- Location: LCCOMB_X20_Y26_N18
\CONTUN|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~2_combout\ = (\st1~combout\(2) & (!\st1~combout\(3) & (\st1~combout\(0) & \st1~combout\(1)))) # (!\st1~combout\(2) & (!\st1~combout\(1) & ((\st1~combout\(0)) # (!\st1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~2_combout\);

-- Location: LCCOMB_X20_Y26_N20
\CONTUN|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~3_combout\ = (!\st1~combout\(0) & ((\st1~combout\(3) & (!\st1~combout\(2) & !\st1~combout\(1))) # (!\st1~combout\(3) & (\st1~combout\(2) & \st1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~3_combout\);

-- Location: LCCOMB_X20_Y26_N22
\CONTUN|ALUsrcA\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|ALUsrcA~combout\ = (!\CONTUN|comb~2_combout\ & ((\CONTUN|comb~3_combout\) # (\CONTUN|ALUsrcA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~2_combout\,
	datac => \CONTUN|comb~3_combout\,
	datad => \CONTUN|ALUsrcA~combout\,
	combout => \CONTUN|ALUsrcA~combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st1(3),
	combout => \st1~combout\(3));

-- Location: LCCOMB_X23_Y26_N20
\CONTUN|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Equal0~0_combout\ = (!\st1~combout\(0) & (!\st1~combout\(2) & (!\st1~combout\(3) & !\st1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(0),
	datab => \st1~combout\(2),
	datac => \st1~combout\(3),
	datad => \st1~combout\(1),
	combout => \CONTUN|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y26_N16
\CONTUN|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~4_combout\ = (\st1~combout\(1) & (\st1~combout\(2) & (!\st1~combout\(3)))) # (!\st1~combout\(1) & (!\st1~combout\(2) & ((\st1~combout\(3)) # (\st1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(1),
	datab => \st1~combout\(2),
	datac => \st1~combout\(3),
	datad => \st1~combout\(0),
	combout => \CONTUN|comb~4_combout\);

-- Location: LCCOMB_X22_Y26_N28
\CONTUN|ALUsrcB[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|ALUsrcB\(0) = (!\CONTUN|comb~4_combout\ & ((\CONTUN|Equal0~0_combout\) # (\CONTUN|ALUsrcB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Equal0~0_combout\,
	datac => \CONTUN|comb~4_combout\,
	datad => \CONTUN|ALUsrcB\(0),
	combout => \CONTUN|ALUsrcB\(0));

-- Location: LCCOMB_X23_Y26_N12
\CONTUN|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~5_combout\ = (\st1~combout\(2) & (!\st1~combout\(3) & ((\st1~combout\(1))))) # (!\st1~combout\(2) & (!\st1~combout\(1) & ((\st1~combout\(3)) # (!\st1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~5_combout\);

-- Location: LCCOMB_X23_Y26_N30
\CONTUN|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Equal1~0_combout\ = (!\st1~combout\(1) & (!\st1~combout\(2) & (!\st1~combout\(3) & \st1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(1),
	datab => \st1~combout\(2),
	datac => \st1~combout\(3),
	datad => \st1~combout\(0),
	combout => \CONTUN|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\CONTUN|ALUsrcB[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|ALUsrcB\(1) = (!\CONTUN|comb~5_combout\ & ((\CONTUN|Equal1~0_combout\) # (\CONTUN|ALUsrcB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|comb~5_combout\,
	datac => \CONTUN|Equal1~0_combout\,
	datad => \CONTUN|ALUsrcB\(1),
	combout => \CONTUN|ALUsrcB\(1));

-- Location: LCCOMB_X12_Y26_N18
\CONTUN|PCsrc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|PCsrc\(0) = (!\CONTUN|comb~0_combout\ & ((\CONTUN|Equal4~0_combout\) # (\CONTUN|PCsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~0_combout\,
	datac => \CONTUN|Equal4~0_combout\,
	datad => \CONTUN|PCsrc\(0),
	combout => \CONTUN|PCsrc\(0));

-- Location: LCCOMB_X20_Y26_N2
\CONTUN|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~6_combout\ = (\st1~combout\(3) & ((\st1~combout\(2)) # ((\st1~combout\(0)) # (\st1~combout\(1))))) # (!\st1~combout\(3) & (\st1~combout\(2) $ (((\st1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~6_combout\);

-- Location: LCCOMB_X20_Y26_N24
\CONTUN|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~7_combout\ = (\st1~combout\(3) & (!\st1~combout\(2) & (\st1~combout\(0) & !\st1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~7_combout\);

-- Location: LCCOMB_X20_Y26_N0
\CONTUN|PCsrc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|PCsrc\(1) = (\CONTUN|comb~6_combout\ & ((\CONTUN|comb~7_combout\) # (\CONTUN|PCsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~6_combout\,
	datac => \CONTUN|comb~7_combout\,
	datad => \CONTUN|PCsrc\(1),
	combout => \CONTUN|PCsrc\(1));

-- Location: LCCOMB_X12_Y26_N12
\CONTUN|PCwrCond\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|PCwrCond~combout\ = (!\CONTUN|comb~0_combout\ & ((\CONTUN|Equal4~0_combout\) # (\CONTUN|PCwrCond~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|comb~0_combout\,
	datac => \CONTUN|Equal4~0_combout\,
	datad => \CONTUN|PCwrCond~combout\,
	combout => \CONTUN|PCwrCond~combout\);

-- Location: LCCOMB_X20_Y26_N12
\CONTUN|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~9_combout\ = (!\st1~combout\(2) & (!\st1~combout\(1) & (\st1~combout\(3) $ (!\st1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~9_combout\);

-- Location: LCCOMB_X20_Y26_N14
\CONTUN|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~8_combout\ = (\st1~combout\(2) & (!\st1~combout\(3) & ((\st1~combout\(1))))) # (!\st1~combout\(2) & (!\st1~combout\(1) & (\st1~combout\(3) $ (\st1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~8_combout\);

-- Location: LCCOMB_X20_Y26_N10
\CONTUN|PCwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|PCwr~combout\ = (!\CONTUN|comb~8_combout\ & ((\CONTUN|comb~9_combout\) # (\CONTUN|PCwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|comb~9_combout\,
	datac => \CONTUN|comb~8_combout\,
	datad => \CONTUN|PCwr~combout\,
	combout => \CONTUN|PCwr~combout\);

-- Location: LCCOMB_X20_Y26_N6
\CONTUN|comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|comb~10_combout\ = (\st1~combout\(2) & (!\st1~combout\(3) & (!\st1~combout\(0) & \st1~combout\(1)))) # (!\st1~combout\(2) & (((!\st1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|comb~10_combout\);

-- Location: LCCOMB_X20_Y26_N8
\CONTUN|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Equal3~0_combout\ = (!\st1~combout\(3) & (\st1~combout\(2) & (\st1~combout\(0) & \st1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st1~combout\(3),
	datab => \st1~combout\(2),
	datac => \st1~combout\(0),
	datad => \st1~combout\(1),
	combout => \CONTUN|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y26_N28
\CONTUN|RegWr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|RegWr~combout\ = (!\CONTUN|comb~10_combout\ & ((\CONTUN|Equal3~0_combout\) # (\CONTUN|RegWr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|comb~10_combout\,
	datac => \CONTUN|Equal3~0_combout\,
	datad => \CONTUN|RegWr~combout\,
	combout => \CONTUN|RegWr~combout\);

-- Location: LCCOMB_X19_Y26_N18
\CONTUN|RegDst\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|RegDst~combout\ = (!\CONTUN|comb~10_combout\ & ((\CONTUN|Equal3~0_combout\) # (\CONTUN|RegDst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|comb~10_combout\,
	datac => \CONTUN|Equal3~0_combout\,
	datad => \CONTUN|RegDst~combout\,
	combout => \CONTUN|RegDst~combout\);

-- Location: LCCOMB_X22_Y26_N2
\CONTUN|MemRd\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|MemRd~combout\ = (!\CONTUN|comb~4_combout\ & ((\CONTUN|Equal0~0_combout\) # (\CONTUN|MemRd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Equal0~0_combout\,
	datac => \CONTUN|comb~4_combout\,
	datad => \CONTUN|MemRd~combout\,
	combout => \CONTUN|MemRd~combout\);

-- Location: LCCOMB_X22_Y26_N0
\CONTUN|IRwr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|IRwr~combout\ = (!\CONTUN|comb~4_combout\ & ((\CONTUN|Equal0~0_combout\) # (\CONTUN|IRwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Equal0~0_combout\,
	datac => \CONTUN|comb~4_combout\,
	datad => \CONTUN|IRwr~combout\,
	combout => \CONTUN|IRwr~combout\);

-- Location: CLKCTRL_G9
\CONTUN|comb~4clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTUN|comb~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTUN|comb~4clkctrl_outclk\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(0),
	combout => \op1~combout\(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(2),
	combout => \op1~combout\(2));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(4),
	combout => \op1~combout\(4));

-- Location: LCCOMB_X31_Y26_N0
\CONTUN|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Mux2~0_combout\ = (!\op1~combout\(5) & (!\op1~combout\(0) & (!\op1~combout\(2) & !\op1~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \op1~combout\(0),
	datac => \op1~combout\(2),
	datad => \op1~combout\(4),
	combout => \CONTUN|Mux2~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(3),
	combout => \op1~combout\(3));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op1(1),
	combout => \op1~combout\(1));

-- Location: LCCOMB_X31_Y26_N2
\CONTUN|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Mux2~1_combout\ = (\CONTUN|Mux2~0_combout\ & (!\op1~combout\(3) & \op1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Mux2~0_combout\,
	datac => \op1~combout\(3),
	datad => \op1~combout\(1),
	combout => \CONTUN|Mux2~1_combout\);

-- Location: CLKCTRL_G8
\CONTUN|Equal1~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTUN|Equal1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTUN|Equal1~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y26_N6
\CONTUN|nxt_st[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|nxt_st\(0) = (GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & (\CONTUN|Mux2~1_combout\)) # (!GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & ((\CONTUN|nxt_st\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Mux2~1_combout\,
	datac => \CONTUN|nxt_st\(0),
	datad => \CONTUN|Equal1~0clkctrl_outclk\,
	combout => \CONTUN|nxt_st\(0));

-- Location: LCCOMB_X23_Y26_N22
\CONTUN|NextSt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt[0]~0_combout\ = (\CONTUN|Equal1~0_combout\ & ((\CONTUN|nxt_st\(0)))) # (!\CONTUN|Equal1~0_combout\ & (\CONTUN|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Equal1~0_combout\,
	datac => \CONTUN|Equal2~0_combout\,
	datad => \CONTUN|nxt_st\(0),
	combout => \CONTUN|NextSt[0]~0_combout\);

-- Location: LCCOMB_X23_Y26_N4
\CONTUN|NextSt[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt\(0) = (\CONTUN|Equal0~0_combout\) # ((GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & ((\CONTUN|NextSt[0]~0_combout\))) # (!GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & (\CONTUN|NextSt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|Equal0~0_combout\,
	datab => \CONTUN|NextSt\(0),
	datac => \CONTUN|comb~4clkctrl_outclk\,
	datad => \CONTUN|NextSt[0]~0_combout\,
	combout => \CONTUN|NextSt\(0));

-- Location: LCCOMB_X31_Y26_N20
\CONTUN|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|Mux1~0_combout\ = (\CONTUN|Mux2~0_combout\ & (!\op1~combout\(3) & !\op1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Mux2~0_combout\,
	datac => \op1~combout\(3),
	datad => \op1~combout\(1),
	combout => \CONTUN|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\CONTUN|nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|nxt_st\(1) = (GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & (\CONTUN|Mux1~0_combout\)) # (!GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & ((\CONTUN|nxt_st\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Mux1~0_combout\,
	datac => \CONTUN|nxt_st\(1),
	datad => \CONTUN|Equal1~0clkctrl_outclk\,
	combout => \CONTUN|nxt_st\(1));

-- Location: LCCOMB_X23_Y26_N28
\CONTUN|NextSt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt[1]~1_combout\ = (\CONTUN|Equal1~0_combout\ & ((\CONTUN|nxt_st\(1)))) # (!\CONTUN|Equal1~0_combout\ & (\CONTUN|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTUN|Equal1~0_combout\,
	datac => \CONTUN|Equal2~0_combout\,
	datad => \CONTUN|nxt_st\(1),
	combout => \CONTUN|NextSt[1]~1_combout\);

-- Location: LCCOMB_X23_Y26_N8
\CONTUN|NextSt[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt\(1) = (!\CONTUN|Equal0~0_combout\ & ((GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & ((\CONTUN|NextSt[1]~1_combout\))) # (!GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & (\CONTUN|NextSt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|Equal0~0_combout\,
	datab => \CONTUN|NextSt\(1),
	datac => \CONTUN|comb~4clkctrl_outclk\,
	datad => \CONTUN|NextSt[1]~1_combout\,
	combout => \CONTUN|NextSt\(1));

-- Location: LCCOMB_X23_Y26_N10
\CONTUN|nxt_st[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|nxt_st\(3) = (GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & (\CONTUN|Mux0~1_combout\)) # (!GLOBAL(\CONTUN|Equal1~0clkctrl_outclk\) & ((\CONTUN|nxt_st\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|Mux0~1_combout\,
	datac => \CONTUN|nxt_st\(3),
	datad => \CONTUN|Equal1~0clkctrl_outclk\,
	combout => \CONTUN|nxt_st\(3));

-- Location: LCCOMB_X23_Y26_N18
\CONTUN|NextSt[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt[3]~2_combout\ = (\CONTUN|Equal1~0_combout\ & \CONTUN|nxt_st\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTUN|Equal1~0_combout\,
	datad => \CONTUN|nxt_st\(3),
	combout => \CONTUN|NextSt[3]~2_combout\);

-- Location: LCCOMB_X23_Y26_N24
\CONTUN|NextSt[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTUN|NextSt\(3) = (!\CONTUN|Equal0~0_combout\ & ((GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & ((\CONTUN|NextSt[3]~2_combout\))) # (!GLOBAL(\CONTUN|comb~4clkctrl_outclk\) & (\CONTUN|NextSt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTUN|Equal0~0_combout\,
	datab => \CONTUN|NextSt\(3),
	datac => \CONTUN|comb~4clkctrl_outclk\,
	datad => \CONTUN|NextSt[3]~2_combout\,
	combout => \CONTUN|NextSt\(3));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUop1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|ALUop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUop1(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUop1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|ALUop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUop1(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcA1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|ALUsrcA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcA1);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcB1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|ALUsrcB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcB1(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcB1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|ALUsrcB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcB1(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCsrc1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|PCsrc\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCsrc1(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCsrc1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|PCsrc\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCsrc1(1));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCwrCond1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|PCwrCond~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCwrCond1);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCwr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|PCwr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCwr1);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegWr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|RegWr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWr1);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDst1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|RegDst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDst1);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IorD1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_IorD1);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemRd1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|MemRd~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemRd1);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemWr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_MemWr1);

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemtoReg1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_MemtoReg1);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRwr1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|IRwr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRwr1);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|NextSt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt1(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|NextSt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt1(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|NextSt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt1(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTUN|NextSt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt1(3));
END structure;


