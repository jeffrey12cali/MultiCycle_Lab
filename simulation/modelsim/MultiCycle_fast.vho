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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/12/2018 15:00:59"

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

ENTITY 	registerFile IS
    PORT (
	RR1 : IN std_logic_vector(4 DOWNTO 0);
	RR2 : IN std_logic_vector(4 DOWNTO 0);
	WR : IN std_logic_vector(4 DOWNTO 0);
	WD : IN std_logic_vector(31 DOWNTO 0);
	RegWR : IN std_logic;
	RD1 : OUT std_logic_vector(31 DOWNTO 0);
	RD2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END registerFile;

-- Design Ports Information
-- RR1[3]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR1[4]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR2[3]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR2[4]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR[3]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR[4]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[0]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[1]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[4]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[6]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[7]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[8]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[9]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[10]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[11]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[12]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[13]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[14]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[15]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[16]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[17]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[18]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[19]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[20]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[21]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[22]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[23]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[24]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[25]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[26]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[27]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[28]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[29]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[30]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[31]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[0]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[2]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[4]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[5]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[6]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[7]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[8]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[9]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[10]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[11]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[12]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[13]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[14]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[15]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[16]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[17]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[18]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[19]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[20]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[21]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[22]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[23]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[24]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[25]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[26]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[27]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[28]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[29]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[30]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2[31]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RR1[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR1[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR1[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR2[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR2[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RR2[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegWR	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[2]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[4]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[6]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[7]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[8]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[9]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[10]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[11]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[12]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[13]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[14]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[15]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[16]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[17]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[18]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[19]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[20]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[21]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[22]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[23]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[24]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[25]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[26]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[27]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[28]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[29]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[30]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WD[31]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF registerFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RR1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RR2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_WR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_WD : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegWR : std_logic;
SIGNAL ww_RD1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegWR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM~228_regout\ : std_logic;
SIGNAL \MEM~164_regout\ : std_logic;
SIGNAL \MEM~292_combout\ : std_logic;
SIGNAL \MEM~229_regout\ : std_logic;
SIGNAL \MEM~165_regout\ : std_logic;
SIGNAL \MEM~297_combout\ : std_logic;
SIGNAL \MEM~231_regout\ : std_logic;
SIGNAL \MEM~167_regout\ : std_logic;
SIGNAL \MEM~307_combout\ : std_logic;
SIGNAL \MEM~235_regout\ : std_logic;
SIGNAL \MEM~171_regout\ : std_logic;
SIGNAL \MEM~327_combout\ : std_logic;
SIGNAL \MEM~43_regout\ : std_logic;
SIGNAL \MEM~332_combout\ : std_logic;
SIGNAL \MEM~44_regout\ : std_logic;
SIGNAL \MEM~337_combout\ : std_logic;
SIGNAL \MEM~342_combout\ : std_logic;
SIGNAL \MEM~78_regout\ : std_logic;
SIGNAL \MEM~344_combout\ : std_logic;
SIGNAL \MEM~240_regout\ : std_logic;
SIGNAL \MEM~176_regout\ : std_logic;
SIGNAL \MEM~352_combout\ : std_logic;
SIGNAL \MEM~359_combout\ : std_logic;
SIGNAL \MEM~367_combout\ : std_logic;
SIGNAL \MEM~83_regout\ : std_logic;
SIGNAL \MEM~369_combout\ : std_logic;
SIGNAL \MEM~372_combout\ : std_logic;
SIGNAL \MEM~377_combout\ : std_logic;
SIGNAL \MEM~384_combout\ : std_logic;
SIGNAL \MEM~58_regout\ : std_logic;
SIGNAL \MEM~414_combout\ : std_logic;
SIGNAL \MEM~254_regout\ : std_logic;
SIGNAL \MEM~422_combout\ : std_logic;
SIGNAL \MEM~95_regout\ : std_logic;
SIGNAL \MEM~429_combout\ : std_logic;
SIGNAL \MEM~434_combout\ : std_logic;
SIGNAL \MEM~439_combout\ : std_logic;
SIGNAL \MEM~444_combout\ : std_logic;
SIGNAL \MEM~447_combout\ : std_logic;
SIGNAL \MEM~449_combout\ : std_logic;
SIGNAL \MEM~452_combout\ : std_logic;
SIGNAL \MEM~454_combout\ : std_logic;
SIGNAL \MEM~457_combout\ : std_logic;
SIGNAL \MEM~459_combout\ : std_logic;
SIGNAL \MEM~462_combout\ : std_logic;
SIGNAL \MEM~464_combout\ : std_logic;
SIGNAL \MEM~467_combout\ : std_logic;
SIGNAL \MEM~469_combout\ : std_logic;
SIGNAL \MEM~472_combout\ : std_logic;
SIGNAL \MEM~474_combout\ : std_logic;
SIGNAL \MEM~477_combout\ : std_logic;
SIGNAL \MEM~484_combout\ : std_logic;
SIGNAL \MEM~487_combout\ : std_logic;
SIGNAL \MEM~489_combout\ : std_logic;
SIGNAL \MEM~494_combout\ : std_logic;
SIGNAL \MEM~499_combout\ : std_logic;
SIGNAL \MEM~507_combout\ : std_logic;
SIGNAL \MEM~509_combout\ : std_logic;
SIGNAL \MEM~512_combout\ : std_logic;
SIGNAL \MEM~514_combout\ : std_logic;
SIGNAL \MEM~524_combout\ : std_logic;
SIGNAL \MEM~554_combout\ : std_logic;
SIGNAL \MEM~557_combout\ : std_logic;
SIGNAL \MEM~559_combout\ : std_logic;
SIGNAL \MEM~562_combout\ : std_logic;
SIGNAL \MEM~564_combout\ : std_logic;
SIGNAL \MEM~567_combout\ : std_logic;
SIGNAL \MEM~569_combout\ : std_logic;
SIGNAL \RegWR~combout\ : std_logic;
SIGNAL \RegWR~clkctrl_outclk\ : std_logic;
SIGNAL \MEM~612_combout\ : std_logic;
SIGNAL \MEM~196_regout\ : std_logic;
SIGNAL \MEM~615_combout\ : std_logic;
SIGNAL \MEM~260_regout\ : std_logic;
SIGNAL \MEM~293_combout\ : std_logic;
SIGNAL \MEM~619_combout\ : std_logic;
SIGNAL \MEM~132_regout\ : std_logic;
SIGNAL \MEM~616_combout\ : std_logic;
SIGNAL \MEM~100_regout\ : std_logic;
SIGNAL \MEM~621_combout\ : std_logic;
SIGNAL \MEM~618_combout\ : std_logic;
SIGNAL \MEM~36_regout\ : std_logic;
SIGNAL \MEM~620_combout\ : std_logic;
SIGNAL \MEM~617_combout\ : std_logic;
SIGNAL \MEM~68_regout\ : std_logic;
SIGNAL \MEM~294_combout\ : std_logic;
SIGNAL \MEM~295_combout\ : std_logic;
SIGNAL \MEM~296_combout\ : std_logic;
SIGNAL \MEM~133_regout\ : std_logic;
SIGNAL \MEM~101_regout\ : std_logic;
SIGNAL \MEM~37_regout\ : std_logic;
SIGNAL \MEM~69_regout\ : std_logic;
SIGNAL \MEM~299_combout\ : std_logic;
SIGNAL \MEM~300_combout\ : std_logic;
SIGNAL \MEM~261_regout\ : std_logic;
SIGNAL \MEM~197_regout\ : std_logic;
SIGNAL \MEM~298_combout\ : std_logic;
SIGNAL \MEM~301_combout\ : std_logic;
SIGNAL \MEM~613_combout\ : std_logic;
SIGNAL \MEM~230_regout\ : std_logic;
SIGNAL \MEM~614_combout\ : std_logic;
SIGNAL \MEM~166_regout\ : std_logic;
SIGNAL \MEM~302_combout\ : std_logic;
SIGNAL \MEM~198_regout\ : std_logic;
SIGNAL \MEM~303_combout\ : std_logic;
SIGNAL \MEM~38_regout\ : std_logic;
SIGNAL \MEM~70_regout\ : std_logic;
SIGNAL \MEM~304_combout\ : std_logic;
SIGNAL \MEM~102_regout\ : std_logic;
SIGNAL \MEM~305_combout\ : std_logic;
SIGNAL \MEM~306_combout\ : std_logic;
SIGNAL \MEM~199_regout\ : std_logic;
SIGNAL \MEM~263_regout\ : std_logic;
SIGNAL \MEM~308_combout\ : std_logic;
SIGNAL \MEM~39_regout\ : std_logic;
SIGNAL \MEM~71_regout\ : std_logic;
SIGNAL \MEM~309_combout\ : std_logic;
SIGNAL \MEM~103_regout\ : std_logic;
SIGNAL \MEM~310_combout\ : std_logic;
SIGNAL \MEM~311_combout\ : std_logic;
SIGNAL \MEM~40_regout\ : std_logic;
SIGNAL \MEM~72_regout\ : std_logic;
SIGNAL \MEM~314_combout\ : std_logic;
SIGNAL \MEM~104_regout\ : std_logic;
SIGNAL \MEM~315_combout\ : std_logic;
SIGNAL \MEM~168_regout\ : std_logic;
SIGNAL \MEM~232_regout\ : std_logic;
SIGNAL \MEM~312_combout\ : std_logic;
SIGNAL \MEM~200_regout\ : std_logic;
SIGNAL \MEM~264_regout\ : std_logic;
SIGNAL \MEM~313_combout\ : std_logic;
SIGNAL \MEM~316_combout\ : std_logic;
SIGNAL \MEM~169_regout\ : std_logic;
SIGNAL \MEM~233_regout\ : std_logic;
SIGNAL \MEM~317_combout\ : std_logic;
SIGNAL \MEM~201_regout\ : std_logic;
SIGNAL \MEM~318_combout\ : std_logic;
SIGNAL \MEM~41_regout\ : std_logic;
SIGNAL \MEM~73_regout\ : std_logic;
SIGNAL \MEM~319_combout\ : std_logic;
SIGNAL \MEM~105_regout\ : std_logic;
SIGNAL \MEM~137_regout\ : std_logic;
SIGNAL \MEM~320_combout\ : std_logic;
SIGNAL \MEM~321_combout\ : std_logic;
SIGNAL \MEM~42_regout\ : std_logic;
SIGNAL \MEM~74_regout\ : std_logic;
SIGNAL \MEM~324_combout\ : std_logic;
SIGNAL \MEM~106_regout\ : std_logic;
SIGNAL \MEM~138_regout\ : std_logic;
SIGNAL \MEM~325_combout\ : std_logic;
SIGNAL \MEM~170_regout\ : std_logic;
SIGNAL \MEM~234_regout\ : std_logic;
SIGNAL \MEM~322_combout\ : std_logic;
SIGNAL \MEM~202_regout\ : std_logic;
SIGNAL \MEM~323_combout\ : std_logic;
SIGNAL \MEM~326_combout\ : std_logic;
SIGNAL \MEM~75_regout\ : std_logic;
SIGNAL \MEM~329_combout\ : std_logic;
SIGNAL \MEM~107_regout\ : std_logic;
SIGNAL \MEM~139_regout\ : std_logic;
SIGNAL \MEM~330_combout\ : std_logic;
SIGNAL \MEM~267_regout\ : std_logic;
SIGNAL \MEM~203_regout\ : std_logic;
SIGNAL \MEM~328_combout\ : std_logic;
SIGNAL \MEM~331_combout\ : std_logic;
SIGNAL \MEM~268_regout\ : std_logic;
SIGNAL \MEM~204_regout\ : std_logic;
SIGNAL \MEM~333_combout\ : std_logic;
SIGNAL \MEM~76_regout\ : std_logic;
SIGNAL \MEM~334_combout\ : std_logic;
SIGNAL \MEM~108_regout\ : std_logic;
SIGNAL \MEM~335_combout\ : std_logic;
SIGNAL \MEM~336_combout\ : std_logic;
SIGNAL \MEM~141_regout\ : std_logic;
SIGNAL \MEM~109_regout\ : std_logic;
SIGNAL \MEM~45_regout\ : std_logic;
SIGNAL \MEM~77_regout\ : std_logic;
SIGNAL \MEM~339_combout\ : std_logic;
SIGNAL \MEM~340_combout\ : std_logic;
SIGNAL \MEM~269_regout\ : std_logic;
SIGNAL \MEM~205_regout\ : std_logic;
SIGNAL \MEM~338_combout\ : std_logic;
SIGNAL \MEM~341_combout\ : std_logic;
SIGNAL \MEM~270_regout\ : std_logic;
SIGNAL \MEM~206_regout\ : std_logic;
SIGNAL \MEM~343_combout\ : std_logic;
SIGNAL \MEM~110_regout\ : std_logic;
SIGNAL \MEM~142_regout\ : std_logic;
SIGNAL \MEM~345_combout\ : std_logic;
SIGNAL \MEM~346_combout\ : std_logic;
SIGNAL \MEM~79_regout\ : std_logic;
SIGNAL \MEM~47_regout\ : std_logic;
SIGNAL \MEM~349_combout\ : std_logic;
SIGNAL \MEM~111_regout\ : std_logic;
SIGNAL \MEM~143_regout\ : std_logic;
SIGNAL \MEM~350_combout\ : std_logic;
SIGNAL \MEM~175_regout\ : std_logic;
SIGNAL \MEM~239_regout\ : std_logic;
SIGNAL \MEM~347_combout\ : std_logic;
SIGNAL \MEM~207_regout\ : std_logic;
SIGNAL \MEM~271_regout\ : std_logic;
SIGNAL \MEM~348_combout\ : std_logic;
SIGNAL \MEM~351_combout\ : std_logic;
SIGNAL \MEM~272_regout\ : std_logic;
SIGNAL \MEM~208_regout\ : std_logic;
SIGNAL \MEM~353_combout\ : std_logic;
SIGNAL \MEM~144_regout\ : std_logic;
SIGNAL \MEM~112_regout\ : std_logic;
SIGNAL \MEM~48_regout\ : std_logic;
SIGNAL \MEM~80_regout\ : std_logic;
SIGNAL \MEM~354_combout\ : std_logic;
SIGNAL \MEM~355_combout\ : std_logic;
SIGNAL \MEM~356_combout\ : std_logic;
SIGNAL \MEM~177_regout\ : std_logic;
SIGNAL \MEM~241_regout\ : std_logic;
SIGNAL \MEM~357_combout\ : std_logic;
SIGNAL \MEM~209_regout\ : std_logic;
SIGNAL \MEM~358_combout\ : std_logic;
SIGNAL \MEM~113_regout\ : std_logic;
SIGNAL \MEM~145_regout\ : std_logic;
SIGNAL \MEM~360_combout\ : std_logic;
SIGNAL \MEM~361_combout\ : std_logic;
SIGNAL \MEM~178_regout\ : std_logic;
SIGNAL \MEM~242_regout\ : std_logic;
SIGNAL \MEM~362_combout\ : std_logic;
SIGNAL \MEM~210_regout\ : std_logic;
SIGNAL \MEM~274_regout\ : std_logic;
SIGNAL \MEM~363_combout\ : std_logic;
SIGNAL \MEM~82_regout\ : std_logic;
SIGNAL \MEM~50_regout\ : std_logic;
SIGNAL \MEM~364_combout\ : std_logic;
SIGNAL \MEM~114_regout\ : std_logic;
SIGNAL \MEM~146_regout\ : std_logic;
SIGNAL \MEM~365_combout\ : std_logic;
SIGNAL \MEM~366_combout\ : std_logic;
SIGNAL \MEM~147_regout\ : std_logic;
SIGNAL \MEM~115_regout\ : std_logic;
SIGNAL \MEM~370_combout\ : std_logic;
SIGNAL \MEM~275_regout\ : std_logic;
SIGNAL \MEM~211_regout\ : std_logic;
SIGNAL \MEM~368_combout\ : std_logic;
SIGNAL \MEM~371_combout\ : std_logic;
SIGNAL \MEM~84_regout\ : std_logic;
SIGNAL \MEM~374_combout\ : std_logic;
SIGNAL \MEM~116_regout\ : std_logic;
SIGNAL \MEM~148_regout\ : std_logic;
SIGNAL \MEM~375_combout\ : std_logic;
SIGNAL \MEM~276_regout\ : std_logic;
SIGNAL \MEM~212_regout\ : std_logic;
SIGNAL \MEM~373_combout\ : std_logic;
SIGNAL \MEM~376_combout\ : std_logic;
SIGNAL \MEM~277_regout\ : std_logic;
SIGNAL \MEM~213_regout\ : std_logic;
SIGNAL \MEM~378_combout\ : std_logic;
SIGNAL \MEM~85_regout\ : std_logic;
SIGNAL \MEM~53_regout\ : std_logic;
SIGNAL \MEM~379_combout\ : std_logic;
SIGNAL \MEM~117_regout\ : std_logic;
SIGNAL \MEM~149_regout\ : std_logic;
SIGNAL \MEM~380_combout\ : std_logic;
SIGNAL \MEM~381_combout\ : std_logic;
SIGNAL \MEM~150_regout\ : std_logic;
SIGNAL \MEM~118_regout\ : std_logic;
SIGNAL \MEM~385_combout\ : std_logic;
SIGNAL \MEM~182_regout\ : std_logic;
SIGNAL \MEM~246_regout\ : std_logic;
SIGNAL \MEM~382_combout\ : std_logic;
SIGNAL \MEM~214_regout\ : std_logic;
SIGNAL \MEM~278_regout\ : std_logic;
SIGNAL \MEM~383_combout\ : std_logic;
SIGNAL \MEM~386_combout\ : std_logic;
SIGNAL \MEM~87_regout\ : std_logic;
SIGNAL \MEM~55_regout\ : std_logic;
SIGNAL \MEM~389_combout\ : std_logic;
SIGNAL \MEM~119_regout\ : std_logic;
SIGNAL \MEM~151_regout\ : std_logic;
SIGNAL \MEM~390_combout\ : std_logic;
SIGNAL \MEM~183_regout\ : std_logic;
SIGNAL \MEM~247_regout\ : std_logic;
SIGNAL \MEM~387_combout\ : std_logic;
SIGNAL \MEM~215_regout\ : std_logic;
SIGNAL \MEM~388_combout\ : std_logic;
SIGNAL \MEM~391_combout\ : std_logic;
SIGNAL \MEM~184_regout\ : std_logic;
SIGNAL \MEM~248_regout\ : std_logic;
SIGNAL \MEM~392_combout\ : std_logic;
SIGNAL \MEM~216_regout\ : std_logic;
SIGNAL \MEM~393_combout\ : std_logic;
SIGNAL \MEM~88_regout\ : std_logic;
SIGNAL \MEM~56_regout\ : std_logic;
SIGNAL \MEM~394_combout\ : std_logic;
SIGNAL \MEM~120_regout\ : std_logic;
SIGNAL \MEM~395_combout\ : std_logic;
SIGNAL \MEM~396_combout\ : std_logic;
SIGNAL \MEM~153_regout\ : std_logic;
SIGNAL \MEM~121_regout\ : std_logic;
SIGNAL \MEM~57_regout\ : std_logic;
SIGNAL \MEM~89_regout\ : std_logic;
SIGNAL \MEM~399_combout\ : std_logic;
SIGNAL \MEM~400_combout\ : std_logic;
SIGNAL \MEM~185_regout\ : std_logic;
SIGNAL \MEM~249_regout\ : std_logic;
SIGNAL \MEM~397_combout\ : std_logic;
SIGNAL \MEM~217_regout\ : std_logic;
SIGNAL \MEM~281_regout\ : std_logic;
SIGNAL \MEM~398_combout\ : std_logic;
SIGNAL \MEM~401_combout\ : std_logic;
SIGNAL \MEM~282_regout\ : std_logic;
SIGNAL \MEM~218_regout\ : std_logic;
SIGNAL \MEM~186_regout\ : std_logic;
SIGNAL \MEM~250_regout\ : std_logic;
SIGNAL \MEM~402_combout\ : std_logic;
SIGNAL \MEM~403_combout\ : std_logic;
SIGNAL \MEM~90_regout\ : std_logic;
SIGNAL \MEM~404_combout\ : std_logic;
SIGNAL \MEM~122_regout\ : std_logic;
SIGNAL \MEM~154_regout\ : std_logic;
SIGNAL \MEM~405_combout\ : std_logic;
SIGNAL \MEM~406_combout\ : std_logic;
SIGNAL \MEM~187_regout\ : std_logic;
SIGNAL \MEM~251_regout\ : std_logic;
SIGNAL \MEM~407_combout\ : std_logic;
SIGNAL \MEM~219_regout\ : std_logic;
SIGNAL \MEM~408_combout\ : std_logic;
SIGNAL \MEM~91_regout\ : std_logic;
SIGNAL \MEM~59_regout\ : std_logic;
SIGNAL \MEM~409_combout\ : std_logic;
SIGNAL \MEM~123_regout\ : std_logic;
SIGNAL \MEM~155_regout\ : std_logic;
SIGNAL \MEM~410_combout\ : std_logic;
SIGNAL \MEM~411_combout\ : std_logic;
SIGNAL \MEM~252_regout\ : std_logic;
SIGNAL \MEM~412_combout\ : std_logic;
SIGNAL \MEM~220_regout\ : std_logic;
SIGNAL \MEM~413_combout\ : std_logic;
SIGNAL \MEM~124_regout\ : std_logic;
SIGNAL \MEM~156_regout\ : std_logic;
SIGNAL \MEM~415_combout\ : std_logic;
SIGNAL \MEM~416_combout\ : std_logic;
SIGNAL \MEM~189_regout\ : std_logic;
SIGNAL \MEM~253_regout\ : std_logic;
SIGNAL \MEM~417_combout\ : std_logic;
SIGNAL \MEM~221_regout\ : std_logic;
SIGNAL \MEM~418_combout\ : std_logic;
SIGNAL \MEM~93_regout\ : std_logic;
SIGNAL \MEM~61_regout\ : std_logic;
SIGNAL \MEM~419_combout\ : std_logic;
SIGNAL \MEM~125_regout\ : std_logic;
SIGNAL \MEM~420_combout\ : std_logic;
SIGNAL \MEM~421_combout\ : std_logic;
SIGNAL \MEM~286_regout\ : std_logic;
SIGNAL \MEM~222_regout\ : std_logic;
SIGNAL \MEM~423_combout\ : std_logic;
SIGNAL \MEM~158_regout\ : std_logic;
SIGNAL \MEM~126_regout\ : std_logic;
SIGNAL \MEM~94_regout\ : std_logic;
SIGNAL \MEM~62_regout\ : std_logic;
SIGNAL \MEM~424_combout\ : std_logic;
SIGNAL \MEM~425_combout\ : std_logic;
SIGNAL \MEM~426_combout\ : std_logic;
SIGNAL \MEM~127_regout\ : std_logic;
SIGNAL \MEM~159_regout\ : std_logic;
SIGNAL \MEM~430_combout\ : std_logic;
SIGNAL \MEM~191_regout\ : std_logic;
SIGNAL \MEM~255_regout\ : std_logic;
SIGNAL \MEM~427_combout\ : std_logic;
SIGNAL \MEM~223_regout\ : std_logic;
SIGNAL \MEM~287_regout\ : std_logic;
SIGNAL \MEM~428_combout\ : std_logic;
SIGNAL \MEM~431_combout\ : std_logic;
SIGNAL \MEM~192_regout\ : std_logic;
SIGNAL \MEM~256_regout\ : std_logic;
SIGNAL \MEM~432_combout\ : std_logic;
SIGNAL \MEM~224_regout\ : std_logic;
SIGNAL \MEM~433_combout\ : std_logic;
SIGNAL \MEM~128_regout\ : std_logic;
SIGNAL \MEM~160_regout\ : std_logic;
SIGNAL \MEM~435_combout\ : std_logic;
SIGNAL \MEM~436_combout\ : std_logic;
SIGNAL \MEM~129_regout\ : std_logic;
SIGNAL \MEM~161_regout\ : std_logic;
SIGNAL \MEM~440_combout\ : std_logic;
SIGNAL \MEM~225_regout\ : std_logic;
SIGNAL \MEM~193_regout\ : std_logic;
SIGNAL \MEM~257_regout\ : std_logic;
SIGNAL \MEM~437_combout\ : std_logic;
SIGNAL \MEM~438_combout\ : std_logic;
SIGNAL \MEM~441_combout\ : std_logic;
SIGNAL \MEM~130_regout\ : std_logic;
SIGNAL \MEM~162_regout\ : std_logic;
SIGNAL \MEM~445_combout\ : std_logic;
SIGNAL \MEM~226_regout\ : std_logic;
SIGNAL \MEM~194_regout\ : std_logic;
SIGNAL \MEM~258_regout\ : std_logic;
SIGNAL \MEM~442_combout\ : std_logic;
SIGNAL \MEM~443_combout\ : std_logic;
SIGNAL \MEM~446_combout\ : std_logic;
SIGNAL \MEM~131_regout\ : std_logic;
SIGNAL \MEM~163_regout\ : std_logic;
SIGNAL \MEM~450_combout\ : std_logic;
SIGNAL \MEM~227_regout\ : std_logic;
SIGNAL \MEM~291_regout\ : std_logic;
SIGNAL \MEM~448_combout\ : std_logic;
SIGNAL \MEM~451_combout\ : std_logic;
SIGNAL \MEM~455_combout\ : std_logic;
SIGNAL \MEM~453_combout\ : std_logic;
SIGNAL \MEM~456_combout\ : std_logic;
SIGNAL \MEM~458_combout\ : std_logic;
SIGNAL \MEM~460_combout\ : std_logic;
SIGNAL \MEM~461_combout\ : std_logic;
SIGNAL \MEM~262_regout\ : std_logic;
SIGNAL \MEM~463_combout\ : std_logic;
SIGNAL \MEM~134_regout\ : std_logic;
SIGNAL \MEM~465_combout\ : std_logic;
SIGNAL \MEM~466_combout\ : std_logic;
SIGNAL \MEM~135_regout\ : std_logic;
SIGNAL \MEM~470_combout\ : std_logic;
SIGNAL \MEM~468_combout\ : std_logic;
SIGNAL \MEM~471_combout\ : std_logic;
SIGNAL \MEM~473_combout\ : std_logic;
SIGNAL \MEM~136_regout\ : std_logic;
SIGNAL \MEM~475_combout\ : std_logic;
SIGNAL \MEM~476_combout\ : std_logic;
SIGNAL \MEM~479_combout\ : std_logic;
SIGNAL \MEM~480_combout\ : std_logic;
SIGNAL \MEM~265_regout\ : std_logic;
SIGNAL \MEM~478_combout\ : std_logic;
SIGNAL \MEM~481_combout\ : std_logic;
SIGNAL \MEM~266_regout\ : std_logic;
SIGNAL \MEM~482_combout\ : std_logic;
SIGNAL \MEM~483_combout\ : std_logic;
SIGNAL \MEM~485_combout\ : std_logic;
SIGNAL \MEM~486_combout\ : std_logic;
SIGNAL \MEM~490_combout\ : std_logic;
SIGNAL \MEM~488_combout\ : std_logic;
SIGNAL \MEM~491_combout\ : std_logic;
SIGNAL \MEM~140_regout\ : std_logic;
SIGNAL \MEM~495_combout\ : std_logic;
SIGNAL \MEM~172_regout\ : std_logic;
SIGNAL \MEM~236_regout\ : std_logic;
SIGNAL \MEM~492_combout\ : std_logic;
SIGNAL \MEM~493_combout\ : std_logic;
SIGNAL \MEM~496_combout\ : std_logic;
SIGNAL \MEM~500_combout\ : std_logic;
SIGNAL \MEM~173_regout\ : std_logic;
SIGNAL \MEM~237_regout\ : std_logic;
SIGNAL \MEM~497_combout\ : std_logic;
SIGNAL \MEM~498_combout\ : std_logic;
SIGNAL \MEM~501_combout\ : std_logic;
SIGNAL \MEM~174_regout\ : std_logic;
SIGNAL \MEM~238_regout\ : std_logic;
SIGNAL \MEM~502_combout\ : std_logic;
SIGNAL \MEM~503_combout\ : std_logic;
SIGNAL \MEM~46_regout\ : std_logic;
SIGNAL \MEM~504_combout\ : std_logic;
SIGNAL \MEM~505_combout\ : std_logic;
SIGNAL \MEM~506_combout\ : std_logic;
SIGNAL \MEM~508_combout\ : std_logic;
SIGNAL \MEM~510_combout\ : std_logic;
SIGNAL \MEM~511_combout\ : std_logic;
SIGNAL \MEM~515_combout\ : std_logic;
SIGNAL \MEM~513_combout\ : std_logic;
SIGNAL \MEM~516_combout\ : std_logic;
SIGNAL \MEM~81_regout\ : std_logic;
SIGNAL \MEM~49_regout\ : std_logic;
SIGNAL \MEM~519_combout\ : std_logic;
SIGNAL \MEM~520_combout\ : std_logic;
SIGNAL \MEM~273_regout\ : std_logic;
SIGNAL \MEM~517_combout\ : std_logic;
SIGNAL \MEM~518_combout\ : std_logic;
SIGNAL \MEM~521_combout\ : std_logic;
SIGNAL \MEM~525_combout\ : std_logic;
SIGNAL \MEM~522_combout\ : std_logic;
SIGNAL \MEM~523_combout\ : std_logic;
SIGNAL \MEM~526_combout\ : std_logic;
SIGNAL \MEM~51_regout\ : std_logic;
SIGNAL \MEM~529_combout\ : std_logic;
SIGNAL \MEM~530_combout\ : std_logic;
SIGNAL \MEM~179_regout\ : std_logic;
SIGNAL \MEM~243_regout\ : std_logic;
SIGNAL \MEM~527_combout\ : std_logic;
SIGNAL \MEM~528_combout\ : std_logic;
SIGNAL \MEM~531_combout\ : std_logic;
SIGNAL \MEM~52_regout\ : std_logic;
SIGNAL \MEM~534_combout\ : std_logic;
SIGNAL \MEM~535_combout\ : std_logic;
SIGNAL \MEM~180_regout\ : std_logic;
SIGNAL \MEM~244_regout\ : std_logic;
SIGNAL \MEM~532_combout\ : std_logic;
SIGNAL \MEM~533_combout\ : std_logic;
SIGNAL \MEM~536_combout\ : std_logic;
SIGNAL \MEM~181_regout\ : std_logic;
SIGNAL \MEM~245_regout\ : std_logic;
SIGNAL \MEM~537_combout\ : std_logic;
SIGNAL \MEM~538_combout\ : std_logic;
SIGNAL \MEM~539_combout\ : std_logic;
SIGNAL \MEM~540_combout\ : std_logic;
SIGNAL \MEM~541_combout\ : std_logic;
SIGNAL \MEM~86_regout\ : std_logic;
SIGNAL \MEM~54_regout\ : std_logic;
SIGNAL \MEM~544_combout\ : std_logic;
SIGNAL \MEM~545_combout\ : std_logic;
SIGNAL \MEM~542_combout\ : std_logic;
SIGNAL \MEM~543_combout\ : std_logic;
SIGNAL \MEM~546_combout\ : std_logic;
SIGNAL \MEM~549_combout\ : std_logic;
SIGNAL \MEM~550_combout\ : std_logic;
SIGNAL \MEM~279_regout\ : std_logic;
SIGNAL \MEM~547_combout\ : std_logic;
SIGNAL \MEM~548_combout\ : std_logic;
SIGNAL \MEM~551_combout\ : std_logic;
SIGNAL \MEM~552_combout\ : std_logic;
SIGNAL \MEM~280_regout\ : std_logic;
SIGNAL \MEM~553_combout\ : std_logic;
SIGNAL \MEM~152_regout\ : std_logic;
SIGNAL \MEM~555_combout\ : std_logic;
SIGNAL \MEM~556_combout\ : std_logic;
SIGNAL \MEM~560_combout\ : std_logic;
SIGNAL \MEM~558_combout\ : std_logic;
SIGNAL \MEM~561_combout\ : std_logic;
SIGNAL \MEM~565_combout\ : std_logic;
SIGNAL \MEM~563_combout\ : std_logic;
SIGNAL \MEM~566_combout\ : std_logic;
SIGNAL \MEM~570_combout\ : std_logic;
SIGNAL \MEM~283_regout\ : std_logic;
SIGNAL \MEM~568_combout\ : std_logic;
SIGNAL \MEM~571_combout\ : std_logic;
SIGNAL \MEM~60_regout\ : std_logic;
SIGNAL \MEM~92_regout\ : std_logic;
SIGNAL \MEM~574_combout\ : std_logic;
SIGNAL \MEM~575_combout\ : std_logic;
SIGNAL \MEM~188_regout\ : std_logic;
SIGNAL \MEM~572_combout\ : std_logic;
SIGNAL \MEM~284_regout\ : std_logic;
SIGNAL \MEM~573_combout\ : std_logic;
SIGNAL \MEM~576_combout\ : std_logic;
SIGNAL \MEM~157_regout\ : std_logic;
SIGNAL \MEM~579_combout\ : std_logic;
SIGNAL \MEM~580_combout\ : std_logic;
SIGNAL \MEM~285_regout\ : std_logic;
SIGNAL \MEM~577_combout\ : std_logic;
SIGNAL \MEM~578_combout\ : std_logic;
SIGNAL \MEM~581_combout\ : std_logic;
SIGNAL \MEM~584_combout\ : std_logic;
SIGNAL \MEM~585_combout\ : std_logic;
SIGNAL \MEM~190_regout\ : std_logic;
SIGNAL \MEM~582_combout\ : std_logic;
SIGNAL \MEM~583_combout\ : std_logic;
SIGNAL \MEM~586_combout\ : std_logic;
SIGNAL \MEM~63_regout\ : std_logic;
SIGNAL \MEM~589_combout\ : std_logic;
SIGNAL \MEM~590_combout\ : std_logic;
SIGNAL \MEM~587_combout\ : std_logic;
SIGNAL \MEM~588_combout\ : std_logic;
SIGNAL \MEM~591_combout\ : std_logic;
SIGNAL \MEM~592_combout\ : std_logic;
SIGNAL \MEM~288_regout\ : std_logic;
SIGNAL \MEM~593_combout\ : std_logic;
SIGNAL \MEM~96_regout\ : std_logic;
SIGNAL \MEM~64_regout\ : std_logic;
SIGNAL \MEM~594_combout\ : std_logic;
SIGNAL \MEM~595_combout\ : std_logic;
SIGNAL \MEM~596_combout\ : std_logic;
SIGNAL \MEM~289_regout\ : std_logic;
SIGNAL \MEM~597_combout\ : std_logic;
SIGNAL \MEM~598_combout\ : std_logic;
SIGNAL \MEM~97_regout\ : std_logic;
SIGNAL \MEM~65_regout\ : std_logic;
SIGNAL \MEM~599_combout\ : std_logic;
SIGNAL \MEM~600_combout\ : std_logic;
SIGNAL \MEM~601_combout\ : std_logic;
SIGNAL \MEM~98_regout\ : std_logic;
SIGNAL \MEM~66_regout\ : std_logic;
SIGNAL \MEM~604_combout\ : std_logic;
SIGNAL \MEM~605_combout\ : std_logic;
SIGNAL \MEM~602_combout\ : std_logic;
SIGNAL \MEM~290_regout\ : std_logic;
SIGNAL \MEM~603_combout\ : std_logic;
SIGNAL \MEM~606_combout\ : std_logic;
SIGNAL \MEM~259_regout\ : std_logic;
SIGNAL \MEM~195_regout\ : std_logic;
SIGNAL \MEM~607_combout\ : std_logic;
SIGNAL \MEM~608_combout\ : std_logic;
SIGNAL \MEM~99_regout\ : std_logic;
SIGNAL \MEM~67_regout\ : std_logic;
SIGNAL \MEM~609_combout\ : std_logic;
SIGNAL \MEM~610_combout\ : std_logic;
SIGNAL \MEM~611_combout\ : std_logic;
SIGNAL \WR~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \WD~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RR2~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RR1~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_RR1 <= RR1;
ww_RR2 <= RR2;
ww_WR <= WR;
ww_WD <= WD;
ww_RegWR <= RegWR;
RD1 <= ww_RD1;
RD2 <= ww_RD2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RegWR~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RegWR~combout\);

-- Location: LCFF_X32_Y17_N17
\MEM~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~228_regout\);

-- Location: LCFF_X32_Y17_N3
\MEM~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~164_regout\);

-- Location: LCCOMB_X32_Y17_N16
\MEM~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~292_combout\ = (\RR1~combout\(1) & ((\RR1~combout\(0)) # ((\MEM~228_regout\)))) # (!\RR1~combout\(1) & (!\RR1~combout\(0) & ((\MEM~164_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~228_regout\,
	datad => \MEM~164_regout\,
	combout => \MEM~292_combout\);

-- Location: LCFF_X32_Y17_N15
\MEM~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~229_regout\);

-- Location: LCFF_X32_Y17_N1
\MEM~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~165_regout\);

-- Location: LCCOMB_X32_Y17_N14
\MEM~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~297_combout\ = (\RR1~combout\(1) & (((\MEM~229_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~165_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~165_regout\,
	datac => \MEM~229_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~297_combout\);

-- Location: LCFF_X32_Y17_N31
\MEM~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~231_regout\);

-- Location: LCFF_X32_Y17_N25
\MEM~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~167_regout\);

-- Location: LCCOMB_X32_Y17_N30
\MEM~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~307_combout\ = (\RR1~combout\(0) & (((\RR1~combout\(1))))) # (!\RR1~combout\(0) & ((\RR1~combout\(1) & ((\MEM~231_regout\))) # (!\RR1~combout\(1) & (\MEM~167_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~167_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~231_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~307_combout\);

-- Location: LCFF_X32_Y18_N1
\MEM~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~235_regout\);

-- Location: LCFF_X32_Y18_N27
\MEM~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~171_regout\);

-- Location: LCCOMB_X32_Y18_N0
\MEM~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~327_combout\ = (\RR1~combout\(1) & (((\MEM~235_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~171_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~171_regout\,
	datac => \MEM~235_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~327_combout\);

-- Location: LCFF_X29_Y19_N25
\MEM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~43_regout\);

-- Location: LCCOMB_X32_Y18_N28
\MEM~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~332_combout\ = (\RR1~combout\(1) & (((\MEM~236_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~172_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~172_regout\,
	datac => \MEM~236_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~332_combout\);

-- Location: LCFF_X29_Y19_N21
\MEM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~44_regout\);

-- Location: LCCOMB_X32_Y18_N16
\MEM~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~337_combout\ = (\RR1~combout\(0) & (((\RR1~combout\(1))))) # (!\RR1~combout\(0) & ((\RR1~combout\(1) & ((\MEM~237_regout\))) # (!\RR1~combout\(1) & (\MEM~173_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~173_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~237_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~337_combout\);

-- Location: LCCOMB_X32_Y18_N12
\MEM~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~342_combout\ = (\RR1~combout\(0) & (((\RR1~combout\(1))))) # (!\RR1~combout\(0) & ((\RR1~combout\(1) & ((\MEM~238_regout\))) # (!\RR1~combout\(1) & (\MEM~174_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~174_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~238_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~342_combout\);

-- Location: LCFF_X29_Y19_N17
\MEM~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~78_regout\);

-- Location: LCCOMB_X29_Y19_N16
\MEM~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~344_combout\ = (\RR1~combout\(1) & (\RR1~combout\(0))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & (\MEM~78_regout\)) # (!\RR1~combout\(0) & ((\MEM~46_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~78_regout\,
	datad => \MEM~46_regout\,
	combout => \MEM~344_combout\);

-- Location: LCFF_X32_Y18_N5
\MEM~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~240_regout\);

-- Location: LCFF_X32_Y18_N31
\MEM~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~176_regout\);

-- Location: LCCOMB_X32_Y18_N4
\MEM~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~352_combout\ = (\RR1~combout\(1) & (((\MEM~240_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~176_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~176_regout\,
	datac => \MEM~240_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~352_combout\);

-- Location: LCCOMB_X30_Y18_N8
\MEM~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~359_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~81_regout\))) # (!\RR1~combout\(0) & (\MEM~49_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~49_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~81_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~359_combout\);

-- Location: LCCOMB_X32_Y20_N12
\MEM~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~367_combout\ = (\RR1~combout\(1) & (((\MEM~243_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~179_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~179_regout\,
	datac => \MEM~243_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~367_combout\);

-- Location: LCFF_X30_Y18_N17
\MEM~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~83_regout\);

-- Location: LCCOMB_X30_Y18_N16
\MEM~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~369_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~83_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~51_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~83_regout\,
	datad => \MEM~51_regout\,
	combout => \MEM~369_combout\);

-- Location: LCCOMB_X32_Y20_N0
\MEM~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~372_combout\ = (\RR1~combout\(1) & (((\MEM~244_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~180_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~180_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~244_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~372_combout\);

-- Location: LCCOMB_X32_Y20_N28
\MEM~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~377_combout\ = (\RR1~combout\(1) & (((\MEM~245_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~181_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~181_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~245_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~377_combout\);

-- Location: LCCOMB_X31_Y19_N8
\MEM~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~384_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~86_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~86_regout\,
	datad => \MEM~54_regout\,
	combout => \MEM~384_combout\);

-- Location: LCFF_X31_Y19_N11
\MEM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~58_regout\);

-- Location: LCCOMB_X31_Y19_N0
\MEM~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~414_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~92_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~60_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~92_regout\,
	datad => \MEM~60_regout\,
	combout => \MEM~414_combout\);

-- Location: LCFF_X32_Y21_N21
\MEM~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~254_regout\);

-- Location: LCCOMB_X32_Y21_N20
\MEM~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~422_combout\ = (\RR1~combout\(1) & (((\MEM~254_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~190_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~190_regout\,
	datac => \MEM~254_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~422_combout\);

-- Location: LCFF_X31_Y19_N21
\MEM~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~95_regout\);

-- Location: LCCOMB_X31_Y19_N20
\MEM~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~429_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~95_regout\))) # (!\RR1~combout\(0) & (\MEM~63_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~63_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~95_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~429_combout\);

-- Location: LCCOMB_X30_Y20_N2
\MEM~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~434_combout\ = (\RR1~combout\(1) & (\RR1~combout\(0))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & (\MEM~96_regout\)) # (!\RR1~combout\(0) & ((\MEM~64_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~96_regout\,
	datad => \MEM~64_regout\,
	combout => \MEM~434_combout\);

-- Location: LCCOMB_X30_Y20_N30
\MEM~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~439_combout\ = (\RR1~combout\(0) & (((\MEM~97_regout\) # (\RR1~combout\(1))))) # (!\RR1~combout\(0) & (\MEM~65_regout\ & ((!\RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~65_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~97_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~439_combout\);

-- Location: LCCOMB_X30_Y20_N10
\MEM~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~444_combout\ = (\RR1~combout\(1) & (\RR1~combout\(0))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & (\MEM~98_regout\)) # (!\RR1~combout\(0) & ((\MEM~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~98_regout\,
	datad => \MEM~66_regout\,
	combout => \MEM~444_combout\);

-- Location: LCCOMB_X31_Y22_N16
\MEM~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~447_combout\ = (\RR1~combout\(1) & ((\RR1~combout\(0)) # ((\MEM~259_regout\)))) # (!\RR1~combout\(1) & (!\RR1~combout\(0) & ((\MEM~195_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~259_regout\,
	datad => \MEM~195_regout\,
	combout => \MEM~447_combout\);

-- Location: LCCOMB_X30_Y20_N14
\MEM~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~449_combout\ = (\RR1~combout\(1) & (\RR1~combout\(0))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & (\MEM~99_regout\)) # (!\RR1~combout\(0) & ((\MEM~67_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~99_regout\,
	datad => \MEM~67_regout\,
	combout => \MEM~449_combout\);

-- Location: LCCOMB_X32_Y17_N2
\MEM~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~452_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~228_regout\)) # (!\RR2~combout\(1) & ((\MEM~164_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~228_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~164_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~452_combout\);

-- Location: LCCOMB_X32_Y17_N22
\MEM~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~454_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (!\MEM~68_regout\)) # (!\RR2~combout\(0) & ((!\MEM~36_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~68_regout\,
	datab => \RR2~combout\(1),
	datac => \RR2~combout\(0),
	datad => \MEM~36_regout\,
	combout => \MEM~454_combout\);

-- Location: LCCOMB_X32_Y17_N0
\MEM~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~457_combout\ = (\RR2~combout\(1) & ((\RR2~combout\(0)) # ((\MEM~229_regout\)))) # (!\RR2~combout\(1) & (!\RR2~combout\(0) & (\MEM~165_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~165_regout\,
	datad => \MEM~229_regout\,
	combout => \MEM~457_combout\);

-- Location: LCCOMB_X29_Y19_N8
\MEM~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~459_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~69_regout\)) # (!\RR2~combout\(0) & ((\MEM~37_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~69_regout\,
	datac => \MEM~37_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~459_combout\);

