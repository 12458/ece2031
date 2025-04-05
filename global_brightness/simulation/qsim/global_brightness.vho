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

-- DATE "03/30/2025 21:36:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.BRIGHTNESS_PKG.ALL;

ENTITY 	global_brightness IS
    PORT (
	en : IN std_logic;
	brightnessin : IN std_logic_vector(7 DOWNTO 0);
	brightnessout : OUT WORK.BRIGHTNESS_PKG.brightness_array
	);
END global_brightness;

ARCHITECTURE structure OF global_brightness IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_brightnessin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_brightnessout : WORK.BRIGHTNESS_PKG.brightness_array;
SIGNAL \brightnessout[9][0]~output_o\ : std_logic;
SIGNAL \brightnessout[9][1]~output_o\ : std_logic;
SIGNAL \brightnessout[9][2]~output_o\ : std_logic;
SIGNAL \brightnessout[9][3]~output_o\ : std_logic;
SIGNAL \brightnessout[9][4]~output_o\ : std_logic;
SIGNAL \brightnessout[9][5]~output_o\ : std_logic;
SIGNAL \brightnessout[9][6]~output_o\ : std_logic;
SIGNAL \brightnessout[9][7]~output_o\ : std_logic;
SIGNAL \brightnessout[8][0]~output_o\ : std_logic;
SIGNAL \brightnessout[8][1]~output_o\ : std_logic;
SIGNAL \brightnessout[8][2]~output_o\ : std_logic;
SIGNAL \brightnessout[8][3]~output_o\ : std_logic;
SIGNAL \brightnessout[8][4]~output_o\ : std_logic;
SIGNAL \brightnessout[8][5]~output_o\ : std_logic;
SIGNAL \brightnessout[8][6]~output_o\ : std_logic;
SIGNAL \brightnessout[8][7]~output_o\ : std_logic;
SIGNAL \brightnessout[7][0]~output_o\ : std_logic;
SIGNAL \brightnessout[7][1]~output_o\ : std_logic;
SIGNAL \brightnessout[7][2]~output_o\ : std_logic;
SIGNAL \brightnessout[7][3]~output_o\ : std_logic;
SIGNAL \brightnessout[7][4]~output_o\ : std_logic;
SIGNAL \brightnessout[7][5]~output_o\ : std_logic;
SIGNAL \brightnessout[7][6]~output_o\ : std_logic;
SIGNAL \brightnessout[7][7]~output_o\ : std_logic;
SIGNAL \brightnessout[6][0]~output_o\ : std_logic;
SIGNAL \brightnessout[6][1]~output_o\ : std_logic;
SIGNAL \brightnessout[6][2]~output_o\ : std_logic;
SIGNAL \brightnessout[6][3]~output_o\ : std_logic;
SIGNAL \brightnessout[6][4]~output_o\ : std_logic;
SIGNAL \brightnessout[6][5]~output_o\ : std_logic;
SIGNAL \brightnessout[6][6]~output_o\ : std_logic;
SIGNAL \brightnessout[6][7]~output_o\ : std_logic;
SIGNAL \brightnessout[5][0]~output_o\ : std_logic;
SIGNAL \brightnessout[5][1]~output_o\ : std_logic;
SIGNAL \brightnessout[5][2]~output_o\ : std_logic;
SIGNAL \brightnessout[5][3]~output_o\ : std_logic;
SIGNAL \brightnessout[5][4]~output_o\ : std_logic;
SIGNAL \brightnessout[5][5]~output_o\ : std_logic;
SIGNAL \brightnessout[5][6]~output_o\ : std_logic;
SIGNAL \brightnessout[5][7]~output_o\ : std_logic;
SIGNAL \brightnessout[4][0]~output_o\ : std_logic;
SIGNAL \brightnessout[4][1]~output_o\ : std_logic;
SIGNAL \brightnessout[4][2]~output_o\ : std_logic;
SIGNAL \brightnessout[4][3]~output_o\ : std_logic;
SIGNAL \brightnessout[4][4]~output_o\ : std_logic;
SIGNAL \brightnessout[4][5]~output_o\ : std_logic;
SIGNAL \brightnessout[4][6]~output_o\ : std_logic;
SIGNAL \brightnessout[4][7]~output_o\ : std_logic;
SIGNAL \brightnessout[3][0]~output_o\ : std_logic;
SIGNAL \brightnessout[3][1]~output_o\ : std_logic;
SIGNAL \brightnessout[3][2]~output_o\ : std_logic;
SIGNAL \brightnessout[3][3]~output_o\ : std_logic;
SIGNAL \brightnessout[3][4]~output_o\ : std_logic;
SIGNAL \brightnessout[3][5]~output_o\ : std_logic;
SIGNAL \brightnessout[3][6]~output_o\ : std_logic;
SIGNAL \brightnessout[3][7]~output_o\ : std_logic;
SIGNAL \brightnessout[2][0]~output_o\ : std_logic;
SIGNAL \brightnessout[2][1]~output_o\ : std_logic;
SIGNAL \brightnessout[2][2]~output_o\ : std_logic;
SIGNAL \brightnessout[2][3]~output_o\ : std_logic;
SIGNAL \brightnessout[2][4]~output_o\ : std_logic;
SIGNAL \brightnessout[2][5]~output_o\ : std_logic;
SIGNAL \brightnessout[2][6]~output_o\ : std_logic;
SIGNAL \brightnessout[2][7]~output_o\ : std_logic;
SIGNAL \brightnessout[1][0]~output_o\ : std_logic;
SIGNAL \brightnessout[1][1]~output_o\ : std_logic;
SIGNAL \brightnessout[1][2]~output_o\ : std_logic;
SIGNAL \brightnessout[1][3]~output_o\ : std_logic;
SIGNAL \brightnessout[1][4]~output_o\ : std_logic;
SIGNAL \brightnessout[1][5]~output_o\ : std_logic;
SIGNAL \brightnessout[1][6]~output_o\ : std_logic;
SIGNAL \brightnessout[1][7]~output_o\ : std_logic;
SIGNAL \brightnessout[0][0]~output_o\ : std_logic;
SIGNAL \brightnessout[0][1]~output_o\ : std_logic;
SIGNAL \brightnessout[0][2]~output_o\ : std_logic;
SIGNAL \brightnessout[0][3]~output_o\ : std_logic;
SIGNAL \brightnessout[0][4]~output_o\ : std_logic;
SIGNAL \brightnessout[0][5]~output_o\ : std_logic;
SIGNAL \brightnessout[0][6]~output_o\ : std_logic;
SIGNAL \brightnessout[0][7]~output_o\ : std_logic;
SIGNAL \brightnessin[0]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \brightnessin[1]~input_o\ : std_logic;
SIGNAL \brightnessin[2]~input_o\ : std_logic;
SIGNAL \brightnessin[3]~input_o\ : std_logic;
SIGNAL \brightnessin[4]~input_o\ : std_logic;
SIGNAL \brightnessin[5]~input_o\ : std_logic;
SIGNAL \brightnessin[6]~input_o\ : std_logic;
SIGNAL \brightnessin[7]~input_o\ : std_logic;

