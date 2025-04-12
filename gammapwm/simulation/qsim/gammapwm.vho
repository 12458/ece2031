-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/12/2025 11:21:28"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gammapwm IS
    PORT (
	clk : IN std_logic;
	brightnessIn : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	load : IN std_logic;
	output : OUT std_logic
	);
END gammapwm;

ARCHITECTURE structure OF gammapwm IS
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
SIGNAL ww_brightnessIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \brightnessIn[4]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \brightness_reg[7]~0_combout\ : std_logic;
SIGNAL \brightnessIn[3]~input_o\ : std_logic;
SIGNAL \brightnessIn[2]~input_o\ : std_logic;
SIGNAL \brightnessIn[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \brightnessIn[7]~input_o\ : std_logic;
SIGNAL \brightnessIn[5]~input_o\ : std_logic;
SIGNAL \brightnessIn[6]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \brightnessIn[0]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL brightness_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_brightness_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_brightnessIn <= brightnessIn;
ww_reset <= reset;
ww_load <= load;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(5) <= NOT cnt(5);
ALT_INV_brightness_reg(4) <= NOT brightness_reg(4);
ALT_INV_cnt(7) <= NOT cnt(7);
ALT_INV_brightness_reg(3) <= NOT brightness_reg(3);
ALT_INV_brightness_reg(1) <= NOT brightness_reg(1);
ALT_INV_brightness_reg(2) <= NOT brightness_reg(2);
ALT_INV_brightness_reg(7) <= NOT brightness_reg(7);
ALT_INV_brightness_reg(5) <= NOT brightness_reg(5);
ALT_INV_cnt(6) <= NOT cnt(6);
ALT_INV_brightness_reg(6) <= NOT brightness_reg(6);
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_Mux7~4_combout\ <= NOT \Mux7~4_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
ALT_INV_cnt(4) <= NOT cnt(4);
ALT_INV_brightness_reg(0) <= NOT brightness_reg(0);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(0) <= NOT cnt(0);
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;

\output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~5_combout\,
	devoe => ww_devoe,
	o => \output~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~30\ = CARRY(( cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(0),
	cin => GND,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt(1) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( cnt(1) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(1),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt(2) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( cnt(2) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(2),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt(3) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~2\ = CARRY(( cnt(3) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(3),
	cin => \Add0~22\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt(4) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~18\ = CARRY(( cnt(4) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(4),
	cin => \Add0~2\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~6\ = CARRY(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(5),
	cin => \Add0~18\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cnt(6) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( cnt(6) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(6),
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cnt(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(7),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\);

\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

\brightnessIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(4),
	o => \brightnessIn[4]~input_o\);

\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\brightness_reg[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \brightness_reg[7]~0_combout\ = (\load~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_load~input_o\,
	combout => \brightness_reg[7]~0_combout\);

\brightness_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[4]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(4));

\brightnessIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(3),
	o => \brightnessIn[3]~input_o\);

\brightness_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[3]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(3));

\brightnessIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(2),
	o => \brightnessIn[2]~input_o\);

\brightness_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[2]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(2));

\brightnessIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(1),
	o => \brightnessIn[1]~input_o\);

\brightness_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[1]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(1));

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (brightness_reg(2) & brightness_reg(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(2),
	datab => ALT_INV_brightness_reg(1),
	combout => \Mux2~0_combout\);

\brightnessIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(7),
	o => \brightnessIn[7]~input_o\);

\brightness_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[7]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(7));

\brightnessIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(5),
	o => \brightnessIn[5]~input_o\);

\brightness_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[5]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(5));

\brightnessIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(6),
	o => \brightnessIn[6]~input_o\);