-- Location: LCCOMB_X32_Y17_N12
\MEM~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~462_combout\ = (\RR2~combout\(1) & ((\RR2~combout\(0)) # ((\MEM~230_regout\)))) # (!\RR2~combout\(1) & (!\RR2~combout\(0) & (\MEM~166_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~166_regout\,
	datad => \MEM~230_regout\,
	combout => \MEM~462_combout\);

-- Location: LCCOMB_X29_Y19_N26
\MEM~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~464_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~70_regout\)) # (!\RR2~combout\(0) & ((\MEM~38_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~70_regout\,
	datac => \MEM~38_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~464_combout\);

-- Location: LCCOMB_X32_Y17_N24
\MEM~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~467_combout\ = (\RR2~combout\(1) & ((\RR2~combout\(0)) # ((\MEM~231_regout\)))) # (!\RR2~combout\(1) & (!\RR2~combout\(0) & (\MEM~167_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~167_regout\,
	datad => \MEM~231_regout\,
	combout => \MEM~467_combout\);

-- Location: LCCOMB_X29_Y19_N28
\MEM~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~469_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~71_regout\)) # (!\RR2~combout\(0) & ((\MEM~39_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~71_regout\,
	datac => \MEM~39_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~469_combout\);

-- Location: LCCOMB_X32_Y17_N4
\MEM~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~472_combout\ = (\RR2~combout\(1) & ((\RR2~combout\(0)) # ((\MEM~232_regout\)))) # (!\RR2~combout\(1) & (!\RR2~combout\(0) & (\MEM~168_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~168_regout\,
	datad => \MEM~232_regout\,
	combout => \MEM~472_combout\);

-- Location: LCCOMB_X29_Y19_N30
\MEM~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~474_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~72_regout\)) # (!\RR2~combout\(0) & ((\MEM~40_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~72_regout\,
	datac => \MEM~40_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~474_combout\);