BEGIN

ww_en <= en;
ww_brightnessin <= brightnessin;
brightnessout <= ww_brightnessout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\brightnessout[9][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][0]~output_o\);

\brightnessout[9][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][1]~output_o\);

\brightnessout[9][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][2]~output_o\);

\brightnessout[9][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][3]~output_o\);

\brightnessout[9][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][4]~output_o\);

\brightnessout[9][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][5]~output_o\);

\brightnessout[9][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][6]~output_o\);

\brightnessout[9][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[9][7]~output_o\);

\brightnessout[8][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][0]~output_o\);

\brightnessout[8][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][1]~output_o\);

\brightnessout[8][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][2]~output_o\);

\brightnessout[8][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][3]~output_o\);

\brightnessout[8][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][4]~output_o\);

\brightnessout[8][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][5]~output_o\);

\brightnessout[8][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][6]~output_o\);

\brightnessout[8][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[8][7]~output_o\);

\brightnessout[7][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][0]~output_o\);

\brightnessout[7][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][1]~output_o\);

\brightnessout[7][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][2]~output_o\);

\brightnessout[7][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][3]~output_o\);

\brightnessout[7][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][4]~output_o\);

\brightnessout[7][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][5]~output_o\);

\brightnessout[7][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][6]~output_o\);

\brightnessout[7][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[7][7]~output_o\);

\brightnessout[6][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][0]~output_o\);

\brightnessout[6][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][1]~output_o\);

\brightnessout[6][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][2]~output_o\);

\brightnessout[6][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][3]~output_o\);

\brightnessout[6][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][4]~output_o\);

\brightnessout[6][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][5]~output_o\);

\brightnessout[6][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][6]~output_o\);

\brightnessout[6][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[6][7]~output_o\);

\brightnessout[5][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][0]~output_o\);

\brightnessout[5][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][1]~output_o\);

\brightnessout[5][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][2]~output_o\);

\brightnessout[5][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][3]~output_o\);

\brightnessout[5][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][4]~output_o\);

\brightnessout[5][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][5]~output_o\);

\brightnessout[5][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][6]~output_o\);

\brightnessout[5][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[5][7]~output_o\);

\brightnessout[4][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][0]~output_o\);

\brightnessout[4][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][1]~output_o\);

