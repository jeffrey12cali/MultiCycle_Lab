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

-- DATE "10/26/2018 23:33:53"

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

ENTITY 	controlUnit IS
    PORT (
	op : IN std_logic_vector(5 DOWNTO 0);
	st : IN std_logic_vector(3 DOWNTO 0);
	ALUop : OUT std_logic_vector(1 DOWNTO 0);
	ALUsrcA : OUT std_logic;
	ALUsrcB : OUT std_logic_vector(1 DOWNTO 0);
	PCsrc : OUT std_logic_vector(1 DOWNTO 0);
	PCwrCond : OUT std_logic;
	PCwr : OUT std_logic;
	RegWr : OUT std_logic;
	RegDst : OUT std_logic;
	IorD : OUT std_logic;
	MemRd : OUT std_logic;
	MemWr : OUT std_logic;
	MemtoReg : OUT std_logic;
	IRwr : OUT std_logic;
	NextSt : OUT std_logic_vector(3 DOWNTO 0)
	);
END controlUnit;

-- Design Ports Information
-- ALUop[0]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUop[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcA	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcB[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUsrcB[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCsrc[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCsrc[1]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCwrCond	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCwr	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWr	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDst	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IorD	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemRd	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemWr	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemtoReg	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRwr	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt[0]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NextSt[3]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- st[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st[1]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- st[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[1]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[2]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[3]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[4]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[5]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF controlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_st : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALUop : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUsrcA : std_logic;
SIGNAL ww_ALUsrcB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCsrc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCwrCond : std_logic;
SIGNAL ww_PCwr : std_logic;
SIGNAL ww_RegWr : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_IorD : std_logic;
SIGNAL ww_MemRd : std_logic;
SIGNAL ww_MemWr : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_IRwr : std_logic;
SIGNAL ww_NextSt : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ALUop[1]$latch~combout\ : std_logic;
SIGNAL \ALUsrcA$latch~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \ALUsrcB[0]$latch~combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \ALUsrcB[1]$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \PCwr$latch~combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \RegWr$latch~combout\ : std_logic;
SIGNAL \RegDst$latch~combout\ : std_logic;
SIGNAL \MemRd$latch~combout\ : std_logic;
SIGNAL \IRwr$latch~combout\ : std_logic;
SIGNAL \comb~2clkctrl_outclk\ : std_logic;
SIGNAL \NextSt[0]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \NextSt[1]~0_combout\ : std_logic;
SIGNAL \NextSt[1]$latch~combout\ : std_logic;
SIGNAL nxt_st : std_logic_vector(3 DOWNTO 0);
SIGNAL \st~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \op~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_op <= op;
ww_st <= st;
ALUop <= ww_ALUop;
ALUsrcA <= ww_ALUsrcA;
ALUsrcB <= ww_ALUsrcB;
PCsrc <= ww_PCsrc;
PCwrCond <= ww_PCwrCond;
PCwr <= ww_PCwr;
RegWr <= ww_RegWr;
RegDst <= ww_RegDst;
IorD <= ww_IorD;
MemRd <= ww_MemRd;
MemWr <= ww_MemWr;
MemtoReg <= ww_MemtoReg;
IRwr <= ww_IRwr;
NextSt <= ww_NextSt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~2_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(0),
	combout => \op~combout\(0));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st(3),
	combout => \st~combout\(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st(0),
	combout => \st~combout\(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st(2),
	combout => \st~combout\(2));

-- Location: LCCOMB_X1_Y19_N4
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\st~combout\(1) & (!\st~combout\(3) & (!\st~combout\(0) & \st~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datac => \st~combout\(0),
	datad => \st~combout\(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y19_N16
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\st~combout\(3) & ((\st~combout\(1) & (\st~combout\(0) & \st~combout\(2))) # (!\st~combout\(1) & ((!\st~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datac => \st~combout\(0),
	datad => \st~combout\(2),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\ALUop[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUop[1]$latch~combout\ = (!\comb~0_combout\ & ((\Equal2~0_combout\) # (\ALUop[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \comb~0_combout\,
	datad => \ALUop[1]$latch~combout\,
	combout => \ALUop[1]$latch~combout\);

-- Location: LCCOMB_X1_Y18_N26
\ALUsrcA$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUsrcA$latch~combout\ = (!\comb~0_combout\ & ((\Equal2~0_combout\) # (\ALUsrcA$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \comb~0_combout\,
	datad => \ALUsrcA$latch~combout\,
	combout => \ALUsrcA$latch~combout\);

-- Location: LCCOMB_X1_Y19_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\st~combout\(1) & (!\st~combout\(3) & !\st~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datad => \st~combout\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y19_N20
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\st~combout\(1) & (!\st~combout\(3) & \st~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datad => \st~combout\(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X1_Y19_N12
\ALUsrcB[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUsrcB[0]$latch~combout\ = (!\Equal2~1_combout\ & ((\Equal0~0_combout\) # (\ALUsrcB[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \ALUsrcB[0]$latch~combout\,
	combout => \ALUsrcB[0]$latch~combout\);

-- Location: LCCOMB_X1_Y19_N2
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\st~combout\(3) & ((\st~combout\(1) & ((\st~combout\(2)))) # (!\st~combout\(1) & (!\st~combout\(0) & !\st~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datac => \st~combout\(0),
	datad => \st~combout\(2),
	combout => \comb~1_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\st[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_st(1),
	combout => \st~combout\(1));

-- Location: LCCOMB_X1_Y19_N30
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\st~combout\(2) & (!\st~combout\(3) & (!\st~combout\(1) & \st~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(2),
	datab => \st~combout\(3),
	datac => \st~combout\(1),
	datad => \st~combout\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y19_N6
\ALUsrcB[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUsrcB[1]$latch~combout\ = (!\comb~1_combout\ & ((\Equal1~0_combout\) # (\ALUsrcB[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \Equal1~0_combout\,
	datad => \ALUsrcB[1]$latch~combout\,
	combout => \ALUsrcB[1]$latch~combout\);

-- Location: LCCOMB_X1_Y19_N28
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\st~combout\(3) & ((\st~combout\(2) & (\st~combout\(1))) # (!\st~combout\(2) & (!\st~combout\(1) & \st~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(2),
	datab => \st~combout\(3),
	datac => \st~combout\(1),
	datad => \st~combout\(0),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X1_Y19_N0
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\st~combout\(2) & (!\st~combout\(0) & (!\st~combout\(1) & !\st~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(2),
	datab => \st~combout\(0),
	datac => \st~combout\(1),
	datad => \st~combout\(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N28
\PCwr$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCwr$latch~combout\ = (!\comb~2_combout\ & ((\Equal0~1_combout\) # (\PCwr$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \PCwr$latch~combout\,
	combout => \PCwr$latch~combout\);

-- Location: LCCOMB_X1_Y19_N14
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\st~combout\(1) & (!\st~combout\(3) & (\st~combout\(0) & \st~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datac => \st~combout\(0),
	datad => \st~combout\(2),
	combout => \comb~4_combout\);

-- Location: LCCOMB_X1_Y19_N10
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\st~combout\(3)) # ((\st~combout\(1) & ((\st~combout\(0)) # (!\st~combout\(2)))) # (!\st~combout\(1) & ((\st~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st~combout\(1),
	datab => \st~combout\(3),
	datac => \st~combout\(0),
	datad => \st~combout\(2),
	combout => \comb~3_combout\);

-- Location: LCCOMB_X1_Y21_N28
\RegWr$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegWr$latch~combout\ = (\comb~3_combout\ & ((\comb~4_combout\) # (\RegWr$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datac => \comb~3_combout\,
	datad => \RegWr$latch~combout\,
	combout => \RegWr$latch~combout\);

-- Location: LCCOMB_X1_Y21_N26
\RegDst$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegDst$latch~combout\ = (\comb~3_combout\ & ((\comb~4_combout\) # (\RegDst$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datac => \comb~3_combout\,
	datad => \RegDst$latch~combout\,
	combout => \RegDst$latch~combout\);

-- Location: LCCOMB_X1_Y12_N26
\MemRd$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \MemRd$latch~combout\ = (!\comb~2_combout\ & ((\Equal0~1_combout\) # (\MemRd$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \MemRd$latch~combout\,
	combout => \MemRd$latch~combout\);

-- Location: LCCOMB_X1_Y12_N12
\IRwr$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \IRwr$latch~combout\ = (!\comb~2_combout\ & ((\Equal0~1_combout\) # (\IRwr$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \IRwr$latch~combout\,
	combout => \IRwr$latch~combout\);

-- Location: CLKCTRL_G2
\comb~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~2clkctrl_outclk\);

-- Location: LCCOMB_X1_Y19_N22
\NextSt[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextSt[0]$latch~combout\ = (\Equal0~1_combout\) # ((GLOBAL(\comb~2clkctrl_outclk\) & ((\Equal2~0_combout\))) # (!GLOBAL(\comb~2clkctrl_outclk\) & (\NextSt[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \NextSt[0]$latch~combout\,
	datac => \Equal2~0_combout\,
	datad => \comb~2clkctrl_outclk\,
	combout => \NextSt[0]$latch~combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(4),
	combout => \op~combout\(4));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(5),
	combout => \op~combout\(5));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(2),
	combout => \op~combout\(2));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(3),
	combout => \op~combout\(3));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_op(1),
	combout => \op~combout\(1));

-- Location: LCCOMB_X1_Y22_N0
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\op~combout\(0) & (!\op~combout\(2) & (!\op~combout\(3) & !\op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \op~combout\(2),
	datac => \op~combout\(3),
	datad => \op~combout\(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N26
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\op~combout\(4) & (!\op~combout\(5) & \Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y19_N24
\nxt_st[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- nxt_st(1) = (\Equal1~0_combout\ & (\Mux0~1_combout\)) # (!\Equal1~0_combout\ & ((nxt_st(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~1_combout\,
	datac => nxt_st(1),
	datad => \Equal1~0_combout\,
	combout => nxt_st(1));

-- Location: LCCOMB_X1_Y19_N18
\NextSt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextSt[1]~0_combout\ = (\Equal1~0_combout\ & (nxt_st(1))) # (!\Equal1~0_combout\ & ((\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => nxt_st(1),
	datad => \Equal2~0_combout\,
	combout => \NextSt[1]~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\NextSt[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextSt[1]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\comb~2clkctrl_outclk\) & ((\NextSt[1]~0_combout\))) # (!GLOBAL(\comb~2clkctrl_outclk\) & (\NextSt[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \NextSt[1]$latch~combout\,
	datac => \comb~2clkctrl_outclk\,
	datad => \NextSt[1]~0_combout\,
	combout => \NextSt[1]$latch~combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUop[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_ALUop(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUop[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUop[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUop(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUsrcA$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcA);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUsrcB[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcB(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUsrcB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALUsrcB[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUsrcB(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCsrc[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_PCsrc(0));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCsrc[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_PCsrc(1));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCwrCond~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_PCwrCond);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCwr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PCwr$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCwr);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegWr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RegWr$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWr);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RegDst$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDst);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IorD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_IorD);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemRd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MemRd$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemRd);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemWr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_MemWr);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemtoReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_MemtoReg);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRwr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IRwr$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRwr);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \NextSt[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \NextSt[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt(1));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \NextSt[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NextSt(2));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NextSt[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_NextSt(3));
END structure;