-- Location: LCCOMB_X32_Y17_N8
\MEM~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~477_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~233_regout\)) # (!\RR2~combout\(1) & ((\MEM~169_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~233_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~169_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~477_combout\);

-- Location: LCCOMB_X29_Y19_N4
\MEM~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~484_combout\ = (\RR2~combout\(0) & ((\MEM~74_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~42_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~74_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~42_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~484_combout\);

-- Location: LCCOMB_X32_Y18_N26
\MEM~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~487_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~235_regout\))) # (!\RR2~combout\(1) & (\MEM~171_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~171_regout\,
	datad => \MEM~235_regout\,
	combout => \MEM~487_combout\);

-- Location: LCCOMB_X29_Y19_N24
\MEM~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~489_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~75_regout\)) # (!\RR2~combout\(0) & ((\MEM~43_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~75_regout\,
	datac => \MEM~43_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~489_combout\);

-- Location: LCCOMB_X29_Y19_N20
\MEM~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~494_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~76_regout\)) # (!\RR2~combout\(0) & ((\MEM~44_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~76_regout\,
	datac => \MEM~44_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~494_combout\);

-- Location: LCCOMB_X29_Y19_N14
\MEM~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~499_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~77_regout\)) # (!\RR2~combout\(0) & ((\MEM~45_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~77_regout\,
	datac => \MEM~45_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~499_combout\);

-- Location: LCCOMB_X32_Y18_N18
\MEM~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~507_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~239_regout\))) # (!\RR2~combout\(1) & (\MEM~175_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~175_regout\,
	datad => \MEM~239_regout\,
	combout => \MEM~507_combout\);

-- Location: LCCOMB_X30_Y18_N26
\MEM~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~509_combout\ = (\RR2~combout\(0) & ((\RR2~combout\(1)) # ((\MEM~79_regout\)))) # (!\RR2~combout\(0) & (!\RR2~combout\(1) & (\MEM~47_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~47_regout\,
	datad => \MEM~79_regout\,
	combout => \MEM~509_combout\);

-- Location: LCCOMB_X32_Y18_N30
\MEM~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~512_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~240_regout\)) # (!\RR2~combout\(1) & ((\MEM~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~240_regout\,
	datac => \MEM~176_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~512_combout\);

-- Location: LCCOMB_X30_Y18_N14
\MEM~514\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~514_combout\ = (\RR2~combout\(0) & ((\MEM~80_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~48_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~80_regout\,
	datac => \MEM~48_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~514_combout\);

-- Location: LCCOMB_X30_Y18_N30
\MEM~524\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~524_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~82_regout\)) # (!\RR2~combout\(0) & ((\MEM~50_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~82_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~50_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~524_combout\);

-- Location: LCCOMB_X30_Y18_N22
\MEM~554\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~554_combout\ = (\RR2~combout\(0) & ((\RR2~combout\(1)) # ((\MEM~88_regout\)))) # (!\RR2~combout\(0) & (!\RR2~combout\(1) & (\MEM~56_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~56_regout\,
	datad => \MEM~88_regout\,
	combout => \MEM~554_combout\);

-- Location: LCCOMB_X32_Y20_N2
\MEM~557\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~557_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~249_regout\)) # (!\RR2~combout\(1) & ((\MEM~185_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~249_regout\,
	datac => \MEM~185_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~557_combout\);

-- Location: LCCOMB_X31_Y19_N14
\MEM~559\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~559_combout\ = (\RR2~combout\(0) & ((\RR2~combout\(1)) # ((\MEM~89_regout\)))) # (!\RR2~combout\(0) & (!\RR2~combout\(1) & (\MEM~57_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~57_regout\,
	datad => \MEM~89_regout\,
	combout => \MEM~559_combout\);

-- Location: LCCOMB_X32_Y20_N14
\MEM~562\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~562_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~250_regout\)) # (!\RR2~combout\(1) & ((\MEM~186_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~250_regout\,
	datac => \MEM~186_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~562_combout\);

-- Location: LCCOMB_X31_Y19_N10
\MEM~564\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~564_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~90_regout\)) # (!\RR2~combout\(0) & ((\MEM~58_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~90_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~58_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~564_combout\);

-- Location: LCCOMB_X32_Y21_N10
\MEM~567\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~567_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~251_regout\))) # (!\RR2~combout\(1) & (\MEM~187_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~187_regout\,
	datad => \MEM~251_regout\,
	combout => \MEM~567_combout\);

-- Location: LCCOMB_X31_Y19_N30
\MEM~569\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~569_combout\ = (\RR2~combout\(0) & ((\RR2~combout\(1)) # ((\MEM~91_regout\)))) # (!\RR2~combout\(0) & (!\RR2~combout\(1) & (\MEM~59_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~59_regout\,
	datad => \MEM~91_regout\,
	combout => \MEM~569_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegWR~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RegWR,
	combout => \RegWR~combout\);

-- Location: CLKCTRL_G3
\RegWR~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RegWR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RegWR~clkctrl_outclk\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(0),
	combout => \WD~combout\(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WR(2),
	combout => \WR~combout\(2));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WR(1),
	combout => \WR~combout\(1));

-- Location: LCCOMB_X30_Y20_N18
\MEM~612\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~612_combout\ = (\WR~combout\(0) & (\WR~combout\(2) & !\WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~612_combout\);

-- Location: LCFF_X33_Y17_N9
\MEM~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~196_regout\);

-- Location: LCCOMB_X30_Y20_N0
\MEM~615\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~615_combout\ = (\WR~combout\(0) & (\WR~combout\(2) & \WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~615_combout\);

-- Location: LCFF_X33_Y17_N27
\MEM~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~260_regout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR1(0),
	combout => \RR1~combout\(0));

-- Location: LCCOMB_X33_Y17_N26
\MEM~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~293_combout\ = (\MEM~292_combout\ & (((\MEM~260_regout\) # (!\RR1~combout\(0))))) # (!\MEM~292_combout\ & (\MEM~196_regout\ & ((\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~292_combout\,
	datab => \MEM~196_regout\,
	datac => \MEM~260_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~293_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WR(0),
	combout => \WR~combout\(0));

-- Location: LCCOMB_X30_Y21_N28
\MEM~619\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~619_combout\ = (\WR~combout\(0) & (\WR~combout\(1) & !\WR~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WR~combout\(0),
	datac => \WR~combout\(1),
	datad => \WR~combout\(2),
	combout => \MEM~619_combout\);

-- Location: LCFF_X26_Y19_N25
\MEM~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~132_regout\);

-- Location: LCCOMB_X30_Y21_N18
\MEM~616\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~616_combout\ = (!\WR~combout\(0) & (\WR~combout\(1) & !\WR~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WR~combout\(0),
	datac => \WR~combout\(1),
	datad => \WR~combout\(2),
	combout => \MEM~616_combout\);

-- Location: LCFF_X27_Y19_N25
\MEM~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(0),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~100_regout\);

-- Location: LCCOMB_X30_Y20_N24
\MEM~621\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~621_combout\ = !\WD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WD~combout\(0),
	combout => \MEM~621_combout\);

-- Location: LCCOMB_X30_Y20_N20
\MEM~618\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~618_combout\ = (!\WR~combout\(0) & (!\WR~combout\(2) & !\WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~618_combout\);

-- Location: LCFF_X30_Y20_N25
\MEM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	datain => \MEM~621_combout\,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~36_regout\);

-- Location: LCCOMB_X27_Y19_N2
\MEM~620\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~620_combout\ = !\WD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WD~combout\(0),
	combout => \MEM~620_combout\);

-- Location: LCCOMB_X30_Y20_N26
\MEM~617\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~617_combout\ = (\WR~combout\(0) & (!\WR~combout\(2) & !\WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~617_combout\);

-- Location: LCFF_X27_Y19_N3
\MEM~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	datain => \MEM~620_combout\,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~68_regout\);

-- Location: LCCOMB_X32_Y17_N20
\MEM~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~294_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((!\MEM~68_regout\))) # (!\RR1~combout\(0) & (!\MEM~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~36_regout\,
	datac => \MEM~68_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~294_combout\);

-- Location: LCCOMB_X27_Y19_N24
\MEM~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~295_combout\ = (\RR1~combout\(1) & ((\MEM~294_combout\ & (\MEM~132_regout\)) # (!\MEM~294_combout\ & ((\MEM~100_regout\))))) # (!\RR1~combout\(1) & (((\MEM~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~132_regout\,
	datac => \MEM~100_regout\,
	datad => \MEM~294_combout\,
	combout => \MEM~295_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR1(2),
	combout => \RR1~combout\(2));

-- Location: LCCOMB_X33_Y17_N20
\MEM~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~296_combout\ = (\RR1~combout\(2) & (\MEM~293_combout\)) # (!\RR1~combout\(2) & ((\MEM~295_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~293_combout\,
	datac => \MEM~295_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~296_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(1),
	combout => \WD~combout\(1));

-- Location: LCFF_X26_Y19_N19
\MEM~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~133_regout\);

-- Location: LCFF_X27_Y19_N29
\MEM~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~101_regout\);

-- Location: LCFF_X29_Y19_N9
\MEM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~37_regout\);

-- Location: LCFF_X27_Y19_N31
\MEM~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~69_regout\);

-- Location: LCCOMB_X27_Y19_N30
\MEM~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~299_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~69_regout\))) # (!\RR1~combout\(0) & (\MEM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~37_regout\,
	datac => \MEM~69_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~299_combout\);

-- Location: LCCOMB_X27_Y19_N28
\MEM~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~300_combout\ = (\RR1~combout\(1) & ((\MEM~299_combout\ & (\MEM~133_regout\)) # (!\MEM~299_combout\ & ((\MEM~101_regout\))))) # (!\RR1~combout\(1) & (((\MEM~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~133_regout\,
	datac => \MEM~101_regout\,
	datad => \MEM~299_combout\,
	combout => \MEM~300_combout\);

-- Location: LCFF_X33_Y17_N25
\MEM~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~261_regout\);

-- Location: LCFF_X33_Y17_N31
\MEM~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(1),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~197_regout\);

-- Location: LCCOMB_X33_Y17_N30
\MEM~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~298_combout\ = (\MEM~297_combout\ & ((\MEM~261_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~297_combout\ & (((\MEM~197_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~297_combout\,
	datab => \MEM~261_regout\,
	datac => \MEM~197_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~298_combout\);

-- Location: LCCOMB_X33_Y17_N18
\MEM~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~301_combout\ = (\RR1~combout\(2) & ((\MEM~298_combout\))) # (!\RR1~combout\(2) & (\MEM~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~300_combout\,
	datac => \MEM~298_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~301_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(2),
	combout => \WD~combout\(2));

-- Location: LCCOMB_X30_Y20_N4
\MEM~613\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~613_combout\ = (!\WR~combout\(0) & (\WR~combout\(2) & \WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~613_combout\);

-- Location: LCFF_X32_Y17_N19
\MEM~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~230_regout\);

-- Location: LCCOMB_X30_Y20_N22
\MEM~614\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~614_combout\ = (!\WR~combout\(0) & (\WR~combout\(2) & !\WR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\(0),
	datab => \WR~combout\(2),
	datac => \WR~combout\(1),
	combout => \MEM~614_combout\);

-- Location: LCFF_X32_Y17_N13
\MEM~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~166_regout\);

-- Location: LCCOMB_X32_Y17_N18
\MEM~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~302_combout\ = (\RR1~combout\(1) & ((\RR1~combout\(0)) # ((\MEM~230_regout\)))) # (!\RR1~combout\(1) & (!\RR1~combout\(0) & ((\MEM~166_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~230_regout\,
	datad => \MEM~166_regout\,
	combout => \MEM~302_combout\);

-- Location: LCFF_X33_Y17_N29
\MEM~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~198_regout\);

-- Location: LCCOMB_X33_Y17_N28
\MEM~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~303_combout\ = (\MEM~302_combout\ & ((\MEM~262_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~302_combout\ & (((\MEM~198_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~262_regout\,
	datab => \MEM~302_combout\,
	datac => \MEM~198_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~303_combout\);

-- Location: LCFF_X29_Y19_N27
\MEM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~38_regout\);

-- Location: LCFF_X27_Y19_N27
\MEM~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~70_regout\);

-- Location: LCCOMB_X27_Y19_N26
\MEM~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~304_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~70_regout\))) # (!\RR1~combout\(0) & (\MEM~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~38_regout\,
	datac => \MEM~70_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~304_combout\);

-- Location: LCFF_X27_Y19_N1
\MEM~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~102_regout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR1(1),
	combout => \RR1~combout\(1));

-- Location: LCCOMB_X27_Y19_N0
\MEM~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~305_combout\ = (\MEM~304_combout\ & ((\MEM~134_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~304_combout\ & (((\MEM~102_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~134_regout\,
	datab => \MEM~304_combout\,
	datac => \MEM~102_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~305_combout\);

-- Location: LCCOMB_X33_Y17_N0
\MEM~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~306_combout\ = (\RR1~combout\(2) & (\MEM~303_combout\)) # (!\RR1~combout\(2) & ((\MEM~305_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~303_combout\,
	datab => \MEM~305_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~306_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(3),
	combout => \WD~combout\(3));

-- Location: LCFF_X33_Y17_N3
\MEM~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~199_regout\);

-- Location: LCFF_X33_Y17_N13
\MEM~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~263_regout\);

-- Location: LCCOMB_X33_Y17_N2
\MEM~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~308_combout\ = (\MEM~307_combout\ & (((\MEM~263_regout\)) # (!\RR1~combout\(0)))) # (!\MEM~307_combout\ & (\RR1~combout\(0) & (\MEM~199_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~307_combout\,
	datab => \RR1~combout\(0),
	datac => \MEM~199_regout\,
	datad => \MEM~263_regout\,
	combout => \MEM~308_combout\);

-- Location: LCFF_X29_Y19_N29
\MEM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~39_regout\);

-- Location: LCFF_X27_Y19_N23
\MEM~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~71_regout\);

-- Location: LCCOMB_X27_Y19_N22
\MEM~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~309_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~71_regout\))) # (!\RR1~combout\(0) & (\MEM~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~39_regout\,
	datac => \MEM~71_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~309_combout\);

-- Location: LCFF_X27_Y19_N13
\MEM~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~103_regout\);

-- Location: LCCOMB_X27_Y19_N12
\MEM~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~310_combout\ = (\MEM~309_combout\ & ((\MEM~135_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~309_combout\ & (((\MEM~103_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~135_regout\,
	datab => \MEM~309_combout\,
	datac => \MEM~103_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~310_combout\);

-- Location: LCCOMB_X27_Y19_N8
\MEM~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~311_combout\ = (\RR1~combout\(2) & (\MEM~308_combout\)) # (!\RR1~combout\(2) & ((\MEM~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~308_combout\,
	datac => \RR1~combout\(2),
	datad => \MEM~310_combout\,
	combout => \MEM~311_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(4),
	combout => \WD~combout\(4));

-- Location: LCFF_X29_Y19_N31
\MEM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~40_regout\);

-- Location: LCFF_X27_Y19_N5
\MEM~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~72_regout\);

-- Location: LCCOMB_X27_Y19_N4
\MEM~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~314_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~72_regout\))) # (!\RR1~combout\(0) & (\MEM~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~40_regout\,
	datac => \MEM~72_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~314_combout\);

-- Location: LCFF_X27_Y19_N11
\MEM~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~104_regout\);