\brightnessout[4][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][2]~output_o\);

\brightnessout[4][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][3]~output_o\);

\brightnessout[4][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][4]~output_o\);

\brightnessout[4][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][5]~output_o\);

\brightnessout[4][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][6]~output_o\);

\brightnessout[4][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[4][7]~output_o\);

\brightnessout[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][0]~output_o\);

\brightnessout[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][1]~output_o\);

\brightnessout[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][2]~output_o\);

\brightnessout[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][3]~output_o\);

\brightnessout[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][4]~output_o\);

\brightnessout[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][5]~output_o\);

\brightnessout[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][6]~output_o\);

\brightnessout[3][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[3][7]~output_o\);

\brightnessout[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][0]~output_o\);

\brightnessout[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][1]~output_o\);

\brightnessout[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][2]~output_o\);

\brightnessout[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][3]~output_o\);

\brightnessout[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][4]~output_o\);

\brightnessout[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][5]~output_o\);

\brightnessout[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][6]~output_o\);

\brightnessout[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[2][7]~output_o\);

\brightnessout[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][0]~output_o\);

\brightnessout[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][1]~output_o\);

\brightnessout[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][2]~output_o\);

\brightnessout[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][3]~output_o\);

\brightnessout[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][4]~output_o\);

\brightnessout[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][5]~output_o\);

\brightnessout[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][6]~output_o\);

\brightnessout[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[1][7]~output_o\);

\brightnessout[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[0]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][0]~output_o\);

\brightnessout[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[1]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][1]~output_o\);

\brightnessout[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[2]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][2]~output_o\);

\brightnessout[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[3]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][3]~output_o\);

\brightnessout[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[4]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][4]~output_o\);

\brightnessout[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[5]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][5]~output_o\);

\brightnessout[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[6]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][6]~output_o\);

\brightnessout[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \brightnessin[7]~input_o\,
	oe => \en~input_o\,
	devoe => ww_devoe,
	o => \brightnessout[0][7]~output_o\);

\brightnessin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(0),
	o => \brightnessin[0]~input_o\);

\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\brightnessin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(1),
	o => \brightnessin[1]~input_o\);

\brightnessin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(2),
	o => \brightnessin[2]~input_o\);

\brightnessin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(3),
	o => \brightnessin[3]~input_o\);

\brightnessin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(4),
	o => \brightnessin[4]~input_o\);

\brightnessin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(5),
	o => \brightnessin[5]~input_o\);

\brightnessin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(6),
	o => \brightnessin[6]~input_o\);

\brightnessin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightnessin(7),
	o => \brightnessin[7]~input_o\);

ww_brightnessout(9)(0) <= \brightnessout[9][0]~output_o\;

ww_brightnessout(9)(1) <= \brightnessout[9][1]~output_o\;

ww_brightnessout(9)(2) <= \brightnessout[9][2]~output_o\;

ww_brightnessout(9)(3) <= \brightnessout[9][3]~output_o\;

ww_brightnessout(9)(4) <= \brightnessout[9][4]~output_o\;

ww_brightnessout(9)(5) <= \brightnessout[9][5]~output_o\;

ww_brightnessout(9)(6) <= \brightnessout[9][6]~output_o\;

ww_brightnessout(9)(7) <= \brightnessout[9][7]~output_o\;

ww_brightnessout(8)(0) <= \brightnessout[8][0]~output_o\;

ww_brightnessout(8)(1) <= \brightnessout[8][1]~output_o\;

ww_brightnessout(8)(2) <= \brightnessout[8][2]~output_o\;

ww_brightnessout(8)(3) <= \brightnessout[8][3]~output_o\;

ww_brightnessout(8)(4) <= \brightnessout[8][4]~output_o\;

ww_brightnessout(8)(5) <= \brightnessout[8][5]~output_o\;

ww_brightnessout(8)(6) <= \brightnessout[8][6]~output_o\;

ww_brightnessout(8)(7) <= \brightnessout[8][7]~output_o\;

ww_brightnessout(7)(0) <= \brightnessout[7][0]~output_o\;

ww_brightnessout(7)(1) <= \brightnessout[7][1]~output_o\;

ww_brightnessout(7)(2) <= \brightnessout[7][2]~output_o\;

ww_brightnessout(7)(3) <= \brightnessout[7][3]~output_o\;

ww_brightnessout(7)(4) <= \brightnessout[7][4]~output_o\;

ww_brightnessout(7)(5) <= \brightnessout[7][5]~output_o\;

ww_brightnessout(7)(6) <= \brightnessout[7][6]~output_o\;

ww_brightnessout(7)(7) <= \brightnessout[7][7]~output_o\;

ww_brightnessout(6)(0) <= \brightnessout[6][0]~output_o\;

