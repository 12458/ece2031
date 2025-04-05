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
-- Generated on "03/30/2025 21:36:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          global_brightness
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

PACKAGE global_brightness_data_type IS 
TYPE brightnessout_7_0_type IS ARRAY (7 DOWNTO 0) OF STD_LOGIC;
TYPE brightnessout_7_0_0_9_type IS ARRAY (0 TO 9) OF brightnessout_7_0_type;
SUBTYPE brightnessout_type IS brightnessout_7_0_0_9_type;
END global_brightness_data_type;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

library work;
use work.global_brightness_data_type.all;

ENTITY global_brightness_vhd_vec_tst IS
END global_brightness_vhd_vec_tst;
ARCHITECTURE global_brightness_arch OF global_brightness_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL brightnessin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL brightnessout : brightnessout_type;
SIGNAL en : STD_LOGIC;
COMPONENT global_brightness
	PORT (
	brightnessin : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	brightnessout : OUT brightnessout_type;
	en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : global_brightness
	PORT MAP (
-- list connections between master ports and signals
	brightnessin => brightnessin,
	brightnessout => brightnessout,
	en => en
	);
-- brightnessin[7]
t_prcs_brightnessin_7: PROCESS
BEGIN
	brightnessin(7) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_7;
-- brightnessin[6]
t_prcs_brightnessin_6: PROCESS
BEGIN
	brightnessin(6) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_6;
-- brightnessin[5]
t_prcs_brightnessin_5: PROCESS
BEGIN
	brightnessin(5) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_5;
-- brightnessin[4]
t_prcs_brightnessin_4: PROCESS
BEGIN
	brightnessin(4) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_4;
-- brightnessin[3]
t_prcs_brightnessin_3: PROCESS
BEGIN
	brightnessin(3) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_3;
-- brightnessin[2]
t_prcs_brightnessin_2: PROCESS
BEGIN
	brightnessin(2) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_2;
-- brightnessin[1]
t_prcs_brightnessin_1: PROCESS
BEGIN
	brightnessin(1) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_1;
-- brightnessin[0]
t_prcs_brightnessin_0: PROCESS
BEGIN
	brightnessin(0) <= '0';
WAIT;
END PROCESS t_prcs_brightnessin_0;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
WAIT;
END PROCESS t_prcs_en;
END global_brightness_arch;
