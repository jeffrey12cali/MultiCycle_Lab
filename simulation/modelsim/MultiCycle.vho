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

-- DATE "10/18/2018 23:21:25"

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
	testOp : IN std_logic_vector(1 DOWNTO 0);
	testRes : OUT std_logic_vector(7 DOWNTO 0)
	);
END MultiCycle;

-- Design Ports Information
-- testRes[0]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[1]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[2]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[3]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[4]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[5]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[6]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testRes[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testOp[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testOp[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel1	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel2[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- testSel2[0]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_testOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_testRes : std_logic_vector(7 DOWNTO 0);
SIGNAL \testSel1~combout\ : std_logic;
SIGNAL \unit2|Mux3~0_combout\ : std_logic;
SIGNAL \unit1|Mux7~0_combout\ : std_logic;
SIGNAL \unit1|Mux6~0_combout\ : std_logic;
SIGNAL \unit1|Mux5~0_combout\ : std_logic;
SIGNAL \unit1|Mux5~1_combout\ : std_logic;
SIGNAL \unit1|Mux4~2_combout\ : std_logic;
SIGNAL \unit1|Mux3~0_combout\ : std_logic;
SIGNAL \unit1|Mux2~0_combout\ : std_logic;
SIGNAL \unit1|Mux1~0_combout\ : std_logic;
SIGNAL \unit1|Mux0~0_combout\ : std_logic;
SIGNAL \testSel2~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \testOp~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_testSel1 <= testSel1;
ww_testSel2 <= testSel2;
ww_testOp <= testOp;
testRes <= ww_testRes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y12_N0
\unit2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|Mux3~0_combout\ = (!\testSel2~combout\(0) & \testSel2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \testSel2~combout\(0),
	datad => \testSel2~combout\(1),
	combout => \unit2|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y12_N10
\unit1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux7~0_combout\ = (\testSel1~combout\ & ((\testOp~combout\(1) & ((\testOp~combout\(0)) # (\unit2|Mux3~0_combout\))) # (!\testOp~combout\(1) & ((!\unit2|Mux3~0_combout\))))) # (!\testSel1~combout\ & (\unit2|Mux3~0_combout\ & ((\testOp~combout\(0)) # 
-- (!\testOp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(0),
	datab => \testSel1~combout\,
	datac => \testOp~combout\(1),
	datad => \unit2|Mux3~0_combout\,
	combout => \unit1|Mux7~0_combout\);

-- Location: LCCOMB_X3_Y12_N12
\unit1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux6~0_combout\ = (\unit2|Mux3~0_combout\ & (\testOp~combout\(0) $ (((!\testSel1~combout\ & !\testOp~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(0),
	datab => \testSel1~combout\,
	datac => \testOp~combout\(1),
	datad => \unit2|Mux3~0_combout\,
	combout => \unit1|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y12_N22
\unit1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux5~0_combout\ = (\testSel2~combout\(1) & ((\testOp~combout\(1)) # (!\testSel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel1~combout\,
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y12_N8
\unit1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux5~1_combout\ = (\testSel2~combout\(0) & (\testOp~combout\(1))) # (!\testSel2~combout\(0) & ((\testOp~combout\(0)) # (\testOp~combout\(1) $ (!\unit1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel2~combout\(0),
	datac => \testOp~combout\(0),
	datad => \unit1|Mux5~0_combout\,
	combout => \unit1|Mux5~1_combout\);

-- Location: LCCOMB_X3_Y12_N2
\unit1|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux4~2_combout\ = (!\testOp~combout\(1) & ((\testSel2~combout\(0) & (!\testOp~combout\(0))) # (!\testSel2~combout\(0) & ((\testSel2~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel2~combout\(0),
	datac => \testOp~combout\(0),
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux4~2_combout\);

-- Location: LCCOMB_X3_Y12_N18
\unit1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux3~0_combout\ = (\testOp~combout\(0)) # (\testOp~combout\(1) $ (((\testSel2~combout\(0)) # (!\testSel2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel2~combout\(0),
	datac => \testOp~combout\(0),
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y12_N20
\unit1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux2~0_combout\ = (\testSel2~combout\(1) & ((\testOp~combout\(1) & ((\testOp~combout\(0)))) # (!\testOp~combout\(1) & (\testSel2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel2~combout\(0),
	datac => \testOp~combout\(0),
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux2~0_combout\);

-- Location: LCCOMB_X3_Y12_N6
\unit1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux1~0_combout\ = (\testSel2~combout\(1) & (\testOp~combout\(1) $ (((!\testOp~combout\(0)) # (!\testSel2~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(1),
	datab => \testSel2~combout\(0),
	datac => \testOp~combout\(0),
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y12_N24
\unit1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|Mux0~0_combout\ = (\testOp~combout\(0) & (!\testOp~combout\(1) & \testSel2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testOp~combout\(0),
	datac => \testOp~combout\(1),
	datad => \testSel2~combout\(1),
	combout => \unit1|Mux0~0_combout\);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(0));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(2));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(3));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(4));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(5));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(6));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \unit1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testRes(7));
END structure;