ww_brightnessout(6)(1) <= \brightnessout[6][1]~output_o\;

ww_brightnessout(6)(2) <= \brightnessout[6][2]~output_o\;

ww_brightnessout(6)(3) <= \brightnessout[6][3]~output_o\;

ww_brightnessout(6)(4) <= \brightnessout[6][4]~output_o\;

ww_brightnessout(6)(5) <= \brightnessout[6][5]~output_o\;

ww_brightnessout(6)(6) <= \brightnessout[6][6]~output_o\;

ww_brightnessout(6)(7) <= \brightnessout[6][7]~output_o\;

ww_brightnessout(5)(0) <= \brightnessout[5][0]~output_o\;

ww_brightnessout(5)(1) <= \brightnessout[5][1]~output_o\;

ww_brightnessout(5)(2) <= \brightnessout[5][2]~output_o\;

ww_brightnessout(5)(3) <= \brightnessout[5][3]~output_o\;

ww_brightnessout(5)(4) <= \brightnessout[5][4]~output_o\;

ww_brightnessout(5)(5) <= \brightnessout[5][5]~output_o\;

ww_brightnessout(5)(6) <= \brightnessout[5][6]~output_o\;

ww_brightnessout(5)(7) <= \brightnessout[5][7]~output_o\;

ww_brightnessout(4)(0) <= \brightnessout[4][0]~output_o\;

ww_brightnessout(4)(1) <= \brightnessout[4][1]~output_o\;

ww_brightnessout(4)(2) <= \brightnessout[4][2]~output_o\;

ww_brightnessout(4)(3) <= \brightnessout[4][3]~output_o\;

ww_brightnessout(4)(4) <= \brightnessout[4][4]~output_o\;

ww_brightnessout(4)(5) <= \brightnessout[4][5]~output_o\;

ww_brightnessout(4)(6) <= \brightnessout[4][6]~output_o\;

ww_brightnessout(4)(7) <= \brightnessout[4][7]~output_o\;

ww_brightnessout(3)(0) <= \brightnessout[3][0]~output_o\;

ww_brightnessout(3)(1) <= \brightnessout[3][1]~output_o\;

ww_brightnessout(3)(2) <= \brightnessout[3][2]~output_o\;

ww_brightnessout(3)(3) <= \brightnessout[3][3]~output_o\;

ww_brightnessout(3)(4) <= \brightnessout[3][4]~output_o\;

ww_brightnessout(3)(5) <= \brightnessout[3][5]~output_o\;

ww_brightnessout(3)(6) <= \brightnessout[3][6]~output_o\;

ww_brightnessout(3)(7) <= \brightnessout[3][7]~output_o\;

ww_brightnessout(2)(0) <= \brightnessout[2][0]~output_o\;

ww_brightnessout(2)(1) <= \brightnessout[2][1]~output_o\;

ww_brightnessout(2)(2) <= \brightnessout[2][2]~output_o\;

ww_brightnessout(2)(3) <= \brightnessout[2][3]~output_o\;

ww_brightnessout(2)(4) <= \brightnessout[2][4]~output_o\;

ww_brightnessout(2)(5) <= \brightnessout[2][5]~output_o\;

ww_brightnessout(2)(6) <= \brightnessout[2][6]~output_o\;

ww_brightnessout(2)(7) <= \brightnessout[2][7]~output_o\;

ww_brightnessout(1)(0) <= \brightnessout[1][0]~output_o\;

ww_brightnessout(1)(1) <= \brightnessout[1][1]~output_o\;

ww_brightnessout(1)(2) <= \brightnessout[1][2]~output_o\;

ww_brightnessout(1)(3) <= \brightnessout[1][3]~output_o\;

ww_brightnessout(1)(4) <= \brightnessout[1][4]~output_o\;

ww_brightnessout(1)(5) <= \brightnessout[1][5]~output_o\;

ww_brightnessout(1)(6) <= \brightnessout[1][6]~output_o\;

ww_brightnessout(1)(7) <= \brightnessout[1][7]~output_o\;

ww_brightnessout(0)(0) <= \brightnessout[0][0]~output_o\;

ww_brightnessout(0)(1) <= \brightnessout[0][1]~output_o\;

ww_brightnessout(0)(2) <= \brightnessout[0][2]~output_o\;

ww_brightnessout(0)(3) <= \brightnessout[0][3]~output_o\;

ww_brightnessout(0)(4) <= \brightnessout[0][4]~output_o\;

ww_brightnessout(0)(5) <= \brightnessout[0][5]~output_o\;

ww_brightnessout(0)(6) <= \brightnessout[0][6]~output_o\;

ww_brightnessout(0)(7) <= \brightnessout[0][7]~output_o\;
END structure;