-- Location: LCCOMB_X27_Y19_N10
\MEM~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~315_combout\ = (\MEM~314_combout\ & ((\MEM~136_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~314_combout\ & (((\MEM~104_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~136_regout\,
	datab => \MEM~314_combout\,
	datac => \MEM~104_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~315_combout\);

-- Location: LCFF_X32_Y17_N5
\MEM~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~168_regout\);

-- Location: LCFF_X32_Y17_N11
\MEM~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~232_regout\);

-- Location: LCCOMB_X32_Y17_N10
\MEM~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~312_combout\ = (\RR1~combout\(1) & (((\MEM~232_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~168_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~168_regout\,
	datac => \MEM~232_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~312_combout\);

-- Location: LCFF_X31_Y17_N9
\MEM~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~200_regout\);

-- Location: LCFF_X31_Y17_N27
\MEM~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~264_regout\);

-- Location: LCCOMB_X31_Y17_N8
\MEM~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~313_combout\ = (\RR1~combout\(0) & ((\MEM~312_combout\ & ((\MEM~264_regout\))) # (!\MEM~312_combout\ & (\MEM~200_regout\)))) # (!\RR1~combout\(0) & (\MEM~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~312_combout\,
	datac => \MEM~200_regout\,
	datad => \MEM~264_regout\,
	combout => \MEM~313_combout\);

-- Location: LCCOMB_X27_Y19_N14
\MEM~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~316_combout\ = (\RR1~combout\(2) & ((\MEM~313_combout\))) # (!\RR1~combout\(2) & (\MEM~315_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~315_combout\,
	datab => \MEM~313_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~316_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(5),
	combout => \WD~combout\(5));

-- Location: LCFF_X32_Y17_N9
\MEM~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~169_regout\);

-- Location: LCFF_X32_Y17_N7
\MEM~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~233_regout\);

-- Location: LCCOMB_X32_Y17_N6
\MEM~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~317_combout\ = (\RR1~combout\(1) & (((\MEM~233_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~169_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~169_regout\,
	datac => \MEM~233_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~317_combout\);

-- Location: LCFF_X31_Y17_N13
\MEM~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~201_regout\);

-- Location: LCCOMB_X31_Y17_N12
\MEM~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~318_combout\ = (\MEM~317_combout\ & ((\MEM~265_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~317_combout\ & (((\MEM~201_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~265_regout\,
	datab => \MEM~317_combout\,
	datac => \MEM~201_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~318_combout\);

-- Location: LCFF_X29_Y19_N1
\MEM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~41_regout\);

-- Location: LCFF_X27_Y19_N17
\MEM~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~73_regout\);

-- Location: LCCOMB_X27_Y19_N16
\MEM~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~319_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~73_regout\))) # (!\RR1~combout\(0) & (\MEM~41_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~41_regout\,
	datac => \MEM~73_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~319_combout\);

-- Location: LCFF_X30_Y19_N17
\MEM~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~105_regout\);

-- Location: LCFF_X30_Y19_N19
\MEM~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~137_regout\);

-- Location: LCCOMB_X30_Y19_N16
\MEM~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~320_combout\ = (\RR1~combout\(1) & ((\MEM~319_combout\ & ((\MEM~137_regout\))) # (!\MEM~319_combout\ & (\MEM~105_regout\)))) # (!\RR1~combout\(1) & (\MEM~319_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~319_combout\,
	datac => \MEM~105_regout\,
	datad => \MEM~137_regout\,
	combout => \MEM~320_combout\);

-- Location: LCCOMB_X30_Y19_N20
\MEM~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~321_combout\ = (\RR1~combout\(2) & (\MEM~318_combout\)) # (!\RR1~combout\(2) & ((\MEM~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~318_combout\,
	datac => \MEM~320_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~321_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(6),
	combout => \WD~combout\(6));

-- Location: LCFF_X29_Y19_N5
\MEM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~42_regout\);

-- Location: LCFF_X29_Y19_N11
\MEM~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~74_regout\);

-- Location: LCCOMB_X29_Y19_N10
\MEM~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~324_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~74_regout\))) # (!\RR1~combout\(0) & (\MEM~42_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~42_regout\,
	datac => \MEM~74_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~324_combout\);

-- Location: LCFF_X30_Y17_N1
\MEM~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~106_regout\);

-- Location: LCFF_X30_Y17_N11
\MEM~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~138_regout\);

-- Location: LCCOMB_X30_Y17_N0
\MEM~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~325_combout\ = (\RR1~combout\(1) & ((\MEM~324_combout\ & ((\MEM~138_regout\))) # (!\MEM~324_combout\ & (\MEM~106_regout\)))) # (!\RR1~combout\(1) & (\MEM~324_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~324_combout\,
	datac => \MEM~106_regout\,
	datad => \MEM~138_regout\,
	combout => \MEM~325_combout\);

-- Location: LCFF_X32_Y17_N29
\MEM~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~170_regout\);

-- Location: LCFF_X32_Y17_N27
\MEM~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~234_regout\);

