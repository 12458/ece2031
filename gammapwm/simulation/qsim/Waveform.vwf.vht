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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/12/2025 11:21:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gammapwm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gammapwm_vhd_vec_tst IS
END gammapwm_vhd_vec_tst;
ARCHITECTURE gammapwm_arch OF gammapwm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL brightnessIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT gammapwm
	PORT (
	brightnessIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	load : IN STD_LOGIC;
	output : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gammapwm
	PORT MAP (
-- list connections between master ports and signals
	brightnessIn => brightnessIn,
	clk => clk,
	load => load,
	output => output,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 250 ps;
	clk <= '1';
	WAIT FOR 250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- brightnessIn[7]
t_prcs_brightnessIn_7: PROCESS
BEGIN
	brightnessIn(7) <= '1';
	WAIT FOR 370000 ps;
	brightnessIn(7) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_7;
-- brightnessIn[6]
t_prcs_brightnessIn_6: PROCESS
BEGIN
	brightnessIn(6) <= '0';
	WAIT FOR 10000 ps;
	brightnessIn(6) <= '1';
	WAIT FOR 120000 ps;
	brightnessIn(6) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_6;
-- brightnessIn[5]
t_prcs_brightnessIn_5: PROCESS
BEGIN
	brightnessIn(5) <= '1';
	WAIT FOR 370000 ps;
	brightnessIn(5) <= '0';
	WAIT FOR 50000 ps;
	brightnessIn(5) <= '1';
	WAIT FOR 450000 ps;
	brightnessIn(5) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_5;
-- brightnessIn[4]
t_prcs_brightnessIn_4: PROCESS
BEGIN
	brightnessIn(4) <= '0';
	WAIT FOR 420000 ps;
	brightnessIn(4) <= '1';
	WAIT FOR 450000 ps;
	brightnessIn(4) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_4;
-- brightnessIn[3]
t_prcs_brightnessIn_3: PROCESS
BEGIN
	brightnessIn(3) <= '0';
	WAIT FOR 420000 ps;
	brightnessIn(3) <= '1';
	WAIT FOR 450000 ps;
	brightnessIn(3) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_3;
-- brightnessIn[2]
t_prcs_brightnessIn_2: PROCESS
BEGIN
	brightnessIn(2) <= '0';
	WAIT FOR 420000 ps;
	brightnessIn(2) <= '1';
	WAIT FOR 450000 ps;
	brightnessIn(2) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_2;
-- brightnessIn[1]
t_prcs_brightnessIn_1: PROCESS
BEGIN
	brightnessIn(1) <= '0';
	WAIT FOR 420000 ps;
	brightnessIn(1) <= '1';
	WAIT FOR 450000 ps;
	brightnessIn(1) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_1;
-- brightnessIn[0]
t_prcs_brightnessIn_0: PROCESS
BEGIN
	brightnessIn(0) <= '0';
WAIT;
END PROCESS t_prcs_brightnessIn_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 50000 ps;
	load <= '1';
	WAIT FOR 40000 ps;
	load <= '0';
	WAIT FOR 390000 ps;
	load <= '1';
	WAIT FOR 40000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END gammapwm_arch;
