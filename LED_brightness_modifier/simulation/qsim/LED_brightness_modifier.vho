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

-- DATE "03/28/2025 19:36:56"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	LED_brightness_modifier IS
    PORT (
	clk : IN std_logic;
	brightnessIn : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	output : OUT std_logic
	);
END LED_brightness_modifier;

ARCHITECTURE structure OF LED_brightness_modifier IS
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
SIGNAL ww_output : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \output~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \gamma_val[5]~1_q\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \brightnessIn[0]~input_o\ : std_logic;
SIGNAL \brightnessIn[1]~input_o\ : std_logic;
SIGNAL \brightnessIn[2]~input_o\ : std_logic;
SIGNAL \brightnessIn[3]~input_o\ : std_logic;
SIGNAL \brightnessIn[4]~input_o\ : std_logic;
SIGNAL \brightnessIn[5]~input_o\ : std_logic;
SIGNAL \brightnessIn[6]~input_o\ : std_logic;
SIGNAL \brightnessIn[7]~input_o\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL cnt_8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL gamma_val : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL ALT_INV_cnt_8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL ALT_INV_gamma_val : std_logic_vector(7 DOWNTO 6);
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \ALT_INV_gamma_val[5]~1_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_brightnessIn[7]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_brightnessIn <= brightnessIn;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux2_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\Mux2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\Mux2_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\Mux2_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\Mux2_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\Mux2_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\brightnessIn[7]~input_o\ & \brightnessIn[6]~input_o\ & \brightnessIn[5]~input_o\ & \brightnessIn[4]~input_o\ & \brightnessIn[3]~input_o\ & \brightnessIn[2]~input_o\ & \brightnessIn[1]~input_o\ & 
\brightnessIn[0]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \Mux2_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a5~portadataout\;
ALT_INV_cnt_8bit(0) <= NOT cnt_8bit(0);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\;
ALT_INV_cnt_8bit(1) <= NOT cnt_8bit(1);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\;
ALT_INV_cnt_8bit(2) <= NOT cnt_8bit(2);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\;
ALT_INV_cnt_8bit(4) <= NOT cnt_8bit(4);
ALT_INV_gamma_val(6) <= NOT gamma_val(6);
ALT_INV_cnt_8bit(6) <= NOT cnt_8bit(6);
ALT_INV_gamma_val(7) <= NOT gamma_val(7);
ALT_INV_cnt_8bit(7) <= NOT cnt_8bit(7);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\;
ALT_INV_cnt_8bit(5) <= NOT cnt_8bit(5);
\Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \Mux2_rtl_0|auto_generated|ram_block1a2~portadataout\;
ALT_INV_cnt_8bit(3) <= NOT cnt_8bit(3);
\ALT_INV_gamma_val[5]~1_q\ <= NOT \gamma_val[5]~1_q\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_brightnessIn[1]~input_o\ <= NOT \brightnessIn[1]~input_o\;
\ALT_INV_brightnessIn[2]~input_o\ <= NOT \brightnessIn[2]~input_o\;
\ALT_INV_brightnessIn[3]~input_o\ <= NOT \brightnessIn[3]~input_o\;
\ALT_INV_brightnessIn[4]~input_o\ <= NOT \brightnessIn[4]~input_o\;
\ALT_INV_brightnessIn[6]~input_o\ <= NOT \brightnessIn[6]~input_o\;
\ALT_INV_brightnessIn[5]~input_o\ <= NOT \brightnessIn[5]~input_o\;
\ALT_INV_brightnessIn[7]~input_o\ <= NOT \brightnessIn[7]~input_o\;

\output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~7_combout\,
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

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\gamma_val[5]~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gamma_val[5]~1_q\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cnt_8bit(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~30\ = CARRY(( cnt_8bit(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(0),
	cin => GND,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\cnt_8bit[0]\ : dffeas
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
	q => cnt_8bit(0));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt_8bit(1) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( cnt_8bit(1) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(1),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\cnt_8bit[1]\ : dffeas
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
	q => cnt_8bit(1));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt_8bit(2) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( cnt_8bit(2) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(2),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\cnt_8bit[2]\ : dffeas
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
	q => cnt_8bit(2));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt_8bit(3) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~2\ = CARRY(( cnt_8bit(3) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(3),
	cin => \Add0~22\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\cnt_8bit[3]\ : dffeas
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
	q => cnt_8bit(3));

\brightnessIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(0),
	o => \brightnessIn[0]~input_o\);

\brightnessIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(1),
	o => \brightnessIn[1]~input_o\);

\brightnessIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(2),
	o => \brightnessIn[2]~input_o\);

\brightnessIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(3),
	o => \brightnessIn[3]~input_o\);

\brightnessIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(4),
	o => \brightnessIn[4]~input_o\);

\brightnessIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(5),
	o => \brightnessIn[5]~input_o\);

\brightnessIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(6),
	o => \brightnessIn[6]~input_o\);

\brightnessIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessIn(7),
	o => \brightnessIn[7]~input_o\);

\Mux2_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "9F07C0F83E3C3C3C3E1E0F81F03F80FE00FFE0003FFFFE000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt_8bit(4) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~18\ = CARRY(( cnt_8bit(4) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(4),
	cin => \Add0~2\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\cnt_8bit[4]\ : dffeas
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
	q => cnt_8bit(4));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cnt_8bit(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~6\ = CARRY(( cnt_8bit(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(5),
	cin => \Add0~18\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\cnt_8bit[5]\ : dffeas
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
	q => cnt_8bit(5));

\Mux2_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "FFF800003FFFC0003FFFF000003FFFFFFF000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cnt_8bit(6) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( cnt_8bit(6) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(6),
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\cnt_8bit[6]\ : dffeas
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
	q => cnt_8bit(6));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cnt_8bit(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_8bit(7),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\);

\cnt_8bit[7]\ : dffeas
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
	q => cnt_8bit(7));

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\brightnessIn[1]~input_o\ & (\brightnessIn[2]~input_o\ & (\brightnessIn[3]~input_o\ & \brightnessIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_brightnessIn[1]~input_o\,
	datab => \ALT_INV_brightnessIn[2]~input_o\,
	datac => \ALT_INV_brightnessIn[3]~input_o\,
	datad => \ALT_INV_brightnessIn[4]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\brightnessIn[7]~input_o\ & (((\brightnessIn[5]~input_o\ & \Mux0~0_combout\)) # (\brightnessIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_brightnessIn[5]~input_o\,
	datab => \ALT_INV_brightnessIn[7]~input_o\,
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_brightnessIn[6]~input_o\,
	combout => \Mux0~1_combout\);

\gamma_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux0~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gamma_val(7));

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\brightnessIn[3]~input_o\ & (\brightnessIn[1]~input_o\ & (\brightnessIn[2]~input_o\ & !\brightnessIn[6]~input_o\))) # (\brightnessIn[3]~input_o\ & ((!\brightnessIn[6]~input_o\) # ((\brightnessIn[1]~input_o\ & 
-- \brightnessIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000001000111110000000100011111000000010001111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_brightnessIn[1]~input_o\,
	datab => \ALT_INV_brightnessIn[2]~input_o\,
	datac => \ALT_INV_brightnessIn[3]~input_o\,
	datad => \ALT_INV_brightnessIn[6]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \brightnessIn[6]~input_o\ & ( \Mux1~0_combout\ & ( (\brightnessIn[7]~input_o\ & ((\brightnessIn[5]~input_o\) # (\brightnessIn[4]~input_o\))) ) ) ) # ( !\brightnessIn[6]~input_o\ & ( \Mux1~0_combout\ & ( (\brightnessIn[7]~input_o\ & 
-- ((!\brightnessIn[5]~input_o\ & (\brightnessIn[4]~input_o\)) # (\brightnessIn[5]~input_o\ & ((!\Mux0~0_combout\))))) ) ) ) # ( \brightnessIn[6]~input_o\ & ( !\Mux1~0_combout\ & ( (\brightnessIn[5]~input_o\ & \brightnessIn[7]~input_o\) ) ) ) # ( 
-- !\brightnessIn[6]~input_o\ & ( !\Mux1~0_combout\ & ( (\brightnessIn[5]~input_o\ & (\brightnessIn[7]~input_o\ & !\Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000001100000111000001000000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_brightnessIn[4]~input_o\,
	datab => \ALT_INV_brightnessIn[5]~input_o\,
	datac => \ALT_INV_brightnessIn[7]~input_o\,
	datad => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_brightnessIn[6]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~1_combout\);

\gamma_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux1~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gamma_val(6));

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt_8bit(7) & (!gamma_val(7) & (!cnt_8bit(6) $ (gamma_val(6))))) # (cnt_8bit(7) & (gamma_val(7) & (!cnt_8bit(6) $ (gamma_val(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100110010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_8bit(7),
	datab => ALT_INV_gamma_val(7),
	datac => ALT_INV_cnt_8bit(6),
	datad => ALT_INV_gamma_val(6),
	combout => \LessThan0~0_combout\);

\Mux2_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "E007FF003FC03FC03FE00FFE003FFF0000FFFFFFC00000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( cnt_8bit(4) & ( \Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( (!\gamma_val[5]~1_q\ & (\LessThan0~0_combout\ & (!cnt_8bit(5) $ (\Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) ) # ( !cnt_8bit(4) & ( 
-- \Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( (!cnt_8bit(5) & (\gamma_val[5]~1_q\ & \LessThan0~0_combout\)) ) ) ) # ( !cnt_8bit(4) & ( !\Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( (\LessThan0~0_combout\ & (!cnt_8bit(5) $ 
-- (((!\gamma_val[5]~1_q\ & \Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100110000000000000000000000000001000100000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_8bit(5),
	datab => \ALT_INV_gamma_val[5]~1_q\,
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_cnt_8bit(4),
	dataf => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \LessThan0~1_combout\);

\Mux2_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "D8C738C731B3333331998E718E3C70F1F0FC1FC03FE001FFFF00000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\Mux2_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "94B4B4B4AD2AAAAAAD5569696DB26CCDCCE31C3C3C1F81FE00FFFE0000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\Mux2_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "A6666666787E00001800CCCCDB694AA92AD2DB33339C71E1E0FE01FFF0000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LED_brightness_modifier.LED_brightness_modifier0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux2_rtl_0|altsyncram_r291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \Mux2_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux2_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\gamma_val[5]~1_q\ & (!cnt_8bit(0) & \Mux2_rtl_0|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gamma_val[5]~1_q\,
	datab => ALT_INV_cnt_8bit(0),
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	combout => \LessThan0~2_combout\);

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( \LessThan0~2_combout\ & ( (!\gamma_val[5]~1_q\ & ((!cnt_8bit(2)) # ((\Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\)))) # (\gamma_val[5]~1_q\ & (!cnt_8bit(2) & 
-- ((!cnt_8bit(1))))) ) ) ) # ( !\Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( \LessThan0~2_combout\ & ( (!cnt_8bit(2) & ((!cnt_8bit(1)) # ((!\gamma_val[5]~1_q\ & \Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\)))) # (cnt_8bit(2) & 
-- (!\gamma_val[5]~1_q\ & (\Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\ & !cnt_8bit(1)))) ) ) ) # ( \Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( !\LessThan0~2_combout\ & ( (!\gamma_val[5]~1_q\ & ((!cnt_8bit(2) & ((!cnt_8bit(1)) # 
-- (\Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\))) # (cnt_8bit(2) & (\Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\ & !cnt_8bit(1))))) ) ) ) # ( !\Mux2_rtl_0|auto_generated|ram_block1a4~portadataout\ & ( !\LessThan0~2_combout\ & ( 
-- (!\gamma_val[5]~1_q\ & (!cnt_8bit(2) & \Mux2_rtl_0|auto_generated|ram_block1a3~portadataout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100010100000100011001110000010001100111010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gamma_val[5]~1_q\,
	datab => ALT_INV_cnt_8bit(2),
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datad => ALT_INV_cnt_8bit(1),
	datae => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\gamma_val[5]~1_q\ & (!cnt_8bit(4) & \Mux2_rtl_0|auto_generated|ram_block1a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gamma_val[5]~1_q\,
	datab => ALT_INV_cnt_8bit(4),
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!cnt_8bit(7) & (((!cnt_8bit(6) & gamma_val(6))) # (gamma_val(7)))) # (cnt_8bit(7) & (gamma_val(7) & (!cnt_8bit(6) & gamma_val(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001000100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_8bit(7),
	datab => ALT_INV_gamma_val(7),
	datac => ALT_INV_cnt_8bit(6),
	datad => ALT_INV_gamma_val(6),
	combout => \LessThan0~5_combout\);

\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ & ( (!\LessThan0~0_combout\) # ((cnt_8bit(5) & ((!\Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\gamma_val[5]~1_q\)))) ) ) ) # ( !\LessThan0~4_combout\ & ( 
-- !\LessThan0~5_combout\ & ( (((!\Mux2_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\LessThan0~0_combout\)) # (\gamma_val[5]~1_q\)) # (cnt_8bit(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111110101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_8bit(5),
	datab => \ALT_INV_gamma_val[5]~1_q\,
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~6_combout\ & ( (\LessThan0~1_combout\ & ((!cnt_8bit(3)) # ((!\gamma_val[5]~1_q\ & \Mux2_rtl_0|auto_generated|ram_block1a2~portadataout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( 
-- \LessThan0~6_combout\ & ( (!\gamma_val[5]~1_q\ & (!cnt_8bit(3) & (\Mux2_rtl_0|auto_generated|ram_block1a2~portadataout\ & \LessThan0~1_combout\))) ) ) ) # ( \LessThan0~3_combout\ & ( !\LessThan0~6_combout\ ) ) # ( !\LessThan0~3_combout\ & ( 
-- !\LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000010000000000011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gamma_val[5]~1_q\,
	datab => ALT_INV_cnt_8bit(3),
	datac => \Mux2_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

ww_output <= \output~output_o\;
END structure;