-- Location: LCCOMB_X32_Y17_N26
\MEM~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~322_combout\ = (\RR1~combout\(1) & (((\MEM~234_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~170_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~170_regout\,
	datac => \MEM~234_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~322_combout\);

-- Location: LCFF_X31_Y17_N25
\MEM~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~202_regout\);

-- Location: LCCOMB_X31_Y17_N24
\MEM~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~323_combout\ = (\MEM~322_combout\ & ((\MEM~266_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~322_combout\ & (((\MEM~202_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~266_regout\,
	datab => \MEM~322_combout\,
	datac => \MEM~202_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~323_combout\);

-- Location: LCCOMB_X30_Y17_N12
\MEM~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~326_combout\ = (\RR1~combout\(2) & ((\MEM~323_combout\))) # (!\RR1~combout\(2) & (\MEM~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~325_combout\,
	datab => \MEM~323_combout\,
	datac => \RR1~combout\(2),
	combout => \MEM~326_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(7),
	combout => \WD~combout\(7));

-- Location: LCFF_X29_Y19_N23
\MEM~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~75_regout\);

-- Location: LCCOMB_X29_Y19_N22
\MEM~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~329_combout\ = (\RR1~combout\(0) & (((\MEM~75_regout\) # (\RR1~combout\(1))))) # (!\RR1~combout\(0) & (\MEM~43_regout\ & ((!\RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~43_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~75_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~329_combout\);

-- Location: LCFF_X30_Y17_N15
\MEM~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~107_regout\);

-- Location: LCFF_X30_Y17_N9
\MEM~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~139_regout\);

-- Location: LCCOMB_X30_Y17_N14
\MEM~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~330_combout\ = (\RR1~combout\(1) & ((\MEM~329_combout\ & ((\MEM~139_regout\))) # (!\MEM~329_combout\ & (\MEM~107_regout\)))) # (!\RR1~combout\(1) & (\MEM~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~329_combout\,
	datac => \MEM~107_regout\,
	datad => \MEM~139_regout\,
	combout => \MEM~330_combout\);

-- Location: LCFF_X31_Y17_N31
\MEM~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~267_regout\);

-- Location: LCFF_X31_Y17_N29
\MEM~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(7),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~203_regout\);

-- Location: LCCOMB_X31_Y17_N28
\MEM~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~328_combout\ = (\MEM~327_combout\ & ((\MEM~267_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~327_combout\ & (((\MEM~203_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~327_combout\,
	datab => \MEM~267_regout\,
	datac => \MEM~203_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~328_combout\);

-- Location: LCCOMB_X30_Y17_N18
\MEM~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~331_combout\ = (\RR1~combout\(2) & ((\MEM~328_combout\))) # (!\RR1~combout\(2) & (\MEM~330_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~330_combout\,
	datac => \RR1~combout\(2),
	datad => \MEM~328_combout\,
	combout => \MEM~331_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(8),
	combout => \WD~combout\(8));

-- Location: LCFF_X31_Y17_N3
\MEM~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~268_regout\);

-- Location: LCFF_X31_Y17_N17
\MEM~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~204_regout\);

-- Location: LCCOMB_X31_Y17_N16
\MEM~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~333_combout\ = (\MEM~332_combout\ & ((\MEM~268_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~332_combout\ & (((\MEM~204_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~332_combout\,
	datab => \MEM~268_regout\,
	datac => \MEM~204_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~333_combout\);

-- Location: LCFF_X29_Y19_N19
\MEM~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~76_regout\);

-- Location: LCCOMB_X29_Y19_N18
\MEM~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~334_combout\ = (\RR1~combout\(0) & (((\MEM~76_regout\) # (\RR1~combout\(1))))) # (!\RR1~combout\(0) & (\MEM~44_regout\ & ((!\RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~44_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~76_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~334_combout\);

-- Location: LCFF_X30_Y19_N31
\MEM~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~108_regout\);

-- Location: LCCOMB_X30_Y19_N30
\MEM~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~335_combout\ = (\MEM~334_combout\ & ((\MEM~140_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~334_combout\ & (((\MEM~108_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~140_regout\,
	datab => \MEM~334_combout\,
	datac => \MEM~108_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~335_combout\);

-- Location: LCCOMB_X30_Y19_N10
\MEM~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~336_combout\ = (\RR1~combout\(2) & (\MEM~333_combout\)) # (!\RR1~combout\(2) & ((\MEM~335_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~333_combout\,
	datab => \MEM~335_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~336_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(9),
	combout => \WD~combout\(9));

-- Location: LCFF_X26_Y19_N5
\MEM~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~141_regout\);

-- Location: LCFF_X26_Y19_N27
\MEM~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~109_regout\);

-- Location: LCFF_X29_Y19_N15
\MEM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~45_regout\);

-- Location: LCFF_X27_Y19_N19
\MEM~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~77_regout\);

-- Location: LCCOMB_X27_Y19_N18
\MEM~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~339_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~77_regout\))) # (!\RR1~combout\(0) & (\MEM~45_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~45_regout\,
	datac => \MEM~77_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~339_combout\);

-- Location: LCCOMB_X26_Y19_N26
\MEM~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~340_combout\ = (\RR1~combout\(1) & ((\MEM~339_combout\ & (\MEM~141_regout\)) # (!\MEM~339_combout\ & ((\MEM~109_regout\))))) # (!\RR1~combout\(1) & (((\MEM~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~141_regout\,
	datac => \MEM~109_regout\,
	datad => \MEM~339_combout\,
	combout => \MEM~340_combout\);

-- Location: LCFF_X33_Y19_N19
\MEM~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~269_regout\);

-- Location: LCFF_X33_Y19_N9
\MEM~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~205_regout\);

-- Location: LCCOMB_X33_Y19_N8
\MEM~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~338_combout\ = (\MEM~337_combout\ & ((\MEM~269_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~337_combout\ & (((\MEM~205_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~337_combout\,
	datab => \MEM~269_regout\,
	datac => \MEM~205_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~338_combout\);

-- Location: LCCOMB_X33_Y17_N22
\MEM~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~341_combout\ = (\RR1~combout\(2) & ((\MEM~338_combout\))) # (!\RR1~combout\(2) & (\MEM~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(2),
	datab => \MEM~340_combout\,
	datad => \MEM~338_combout\,
	combout => \MEM~341_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(10),
	combout => \WD~combout\(10));

-- Location: LCFF_X33_Y19_N23
\MEM~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~270_regout\);

-- Location: LCFF_X33_Y19_N13
\MEM~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~206_regout\);

-- Location: LCCOMB_X33_Y19_N12
\MEM~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~343_combout\ = (\MEM~342_combout\ & ((\MEM~270_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~342_combout\ & (((\MEM~206_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~342_combout\,
	datab => \MEM~270_regout\,
	datac => \MEM~206_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~343_combout\);

-- Location: LCFF_X29_Y20_N9
\MEM~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~110_regout\);

-- Location: LCFF_X29_Y20_N19
\MEM~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~142_regout\);

-- Location: LCCOMB_X29_Y20_N8
\MEM~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~345_combout\ = (\MEM~344_combout\ & (((\MEM~142_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~344_combout\ & (\RR1~combout\(1) & (\MEM~110_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~344_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~110_regout\,
	datad => \MEM~142_regout\,
	combout => \MEM~345_combout\);

-- Location: LCCOMB_X29_Y20_N12
\MEM~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~346_combout\ = (\RR1~combout\(2) & (\MEM~343_combout\)) # (!\RR1~combout\(2) & ((\MEM~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~343_combout\,
	datac => \MEM~345_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~346_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(11),
	combout => \WD~combout\(11));

-- Location: LCFF_X30_Y18_N1
\MEM~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~79_regout\);

-- Location: LCFF_X30_Y18_N27
\MEM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~47_regout\);

-- Location: LCCOMB_X30_Y18_N0
\MEM~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~349_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~79_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~47_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~79_regout\,
	datad => \MEM~47_regout\,
	combout => \MEM~349_combout\);

-- Location: LCFF_X30_Y19_N29
\MEM~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~111_regout\);

-- Location: LCFF_X30_Y19_N7
\MEM~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~143_regout\);

-- Location: LCCOMB_X30_Y19_N28
\MEM~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~350_combout\ = (\RR1~combout\(1) & ((\MEM~349_combout\ & ((\MEM~143_regout\))) # (!\MEM~349_combout\ & (\MEM~111_regout\)))) # (!\RR1~combout\(1) & (\MEM~349_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~349_combout\,
	datac => \MEM~111_regout\,
	datad => \MEM~143_regout\,
	combout => \MEM~350_combout\);

-- Location: LCFF_X32_Y18_N19
\MEM~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~175_regout\);

-- Location: LCFF_X32_Y18_N25
\MEM~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~239_regout\);

-- Location: LCCOMB_X32_Y18_N24
\MEM~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~347_combout\ = (\RR1~combout\(1) & (((\MEM~239_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~175_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~175_regout\,
	datac => \MEM~239_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~347_combout\);

-- Location: LCFF_X33_Y21_N9
\MEM~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~207_regout\);

-- Location: LCFF_X33_Y21_N3
\MEM~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(11),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~271_regout\);

-- Location: LCCOMB_X33_Y21_N8
\MEM~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~348_combout\ = (\RR1~combout\(0) & ((\MEM~347_combout\ & ((\MEM~271_regout\))) # (!\MEM~347_combout\ & (\MEM~207_regout\)))) # (!\RR1~combout\(0) & (\MEM~347_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~347_combout\,
	datac => \MEM~207_regout\,
	datad => \MEM~271_regout\,
	combout => \MEM~348_combout\);

-- Location: LCCOMB_X33_Y21_N12
\MEM~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~351_combout\ = (\RR1~combout\(2) & ((\MEM~348_combout\))) # (!\RR1~combout\(2) & (\MEM~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~350_combout\,
	datab => \RR1~combout\(2),
	datad => \MEM~348_combout\,
	combout => \MEM~351_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(12),
	combout => \WD~combout\(12));

-- Location: LCFF_X31_Y18_N19
\MEM~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~272_regout\);

-- Location: LCFF_X31_Y18_N1
\MEM~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~208_regout\);

-- Location: LCCOMB_X31_Y18_N0
\MEM~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~353_combout\ = (\MEM~352_combout\ & ((\MEM~272_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~352_combout\ & (((\MEM~208_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~352_combout\,
	datab => \MEM~272_regout\,
	datac => \MEM~208_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~353_combout\);

-- Location: LCFF_X30_Y21_N27
\MEM~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~144_regout\);

-- Location: LCFF_X30_Y21_N17
\MEM~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~112_regout\);

-- Location: LCFF_X30_Y18_N15
\MEM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~48_regout\);

-- Location: LCFF_X30_Y18_N5
\MEM~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(12),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~80_regout\);

-- Location: LCCOMB_X30_Y18_N4
\MEM~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~354_combout\ = (\RR1~combout\(0) & (((\MEM~80_regout\) # (\RR1~combout\(1))))) # (!\RR1~combout\(0) & (\MEM~48_regout\ & ((!\RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~48_regout\,
	datac => \MEM~80_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~354_combout\);

-- Location: LCCOMB_X30_Y21_N16
\MEM~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~355_combout\ = (\RR1~combout\(1) & ((\MEM~354_combout\ & (\MEM~144_regout\)) # (!\MEM~354_combout\ & ((\MEM~112_regout\))))) # (!\RR1~combout\(1) & (((\MEM~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~144_regout\,
	datac => \MEM~112_regout\,
	datad => \MEM~354_combout\,
	combout => \MEM~355_combout\);

-- Location: LCCOMB_X30_Y21_N12
\MEM~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~356_combout\ = (\RR1~combout\(2) & (\MEM~353_combout\)) # (!\RR1~combout\(2) & ((\MEM~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~353_combout\,
	datac => \MEM~355_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~356_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(13),
	combout => \WD~combout\(13));

-- Location: LCFF_X32_Y18_N3
\MEM~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~177_regout\);

-- Location: LCFF_X32_Y18_N9
\MEM~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~241_regout\);

-- Location: LCCOMB_X32_Y18_N8
\MEM~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~357_combout\ = (\RR1~combout\(1) & (((\MEM~241_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~177_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~177_regout\,
	datac => \MEM~241_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~357_combout\);

-- Location: LCFF_X33_Y19_N25
\MEM~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~209_regout\);

-- Location: LCCOMB_X33_Y19_N24
\MEM~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~358_combout\ = (\MEM~357_combout\ & ((\MEM~273_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~357_combout\ & (((\MEM~209_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~273_regout\,
	datab => \MEM~357_combout\,
	datac => \MEM~209_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~358_combout\);

-- Location: LCFF_X30_Y21_N31
\MEM~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~113_regout\);

-- Location: LCFF_X30_Y21_N1
\MEM~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~145_regout\);

-- Location: LCCOMB_X30_Y21_N30
\MEM~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~360_combout\ = (\MEM~359_combout\ & (((\MEM~145_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~359_combout\ & (\RR1~combout\(1) & (\MEM~113_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~359_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~113_regout\,
	datad => \MEM~145_regout\,
	combout => \MEM~360_combout\);

-- Location: LCCOMB_X30_Y21_N2
\MEM~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~361_combout\ = (\RR1~combout\(2) & (\MEM~358_combout\)) # (!\RR1~combout\(2) & ((\MEM~360_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~358_combout\,
	datac => \MEM~360_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~361_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(14),
	combout => \WD~combout\(14));

-- Location: LCFF_X32_Y20_N27
\MEM~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~178_regout\);

-- Location: LCFF_X32_Y20_N17
\MEM~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~242_regout\);

-- Location: LCCOMB_X32_Y20_N16
\MEM~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~362_combout\ = (\RR1~combout\(1) & (((\MEM~242_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~178_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~178_regout\,
	datac => \MEM~242_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~362_combout\);

-- Location: LCFF_X33_Y19_N21
\MEM~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~210_regout\);

-- Location: LCFF_X33_Y19_N31
\MEM~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~274_regout\);

-- Location: LCCOMB_X33_Y19_N20
\MEM~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~363_combout\ = (\RR1~combout\(0) & ((\MEM~362_combout\ & ((\MEM~274_regout\))) # (!\MEM~362_combout\ & (\MEM~210_regout\)))) # (!\RR1~combout\(0) & (\MEM~362_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~362_combout\,
	datac => \MEM~210_regout\,
	datad => \MEM~274_regout\,
	combout => \MEM~363_combout\);

-- Location: LCFF_X30_Y18_N21
\MEM~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~82_regout\);

-- Location: LCFF_X30_Y18_N31
\MEM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~50_regout\);

-- Location: LCCOMB_X30_Y18_N20
\MEM~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~364_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~82_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~50_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~82_regout\,
	datad => \MEM~50_regout\,
	combout => \MEM~364_combout\);

-- Location: LCFF_X30_Y21_N5
\MEM~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~114_regout\);

-- Location: LCFF_X30_Y21_N15
\MEM~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(14),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~146_regout\);

-- Location: LCCOMB_X30_Y21_N4
\MEM~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~365_combout\ = (\RR1~combout\(1) & ((\MEM~364_combout\ & ((\MEM~146_regout\))) # (!\MEM~364_combout\ & (\MEM~114_regout\)))) # (!\RR1~combout\(1) & (\MEM~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~364_combout\,
	datac => \MEM~114_regout\,
	datad => \MEM~146_regout\,
	combout => \MEM~365_combout\);

-- Location: LCCOMB_X30_Y21_N24
\MEM~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~366_combout\ = (\RR1~combout\(2) & (\MEM~363_combout\)) # (!\RR1~combout\(2) & ((\MEM~365_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~363_combout\,
	datac => \MEM~365_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~366_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(15),
	combout => \WD~combout\(15));

-- Location: LCFF_X30_Y17_N23
\MEM~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~147_regout\);

-- Location: LCFF_X30_Y17_N21
\MEM~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~115_regout\);

-- Location: LCCOMB_X30_Y17_N20
\MEM~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~370_combout\ = (\MEM~369_combout\ & ((\MEM~147_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~369_combout\ & (((\MEM~115_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~369_combout\,
	datab => \MEM~147_regout\,
	datac => \MEM~115_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~370_combout\);

-- Location: LCFF_X31_Y18_N15
\MEM~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~275_regout\);

-- Location: LCFF_X31_Y18_N21
\MEM~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~211_regout\);

-- Location: LCCOMB_X31_Y18_N20
\MEM~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~368_combout\ = (\MEM~367_combout\ & ((\MEM~275_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~367_combout\ & (((\MEM~211_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~367_combout\,
	datab => \MEM~275_regout\,
	datac => \MEM~211_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~368_combout\);

-- Location: LCCOMB_X31_Y18_N8
\MEM~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~371_combout\ = (\RR1~combout\(2) & ((\MEM~368_combout\))) # (!\RR1~combout\(2) & (\MEM~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~370_combout\,
	datab => \MEM~368_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~371_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(16),
	combout => \WD~combout\(16));

-- Location: LCFF_X30_Y18_N13
\MEM~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~84_regout\);

-- Location: LCCOMB_X30_Y18_N12
\MEM~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~374_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~84_regout\))) # (!\RR1~combout\(0) & (\MEM~52_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~52_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~84_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~374_combout\);

-- Location: LCFF_X29_Y20_N31
\MEM~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~116_regout\);

-- Location: LCFF_X29_Y20_N17
\MEM~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~148_regout\);

-- Location: LCCOMB_X29_Y20_N30
\MEM~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~375_combout\ = (\RR1~combout\(1) & ((\MEM~374_combout\ & ((\MEM~148_regout\))) # (!\MEM~374_combout\ & (\MEM~116_regout\)))) # (!\RR1~combout\(1) & (\MEM~374_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~374_combout\,
	datac => \MEM~116_regout\,
	datad => \MEM~148_regout\,
	combout => \MEM~375_combout\);

-- Location: LCFF_X33_Y19_N3
\MEM~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~276_regout\);

-- Location: LCFF_X33_Y19_N1
\MEM~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~212_regout\);

-- Location: LCCOMB_X33_Y19_N0
\MEM~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~373_combout\ = (\MEM~372_combout\ & ((\MEM~276_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~372_combout\ & (((\MEM~212_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~372_combout\,
	datab => \MEM~276_regout\,
	datac => \MEM~212_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~373_combout\);

-- Location: LCCOMB_X29_Y20_N26
\MEM~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~376_combout\ = (\RR1~combout\(2) & ((\MEM~373_combout\))) # (!\RR1~combout\(2) & (\MEM~375_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~375_combout\,
	datac => \MEM~373_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~376_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(17),
	combout => \WD~combout\(17));

-- Location: LCFF_X33_Y20_N19
\MEM~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~277_regout\);

-- Location: LCFF_X33_Y20_N1
\MEM~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~213_regout\);

-- Location: LCCOMB_X33_Y20_N0
\MEM~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~378_combout\ = (\MEM~377_combout\ & ((\MEM~277_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~377_combout\ & (((\MEM~213_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~377_combout\,
	datab => \MEM~277_regout\,
	datac => \MEM~213_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~378_combout\);

-- Location: LCFF_X30_Y18_N25
\MEM~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~85_regout\);

-- Location: LCFF_X30_Y18_N3
\MEM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~53_regout\);

-- Location: LCCOMB_X30_Y18_N24
\MEM~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~379_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~85_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~53_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~85_regout\,
	datad => \MEM~53_regout\,
	combout => \MEM~379_combout\);

-- Location: LCFF_X29_Y20_N21
\MEM~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~117_regout\);

-- Location: LCFF_X29_Y20_N7
\MEM~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~149_regout\);

-- Location: LCCOMB_X29_Y20_N20
\MEM~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~380_combout\ = (\RR1~combout\(1) & ((\MEM~379_combout\ & ((\MEM~149_regout\))) # (!\MEM~379_combout\ & (\MEM~117_regout\)))) # (!\RR1~combout\(1) & (\MEM~379_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~379_combout\,
	datac => \MEM~117_regout\,
	datad => \MEM~149_regout\,
	combout => \MEM~380_combout\);

-- Location: LCCOMB_X29_Y20_N0
\MEM~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~381_combout\ = (\RR1~combout\(2) & (\MEM~378_combout\)) # (!\RR1~combout\(2) & ((\MEM~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~378_combout\,
	datac => \MEM~380_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~381_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(18),
	combout => \WD~combout\(18));

-- Location: LCFF_X29_Y20_N29
\MEM~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~150_regout\);

-- Location: LCFF_X29_Y20_N3
\MEM~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~118_regout\);

-- Location: LCCOMB_X29_Y20_N2
\MEM~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~385_combout\ = (\MEM~384_combout\ & ((\MEM~150_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~384_combout\ & (((\MEM~118_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~384_combout\,
	datab => \MEM~150_regout\,
	datac => \MEM~118_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~385_combout\);

-- Location: LCFF_X32_Y20_N19
\MEM~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~182_regout\);

-- Location: LCFF_X32_Y20_N25
\MEM~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~246_regout\);

-- Location: LCCOMB_X32_Y20_N24
\MEM~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~382_combout\ = (\RR1~combout\(1) & (((\MEM~246_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~182_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~182_regout\,
	datac => \MEM~246_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~382_combout\);

-- Location: LCFF_X33_Y20_N13
\MEM~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~214_regout\);

-- Location: LCFF_X33_Y20_N31
\MEM~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~278_regout\);

-- Location: LCCOMB_X33_Y20_N12
\MEM~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~383_combout\ = (\RR1~combout\(0) & ((\MEM~382_combout\ & ((\MEM~278_regout\))) # (!\MEM~382_combout\ & (\MEM~214_regout\)))) # (!\RR1~combout\(0) & (\MEM~382_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~382_combout\,
	datac => \MEM~214_regout\,
	datad => \MEM~278_regout\,
	combout => \MEM~383_combout\);

-- Location: LCCOMB_X33_Y20_N24
\MEM~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~386_combout\ = (\RR1~combout\(2) & ((\MEM~383_combout\))) # (!\RR1~combout\(2) & (\MEM~385_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~385_combout\,
	datac => \MEM~383_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~386_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(19),
	combout => \WD~combout\(19));

-- Location: LCFF_X29_Y19_N13
\MEM~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~87_regout\);

-- Location: LCFF_X29_Y19_N7
\MEM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~55_regout\);

-- Location: LCCOMB_X29_Y19_N12
\MEM~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~389_combout\ = (\RR1~combout\(1) & (\RR1~combout\(0))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & (\MEM~87_regout\)) # (!\RR1~combout\(0) & ((\MEM~55_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \RR1~combout\(0),
	datac => \MEM~87_regout\,
	datad => \MEM~55_regout\,
	combout => \MEM~389_combout\);

-- Location: LCFF_X30_Y17_N25
\MEM~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~119_regout\);

-- Location: LCFF_X30_Y17_N27
\MEM~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~151_regout\);

-- Location: LCCOMB_X30_Y17_N24
\MEM~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~390_combout\ = (\RR1~combout\(1) & ((\MEM~389_combout\ & ((\MEM~151_regout\))) # (!\MEM~389_combout\ & (\MEM~119_regout\)))) # (!\RR1~combout\(1) & (\MEM~389_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~389_combout\,
	datac => \MEM~119_regout\,
	datad => \MEM~151_regout\,
	combout => \MEM~390_combout\);

-- Location: LCFF_X32_Y18_N15
\MEM~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~183_regout\);

-- Location: LCFF_X32_Y18_N21
\MEM~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~247_regout\);

-- Location: LCCOMB_X32_Y18_N20
\MEM~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~387_combout\ = (\RR1~combout\(1) & (((\MEM~247_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~183_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~183_regout\,
	datac => \MEM~247_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~387_combout\);

-- Location: LCFF_X31_Y17_N21
\MEM~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~215_regout\);

-- Location: LCCOMB_X31_Y17_N20
\MEM~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~388_combout\ = (\MEM~387_combout\ & ((\MEM~279_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~387_combout\ & (((\MEM~215_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~279_regout\,
	datab => \MEM~387_combout\,
	datac => \MEM~215_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~388_combout\);

-- Location: LCCOMB_X31_Y17_N0
\MEM~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~391_combout\ = (\RR1~combout\(2) & ((\MEM~388_combout\))) # (!\RR1~combout\(2) & (\MEM~390_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(2),
	datab => \MEM~390_combout\,
	datad => \MEM~388_combout\,
	combout => \MEM~391_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(20),
	combout => \WD~combout\(20));

-- Location: LCFF_X32_Y20_N31
\MEM~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~184_regout\);

-- Location: LCFF_X32_Y20_N21
\MEM~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~248_regout\);

-- Location: LCCOMB_X32_Y20_N20
\MEM~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~392_combout\ = (\RR1~combout\(1) & (((\MEM~248_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~184_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~184_regout\,
	datac => \MEM~248_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~392_combout\);

-- Location: LCFF_X33_Y21_N31
\MEM~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~216_regout\);

-- Location: LCCOMB_X33_Y21_N30
\MEM~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~393_combout\ = (\MEM~392_combout\ & ((\MEM~280_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~392_combout\ & (((\MEM~216_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~280_regout\,
	datab => \MEM~392_combout\,
	datac => \MEM~216_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~393_combout\);

-- Location: LCFF_X30_Y18_N29
\MEM~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~88_regout\);

-- Location: LCFF_X30_Y18_N23
\MEM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~56_regout\);

-- Location: LCCOMB_X30_Y18_N28
\MEM~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~394_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~88_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~56_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~88_regout\,
	datad => \MEM~56_regout\,
	combout => \MEM~394_combout\);

-- Location: LCFF_X30_Y21_N11
\MEM~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~120_regout\);

-- Location: LCCOMB_X30_Y21_N10
\MEM~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~395_combout\ = (\MEM~394_combout\ & ((\MEM~152_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~394_combout\ & (((\MEM~120_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~152_regout\,
	datab => \MEM~394_combout\,
	datac => \MEM~120_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~395_combout\);

-- Location: LCCOMB_X33_Y21_N10
\MEM~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~396_combout\ = (\RR1~combout\(2) & (\MEM~393_combout\)) # (!\RR1~combout\(2) & ((\MEM~395_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR1~combout\(2),
	datac => \MEM~393_combout\,
	datad => \MEM~395_combout\,
	combout => \MEM~396_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(21),
	combout => \WD~combout\(21));

-- Location: LCFF_X30_Y17_N31
\MEM~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~153_regout\);

-- Location: LCFF_X30_Y17_N29
\MEM~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~121_regout\);

-- Location: LCFF_X31_Y19_N15
\MEM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~57_regout\);

-- Location: LCFF_X31_Y19_N13
\MEM~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~89_regout\);

-- Location: LCCOMB_X31_Y19_N12
\MEM~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~399_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~89_regout\))) # (!\RR1~combout\(0) & (\MEM~57_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~57_regout\,
	datac => \MEM~89_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~399_combout\);

-- Location: LCCOMB_X30_Y17_N28
\MEM~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~400_combout\ = (\RR1~combout\(1) & ((\MEM~399_combout\ & (\MEM~153_regout\)) # (!\MEM~399_combout\ & ((\MEM~121_regout\))))) # (!\RR1~combout\(1) & (((\MEM~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~153_regout\,
	datac => \MEM~121_regout\,
	datad => \MEM~399_combout\,
	combout => \MEM~400_combout\);

-- Location: LCFF_X32_Y20_N3
\MEM~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~185_regout\);

-- Location: LCFF_X32_Y20_N9
\MEM~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~249_regout\);

-- Location: LCCOMB_X32_Y20_N8
\MEM~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~397_combout\ = (\RR1~combout\(1) & (((\MEM~249_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~185_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~185_regout\,
	datac => \MEM~249_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~397_combout\);

-- Location: LCFF_X31_Y18_N27
\MEM~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~217_regout\);

-- Location: LCFF_X31_Y18_N29
\MEM~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(21),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~281_regout\);

-- Location: LCCOMB_X31_Y18_N26
\MEM~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~398_combout\ = (\RR1~combout\(0) & ((\MEM~397_combout\ & ((\MEM~281_regout\))) # (!\MEM~397_combout\ & (\MEM~217_regout\)))) # (!\RR1~combout\(0) & (\MEM~397_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~397_combout\,
	datac => \MEM~217_regout\,
	datad => \MEM~281_regout\,
	combout => \MEM~398_combout\);

-- Location: LCCOMB_X31_Y18_N30
\MEM~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~401_combout\ = (\RR1~combout\(2) & ((\MEM~398_combout\))) # (!\RR1~combout\(2) & (\MEM~400_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~400_combout\,
	datab => \MEM~398_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~401_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(22),
	combout => \WD~combout\(22));

-- Location: LCFF_X33_Y20_N21
\MEM~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~282_regout\);

-- Location: LCFF_X33_Y20_N27
\MEM~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~218_regout\);

-- Location: LCFF_X32_Y20_N15
\MEM~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~186_regout\);

-- Location: LCFF_X32_Y20_N5
\MEM~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~250_regout\);

-- Location: LCCOMB_X32_Y20_N4
\MEM~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~402_combout\ = (\RR1~combout\(1) & (((\MEM~250_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~186_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~186_regout\,
	datac => \MEM~250_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~402_combout\);

-- Location: LCCOMB_X33_Y20_N26
\MEM~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~403_combout\ = (\RR1~combout\(0) & ((\MEM~402_combout\ & (\MEM~282_regout\)) # (!\MEM~402_combout\ & ((\MEM~218_regout\))))) # (!\RR1~combout\(0) & (((\MEM~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~282_regout\,
	datac => \MEM~218_regout\,
	datad => \MEM~402_combout\,
	combout => \MEM~403_combout\);

-- Location: LCFF_X31_Y19_N17
\MEM~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~90_regout\);

-- Location: LCCOMB_X31_Y19_N16
\MEM~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~404_combout\ = (\RR1~combout\(1) & (((\RR1~combout\(0))))) # (!\RR1~combout\(1) & ((\RR1~combout\(0) & ((\MEM~90_regout\))) # (!\RR1~combout\(0) & (\MEM~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~58_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~90_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~404_combout\);

-- Location: LCFF_X32_Y19_N1
\MEM~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~122_regout\);

-- Location: LCFF_X32_Y19_N11
\MEM~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(22),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~154_regout\);

-- Location: LCCOMB_X32_Y19_N0
\MEM~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~405_combout\ = (\RR1~combout\(1) & ((\MEM~404_combout\ & ((\MEM~154_regout\))) # (!\MEM~404_combout\ & (\MEM~122_regout\)))) # (!\RR1~combout\(1) & (\MEM~404_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~404_combout\,
	datac => \MEM~122_regout\,
	datad => \MEM~154_regout\,
	combout => \MEM~405_combout\);

-- Location: LCCOMB_X33_Y20_N22
\MEM~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~406_combout\ = (\RR1~combout\(2) & (\MEM~403_combout\)) # (!\RR1~combout\(2) & ((\MEM~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~403_combout\,
	datac => \MEM~405_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~406_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(23),
	combout => \WD~combout\(23));

-- Location: LCFF_X32_Y21_N11
\MEM~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~187_regout\);

-- Location: LCFF_X32_Y21_N1
\MEM~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~251_regout\);

-- Location: LCCOMB_X32_Y21_N0
\MEM~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~407_combout\ = (\RR1~combout\(1) & (((\MEM~251_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~187_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~187_regout\,
	datac => \MEM~251_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~407_combout\);

-- Location: LCFF_X33_Y20_N9
\MEM~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~219_regout\);

-- Location: LCCOMB_X33_Y20_N8
\MEM~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~408_combout\ = (\MEM~407_combout\ & ((\MEM~283_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~407_combout\ & (((\MEM~219_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~283_regout\,
	datab => \MEM~407_combout\,
	datac => \MEM~219_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~408_combout\);

-- Location: LCFF_X31_Y19_N29
\MEM~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~91_regout\);

-- Location: LCFF_X31_Y19_N31
\MEM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~59_regout\);

-- Location: LCCOMB_X31_Y19_N28
\MEM~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~409_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~91_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~59_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~91_regout\,
	datad => \MEM~59_regout\,
	combout => \MEM~409_combout\);

-- Location: LCFF_X32_Y19_N29
\MEM~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~123_regout\);

-- Location: LCFF_X32_Y19_N31
\MEM~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~155_regout\);

-- Location: LCCOMB_X32_Y19_N28
\MEM~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~410_combout\ = (\RR1~combout\(1) & ((\MEM~409_combout\ & ((\MEM~155_regout\))) # (!\MEM~409_combout\ & (\MEM~123_regout\)))) # (!\RR1~combout\(1) & (\MEM~409_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~409_combout\,
	datac => \MEM~123_regout\,
	datad => \MEM~155_regout\,
	combout => \MEM~410_combout\);

-- Location: LCCOMB_X33_Y20_N28
\MEM~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~411_combout\ = (\RR1~combout\(2) & (\MEM~408_combout\)) # (!\RR1~combout\(2) & ((\MEM~410_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~408_combout\,
	datac => \MEM~410_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~411_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(24),
	combout => \WD~combout\(24));

-- Location: LCFF_X32_Y21_N13
\MEM~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~252_regout\);

-- Location: LCCOMB_X32_Y21_N12
\MEM~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~412_combout\ = (\RR1~combout\(1) & (((\MEM~252_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~188_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~188_regout\,
	datab => \RR1~combout\(1),
	datac => \MEM~252_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~412_combout\);

-- Location: LCFF_X33_Y19_N29
\MEM~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~220_regout\);

-- Location: LCCOMB_X33_Y19_N28
\MEM~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~413_combout\ = (\MEM~412_combout\ & ((\MEM~284_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~412_combout\ & (((\MEM~220_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~284_regout\,
	datab => \MEM~412_combout\,
	datac => \MEM~220_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~413_combout\);

-- Location: LCFF_X32_Y19_N9
\MEM~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~124_regout\);

-- Location: LCFF_X32_Y19_N3
\MEM~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~156_regout\);

-- Location: LCCOMB_X32_Y19_N8
\MEM~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~415_combout\ = (\MEM~414_combout\ & (((\MEM~156_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~414_combout\ & (\RR1~combout\(1) & (\MEM~124_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~414_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~124_regout\,
	datad => \MEM~156_regout\,
	combout => \MEM~415_combout\);

-- Location: LCCOMB_X32_Y19_N20
\MEM~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~416_combout\ = (\RR1~combout\(2) & (\MEM~413_combout\)) # (!\RR1~combout\(2) & ((\MEM~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~413_combout\,
	datac => \MEM~415_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~416_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(25),
	combout => \WD~combout\(25));

-- Location: LCFF_X32_Y21_N27
\MEM~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~189_regout\);

-- Location: LCFF_X32_Y21_N9
\MEM~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~253_regout\);

-- Location: LCCOMB_X32_Y21_N8
\MEM~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~417_combout\ = (\RR1~combout\(1) & (((\MEM~253_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~189_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~189_regout\,
	datac => \MEM~253_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~417_combout\);

-- Location: LCFF_X31_Y18_N17
\MEM~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~221_regout\);

-- Location: LCCOMB_X31_Y18_N16
\MEM~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~418_combout\ = (\MEM~417_combout\ & ((\MEM~285_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~417_combout\ & (((\MEM~221_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~285_regout\,
	datab => \MEM~417_combout\,
	datac => \MEM~221_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~418_combout\);

-- Location: LCFF_X31_Y19_N5
\MEM~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~93_regout\);

-- Location: LCFF_X31_Y19_N23
\MEM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~61_regout\);

-- Location: LCCOMB_X31_Y19_N4
\MEM~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~419_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~93_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~61_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~93_regout\,
	datad => \MEM~61_regout\,
	combout => \MEM~419_combout\);

-- Location: LCFF_X32_Y19_N15
\MEM~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~125_regout\);

-- Location: LCCOMB_X32_Y19_N14
\MEM~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~420_combout\ = (\MEM~419_combout\ & ((\MEM~157_regout\) # ((!\RR1~combout\(1))))) # (!\MEM~419_combout\ & (((\MEM~125_regout\ & \RR1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~157_regout\,
	datab => \MEM~419_combout\,
	datac => \MEM~125_regout\,
	datad => \RR1~combout\(1),
	combout => \MEM~420_combout\);

-- Location: LCCOMB_X32_Y19_N18
\MEM~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~421_combout\ = (\RR1~combout\(2) & (\MEM~418_combout\)) # (!\RR1~combout\(2) & ((\MEM~420_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~418_combout\,
	datac => \MEM~420_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~421_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(26),
	combout => \WD~combout\(26));

-- Location: LCFF_X33_Y19_N27
\MEM~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~286_regout\);

-- Location: LCFF_X33_Y19_N17
\MEM~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~222_regout\);

-- Location: LCCOMB_X33_Y19_N16
\MEM~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~423_combout\ = (\MEM~422_combout\ & ((\MEM~286_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~422_combout\ & (((\MEM~222_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~422_combout\,
	datab => \MEM~286_regout\,
	datac => \MEM~222_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~423_combout\);

-- Location: LCFF_X30_Y19_N27
\MEM~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~158_regout\);

-- Location: LCFF_X30_Y19_N1
\MEM~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~126_regout\);

-- Location: LCFF_X31_Y19_N25
\MEM~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~94_regout\);

-- Location: LCFF_X31_Y19_N3
\MEM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~62_regout\);

-- Location: LCCOMB_X31_Y19_N24
\MEM~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~424_combout\ = (\RR1~combout\(0) & ((\RR1~combout\(1)) # ((\MEM~94_regout\)))) # (!\RR1~combout\(0) & (!\RR1~combout\(1) & ((\MEM~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \RR1~combout\(1),
	datac => \MEM~94_regout\,
	datad => \MEM~62_regout\,
	combout => \MEM~424_combout\);

-- Location: LCCOMB_X30_Y19_N0
\MEM~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~425_combout\ = (\RR1~combout\(1) & ((\MEM~424_combout\ & (\MEM~158_regout\)) # (!\MEM~424_combout\ & ((\MEM~126_regout\))))) # (!\RR1~combout\(1) & (((\MEM~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~158_regout\,
	datac => \MEM~126_regout\,
	datad => \MEM~424_combout\,
	combout => \MEM~425_combout\);

-- Location: LCCOMB_X30_Y19_N12
\MEM~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~426_combout\ = (\RR1~combout\(2) & (\MEM~423_combout\)) # (!\RR1~combout\(2) & ((\MEM~425_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~423_combout\,
	datac => \MEM~425_combout\,
	datad => \RR1~combout\(2),
	combout => \MEM~426_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(27),
	combout => \WD~combout\(27));

-- Location: LCFF_X32_Y19_N13
\MEM~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~127_regout\);

-- Location: LCFF_X32_Y19_N23
\MEM~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~159_regout\);

-- Location: LCCOMB_X32_Y19_N12
\MEM~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~430_combout\ = (\MEM~429_combout\ & (((\MEM~159_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~429_combout\ & (\RR1~combout\(1) & (\MEM~127_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~429_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~127_regout\,
	datad => \MEM~159_regout\,
	combout => \MEM~430_combout\);

-- Location: LCFF_X32_Y21_N19
\MEM~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~191_regout\);

-- Location: LCFF_X32_Y21_N17
\MEM~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~255_regout\);

-- Location: LCCOMB_X32_Y21_N16
\MEM~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~427_combout\ = (\RR1~combout\(1) & (((\MEM~255_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~191_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~191_regout\,
	datac => \MEM~255_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~427_combout\);

-- Location: LCFF_X33_Y21_N29
\MEM~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~223_regout\);

-- Location: LCFF_X33_Y21_N23
\MEM~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~287_regout\);

-- Location: LCCOMB_X33_Y21_N28
\MEM~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~428_combout\ = (\RR1~combout\(0) & ((\MEM~427_combout\ & ((\MEM~287_regout\))) # (!\MEM~427_combout\ & (\MEM~223_regout\)))) # (!\RR1~combout\(0) & (\MEM~427_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(0),
	datab => \MEM~427_combout\,
	datac => \MEM~223_regout\,
	datad => \MEM~287_regout\,
	combout => \MEM~428_combout\);

-- Location: LCCOMB_X33_Y21_N0
\MEM~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~431_combout\ = (\RR1~combout\(2) & ((\MEM~428_combout\))) # (!\RR1~combout\(2) & (\MEM~430_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~430_combout\,
	datac => \RR1~combout\(2),
	datad => \MEM~428_combout\,
	combout => \MEM~431_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(28),
	combout => \WD~combout\(28));

-- Location: LCFF_X32_Y21_N31
\MEM~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~192_regout\);

-- Location: LCFF_X32_Y21_N29
\MEM~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~256_regout\);

-- Location: LCCOMB_X32_Y21_N28
\MEM~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~432_combout\ = (\RR1~combout\(1) & (((\MEM~256_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~192_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~192_regout\,
	datac => \MEM~256_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~432_combout\);

-- Location: LCFF_X33_Y21_N27
\MEM~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~224_regout\);

-- Location: LCCOMB_X33_Y21_N26
\MEM~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~433_combout\ = (\MEM~432_combout\ & ((\MEM~288_regout\) # ((!\RR1~combout\(0))))) # (!\MEM~432_combout\ & (((\MEM~224_regout\ & \RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~288_regout\,
	datab => \MEM~432_combout\,
	datac => \MEM~224_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~433_combout\);

-- Location: LCFF_X31_Y20_N9
\MEM~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~128_regout\);

-- Location: LCFF_X31_Y20_N19
\MEM~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~160_regout\);

-- Location: LCCOMB_X31_Y20_N8
\MEM~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~435_combout\ = (\MEM~434_combout\ & (((\MEM~160_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~434_combout\ & (\RR1~combout\(1) & (\MEM~128_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~434_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~128_regout\,
	datad => \MEM~160_regout\,
	combout => \MEM~435_combout\);

-- Location: LCCOMB_X33_Y21_N6
\MEM~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~436_combout\ = (\RR1~combout\(2) & (\MEM~433_combout\)) # (!\RR1~combout\(2) & ((\MEM~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~433_combout\,
	datac => \RR1~combout\(2),
	datad => \MEM~435_combout\,
	combout => \MEM~436_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(29),
	combout => \WD~combout\(29));

-- Location: LCFF_X31_Y20_N29
\MEM~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~129_regout\);

-- Location: LCFF_X31_Y20_N31
\MEM~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~161_regout\);

-- Location: LCCOMB_X31_Y20_N28
\MEM~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~440_combout\ = (\MEM~439_combout\ & (((\MEM~161_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~439_combout\ & (\RR1~combout\(1) & (\MEM~129_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~439_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~129_regout\,
	datad => \MEM~161_regout\,
	combout => \MEM~440_combout\);

-- Location: LCFF_X31_Y21_N25
\MEM~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~225_regout\);

-- Location: LCFF_X32_Y21_N3
\MEM~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~193_regout\);

-- Location: LCFF_X32_Y21_N25
\MEM~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~257_regout\);

-- Location: LCCOMB_X32_Y21_N24
\MEM~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~437_combout\ = (\RR1~combout\(1) & (((\MEM~257_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~193_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~193_regout\,
	datac => \MEM~257_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~437_combout\);

-- Location: LCCOMB_X31_Y21_N24
\MEM~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~438_combout\ = (\RR1~combout\(0) & ((\MEM~437_combout\ & (\MEM~289_regout\)) # (!\MEM~437_combout\ & ((\MEM~225_regout\))))) # (!\RR1~combout\(0) & (((\MEM~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~289_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~225_regout\,
	datad => \MEM~437_combout\,
	combout => \MEM~438_combout\);

-- Location: LCCOMB_X31_Y20_N16
\MEM~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~441_combout\ = (\RR1~combout\(2) & ((\MEM~438_combout\))) # (!\RR1~combout\(2) & (\MEM~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~440_combout\,
	datac => \RR1~combout\(2),
	datad => \MEM~438_combout\,
	combout => \MEM~441_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(30),
	combout => \WD~combout\(30));

-- Location: LCFF_X31_Y20_N27
\MEM~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~130_regout\);

-- Location: LCFF_X31_Y20_N21
\MEM~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~162_regout\);

-- Location: LCCOMB_X31_Y20_N26
\MEM~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~445_combout\ = (\MEM~444_combout\ & (((\MEM~162_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~444_combout\ & (\RR1~combout\(1) & (\MEM~130_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~444_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~130_regout\,
	datad => \MEM~162_regout\,
	combout => \MEM~445_combout\);

-- Location: LCFF_X31_Y21_N21
\MEM~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~226_regout\);

-- Location: LCFF_X32_Y21_N23
\MEM~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~194_regout\);

-- Location: LCFF_X32_Y21_N5
\MEM~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~258_regout\);

-- Location: LCCOMB_X32_Y21_N4
\MEM~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~442_combout\ = (\RR1~combout\(1) & (((\MEM~258_regout\) # (\RR1~combout\(0))))) # (!\RR1~combout\(1) & (\MEM~194_regout\ & ((!\RR1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR1~combout\(1),
	datab => \MEM~194_regout\,
	datac => \MEM~258_regout\,
	datad => \RR1~combout\(0),
	combout => \MEM~442_combout\);

-- Location: LCCOMB_X31_Y21_N20
\MEM~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~443_combout\ = (\RR1~combout\(0) & ((\MEM~442_combout\ & (\MEM~290_regout\)) # (!\MEM~442_combout\ & ((\MEM~226_regout\))))) # (!\RR1~combout\(0) & (((\MEM~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~290_regout\,
	datab => \RR1~combout\(0),
	datac => \MEM~226_regout\,
	datad => \MEM~442_combout\,
	combout => \MEM~443_combout\);

-- Location: LCCOMB_X31_Y20_N6
\MEM~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~446_combout\ = (\RR1~combout\(2) & ((\MEM~443_combout\))) # (!\RR1~combout\(2) & (\MEM~445_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~445_combout\,
	datab => \MEM~443_combout\,
	datac => \RR1~combout\(2),
	combout => \MEM~446_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WD(31),
	combout => \WD~combout\(31));

-- Location: LCFF_X31_Y20_N1
\MEM~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~131_regout\);

-- Location: LCFF_X31_Y20_N3
\MEM~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~163_regout\);

-- Location: LCCOMB_X31_Y20_N0
\MEM~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~450_combout\ = (\MEM~449_combout\ & (((\MEM~163_regout\)) # (!\RR1~combout\(1)))) # (!\MEM~449_combout\ & (\RR1~combout\(1) & (\MEM~131_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~449_combout\,
	datab => \RR1~combout\(1),
	datac => \MEM~131_regout\,
	datad => \MEM~163_regout\,
	combout => \MEM~450_combout\);

-- Location: LCFF_X31_Y21_N9
\MEM~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~227_regout\);

-- Location: LCFF_X31_Y21_N27
\MEM~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~291_regout\);

-- Location: LCCOMB_X31_Y21_N8
\MEM~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~448_combout\ = (\MEM~447_combout\ & (((\MEM~291_regout\)) # (!\RR1~combout\(0)))) # (!\MEM~447_combout\ & (\RR1~combout\(0) & (\MEM~227_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~447_combout\,
	datab => \RR1~combout\(0),
	datac => \MEM~227_regout\,
	datad => \MEM~291_regout\,
	combout => \MEM~448_combout\);

-- Location: LCCOMB_X31_Y20_N4
\MEM~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~451_combout\ = (\RR1~combout\(2) & ((\MEM~448_combout\))) # (!\RR1~combout\(2) & (\MEM~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~450_combout\,
	datab => \RR1~combout\(2),
	datac => \MEM~448_combout\,
	combout => \MEM~451_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR2(1),
	combout => \RR2~combout\(1));

-- Location: LCCOMB_X26_Y19_N24
\MEM~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~455_combout\ = (\MEM~454_combout\ & (((\MEM~132_regout\) # (!\RR2~combout\(1))))) # (!\MEM~454_combout\ & (\MEM~100_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~454_combout\,
	datab => \MEM~100_regout\,
	datac => \MEM~132_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~455_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR2(2),
	combout => \RR2~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR2(0),
	combout => \RR2~combout\(0));

-- Location: LCCOMB_X33_Y17_N8
\MEM~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~453_combout\ = (\MEM~452_combout\ & (((\MEM~260_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~452_combout\ & (\RR2~combout\(0) & (\MEM~196_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~452_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~196_regout\,
	datad => \MEM~260_regout\,
	combout => \MEM~453_combout\);

-- Location: LCCOMB_X26_Y19_N22
\MEM~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~456_combout\ = (\RR2~combout\(2) & ((\MEM~453_combout\))) # (!\RR2~combout\(2) & (\MEM~455_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~455_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~453_combout\,
	combout => \MEM~456_combout\);

-- Location: LCCOMB_X33_Y17_N24
\MEM~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~458_combout\ = (\MEM~457_combout\ & (((\MEM~261_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~457_combout\ & (\RR2~combout\(0) & ((\MEM~197_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~457_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~261_regout\,
	datad => \MEM~197_regout\,
	combout => \MEM~458_combout\);

-- Location: LCCOMB_X26_Y19_N18
\MEM~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~460_combout\ = (\MEM~459_combout\ & (((\MEM~133_regout\) # (!\RR2~combout\(1))))) # (!\MEM~459_combout\ & (\MEM~101_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~459_combout\,
	datab => \MEM~101_regout\,
	datac => \MEM~133_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~460_combout\);

-- Location: LCCOMB_X33_Y17_N16
\MEM~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~461_combout\ = (\RR2~combout\(2) & (\MEM~458_combout\)) # (!\RR2~combout\(2) & ((\MEM~460_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~458_combout\,
	datab => \MEM~460_combout\,
	datac => \RR2~combout\(2),
	combout => \MEM~461_combout\);

-- Location: LCFF_X33_Y17_N15
\MEM~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~262_regout\);

-- Location: LCCOMB_X33_Y17_N14
\MEM~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~463_combout\ = (\MEM~462_combout\ & (((\MEM~262_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~462_combout\ & (\RR2~combout\(0) & ((\MEM~198_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~462_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~262_regout\,
	datad => \MEM~198_regout\,
	combout => \MEM~463_combout\);

-- Location: LCFF_X26_Y19_N13
\MEM~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(2),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~134_regout\);

-- Location: LCCOMB_X26_Y19_N12
\MEM~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~465_combout\ = (\MEM~464_combout\ & (((\MEM~134_regout\) # (!\RR2~combout\(1))))) # (!\MEM~464_combout\ & (\MEM~102_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~464_combout\,
	datab => \MEM~102_regout\,
	datac => \MEM~134_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~465_combout\);

-- Location: LCCOMB_X33_Y17_N10
\MEM~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~466_combout\ = (\RR2~combout\(2) & (\MEM~463_combout\)) # (!\RR2~combout\(2) & ((\MEM~465_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR2~combout\(2),
	datac => \MEM~463_combout\,
	datad => \MEM~465_combout\,
	combout => \MEM~466_combout\);

-- Location: LCFF_X26_Y19_N31
\MEM~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(3),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~135_regout\);

-- Location: LCCOMB_X26_Y19_N30
\MEM~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~470_combout\ = (\MEM~469_combout\ & (((\MEM~135_regout\) # (!\RR2~combout\(1))))) # (!\MEM~469_combout\ & (\MEM~103_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~469_combout\,
	datab => \MEM~103_regout\,
	datac => \MEM~135_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~470_combout\);

-- Location: LCCOMB_X33_Y17_N12
\MEM~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~468_combout\ = (\MEM~467_combout\ & (((\MEM~263_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~467_combout\ & (\RR2~combout\(0) & ((\MEM~199_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~467_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~263_regout\,
	datad => \MEM~199_regout\,
	combout => \MEM~468_combout\);

-- Location: LCCOMB_X26_Y19_N16
\MEM~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~471_combout\ = (\RR2~combout\(2) & ((\MEM~468_combout\))) # (!\RR2~combout\(2) & (\MEM~470_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~470_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~468_combout\,
	combout => \MEM~471_combout\);

-- Location: LCCOMB_X31_Y17_N26
\MEM~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~473_combout\ = (\MEM~472_combout\ & (((\MEM~264_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~472_combout\ & (\RR2~combout\(0) & ((\MEM~200_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~472_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~264_regout\,
	datad => \MEM~200_regout\,
	combout => \MEM~473_combout\);

-- Location: LCFF_X26_Y19_N1
\MEM~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(4),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~136_regout\);

-- Location: LCCOMB_X26_Y19_N0
\MEM~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~475_combout\ = (\MEM~474_combout\ & (((\MEM~136_regout\) # (!\RR2~combout\(1))))) # (!\MEM~474_combout\ & (\MEM~104_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~474_combout\,
	datab => \MEM~104_regout\,
	datac => \MEM~136_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~475_combout\);

-- Location: LCCOMB_X26_Y19_N10
\MEM~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~476_combout\ = (\RR2~combout\(2) & (\MEM~473_combout\)) # (!\RR2~combout\(2) & ((\MEM~475_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR2~combout\(2),
	datac => \MEM~473_combout\,
	datad => \MEM~475_combout\,
	combout => \MEM~476_combout\);

-- Location: LCCOMB_X29_Y19_N0
\MEM~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~479_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~73_regout\)) # (!\RR2~combout\(0) & ((\MEM~41_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~73_regout\,
	datac => \MEM~41_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~479_combout\);

-- Location: LCCOMB_X30_Y19_N18
\MEM~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~480_combout\ = (\RR2~combout\(1) & ((\MEM~479_combout\ & ((\MEM~137_regout\))) # (!\MEM~479_combout\ & (\MEM~105_regout\)))) # (!\RR2~combout\(1) & (((\MEM~479_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~105_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~137_regout\,
	datad => \MEM~479_combout\,
	combout => \MEM~480_combout\);

-- Location: LCFF_X31_Y17_N23
\MEM~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(5),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~265_regout\);

-- Location: LCCOMB_X31_Y17_N22
\MEM~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~478_combout\ = (\MEM~477_combout\ & (((\MEM~265_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~477_combout\ & (\RR2~combout\(0) & ((\MEM~201_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~477_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~265_regout\,
	datad => \MEM~201_regout\,
	combout => \MEM~478_combout\);

-- Location: LCCOMB_X31_Y17_N18
\MEM~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~481_combout\ = (\RR2~combout\(2) & ((\MEM~478_combout\))) # (!\RR2~combout\(2) & (\MEM~480_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~480_combout\,
	datad => \MEM~478_combout\,
	combout => \MEM~481_combout\);

-- Location: LCFF_X31_Y17_N11
\MEM~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(6),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~266_regout\);

-- Location: LCCOMB_X32_Y17_N28
\MEM~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~482_combout\ = (\RR2~combout\(1) & ((\RR2~combout\(0)) # ((\MEM~234_regout\)))) # (!\RR2~combout\(1) & (!\RR2~combout\(0) & (\MEM~170_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~170_regout\,
	datad => \MEM~234_regout\,
	combout => \MEM~482_combout\);

-- Location: LCCOMB_X31_Y17_N10
\MEM~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~483_combout\ = (\RR2~combout\(0) & ((\MEM~482_combout\ & ((\MEM~266_regout\))) # (!\MEM~482_combout\ & (\MEM~202_regout\)))) # (!\RR2~combout\(0) & (((\MEM~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~202_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~266_regout\,
	datad => \MEM~482_combout\,
	combout => \MEM~483_combout\);

-- Location: LCCOMB_X30_Y17_N10
\MEM~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~485_combout\ = (\MEM~484_combout\ & (((\MEM~138_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~484_combout\ & (\RR2~combout\(1) & ((\MEM~106_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~484_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~138_regout\,
	datad => \MEM~106_regout\,
	combout => \MEM~485_combout\);

-- Location: LCCOMB_X30_Y17_N16
\MEM~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~486_combout\ = (\RR2~combout\(2) & (\MEM~483_combout\)) # (!\RR2~combout\(2) & ((\MEM~485_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~483_combout\,
	datad => \MEM~485_combout\,
	combout => \MEM~486_combout\);

-- Location: LCCOMB_X30_Y17_N8
\MEM~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~490_combout\ = (\MEM~489_combout\ & (((\MEM~139_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~489_combout\ & (\RR2~combout\(1) & ((\MEM~107_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~489_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~139_regout\,
	datad => \MEM~107_regout\,
	combout => \MEM~490_combout\);

-- Location: LCCOMB_X31_Y17_N30
\MEM~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~488_combout\ = (\MEM~487_combout\ & (((\MEM~267_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~487_combout\ & (\RR2~combout\(0) & ((\MEM~203_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~487_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~267_regout\,
	datad => \MEM~203_regout\,
	combout => \MEM~488_combout\);

-- Location: LCCOMB_X30_Y17_N2
\MEM~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~491_combout\ = (\RR2~combout\(2) & ((\MEM~488_combout\))) # (!\RR2~combout\(2) & (\MEM~490_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~490_combout\,
	datad => \MEM~488_combout\,
	combout => \MEM~491_combout\);

-- Location: LCFF_X30_Y19_N9
\MEM~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~140_regout\);

-- Location: LCCOMB_X30_Y19_N8
\MEM~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~495_combout\ = (\MEM~494_combout\ & (((\MEM~140_regout\) # (!\RR2~combout\(1))))) # (!\MEM~494_combout\ & (\MEM~108_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~494_combout\,
	datab => \MEM~108_regout\,
	datac => \MEM~140_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~495_combout\);

-- Location: LCFF_X32_Y18_N23
\MEM~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~172_regout\);

-- Location: LCFF_X32_Y18_N29
\MEM~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(8),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~236_regout\);

-- Location: LCCOMB_X32_Y18_N22
\MEM~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~492_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~236_regout\))) # (!\RR2~combout\(1) & (\MEM~172_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~172_regout\,
	datad => \MEM~236_regout\,
	combout => \MEM~492_combout\);

-- Location: LCCOMB_X31_Y17_N2
\MEM~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~493_combout\ = (\RR2~combout\(0) & ((\MEM~492_combout\ & ((\MEM~268_regout\))) # (!\MEM~492_combout\ & (\MEM~204_regout\)))) # (!\RR2~combout\(0) & (((\MEM~492_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~204_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~268_regout\,
	datad => \MEM~492_combout\,
	combout => \MEM~493_combout\);

-- Location: LCCOMB_X30_Y19_N22
\MEM~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~496_combout\ = (\RR2~combout\(2) & ((\MEM~493_combout\))) # (!\RR2~combout\(2) & (\MEM~495_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~495_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~493_combout\,
	combout => \MEM~496_combout\);

-- Location: LCCOMB_X26_Y19_N4
\MEM~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~500_combout\ = (\MEM~499_combout\ & (((\MEM~141_regout\) # (!\RR2~combout\(1))))) # (!\MEM~499_combout\ & (\MEM~109_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~499_combout\,
	datab => \MEM~109_regout\,
	datac => \MEM~141_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~500_combout\);

-- Location: LCFF_X32_Y18_N11
\MEM~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~173_regout\);

-- Location: LCFF_X32_Y18_N17
\MEM~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(9),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~237_regout\);

-- Location: LCCOMB_X32_Y18_N10
\MEM~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~497_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~237_regout\))) # (!\RR2~combout\(1) & (\MEM~173_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~173_regout\,
	datad => \MEM~237_regout\,
	combout => \MEM~497_combout\);

-- Location: LCCOMB_X33_Y19_N18
\MEM~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~498_combout\ = (\RR2~combout\(0) & ((\MEM~497_combout\ & ((\MEM~269_regout\))) # (!\MEM~497_combout\ & (\MEM~205_regout\)))) # (!\RR2~combout\(0) & (((\MEM~497_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~205_regout\,
	datac => \MEM~269_regout\,
	datad => \MEM~497_combout\,
	combout => \MEM~498_combout\);

-- Location: LCCOMB_X26_Y19_N28
\MEM~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~501_combout\ = (\RR2~combout\(2) & ((\MEM~498_combout\))) # (!\RR2~combout\(2) & (\MEM~500_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~500_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~498_combout\,
	combout => \MEM~501_combout\);

-- Location: LCFF_X32_Y18_N7
\MEM~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~174_regout\);

-- Location: LCFF_X32_Y18_N13
\MEM~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~238_regout\);

-- Location: LCCOMB_X32_Y18_N6
\MEM~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~502_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~238_regout\))) # (!\RR2~combout\(1) & (\MEM~174_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~174_regout\,
	datad => \MEM~238_regout\,
	combout => \MEM~502_combout\);

-- Location: LCCOMB_X33_Y19_N22
\MEM~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~503_combout\ = (\RR2~combout\(0) & ((\MEM~502_combout\ & (\MEM~270_regout\)) # (!\MEM~502_combout\ & ((\MEM~206_regout\))))) # (!\RR2~combout\(0) & (\MEM~502_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~502_combout\,
	datac => \MEM~270_regout\,
	datad => \MEM~206_regout\,
	combout => \MEM~503_combout\);

-- Location: LCFF_X29_Y19_N3
\MEM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(10),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~46_regout\);

-- Location: LCCOMB_X29_Y19_N2
\MEM~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~504_combout\ = (\RR2~combout\(0) & ((\MEM~78_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~46_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~78_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~46_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~504_combout\);

-- Location: LCCOMB_X29_Y20_N18
\MEM~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~505_combout\ = (\MEM~504_combout\ & (((\MEM~142_regout\) # (!\RR2~combout\(1))))) # (!\MEM~504_combout\ & (\MEM~110_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~110_regout\,
	datab => \MEM~504_combout\,
	datac => \MEM~142_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~505_combout\);

-- Location: LCCOMB_X29_Y20_N22
\MEM~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~506_combout\ = (\RR2~combout\(2) & (\MEM~503_combout\)) # (!\RR2~combout\(2) & ((\MEM~505_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~503_combout\,
	datad => \MEM~505_combout\,
	combout => \MEM~506_combout\);

-- Location: LCCOMB_X33_Y21_N2
\MEM~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~508_combout\ = (\MEM~507_combout\ & (((\MEM~271_regout\) # (!\RR2~combout\(0))))) # (!\MEM~507_combout\ & (\MEM~207_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~507_combout\,
	datab => \MEM~207_regout\,
	datac => \MEM~271_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~508_combout\);

-- Location: LCCOMB_X30_Y19_N6
\MEM~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~510_combout\ = (\MEM~509_combout\ & (((\MEM~143_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~509_combout\ & (\RR2~combout\(1) & ((\MEM~111_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~509_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~143_regout\,
	datad => \MEM~111_regout\,
	combout => \MEM~510_combout\);

-- Location: LCCOMB_X30_Y19_N24
\MEM~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~511_combout\ = (\RR2~combout\(2) & (\MEM~508_combout\)) # (!\RR2~combout\(2) & ((\MEM~510_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~508_combout\,
	datab => \MEM~510_combout\,
	datac => \RR2~combout\(2),
	combout => \MEM~511_combout\);

-- Location: LCCOMB_X30_Y21_N26
\MEM~515\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~515_combout\ = (\MEM~514_combout\ & (((\MEM~144_regout\) # (!\RR2~combout\(1))))) # (!\MEM~514_combout\ & (\MEM~112_regout\ & ((\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~514_combout\,
	datab => \MEM~112_regout\,
	datac => \MEM~144_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~515_combout\);

-- Location: LCCOMB_X31_Y18_N18
\MEM~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~513_combout\ = (\MEM~512_combout\ & (((\MEM~272_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~512_combout\ & (\RR2~combout\(0) & ((\MEM~208_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~512_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~272_regout\,
	datad => \MEM~208_regout\,
	combout => \MEM~513_combout\);

-- Location: LCCOMB_X31_Y18_N4
\MEM~516\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~516_combout\ = (\RR2~combout\(2) & ((\MEM~513_combout\))) # (!\RR2~combout\(2) & (\MEM~515_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~515_combout\,
	datad => \MEM~513_combout\,
	combout => \MEM~516_combout\);

-- Location: LCFF_X30_Y18_N9
\MEM~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~81_regout\);

-- Location: LCFF_X30_Y18_N11
\MEM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~49_regout\);

-- Location: LCCOMB_X30_Y18_N10
\MEM~519\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~519_combout\ = (\RR2~combout\(0) & ((\MEM~81_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~49_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~81_regout\,
	datac => \MEM~49_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~519_combout\);

-- Location: LCCOMB_X30_Y21_N0
\MEM~520\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~520_combout\ = (\RR2~combout\(1) & ((\MEM~519_combout\ & (\MEM~145_regout\)) # (!\MEM~519_combout\ & ((\MEM~113_regout\))))) # (!\RR2~combout\(1) & (\MEM~519_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~519_combout\,
	datac => \MEM~145_regout\,
	datad => \MEM~113_regout\,
	combout => \MEM~520_combout\);

-- Location: LCFF_X33_Y19_N11
\MEM~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(13),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~273_regout\);

-- Location: LCCOMB_X32_Y18_N2
\MEM~517\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~517_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~241_regout\)) # (!\RR2~combout\(1) & ((\MEM~177_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~241_regout\,
	datac => \MEM~177_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~517_combout\);

-- Location: LCCOMB_X33_Y19_N10
\MEM~518\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~518_combout\ = (\RR2~combout\(0) & ((\MEM~517_combout\ & ((\MEM~273_regout\))) # (!\MEM~517_combout\ & (\MEM~209_regout\)))) # (!\RR2~combout\(0) & (((\MEM~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~209_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~273_regout\,
	datad => \MEM~517_combout\,
	combout => \MEM~518_combout\);

-- Location: LCCOMB_X30_Y21_N22
\MEM~521\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~521_combout\ = (\RR2~combout\(2) & ((\MEM~518_combout\))) # (!\RR2~combout\(2) & (\MEM~520_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~520_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~518_combout\,
	combout => \MEM~521_combout\);

-- Location: LCCOMB_X30_Y21_N14
\MEM~525\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~525_combout\ = (\MEM~524_combout\ & (((\MEM~146_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~524_combout\ & (\RR2~combout\(1) & ((\MEM~114_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~524_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~146_regout\,
	datad => \MEM~114_regout\,
	combout => \MEM~525_combout\);

-- Location: LCCOMB_X32_Y20_N26
\MEM~522\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~522_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~242_regout\))) # (!\RR2~combout\(1) & (\MEM~178_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~178_regout\,
	datad => \MEM~242_regout\,
	combout => \MEM~522_combout\);

-- Location: LCCOMB_X33_Y19_N30
\MEM~523\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~523_combout\ = (\MEM~522_combout\ & (((\MEM~274_regout\) # (!\RR2~combout\(0))))) # (!\MEM~522_combout\ & (\MEM~210_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~210_regout\,
	datab => \MEM~522_combout\,
	datac => \MEM~274_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~523_combout\);

-- Location: LCCOMB_X30_Y21_N8
\MEM~526\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~526_combout\ = (\RR2~combout\(2) & ((\MEM~523_combout\))) # (!\RR2~combout\(2) & (\MEM~525_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~525_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~523_combout\,
	combout => \MEM~526_combout\);

-- Location: LCFF_X30_Y18_N19
\MEM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~51_regout\);

-- Location: LCCOMB_X30_Y18_N18
\MEM~529\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~529_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~83_regout\)) # (!\RR2~combout\(0) & ((\MEM~51_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~83_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~51_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~529_combout\);

-- Location: LCCOMB_X30_Y17_N22
\MEM~530\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~530_combout\ = (\RR2~combout\(1) & ((\MEM~529_combout\ & ((\MEM~147_regout\))) # (!\MEM~529_combout\ & (\MEM~115_regout\)))) # (!\RR2~combout\(1) & (((\MEM~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~115_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~147_regout\,
	datad => \MEM~529_combout\,
	combout => \MEM~530_combout\);

-- Location: LCFF_X32_Y20_N23
\MEM~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~179_regout\);

-- Location: LCFF_X32_Y20_N13
\MEM~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(15),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~243_regout\);

-- Location: LCCOMB_X32_Y20_N22
\MEM~527\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~527_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~243_regout\))) # (!\RR2~combout\(1) & (\MEM~179_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~179_regout\,
	datad => \MEM~243_regout\,
	combout => \MEM~527_combout\);

-- Location: LCCOMB_X31_Y18_N14
\MEM~528\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~528_combout\ = (\RR2~combout\(0) & ((\MEM~527_combout\ & ((\MEM~275_regout\))) # (!\MEM~527_combout\ & (\MEM~211_regout\)))) # (!\RR2~combout\(0) & (((\MEM~527_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~211_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~275_regout\,
	datad => \MEM~527_combout\,
	combout => \MEM~528_combout\);

-- Location: LCCOMB_X31_Y18_N22
\MEM~531\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~531_combout\ = (\RR2~combout\(2) & ((\MEM~528_combout\))) # (!\RR2~combout\(2) & (\MEM~530_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~530_combout\,
	datac => \MEM~528_combout\,
	combout => \MEM~531_combout\);

-- Location: LCFF_X30_Y18_N7
\MEM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~52_regout\);

-- Location: LCCOMB_X30_Y18_N6
\MEM~534\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~534_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~84_regout\)) # (!\RR2~combout\(0) & ((\MEM~52_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~84_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~52_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~534_combout\);

-- Location: LCCOMB_X29_Y20_N16
\MEM~535\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~535_combout\ = (\RR2~combout\(1) & ((\MEM~534_combout\ & (\MEM~148_regout\)) # (!\MEM~534_combout\ & ((\MEM~116_regout\))))) # (!\RR2~combout\(1) & (\MEM~534_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~534_combout\,
	datac => \MEM~148_regout\,
	datad => \MEM~116_regout\,
	combout => \MEM~535_combout\);

-- Location: LCFF_X32_Y20_N11
\MEM~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~180_regout\);

-- Location: LCFF_X32_Y20_N1
\MEM~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(16),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~244_regout\);

-- Location: LCCOMB_X32_Y20_N10
\MEM~532\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~532_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~244_regout\))) # (!\RR2~combout\(1) & (\MEM~180_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~180_regout\,
	datad => \MEM~244_regout\,
	combout => \MEM~532_combout\);

-- Location: LCCOMB_X33_Y19_N2
\MEM~533\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~533_combout\ = (\RR2~combout\(0) & ((\MEM~532_combout\ & ((\MEM~276_regout\))) # (!\MEM~532_combout\ & (\MEM~212_regout\)))) # (!\RR2~combout\(0) & (((\MEM~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~212_regout\,
	datac => \MEM~276_regout\,
	datad => \MEM~532_combout\,
	combout => \MEM~533_combout\);

-- Location: LCCOMB_X29_Y20_N24
\MEM~536\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~536_combout\ = (\RR2~combout\(2) & ((\MEM~533_combout\))) # (!\RR2~combout\(2) & (\MEM~535_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~535_combout\,
	datad => \MEM~533_combout\,
	combout => \MEM~536_combout\);

-- Location: LCFF_X32_Y20_N7
\MEM~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~181_regout\);

-- Location: LCFF_X32_Y20_N29
\MEM~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(17),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~245_regout\);

-- Location: LCCOMB_X32_Y20_N6
\MEM~537\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~537_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~245_regout\))) # (!\RR2~combout\(1) & (\MEM~181_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~181_regout\,
	datad => \MEM~245_regout\,
	combout => \MEM~537_combout\);

-- Location: LCCOMB_X33_Y20_N18
\MEM~538\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~538_combout\ = (\RR2~combout\(0) & ((\MEM~537_combout\ & (\MEM~277_regout\)) # (!\MEM~537_combout\ & ((\MEM~213_regout\))))) # (!\RR2~combout\(0) & (\MEM~537_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~537_combout\,
	datac => \MEM~277_regout\,
	datad => \MEM~213_regout\,
	combout => \MEM~538_combout\);

-- Location: LCCOMB_X30_Y18_N2
\MEM~539\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~539_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~85_regout\)) # (!\RR2~combout\(0) & ((\MEM~53_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~85_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~53_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~539_combout\);

-- Location: LCCOMB_X29_Y20_N6
\MEM~540\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~540_combout\ = (\RR2~combout\(1) & ((\MEM~539_combout\ & ((\MEM~149_regout\))) # (!\MEM~539_combout\ & (\MEM~117_regout\)))) # (!\RR2~combout\(1) & (((\MEM~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~117_regout\,
	datac => \MEM~149_regout\,
	datad => \MEM~539_combout\,
	combout => \MEM~540_combout\);

-- Location: LCCOMB_X33_Y20_N6
\MEM~541\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~541_combout\ = (\RR2~combout\(2) & (\MEM~538_combout\)) # (!\RR2~combout\(2) & ((\MEM~540_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~538_combout\,
	datad => \MEM~540_combout\,
	combout => \MEM~541_combout\);

-- Location: LCFF_X31_Y19_N9
\MEM~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~86_regout\);

-- Location: LCFF_X31_Y19_N27
\MEM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(18),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~54_regout\);

-- Location: LCCOMB_X31_Y19_N26
\MEM~544\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~544_combout\ = (\RR2~combout\(0) & ((\MEM~86_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~54_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~86_regout\,
	datac => \MEM~54_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~544_combout\);

-- Location: LCCOMB_X29_Y20_N28
\MEM~545\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~545_combout\ = (\RR2~combout\(1) & ((\MEM~544_combout\ & (\MEM~150_regout\)) # (!\MEM~544_combout\ & ((\MEM~118_regout\))))) # (!\RR2~combout\(1) & (\MEM~544_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~544_combout\,
	datac => \MEM~150_regout\,
	datad => \MEM~118_regout\,
	combout => \MEM~545_combout\);

-- Location: LCCOMB_X32_Y20_N18
\MEM~542\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~542_combout\ = (\RR2~combout\(1) & ((\MEM~246_regout\) # ((\RR2~combout\(0))))) # (!\RR2~combout\(1) & (((\MEM~182_regout\ & !\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~246_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~182_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~542_combout\);

-- Location: LCCOMB_X33_Y20_N30
\MEM~543\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~543_combout\ = (\RR2~combout\(0) & ((\MEM~542_combout\ & ((\MEM~278_regout\))) # (!\MEM~542_combout\ & (\MEM~214_regout\)))) # (!\RR2~combout\(0) & (((\MEM~542_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~214_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~278_regout\,
	datad => \MEM~542_combout\,
	combout => \MEM~543_combout\);

-- Location: LCCOMB_X29_Y20_N10
\MEM~546\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~546_combout\ = (\RR2~combout\(2) & ((\MEM~543_combout\))) # (!\RR2~combout\(2) & (\MEM~545_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~545_combout\,
	datad => \MEM~543_combout\,
	combout => \MEM~546_combout\);

-- Location: LCCOMB_X29_Y19_N6
\MEM~549\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~549_combout\ = (\RR2~combout\(1) & (\RR2~combout\(0))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & ((\MEM~87_regout\))) # (!\RR2~combout\(0) & (\MEM~55_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \RR2~combout\(0),
	datac => \MEM~55_regout\,
	datad => \MEM~87_regout\,
	combout => \MEM~549_combout\);

-- Location: LCCOMB_X30_Y17_N26
\MEM~550\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~550_combout\ = (\RR2~combout\(1) & ((\MEM~549_combout\ & ((\MEM~151_regout\))) # (!\MEM~549_combout\ & (\MEM~119_regout\)))) # (!\RR2~combout\(1) & (((\MEM~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~119_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~151_regout\,
	datad => \MEM~549_combout\,
	combout => \MEM~550_combout\);

-- Location: LCFF_X31_Y17_N15
\MEM~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(19),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~279_regout\);

-- Location: LCCOMB_X32_Y18_N14
\MEM~547\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~547_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~247_regout\))) # (!\RR2~combout\(1) & (\MEM~183_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~183_regout\,
	datad => \MEM~247_regout\,
	combout => \MEM~547_combout\);

-- Location: LCCOMB_X31_Y17_N14
\MEM~548\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~548_combout\ = (\RR2~combout\(0) & ((\MEM~547_combout\ & ((\MEM~279_regout\))) # (!\MEM~547_combout\ & (\MEM~215_regout\)))) # (!\RR2~combout\(0) & (((\MEM~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~215_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~279_regout\,
	datad => \MEM~547_combout\,
	combout => \MEM~548_combout\);

-- Location: LCCOMB_X31_Y17_N4
\MEM~551\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~551_combout\ = (\RR2~combout\(2) & ((\MEM~548_combout\))) # (!\RR2~combout\(2) & (\MEM~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~550_combout\,
	datac => \MEM~548_combout\,
	combout => \MEM~551_combout\);

-- Location: LCCOMB_X32_Y20_N30
\MEM~552\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~552_combout\ = (\RR2~combout\(1) & ((\MEM~248_regout\) # ((\RR2~combout\(0))))) # (!\RR2~combout\(1) & (((\MEM~184_regout\ & !\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~248_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~184_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~552_combout\);

-- Location: LCFF_X33_Y21_N25
\MEM~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~280_regout\);

-- Location: LCCOMB_X33_Y21_N24
\MEM~553\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~553_combout\ = (\RR2~combout\(0) & ((\MEM~552_combout\ & (\MEM~280_regout\)) # (!\MEM~552_combout\ & ((\MEM~216_regout\))))) # (!\RR2~combout\(0) & (\MEM~552_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~552_combout\,
	datac => \MEM~280_regout\,
	datad => \MEM~216_regout\,
	combout => \MEM~553_combout\);

-- Location: LCFF_X30_Y21_N21
\MEM~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(20),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~152_regout\);

-- Location: LCCOMB_X30_Y21_N20
\MEM~555\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~555_combout\ = (\MEM~554_combout\ & (((\MEM~152_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~554_combout\ & (\RR2~combout\(1) & ((\MEM~120_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~554_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~152_regout\,
	datad => \MEM~120_regout\,
	combout => \MEM~555_combout\);

-- Location: LCCOMB_X33_Y21_N16
\MEM~556\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~556_combout\ = (\RR2~combout\(2) & (\MEM~553_combout\)) # (!\RR2~combout\(2) & ((\MEM~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~553_combout\,
	datac => \MEM~555_combout\,
	combout => \MEM~556_combout\);

-- Location: LCCOMB_X30_Y17_N30
\MEM~560\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~560_combout\ = (\MEM~559_combout\ & (((\MEM~153_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~559_combout\ & (\RR2~combout\(1) & ((\MEM~121_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~559_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~153_regout\,
	datad => \MEM~121_regout\,
	combout => \MEM~560_combout\);

-- Location: LCCOMB_X31_Y18_N28
\MEM~558\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~558_combout\ = (\MEM~557_combout\ & (((\MEM~281_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~557_combout\ & (\RR2~combout\(0) & ((\MEM~217_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~557_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~281_regout\,
	datad => \MEM~217_regout\,
	combout => \MEM~558_combout\);

-- Location: LCCOMB_X31_Y18_N24
\MEM~561\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~561_combout\ = (\RR2~combout\(2) & ((\MEM~558_combout\))) # (!\RR2~combout\(2) & (\MEM~560_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~560_combout\,
	datac => \MEM~558_combout\,
	combout => \MEM~561_combout\);

-- Location: LCCOMB_X32_Y19_N10
\MEM~565\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~565_combout\ = (\MEM~564_combout\ & (((\MEM~154_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~564_combout\ & (\RR2~combout\(1) & ((\MEM~122_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~564_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~154_regout\,
	datad => \MEM~122_regout\,
	combout => \MEM~565_combout\);

-- Location: LCCOMB_X33_Y20_N20
\MEM~563\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~563_combout\ = (\MEM~562_combout\ & (((\MEM~282_regout\)) # (!\RR2~combout\(0)))) # (!\MEM~562_combout\ & (\RR2~combout\(0) & ((\MEM~218_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~562_combout\,
	datab => \RR2~combout\(0),
	datac => \MEM~282_regout\,
	datad => \MEM~218_regout\,
	combout => \MEM~563_combout\);

-- Location: LCCOMB_X33_Y20_N16
\MEM~566\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~566_combout\ = (\RR2~combout\(2) & ((\MEM~563_combout\))) # (!\RR2~combout\(2) & (\MEM~565_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~565_combout\,
	datad => \MEM~563_combout\,
	combout => \MEM~566_combout\);

-- Location: LCCOMB_X32_Y19_N30
\MEM~570\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~570_combout\ = (\MEM~569_combout\ & (((\MEM~155_regout\)) # (!\RR2~combout\(1)))) # (!\MEM~569_combout\ & (\RR2~combout\(1) & ((\MEM~123_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~569_combout\,
	datab => \RR2~combout\(1),
	datac => \MEM~155_regout\,
	datad => \MEM~123_regout\,
	combout => \MEM~570_combout\);

-- Location: LCFF_X33_Y20_N11
\MEM~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(23),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~283_regout\);

-- Location: LCCOMB_X33_Y20_N10
\MEM~568\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~568_combout\ = (\MEM~567_combout\ & (((\MEM~283_regout\) # (!\RR2~combout\(0))))) # (!\MEM~567_combout\ & (\MEM~219_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~567_combout\,
	datab => \MEM~219_regout\,
	datac => \MEM~283_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~568_combout\);

-- Location: LCCOMB_X33_Y20_N2
\MEM~571\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~571_combout\ = (\RR2~combout\(2) & ((\MEM~568_combout\))) # (!\RR2~combout\(2) & (\MEM~570_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~570_combout\,
	datac => \MEM~568_combout\,
	combout => \MEM~571_combout\);

-- Location: LCFF_X31_Y19_N19
\MEM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~60_regout\);

-- Location: LCFF_X31_Y19_N1
\MEM~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~92_regout\);

-- Location: LCCOMB_X31_Y19_N18
\MEM~574\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~574_combout\ = (\RR2~combout\(0) & ((\RR2~combout\(1)) # ((\MEM~92_regout\)))) # (!\RR2~combout\(0) & (!\RR2~combout\(1) & (\MEM~60_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~60_regout\,
	datad => \MEM~92_regout\,
	combout => \MEM~574_combout\);

-- Location: LCCOMB_X32_Y19_N2
\MEM~575\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~575_combout\ = (\RR2~combout\(1) & ((\MEM~574_combout\ & ((\MEM~156_regout\))) # (!\MEM~574_combout\ & (\MEM~124_regout\)))) # (!\RR2~combout\(1) & (((\MEM~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~124_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~156_regout\,
	datad => \MEM~574_combout\,
	combout => \MEM~575_combout\);

-- Location: LCFF_X32_Y21_N7
\MEM~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~188_regout\);

-- Location: LCCOMB_X32_Y21_N6
\MEM~572\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~572_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~252_regout\))) # (!\RR2~combout\(1) & (\MEM~188_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~188_regout\,
	datad => \MEM~252_regout\,
	combout => \MEM~572_combout\);

-- Location: LCFF_X33_Y19_N7
\MEM~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(24),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~284_regout\);

-- Location: LCCOMB_X33_Y19_N6
\MEM~573\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~573_combout\ = (\RR2~combout\(0) & ((\MEM~572_combout\ & (\MEM~284_regout\)) # (!\MEM~572_combout\ & ((\MEM~220_regout\))))) # (!\RR2~combout\(0) & (\MEM~572_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~572_combout\,
	datac => \MEM~284_regout\,
	datad => \MEM~220_regout\,
	combout => \MEM~573_combout\);

-- Location: LCCOMB_X32_Y19_N24
\MEM~576\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~576_combout\ = (\RR2~combout\(2) & ((\MEM~573_combout\))) # (!\RR2~combout\(2) & (\MEM~575_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~575_combout\,
	datad => \MEM~573_combout\,
	combout => \MEM~576_combout\);

-- Location: LCFF_X32_Y19_N17
\MEM~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~157_regout\);

-- Location: LCCOMB_X31_Y19_N22
\MEM~579\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~579_combout\ = (\RR2~combout\(0) & ((\MEM~93_regout\) # ((\RR2~combout\(1))))) # (!\RR2~combout\(0) & (((\MEM~61_regout\ & !\RR2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~93_regout\,
	datac => \MEM~61_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~579_combout\);

-- Location: LCCOMB_X32_Y19_N16
\MEM~580\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~580_combout\ = (\RR2~combout\(1) & ((\MEM~579_combout\ & ((\MEM~157_regout\))) # (!\MEM~579_combout\ & (\MEM~125_regout\)))) # (!\RR2~combout\(1) & (((\MEM~579_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~125_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~157_regout\,
	datad => \MEM~579_combout\,
	combout => \MEM~580_combout\);

-- Location: LCFF_X31_Y18_N11
\MEM~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(25),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~285_regout\);

-- Location: LCCOMB_X32_Y21_N26
\MEM~577\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~577_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~253_regout\)) # (!\RR2~combout\(1) & ((\MEM~189_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~253_regout\,
	datac => \MEM~189_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~577_combout\);

-- Location: LCCOMB_X31_Y18_N10
\MEM~578\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~578_combout\ = (\RR2~combout\(0) & ((\MEM~577_combout\ & ((\MEM~285_regout\))) # (!\MEM~577_combout\ & (\MEM~221_regout\)))) # (!\RR2~combout\(0) & (((\MEM~577_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~221_regout\,
	datab => \RR2~combout\(0),
	datac => \MEM~285_regout\,
	datad => \MEM~577_combout\,
	combout => \MEM~578_combout\);

-- Location: LCCOMB_X31_Y18_N2
\MEM~581\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~581_combout\ = (\RR2~combout\(2) & ((\MEM~578_combout\))) # (!\RR2~combout\(2) & (\MEM~580_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~580_combout\,
	datad => \MEM~578_combout\,
	combout => \MEM~581_combout\);

-- Location: LCCOMB_X31_Y19_N2
\MEM~584\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~584_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~94_regout\)) # (!\RR2~combout\(0) & ((\MEM~62_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~94_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~62_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~584_combout\);

-- Location: LCCOMB_X30_Y19_N26
\MEM~585\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~585_combout\ = (\RR2~combout\(1) & ((\MEM~584_combout\ & ((\MEM~158_regout\))) # (!\MEM~584_combout\ & (\MEM~126_regout\)))) # (!\RR2~combout\(1) & (((\MEM~584_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~126_regout\,
	datac => \MEM~158_regout\,
	datad => \MEM~584_combout\,
	combout => \MEM~585_combout\);

-- Location: LCFF_X32_Y21_N15
\MEM~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(26),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~190_regout\);

-- Location: LCCOMB_X32_Y21_N14
\MEM~582\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~582_combout\ = (\RR2~combout\(1) & ((\MEM~254_regout\) # ((\RR2~combout\(0))))) # (!\RR2~combout\(1) & (((\MEM~190_regout\ & !\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~254_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~190_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~582_combout\);

-- Location: LCCOMB_X33_Y19_N26
\MEM~583\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~583_combout\ = (\MEM~582_combout\ & (((\MEM~286_regout\) # (!\RR2~combout\(0))))) # (!\MEM~582_combout\ & (\MEM~222_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~222_regout\,
	datab => \MEM~582_combout\,
	datac => \MEM~286_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~583_combout\);

-- Location: LCCOMB_X30_Y19_N2
\MEM~586\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~586_combout\ = (\RR2~combout\(2) & ((\MEM~583_combout\))) # (!\RR2~combout\(2) & (\MEM~585_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~585_combout\,
	datac => \RR2~combout\(2),
	datad => \MEM~583_combout\,
	combout => \MEM~586_combout\);

-- Location: LCFF_X31_Y19_N7
\MEM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(27),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~63_regout\);

-- Location: LCCOMB_X31_Y19_N6
\MEM~589\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~589_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~95_regout\)) # (!\RR2~combout\(0) & ((\MEM~63_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~95_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~63_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~589_combout\);

-- Location: LCCOMB_X32_Y19_N22
\MEM~590\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~590_combout\ = (\RR2~combout\(1) & ((\MEM~589_combout\ & ((\MEM~159_regout\))) # (!\MEM~589_combout\ & (\MEM~127_regout\)))) # (!\RR2~combout\(1) & (((\MEM~589_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~127_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~159_regout\,
	datad => \MEM~589_combout\,
	combout => \MEM~590_combout\);

-- Location: LCCOMB_X32_Y21_N18
\MEM~587\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~587_combout\ = (\RR2~combout\(1) & ((\MEM~255_regout\) # ((\RR2~combout\(0))))) # (!\RR2~combout\(1) & (((\MEM~191_regout\ & !\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~255_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~191_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~587_combout\);

-- Location: LCCOMB_X33_Y21_N22
\MEM~588\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~588_combout\ = (\RR2~combout\(0) & ((\MEM~587_combout\ & ((\MEM~287_regout\))) # (!\MEM~587_combout\ & (\MEM~223_regout\)))) # (!\RR2~combout\(0) & (((\MEM~587_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~223_regout\,
	datac => \MEM~287_regout\,
	datad => \MEM~587_combout\,
	combout => \MEM~588_combout\);

-- Location: LCCOMB_X32_Y19_N26
\MEM~591\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~591_combout\ = (\RR2~combout\(2) & ((\MEM~588_combout\))) # (!\RR2~combout\(2) & (\MEM~590_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datab => \MEM~590_combout\,
	datad => \MEM~588_combout\,
	combout => \MEM~591_combout\);

-- Location: LCCOMB_X32_Y21_N30
\MEM~592\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~592_combout\ = (\RR2~combout\(0) & (\RR2~combout\(1))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & ((\MEM~256_regout\))) # (!\RR2~combout\(1) & (\MEM~192_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \RR2~combout\(1),
	datac => \MEM~192_regout\,
	datad => \MEM~256_regout\,
	combout => \MEM~592_combout\);

-- Location: LCFF_X33_Y21_N21
\MEM~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~288_regout\);

-- Location: LCCOMB_X33_Y21_N20
\MEM~593\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~593_combout\ = (\RR2~combout\(0) & ((\MEM~592_combout\ & (\MEM~288_regout\)) # (!\MEM~592_combout\ & ((\MEM~224_regout\))))) # (!\RR2~combout\(0) & (\MEM~592_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~592_combout\,
	datac => \MEM~288_regout\,
	datad => \MEM~224_regout\,
	combout => \MEM~593_combout\);

-- Location: LCFF_X30_Y20_N3
\MEM~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~96_regout\);

-- Location: LCFF_X30_Y20_N13
\MEM~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(28),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~64_regout\);

-- Location: LCCOMB_X30_Y20_N12
\MEM~594\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~594_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~96_regout\)) # (!\RR2~combout\(0) & ((\MEM~64_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~96_regout\,
	datac => \MEM~64_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~594_combout\);

-- Location: LCCOMB_X31_Y20_N18
\MEM~595\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~595_combout\ = (\RR2~combout\(1) & ((\MEM~594_combout\ & ((\MEM~160_regout\))) # (!\MEM~594_combout\ & (\MEM~128_regout\)))) # (!\RR2~combout\(1) & (((\MEM~594_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~128_regout\,
	datac => \MEM~160_regout\,
	datad => \MEM~594_combout\,
	combout => \MEM~595_combout\);

-- Location: LCCOMB_X33_Y21_N18
\MEM~596\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~596_combout\ = (\RR2~combout\(2) & (\MEM~593_combout\)) # (!\RR2~combout\(2) & ((\MEM~595_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(2),
	datac => \MEM~593_combout\,
	datad => \MEM~595_combout\,
	combout => \MEM~596_combout\);

-- Location: LCFF_X31_Y21_N19
\MEM~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~289_regout\);

-- Location: LCCOMB_X32_Y21_N2
\MEM~597\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~597_combout\ = (\RR2~combout\(1) & ((\MEM~257_regout\) # ((\RR2~combout\(0))))) # (!\RR2~combout\(1) & (((\MEM~193_regout\ & !\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~257_regout\,
	datab => \RR2~combout\(1),
	datac => \MEM~193_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~597_combout\);

-- Location: LCCOMB_X31_Y21_N18
\MEM~598\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~598_combout\ = (\RR2~combout\(0) & ((\MEM~597_combout\ & ((\MEM~289_regout\))) # (!\MEM~597_combout\ & (\MEM~225_regout\)))) # (!\RR2~combout\(0) & (((\MEM~597_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~225_regout\,
	datac => \MEM~289_regout\,
	datad => \MEM~597_combout\,
	combout => \MEM~598_combout\);

-- Location: LCFF_X30_Y20_N31
\MEM~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~97_regout\);

-- Location: LCFF_X30_Y20_N17
\MEM~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(29),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~65_regout\);

-- Location: LCCOMB_X30_Y20_N16
\MEM~599\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~599_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~97_regout\)) # (!\RR2~combout\(0) & ((\MEM~65_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~97_regout\,
	datac => \MEM~65_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~599_combout\);

-- Location: LCCOMB_X31_Y20_N30
\MEM~600\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~600_combout\ = (\RR2~combout\(1) & ((\MEM~599_combout\ & (\MEM~161_regout\)) # (!\MEM~599_combout\ & ((\MEM~129_regout\))))) # (!\RR2~combout\(1) & (\MEM~599_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~599_combout\,
	datac => \MEM~161_regout\,
	datad => \MEM~129_regout\,
	combout => \MEM~600_combout\);

-- Location: LCCOMB_X31_Y20_N22
\MEM~601\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~601_combout\ = (\RR2~combout\(2) & (\MEM~598_combout\)) # (!\RR2~combout\(2) & ((\MEM~600_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~598_combout\,
	datac => \MEM~600_combout\,
	datad => \RR2~combout\(2),
	combout => \MEM~601_combout\);

-- Location: LCFF_X30_Y20_N11
\MEM~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~98_regout\);

-- Location: LCFF_X30_Y20_N29
\MEM~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~66_regout\);

-- Location: LCCOMB_X30_Y20_N28
\MEM~604\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~604_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~98_regout\)) # (!\RR2~combout\(0) & ((\MEM~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~98_regout\,
	datac => \MEM~66_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~604_combout\);

-- Location: LCCOMB_X31_Y20_N20
\MEM~605\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~605_combout\ = (\RR2~combout\(1) & ((\MEM~604_combout\ & (\MEM~162_regout\)) # (!\MEM~604_combout\ & ((\MEM~130_regout\))))) # (!\RR2~combout\(1) & (\MEM~604_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~604_combout\,
	datac => \MEM~162_regout\,
	datad => \MEM~130_regout\,
	combout => \MEM~605_combout\);

-- Location: LCCOMB_X32_Y21_N22
\MEM~602\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~602_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~258_regout\)) # (!\RR2~combout\(1) & ((\MEM~194_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~258_regout\,
	datac => \MEM~194_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~602_combout\);

-- Location: LCFF_X31_Y21_N31
\MEM~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(30),
	sload => VCC,
	ena => \MEM~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~290_regout\);

-- Location: LCCOMB_X31_Y21_N30
\MEM~603\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~603_combout\ = (\MEM~602_combout\ & (((\MEM~290_regout\) # (!\RR2~combout\(0))))) # (!\MEM~602_combout\ & (\MEM~226_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~226_regout\,
	datab => \MEM~602_combout\,
	datac => \MEM~290_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~603_combout\);

-- Location: LCCOMB_X31_Y20_N24
\MEM~606\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~606_combout\ = (\RR2~combout\(2) & ((\MEM~603_combout\))) # (!\RR2~combout\(2) & (\MEM~605_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR2~combout\(2),
	datac => \MEM~605_combout\,
	datad => \MEM~603_combout\,
	combout => \MEM~606_combout\);

-- Location: LCFF_X31_Y22_N17
\MEM~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~259_regout\);

-- Location: LCFF_X31_Y22_N19
\MEM~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~195_regout\);

-- Location: LCCOMB_X31_Y22_N18
\MEM~607\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~607_combout\ = (\RR2~combout\(0) & (((\RR2~combout\(1))))) # (!\RR2~combout\(0) & ((\RR2~combout\(1) & (\MEM~259_regout\)) # (!\RR2~combout\(1) & ((\MEM~195_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(0),
	datab => \MEM~259_regout\,
	datac => \MEM~195_regout\,
	datad => \RR2~combout\(1),
	combout => \MEM~607_combout\);

-- Location: LCCOMB_X31_Y21_N26
\MEM~608\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~608_combout\ = (\MEM~607_combout\ & (((\MEM~291_regout\) # (!\RR2~combout\(0))))) # (!\MEM~607_combout\ & (\MEM~227_regout\ & ((\RR2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~227_regout\,
	datab => \MEM~607_combout\,
	datac => \MEM~291_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~608_combout\);

-- Location: LCFF_X30_Y20_N15
\MEM~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~99_regout\);

-- Location: LCFF_X30_Y20_N9
\MEM~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RegWR~clkctrl_outclk\,
	sdata => \WD~combout\(31),
	sload => VCC,
	ena => \MEM~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM~67_regout\);

-- Location: LCCOMB_X30_Y20_N8
\MEM~609\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~609_combout\ = (\RR2~combout\(1) & (((\RR2~combout\(0))))) # (!\RR2~combout\(1) & ((\RR2~combout\(0) & (\MEM~99_regout\)) # (!\RR2~combout\(0) & ((\MEM~67_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~99_regout\,
	datac => \MEM~67_regout\,
	datad => \RR2~combout\(0),
	combout => \MEM~609_combout\);

-- Location: LCCOMB_X31_Y20_N2
\MEM~610\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~610_combout\ = (\RR2~combout\(1) & ((\MEM~609_combout\ & ((\MEM~163_regout\))) # (!\MEM~609_combout\ & (\MEM~131_regout\)))) # (!\RR2~combout\(1) & (((\MEM~609_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR2~combout\(1),
	datab => \MEM~131_regout\,
	datac => \MEM~163_regout\,
	datad => \MEM~609_combout\,
	combout => \MEM~610_combout\);

-- Location: LCCOMB_X31_Y20_N10
\MEM~611\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM~611_combout\ = (\RR2~combout\(2) & (\MEM~608_combout\)) # (!\RR2~combout\(2) & ((\MEM~610_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~608_combout\,
	datac => \MEM~610_combout\,
	datad => \RR2~combout\(2),
	combout => \MEM~611_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR1(3));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR1(4));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR2(3));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RR2[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RR2(4));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WR(3));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_WR(4));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(0));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(1));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(3));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(4));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(5));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(6));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(7));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(8));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(9));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(10));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(11));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(12));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(13));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~366_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(14));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(15));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(16));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(17));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(18));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(19));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(21));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(22));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~411_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(23));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~416_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(24));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(25));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~426_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(26));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(27));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~436_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(28));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(29));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(30));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1(31));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(0));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(1));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(2));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(3));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(4));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(5));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(6));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(7));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(8));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~501_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(9));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~506_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(10));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~511_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(11));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~516_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(12));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~521_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(13));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~526_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(14));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~531_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(15));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(16));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(17));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(18));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(19));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(20));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(21));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(22));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(23));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(24));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(25));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(26));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(27));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(28));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(29));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(30));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2(31));
END structure;


