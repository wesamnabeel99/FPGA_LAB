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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/22/2023 12:27:26"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	manual_counter IS
    PORT (
	sliding_switch : IN std_logic;
	encoded_count : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END manual_counter;

-- Design Ports Information
-- encoded_count[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoded_count[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sliding_switch	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF manual_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sliding_switch : std_logic;
SIGNAL ww_encoded_count : std_logic_vector(6 DOWNTO 0);
SIGNAL \encoded_count[0]~output_o\ : std_logic;
SIGNAL \encoded_count[1]~output_o\ : std_logic;
SIGNAL \encoded_count[2]~output_o\ : std_logic;
SIGNAL \encoded_count[3]~output_o\ : std_logic;
SIGNAL \encoded_count[4]~output_o\ : std_logic;
SIGNAL \encoded_count[5]~output_o\ : std_logic;
SIGNAL \encoded_count[6]~output_o\ : std_logic;
SIGNAL \sliding_switch~input_o\ : std_logic;
SIGNAL \u1|count[0]~0_combout\ : std_logic;

BEGIN

ww_sliding_switch <= sliding_switch;
encoded_count <= ww_encoded_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X26_Y29_N16
\encoded_count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \encoded_count[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\encoded_count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count[0]~0_combout\,
	devoe => ww_devoe,
	o => \encoded_count[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\encoded_count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count[0]~0_combout\,
	devoe => ww_devoe,
	o => \encoded_count[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\encoded_count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count[0]~0_combout\,
	devoe => ww_devoe,
	o => \encoded_count[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\encoded_count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \encoded_count[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\encoded_count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \encoded_count[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\encoded_count[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count[0]~0_combout\,
	devoe => ww_devoe,
	o => \encoded_count[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\sliding_switch~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sliding_switch,
	o => \sliding_switch~input_o\);

-- Location: LCCOMB_X8_Y25_N16
\u1|count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[0]~0_combout\ = \sliding_switch~input_o\ $ (!\u1|count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sliding_switch~input_o\,
	datad => \u1|count[0]~0_combout\,
	combout => \u1|count[0]~0_combout\);

ww_encoded_count(0) <= \encoded_count[0]~output_o\;

ww_encoded_count(1) <= \encoded_count[1]~output_o\;

ww_encoded_count(2) <= \encoded_count[2]~output_o\;

ww_encoded_count(3) <= \encoded_count[3]~output_o\;

ww_encoded_count(4) <= \encoded_count[4]~output_o\;

ww_encoded_count(5) <= \encoded_count[5]~output_o\;

ww_encoded_count(6) <= \encoded_count[6]~output_o\;
END structure;