\brightness_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[6]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(6));

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( brightness_reg(5) & ( brightness_reg(6) & ( brightness_reg(7) ) ) ) # ( !brightness_reg(5) & ( brightness_reg(6) & ( brightness_reg(7) ) ) ) # ( brightness_reg(5) & ( !brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(3) & 
-- (\Mux2~0_combout\ & brightness_reg(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => \ALT_INV_Mux2~0_combout\,
	datad => ALT_INV_brightness_reg(7),
	datae => ALT_INV_brightness_reg(5),
	dataf => ALT_INV_brightness_reg(6),
	combout => \Mux0~0_combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!brightness_reg(3) & (brightness_reg(1) & (brightness_reg(2) & !brightness_reg(6)))) # (brightness_reg(3) & ((!brightness_reg(6)) # ((brightness_reg(1) & brightness_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000001000111110000000100011111000000010001111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(1),
	datab => ALT_INV_brightness_reg(2),
	datac => ALT_INV_brightness_reg(3),
	datad => ALT_INV_brightness_reg(6),
	combout => \Mux1~0_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(3) & (brightness_reg(2) & brightness_reg(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(1),
	datae => ALT_INV_brightness_reg(6),
	combout => \Mux1~1_combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~1_combout\ & ( (brightness_reg(4) & (brightness_reg(7) & (!brightness_reg(5) & \Mux1~0_combout\))) ) ) # ( !\Mux1~1_combout\ & ( (brightness_reg(7) & (((brightness_reg(4) & \Mux1~0_combout\)) # (brightness_reg(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000000001000000000011000100110000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(7),
	datac => ALT_INV_brightness_reg(5),
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~2_combout\);

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt(7) & (!\Mux0~0_combout\ & (!cnt(6) $ (\Mux1~2_combout\)))) # (cnt(7) & (\Mux0~0_combout\ & (!cnt(6) $ (\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100110010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(7),
	datab => \ALT_INV_Mux0~0_combout\,
	datac => ALT_INV_cnt(6),
	datad => \ALT_INV_Mux1~2_combout\,
	combout => \LessThan0~0_combout\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(3) & (brightness_reg(2) & brightness_reg(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(1),
	datae => ALT_INV_brightness_reg(6),
	combout => \Mux3~0_combout\);

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (brightness_reg(6) & ((!brightness_reg(4)) # (!brightness_reg(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(6),
	combout => \Mux3~1_combout\);

\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( brightness_reg(6) & ( !brightness_reg(3) $ (((!brightness_reg(2)) # (!brightness_reg(1)))) ) ) # ( !brightness_reg(6) & ( (!brightness_reg(4) & (brightness_reg(3))) # (brightness_reg(4) & (!brightness_reg(3) & ((!brightness_reg(2)) # 
-- (!brightness_reg(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100010001100110011110001100110011000100011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(1),
	datae => ALT_INV_brightness_reg(6),
	combout => \Mux3~2_combout\);

\brightnessIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(0),
	o => \brightnessIn[0]~input_o\);

\brightness_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \brightnessIn[0]~input_o\,
	sclr => \reset~input_o\,
	ena => \brightness_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => brightness_reg(0));

\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( brightness_reg(3) & ( brightness_reg(6) & ( (brightness_reg(4) & ((!brightness_reg(2)) # ((!brightness_reg(1) & !brightness_reg(0))))) ) ) ) # ( !brightness_reg(3) & ( brightness_reg(6) & ( (!brightness_reg(4)) # (((brightness_reg(1) 
-- & brightness_reg(0))) # (brightness_reg(2))) ) ) ) # ( brightness_reg(3) & ( !brightness_reg(6) & ( (brightness_reg(2) & ((!brightness_reg(4)) # (brightness_reg(1)))) ) ) ) # ( !brightness_reg(3) & ( !brightness_reg(6) & ( (!brightness_reg(4) & 
-- (!brightness_reg(2) & (!brightness_reg(1) & !brightness_reg(0)))) # (brightness_reg(4) & ((!brightness_reg(2)) # ((!brightness_reg(1) & !brightness_reg(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010001000100001000110010001110111011101111110101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(2),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(0),
	datae => ALT_INV_brightness_reg(3),
	dataf => ALT_INV_brightness_reg(6),
	combout => \Mux3~3_combout\);

\Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( brightness_reg(5) & ( brightness_reg(7) & ( !\Mux3~3_combout\ ) ) ) # ( !brightness_reg(5) & ( brightness_reg(7) & ( \Mux3~2_combout\ ) ) ) # ( brightness_reg(5) & ( !brightness_reg(7) & ( \Mux3~1_combout\ ) ) ) # ( !brightness_reg(5) 
-- & ( !brightness_reg(7) & ( \Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Mux3~1_combout\,
	datac => \ALT_INV_Mux3~2_combout\,
	datad => \ALT_INV_Mux3~3_combout\,
	datae => ALT_INV_brightness_reg(5),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux3~4_combout\);

\Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (((brightness_reg(0) & brightness_reg(1))) # (brightness_reg(3))) # (brightness_reg(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(3),
	combout => \Mux2~3_combout\);

\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( brightness_reg(5) & ( brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(3) & !brightness_reg(7))) ) ) ) # ( !brightness_reg(5) & ( brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(7) & ((!brightness_reg(3)) # 
-- (!\Mux2~0_combout\)))) ) ) ) # ( brightness_reg(5) & ( !brightness_reg(6) & ( (brightness_reg(4) & (brightness_reg(7) & ((!brightness_reg(3)) # (!\Mux2~0_combout\)))) ) ) ) # ( !brightness_reg(5) & ( !brightness_reg(6) & ( (brightness_reg(4) & 
-- (!brightness_reg(3) & (!\Mux2~0_combout\ & brightness_reg(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000101010000000000010101000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => \ALT_INV_Mux2~0_combout\,
	datad => ALT_INV_brightness_reg(7),
	datae => ALT_INV_brightness_reg(5),
	dataf => ALT_INV_brightness_reg(6),
	combout => \Mux2~2_combout\);

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( brightness_reg(6) & ( (brightness_reg(3) & (brightness_reg(2) & (brightness_reg(1) & !brightness_reg(5)))) ) ) # ( !brightness_reg(6) & ( (!brightness_reg(5)) # ((brightness_reg(3) & brightness_reg(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001000000010000000011111111000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(3),
	datab => ALT_INV_brightness_reg(2),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(5),
	datae => ALT_INV_brightness_reg(6),
	combout => \Mux2~1_combout\);

\Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( !brightness_reg(4) & ( ((((\Mux2~1_combout\ & brightness_reg(7))) # (\Mux2~2_combout\))) ) ) # ( brightness_reg(4) & ( ((brightness_reg(6) & (brightness_reg(5) & (\Mux2~3_combout\ & brightness_reg(7))))) # (\Mux2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(6),
	datab => ALT_INV_brightness_reg(5),
	datac => \ALT_INV_Mux2~3_combout\,
	datad => \ALT_INV_Mux2~2_combout\,
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(7),
	datag => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~4_combout\);

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \Mux2~4_combout\ & ( (cnt(5) & (\LessThan0~0_combout\ & (!cnt(4) $ (\Mux3~4_combout\)))) ) ) # ( !\Mux2~4_combout\ & ( (!cnt(5) & (\LessThan0~0_combout\ & (!cnt(4) $ (\Mux3~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010000100000000000100100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_cnt(4),
	datad => \ALT_INV_Mux3~4_combout\,
	datae => \ALT_INV_Mux2~4_combout\,
	combout => \LessThan0~1_combout\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( brightness_reg(5) & ( brightness_reg(3) & ( (brightness_reg(2) & (!brightness_reg(4) & ((brightness_reg(0)) # (brightness_reg(1))))) ) ) ) # ( !brightness_reg(5) & ( brightness_reg(3) & ( (!brightness_reg(2) & (((brightness_reg(4)) # 
-- (brightness_reg(0))) # (brightness_reg(1)))) # (brightness_reg(2) & ((!brightness_reg(1)) # ((!brightness_reg(4))))) ) ) ) # ( brightness_reg(5) & ( !brightness_reg(3) & ( brightness_reg(4) ) ) ) # ( !brightness_reg(5) & ( !brightness_reg(3) & ( 
-- brightness_reg(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101111111111011100001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(2),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(0),
	datad => ALT_INV_brightness_reg(4),
	datae => ALT_INV_brightness_reg(5),
	dataf => ALT_INV_brightness_reg(3),
	combout => \Mux4~0_combout\);

\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( brightness_reg(4) & ( brightness_reg(3) & ( (!brightness_reg(5) & (!brightness_reg(2))) # (brightness_reg(5) & ((!brightness_reg(2) & (!brightness_reg(1) & !brightness_reg(0))) # (brightness_reg(2) & (brightness_reg(1))))) ) ) ) # ( 
-- !brightness_reg(4) & ( brightness_reg(3) & ( (!brightness_reg(5) & ((!brightness_reg(2)) # ((!brightness_reg(1)) # (!brightness_reg(0))))) # (brightness_reg(5) & (brightness_reg(2))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(3) & ( 
-- (!brightness_reg(1) & (brightness_reg(5) & (!brightness_reg(2) $ (brightness_reg(0))))) # (brightness_reg(1) & (((brightness_reg(2))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(3) & ( (!brightness_reg(2) & (!brightness_reg(5) $ 
-- (((brightness_reg(0)) # (brightness_reg(1)))))) # (brightness_reg(2) & (brightness_reg(5) & ((!brightness_reg(1)) # (!brightness_reg(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010101010100010000110001001110111011101110011100100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(5),
	datab => ALT_INV_brightness_reg(2),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(0),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(3),
	combout => \Mux4~1_combout\);

\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( brightness_reg(4) & ( brightness_reg(5) & ( (!brightness_reg(3) & (((brightness_reg(0) & brightness_reg(1))) # (brightness_reg(2)))) # (brightness_reg(3) & (brightness_reg(2) & (!brightness_reg(0) $ (!brightness_reg(1))))) ) ) ) # ( 
-- !brightness_reg(4) & ( brightness_reg(5) & ( (!brightness_reg(3) & (!brightness_reg(2) & ((!brightness_reg(0)) # (!brightness_reg(1))))) # (brightness_reg(3) & (((!brightness_reg(1)) # (!brightness_reg(2))))) ) ) ) # ( brightness_reg(4) & ( 
-- !brightness_reg(5) & ( (!brightness_reg(1) & (!brightness_reg(2) & ((!brightness_reg(3)) # (!brightness_reg(0))))) # (brightness_reg(1) & (((brightness_reg(2))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(5) & ( !brightness_reg(1) $ 
-- (brightness_reg(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111000000000111111111101010100000000001010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(3),
	datab => ALT_INV_brightness_reg(0),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(2),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(5),
	combout => \Mux4~2_combout\);

\Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Mux4~2_combout\ & ( (!brightness_reg(7) & (brightness_reg(6) & (\Mux4~0_combout\))) # (brightness_reg(7) & (!brightness_reg(6) & ((!\Mux4~1_combout\)))) ) ) # ( !\Mux4~2_combout\ & ( (!brightness_reg(7) & (brightness_reg(6) & 
-- (\Mux4~0_combout\))) # (brightness_reg(7) & (((!\Mux4~1_combout\)) # (brightness_reg(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100010011010001100000001001010111000100110100011000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(7),
	datab => ALT_INV_brightness_reg(6),
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux4~1_combout\,
	datae => \ALT_INV_Mux4~2_combout\,
	combout => \Mux4~3_combout\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (brightness_reg(4) & (brightness_reg(3) & brightness_reg(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(5),
	combout => \Mux5~0_combout\);

\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( brightness_reg(2) & ( brightness_reg(3) & ( (!brightness_reg(4) & (!brightness_reg(5) $ (((brightness_reg(1) & brightness_reg(0)))))) # (brightness_reg(4) & ((!brightness_reg(5) & (brightness_reg(1) & brightness_reg(0))) # 
-- (brightness_reg(5) & (!brightness_reg(1))))) ) ) ) # ( !brightness_reg(2) & ( brightness_reg(3) & ( (!brightness_reg(4) & (brightness_reg(5) & ((brightness_reg(0)) # (brightness_reg(1))))) # (brightness_reg(4) & (!brightness_reg(5) $ (((!brightness_reg(1) 
-- & !brightness_reg(0)))))) ) ) ) # ( brightness_reg(2) & ( !brightness_reg(3) & ( (!brightness_reg(4) & ((!brightness_reg(5)) # ((!brightness_reg(1)) # (!brightness_reg(0))))) # (brightness_reg(4) & (!brightness_reg(1) $ (((brightness_reg(5) & 
-- brightness_reg(0)))))) ) ) ) # ( !brightness_reg(2) & ( !brightness_reg(3) & ( (!brightness_reg(4) & (((!brightness_reg(1) & !brightness_reg(0))))) # (brightness_reg(4) & (!brightness_reg(1) $ (((!brightness_reg(5)) # (brightness_reg(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010000000101111110101110100100010110011001101001100010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(5),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(0),
	datae => ALT_INV_brightness_reg(2),
	dataf => ALT_INV_brightness_reg(3),
	combout => \Mux5~1_combout\);

\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( brightness_reg(2) & ( brightness_reg(4) & ( (!brightness_reg(5) & ((!brightness_reg(3) & (!brightness_reg(1) & !brightness_reg(0))) # (brightness_reg(3) & (brightness_reg(1))))) ) ) ) # ( !brightness_reg(2) & ( brightness_reg(4) & ( 
-- (!brightness_reg(3) & ((!brightness_reg(5)) # (!brightness_reg(1)))) # (brightness_reg(3) & (brightness_reg(5))) ) ) ) # ( brightness_reg(2) & ( !brightness_reg(4) & ( (!brightness_reg(3) & (brightness_reg(5) & (!brightness_reg(1)))) # (brightness_reg(3) 
-- & ((!brightness_reg(5)) # ((brightness_reg(0)) # (brightness_reg(1))))) ) ) ) # ( !brightness_reg(2) & ( !brightness_reg(4) & ( (!brightness_reg(3) & (brightness_reg(5))) # (brightness_reg(3) & (!brightness_reg(5) & ((brightness_reg(0)) # 
-- (brightness_reg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001100110011001010111010110111001101110011000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(3),
	datab => ALT_INV_brightness_reg(5),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(0),
	datae => ALT_INV_brightness_reg(2),
	dataf => ALT_INV_brightness_reg(4),
	combout => \Mux5~2_combout\);

\Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( brightness_reg(1) & ( brightness_reg(3) & ( (!brightness_reg(5)) # ((!brightness_reg(2) & ((!brightness_reg(0)))) # (brightness_reg(2) & (!brightness_reg(4)))) ) ) ) # ( !brightness_reg(1) & ( brightness_reg(3) & ( (!brightness_reg(2) 
-- & (((brightness_reg(4) & brightness_reg(0))) # (brightness_reg(5)))) # (brightness_reg(2) & (brightness_reg(4) & (brightness_reg(0) & brightness_reg(5)))) ) ) ) # ( brightness_reg(1) & ( !brightness_reg(3) & ( (!brightness_reg(0) & 
-- (((!brightness_reg(5))))) # (brightness_reg(0) & ((!brightness_reg(2)) # ((!brightness_reg(4) & !brightness_reg(5))))) ) ) ) # ( !brightness_reg(1) & ( !brightness_reg(3) & ( (brightness_reg(2) & brightness_reg(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111100011000000010000111100011111111111001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(0),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(5),
	datae => ALT_INV_brightness_reg(1),
	dataf => ALT_INV_brightness_reg(3),
	combout => \Mux5~3_combout\);

\Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( brightness_reg(7) & ( brightness_reg(6) & ( !\Mux5~3_combout\ ) ) ) # ( !brightness_reg(7) & ( brightness_reg(6) & ( !\Mux5~2_combout\ ) ) ) # ( brightness_reg(7) & ( !brightness_reg(6) & ( \Mux5~1_combout\ ) ) ) # ( 
-- !brightness_reg(7) & ( !brightness_reg(6) & ( \Mux5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~0_combout\,
	datab => \ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_Mux5~3_combout\,
	datae => ALT_INV_brightness_reg(7),
	dataf => ALT_INV_brightness_reg(6),
	combout => \Mux5~4_combout\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( brightness_reg(5) & ( brightness_reg(0) & ( !brightness_reg(4) $ (!brightness_reg(3)) ) ) ) # ( brightness_reg(5) & ( !brightness_reg(0) & ( (!brightness_reg(4) & (brightness_reg(3) & ((brightness_reg(1)) # (brightness_reg(2))))) # 
-- (brightness_reg(4) & (!brightness_reg(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001100110011000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(4),
	datab => ALT_INV_brightness_reg(3),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(1),
	datae => ALT_INV_brightness_reg(5),
	dataf => ALT_INV_brightness_reg(0),
	combout => \Mux6~0_combout\);

\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( brightness_reg(4) & ( brightness_reg(5) & ( (!brightness_reg(1) & (((!brightness_reg(0) & brightness_reg(2))) # (brightness_reg(3)))) # (brightness_reg(1) & (((!brightness_reg(2) & !brightness_reg(3))))) ) ) ) # ( !brightness_reg(4) & 
-- ( brightness_reg(5) & ( (!brightness_reg(1) & ((!brightness_reg(2)) # ((brightness_reg(0) & brightness_reg(3))))) # (brightness_reg(1) & (((brightness_reg(2))))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(5) & ( (!brightness_reg(1) & 
-- ((!brightness_reg(2) & ((brightness_reg(3)))) # (brightness_reg(2) & (brightness_reg(0) & !brightness_reg(3))))) # (brightness_reg(1) & (((brightness_reg(2))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(5) & ( (!brightness_reg(0) & 
-- (!brightness_reg(3) $ (((brightness_reg(2)) # (brightness_reg(1)))))) # (brightness_reg(0) & (brightness_reg(3) & ((!brightness_reg(1)) # (!brightness_reg(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001111110000001111100001111000011110001110011100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(2),
	datad => ALT_INV_brightness_reg(3),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(5),
	combout => \Mux6~1_combout\);

\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( brightness_reg(1) & ( brightness_reg(0) & ( (!brightness_reg(3) & ((!brightness_reg(2) & ((brightness_reg(4)))) # (brightness_reg(2) & (brightness_reg(5))))) # (brightness_reg(3) & (brightness_reg(2) & ((!brightness_reg(5)) # 
-- (!brightness_reg(4))))) ) ) ) # ( !brightness_reg(1) & ( brightness_reg(0) & ( (!brightness_reg(3) & ((!brightness_reg(5) & ((!brightness_reg(4)))) # (brightness_reg(5) & ((!brightness_reg(2)) # (brightness_reg(4)))))) # (brightness_reg(3) & 
-- (!brightness_reg(2))) ) ) ) # ( brightness_reg(1) & ( !brightness_reg(0) & ( (!brightness_reg(5) & (!brightness_reg(3) & ((brightness_reg(4))))) # (brightness_reg(5) & ((!brightness_reg(2) & ((!brightness_reg(4)))) # (brightness_reg(2) & 
-- (brightness_reg(3) & brightness_reg(4))))) ) ) ) # ( !brightness_reg(1) & ( !brightness_reg(0) & ( (!brightness_reg(2) & (!brightness_reg(5) & (!brightness_reg(3) $ (!brightness_reg(4))))) # (brightness_reg(2) & (((!brightness_reg(4))) # 
-- (brightness_reg(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001110010001000011001010000111101100010011100001001110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(3),
	datab => ALT_INV_brightness_reg(2),
	datac => ALT_INV_brightness_reg(5),
	datad => ALT_INV_brightness_reg(4),
	datae => ALT_INV_brightness_reg(1),
	dataf => ALT_INV_brightness_reg(0),
	combout => \Mux6~2_combout\);

\Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( brightness_reg(0) & ( brightness_reg(2) & ( (!brightness_reg(4)) # ((!brightness_reg(3) & ((!brightness_reg(1)) # (brightness_reg(5)))) # (brightness_reg(3) & ((!brightness_reg(5)) # (brightness_reg(1))))) ) ) ) # ( !brightness_reg(0) 
-- & ( brightness_reg(2) & ( (!brightness_reg(1) & brightness_reg(5)) ) ) ) # ( brightness_reg(0) & ( !brightness_reg(2) & ( (!brightness_reg(5) & ((!brightness_reg(3)) # ((!brightness_reg(4)) # (brightness_reg(1))))) ) ) ) # ( !brightness_reg(0) & ( 
-- !brightness_reg(2) & ( (!brightness_reg(5) & (brightness_reg(3) & (brightness_reg(4)))) # (brightness_reg(5) & (((brightness_reg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111111011110000000000000000111100001111110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(3),
	datab => ALT_INV_brightness_reg(4),
	datac => ALT_INV_brightness_reg(1),
	datad => ALT_INV_brightness_reg(5),
	datae => ALT_INV_brightness_reg(0),
	dataf => ALT_INV_brightness_reg(2),
	combout => \Mux6~3_combout\);

\Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( brightness_reg(6) & ( brightness_reg(7) & ( \Mux6~3_combout\ ) ) ) # ( !brightness_reg(6) & ( brightness_reg(7) & ( !\Mux6~2_combout\ ) ) ) # ( brightness_reg(6) & ( !brightness_reg(7) & ( !\Mux6~1_combout\ ) ) ) # ( 
-- !brightness_reg(6) & ( !brightness_reg(7) & ( \Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux6~2_combout\,
	datad => \ALT_INV_Mux6~3_combout\,
	datae => ALT_INV_brightness_reg(6),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux6~4_combout\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(1) & (!brightness_reg(6) $ (((brightness_reg(0) & !brightness_reg(3)))))) # (brightness_reg(1) & (((brightness_reg(6) & !brightness_reg(3))) # (brightness_reg(0)))) ) ) ) # 
-- ( !brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(6) & (!brightness_reg(0) $ (((brightness_reg(3)) # (brightness_reg(1)))))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(7) & ( (brightness_reg(6) & (!brightness_reg(1) $ 
-- (!brightness_reg(3)))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(7) & ( (!brightness_reg(0) & (!brightness_reg(1) & brightness_reg(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000110000110010010000010100001001011111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(6),
	datad => ALT_INV_brightness_reg(3),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux7~0_combout\);

\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(0) & (((brightness_reg(3)) # (brightness_reg(6))) # (brightness_reg(1)))) # (brightness_reg(0) & (!brightness_reg(1) $ (((!brightness_reg(6) & brightness_reg(3)))))) ) ) ) # 
-- ( !brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(6) & ((!brightness_reg(0) & (brightness_reg(1) & brightness_reg(3))) # (brightness_reg(0) & ((!brightness_reg(3)))))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(7) & ( 
-- (!brightness_reg(6) & (((brightness_reg(3))))) # (brightness_reg(6) & (!brightness_reg(1) $ (((brightness_reg(0) & !brightness_reg(3)))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(7) & ( (brightness_reg(6) & ((!brightness_reg(0) & 
-- ((brightness_reg(3)) # (brightness_reg(1)))) # (brightness_reg(0) & ((!brightness_reg(1)) # (!brightness_reg(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001110000010011111110001010000001000000110111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(6),
	datad => ALT_INV_brightness_reg(3),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux7~1_combout\);

\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(6) & (brightness_reg(0) & (brightness_reg(1) & brightness_reg(3)))) # (brightness_reg(6) & (!brightness_reg(0) $ ((!brightness_reg(1))))) ) ) ) # ( !brightness_reg(4) & ( 
-- brightness_reg(7) & ( !brightness_reg(1) $ (((!brightness_reg(0)) # (!brightness_reg(6)))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(7) & ( (!brightness_reg(3) & ((!brightness_reg(1) & (brightness_reg(0))) # (brightness_reg(1) & 
-- ((!brightness_reg(6)))))) # (brightness_reg(3) & (brightness_reg(0) & ((brightness_reg(6))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(7) & ( (!brightness_reg(3) & (((!brightness_reg(1)) # (!brightness_reg(6))))) # (brightness_reg(3) & 
-- ((!brightness_reg(0) & (!brightness_reg(1))) # (brightness_reg(0) & ((brightness_reg(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010001101011101000000010100110110001101100000011000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(6),
	datad => ALT_INV_brightness_reg(3),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux7~2_combout\);

\Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( brightness_reg(4) & ( brightness_reg(7) & ( (!brightness_reg(6) & (((!brightness_reg(3)) # (brightness_reg(1))) # (brightness_reg(0)))) # (brightness_reg(6) & (!brightness_reg(0) $ (((brightness_reg(1) & !brightness_reg(3)))))) ) ) ) 
-- # ( !brightness_reg(4) & ( brightness_reg(7) & ( !brightness_reg(1) $ (((brightness_reg(0) & brightness_reg(6)))) ) ) ) # ( brightness_reg(4) & ( !brightness_reg(7) & ( (!brightness_reg(0) & (brightness_reg(3) & ((!brightness_reg(1)) # 
-- (brightness_reg(6))))) # (brightness_reg(0) & (brightness_reg(6) & (!brightness_reg(1) $ (brightness_reg(3))))) ) ) ) # ( !brightness_reg(4) & ( !brightness_reg(7) & ( (!brightness_reg(1) & (brightness_reg(3) & ((!brightness_reg(6)) # 
-- (brightness_reg(0))))) # (brightness_reg(1) & ((!brightness_reg(6) $ (!brightness_reg(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110100000001001000101111001001110010011111100101111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_brightness_reg(0),
	datab => ALT_INV_brightness_reg(1),
	datac => ALT_INV_brightness_reg(6),
	datad => ALT_INV_brightness_reg(3),
	datae => ALT_INV_brightness_reg(4),
	dataf => ALT_INV_brightness_reg(7),
	combout => \Mux7~3_combout\);

\Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( brightness_reg(2) & ( brightness_reg(5) & ( !\Mux7~3_combout\ ) ) ) # ( !brightness_reg(2) & ( brightness_reg(5) & ( \Mux7~2_combout\ ) ) ) # ( brightness_reg(2) & ( !brightness_reg(5) & ( \Mux7~1_combout\ ) ) ) # ( !brightness_reg(2) 
-- & ( !brightness_reg(5) & ( \Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_Mux7~1_combout\,
	datac => \ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_Mux7~3_combout\,
	datae => ALT_INV_brightness_reg(2),
	dataf => ALT_INV_brightness_reg(5),
	combout => \Mux7~4_combout\);

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( cnt(0) & ( \Mux7~4_combout\ & ( (!cnt(2) & (((!cnt(1) & \Mux6~4_combout\)) # (\Mux5~4_combout\))) # (cnt(2) & (\Mux5~4_combout\ & (!cnt(1) & \Mux6~4_combout\))) ) ) ) # ( !cnt(0) & ( \Mux7~4_combout\ & ( (!cnt(2) & (((!cnt(1)) # 
-- (\Mux6~4_combout\)) # (\Mux5~4_combout\))) # (cnt(2) & (\Mux5~4_combout\ & ((!cnt(1)) # (\Mux6~4_combout\)))) ) ) ) # ( cnt(0) & ( !\Mux7~4_combout\ & ( (!cnt(2) & (((!cnt(1) & \Mux6~4_combout\)) # (\Mux5~4_combout\))) # (cnt(2) & (\Mux5~4_combout\ & 
-- (!cnt(1) & \Mux6~4_combout\))) ) ) ) # ( !cnt(0) & ( !\Mux7~4_combout\ & ( (!cnt(2) & (((!cnt(1) & \Mux6~4_combout\)) # (\Mux5~4_combout\))) # (cnt(2) & (\Mux5~4_combout\ & (!cnt(1) & \Mux6~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110110010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => \ALT_INV_Mux5~4_combout\,
	datac => ALT_INV_cnt(1),
	datad => \ALT_INV_Mux6~4_combout\,
	datae => ALT_INV_cnt(0),
	dataf => \ALT_INV_Mux7~4_combout\,
	combout => \LessThan0~2_combout\);

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!cnt(7) & (((!cnt(6) & \Mux1~2_combout\)) # (\Mux0~0_combout\))) # (cnt(7) & (\Mux0~0_combout\ & (!cnt(6) & \Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001000100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(7),
	datab => \ALT_INV_Mux0~0_combout\,
	datac => ALT_INV_cnt(6),
	datad => \ALT_INV_Mux1~2_combout\,
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \Mux2~4_combout\ & ( !\LessThan0~3_combout\ & ( (!\LessThan0~0_combout\) # ((cnt(5) & ((!\Mux3~4_combout\) # (cnt(4))))) ) ) ) # ( !\Mux2~4_combout\ & ( !\LessThan0~3_combout\ & ( ((!\LessThan0~0_combout\) # ((!\Mux3~4_combout\) 
-- # (cnt(4)))) # (cnt(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111110111011100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_cnt(4),
	datad => \ALT_INV_Mux3~4_combout\,
	datae => \ALT_INV_Mux2~4_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( (\LessThan0~1_combout\ & ((!cnt(3) & ((\LessThan0~2_combout\) # (\Mux4~3_combout\))) # (cnt(3) & (\Mux4~3_combout\ & \LessThan0~2_combout\)))) ) ) # ( !\LessThan0~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000100010001111111111111111110000001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(3),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Mux4~3_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

ww_output <= \output~output_o\;
END structure;


