-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Standard Edition"

-- DATE "04/17/2020 17:04:19"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu_4004 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	\cpu_input.mem_rdata\ : IN std_logic_vector(3 DOWNTO 0);
	\cpu_input.step\ : IN std_logic;
	\cpu_input.stop\ : IN std_logic;
	\cpu_input.run\ : IN std_logic;
	\cpu_output.reg_is\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.reg_ip\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.reg_r1\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.reg_r0\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.mem_rd\ : OUT std_logic;
	\cpu_output.mem_wr\ : OUT std_logic;
	\cpu_output.mem_addr\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.mem_wdata\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.led_exec\ : OUT std_logic;
	\cpu_output.led_dec\ : OUT std_logic;
	\cpu_output.led_fetch\ : OUT std_logic;
	\cpu_output.digit_latch\ : OUT std_logic;
	\cpu_output.digit_value\ : OUT std_logic_vector(3 DOWNTO 0);
	\cpu_output.beep\ : OUT std_logic;
	\cpu_output.halted\ : OUT std_logic;
	\cpu_output.paused\ : OUT std_logic;
	\cpu_output.running\ : OUT std_logic
	);
END cpu_4004;

-- Design Ports Information
-- cpu_input.step	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.stop	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_is[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_is[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_is[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_is[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_ip[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_ip[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_ip[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_ip[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r1[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r1[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r1[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r1[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r0[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r0[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r0[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.reg_r0[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_rd	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_wr	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_addr[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_addr[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_addr[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_addr[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_wdata[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_wdata[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_wdata[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.mem_wdata[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.led_exec	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.led_dec	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.led_fetch	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.digit_latch	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.digit_value[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.digit_value[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.digit_value[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.digit_value[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.beep	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.halted	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.paused	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output.running	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.mem_rdata[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.run	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.mem_rdata[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.mem_rdata[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_input.mem_rdata[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu_4004 IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL \ww_cpu_input.mem_rdata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_input.step\ : std_logic;
SIGNAL \ww_cpu_input.stop\ : std_logic;
SIGNAL \ww_cpu_input.run\ : std_logic;
SIGNAL \ww_cpu_output.reg_is\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.reg_ip\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.reg_r1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.reg_r0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.mem_rd\ : std_logic;
SIGNAL \ww_cpu_output.mem_wr\ : std_logic;
SIGNAL \ww_cpu_output.mem_addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.mem_wdata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.led_exec\ : std_logic;
SIGNAL \ww_cpu_output.led_dec\ : std_logic;
SIGNAL \ww_cpu_output.led_fetch\ : std_logic;
SIGNAL \ww_cpu_output.digit_latch\ : std_logic;
SIGNAL \ww_cpu_output.digit_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_cpu_output.beep\ : std_logic;
SIGNAL \ww_cpu_output.halted\ : std_logic;
SIGNAL \ww_cpu_output.paused\ : std_logic;
SIGNAL \ww_cpu_output.running\ : std_logic;
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_input.step~input_o\ : std_logic;
SIGNAL \cpu_input.stop~input_o\ : std_logic;
SIGNAL \cpu_output.reg_is[0]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_is[1]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_is[2]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_is[3]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_ip[0]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_ip[1]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_ip[2]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_ip[3]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r1[0]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r1[1]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r1[2]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r1[3]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r0[0]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r0[1]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r0[2]~output_o\ : std_logic;
SIGNAL \cpu_output.reg_r0[3]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_rd~output_o\ : std_logic;
SIGNAL \cpu_output.mem_wr~output_o\ : std_logic;
SIGNAL \cpu_output.mem_addr[0]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_addr[1]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_addr[2]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_addr[3]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_wdata[0]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_wdata[1]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_wdata[2]~output_o\ : std_logic;
SIGNAL \cpu_output.mem_wdata[3]~output_o\ : std_logic;
SIGNAL \cpu_output.led_exec~output_o\ : std_logic;
SIGNAL \cpu_output.led_dec~output_o\ : std_logic;
SIGNAL \cpu_output.led_fetch~output_o\ : std_logic;
SIGNAL \cpu_output.digit_latch~output_o\ : std_logic;
SIGNAL \cpu_output.digit_value[0]~output_o\ : std_logic;
SIGNAL \cpu_output.digit_value[1]~output_o\ : std_logic;
SIGNAL \cpu_output.digit_value[2]~output_o\ : std_logic;
SIGNAL \cpu_output.digit_value[3]~output_o\ : std_logic;
SIGNAL \cpu_output.beep~output_o\ : std_logic;
SIGNAL \cpu_output.halted~output_o\ : std_logic;
SIGNAL \cpu_output.paused~output_o\ : std_logic;
SIGNAL \cpu_output.running~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \Selector52~2_combout\ : std_logic;
SIGNAL \Selector52~3_combout\ : std_logic;
SIGNAL \Selector54~2_combout\ : std_logic;
SIGNAL \Selector54~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \r.state.decode_two~q\ : std_logic;
SIGNAL \cpu_input.mem_rdata[3]~input_o\ : std_logic;
SIGNAL \r.cpu_input.mem_rdata[3]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \cpu_input.mem_rdata[1]~input_o\ : std_logic;
SIGNAL \r.cpu_input.mem_rdata[1]~feeder_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \cpu_input.mem_rdata[2]~input_o\ : std_logic;
SIGNAL \r.cpu_input.mem_rdata[2]~feeder_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \cpu_input.run~input_o\ : std_logic;
SIGNAL \r.cpu_input.run~feeder_combout\ : std_logic;
SIGNAL \r.cpu_input.run~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \r.state.halted~q\ : std_logic;
SIGNAL \r.cpu_output.reg_is[0]~0_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \r.state.ex_swap_r0_addr_0~q\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \r.state.ex_swap_r1_addr_0~q\ : std_logic;
SIGNAL \v~28_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \r.data_not_ins~q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \r.second_ins_byte~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \r.state.decode~q\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \r.state.ex_halt~q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \r.state.fetch_addr~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \r.state.fetch_read~q\ : std_logic;
SIGNAL \cpu_input.mem_rdata[0]~input_o\ : std_logic;
SIGNAL \r.cpu_input.mem_rdata[0]~feeder_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \v~29_combout\ : std_logic;
SIGNAL \r.data[0]~0_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \r.state.ex_jp_if_r0_nz~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \r.state.ex_jp_if_r0_z~q\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \r.state.ex_swap_r0_addr_1~q\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \r.state.ex_load_r0~q\ : std_logic;
SIGNAL \v~25_combout\ : std_logic;
SIGNAL \r.data[1]~1_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \r.state.ex_dec_r0~q\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \r.state.ex_inc_r0~q\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \r.state.ex_add_r0_r1~q\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \r.state.ex_sub_r0_r1~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \r.state.ex_load_r1~q\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \r.state.ex_swap_r1_addr_1~q\ : std_logic;
SIGNAL \v~24_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \r.state.ex_dec_r1~q\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \r.state.ex_inc_r1~q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_r1[0]~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_r0[1]~0_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_r0[1]~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \r.data[2]~2_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \r.data[3]~3_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_ip[0]~2_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_ip[0]~3_combout\ : std_logic;
SIGNAL \r.cpu_output.reg_ip[0]~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \r.cpu_output.mem_rd~q\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \r.state.ex_store_r0~q\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \r.state.ex_store_r1~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \r.cpu_output.mem_wr~q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \v~26_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \r.cpu_output.mem_addr[0]~2_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \v~27_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \r.cpu_output.mem_wdata[0]~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \r.cpu_output.led_exec~q\ : std_logic;
SIGNAL \p_comb:v.cpu_output.led_dec~0_combout\ : std_logic;
SIGNAL \r.cpu_output.led_dec~q\ : std_logic;
SIGNAL \r.cpu_output.led_fetch~feeder_combout\ : std_logic;
SIGNAL \r.cpu_output.led_fetch~q\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \r.state.ex_print_r0~q\ : std_logic;
SIGNAL \r.cpu_output.digit_latch~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r.cpu_output.halted~feeder_combout\ : std_logic;
SIGNAL \r.cpu_output.halted~q\ : std_logic;
SIGNAL \r.cpu_output.running~q\ : std_logic;
SIGNAL \r.cpu_input.mem_rdata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.reg_is\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.reg_ip\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.reg_r1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.reg_r0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.mem_addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.mem_wdata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cpu_output.digit_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r.addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_r.state.fetch_read~q\ : std_logic;
SIGNAL \ALT_INV_r.cpu_output.halted~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
\ww_cpu_input.mem_rdata\ <= \cpu_input.mem_rdata\;
\ww_cpu_input.step\ <= \cpu_input.step\;
\ww_cpu_input.stop\ <= \cpu_input.stop\;
\ww_cpu_input.run\ <= \cpu_input.run\;
\cpu_output.reg_is\ <= \ww_cpu_output.reg_is\;
\cpu_output.reg_ip\ <= \ww_cpu_output.reg_ip\;
\cpu_output.reg_r1\ <= \ww_cpu_output.reg_r1\;
\cpu_output.reg_r0\ <= \ww_cpu_output.reg_r0\;
\cpu_output.mem_rd\ <= \ww_cpu_output.mem_rd\;
\cpu_output.mem_wr\ <= \ww_cpu_output.mem_wr\;
\cpu_output.mem_addr\ <= \ww_cpu_output.mem_addr\;
\cpu_output.mem_wdata\ <= \ww_cpu_output.mem_wdata\;
\cpu_output.led_exec\ <= \ww_cpu_output.led_exec\;
\cpu_output.led_dec\ <= \ww_cpu_output.led_dec\;
\cpu_output.led_fetch\ <= \ww_cpu_output.led_fetch\;
\cpu_output.digit_latch\ <= \ww_cpu_output.digit_latch\;
\cpu_output.digit_value\ <= \ww_cpu_output.digit_value\;
\cpu_output.beep\ <= \ww_cpu_output.beep\;
\cpu_output.halted\ <= \ww_cpu_output.halted\;
\cpu_output.paused\ <= \ww_cpu_output.paused\;
\cpu_output.running\ <= \ww_cpu_output.running\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_r.state.fetch_read~q\ <= NOT \r.state.fetch_read~q\;
\ALT_INV_r.cpu_output.halted~q\ <= NOT \r.cpu_output.halted~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\cpu_output.reg_is[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_is\(0),
	devoe => ww_devoe,
	o => \cpu_output.reg_is[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\cpu_output.reg_is[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_is\(1),
	devoe => ww_devoe,
	o => \cpu_output.reg_is[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\cpu_output.reg_is[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_is\(2),
	devoe => ww_devoe,
	o => \cpu_output.reg_is[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\cpu_output.reg_is[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_is\(3),
	devoe => ww_devoe,
	o => \cpu_output.reg_is[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\cpu_output.reg_ip[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_ip\(0),
	devoe => ww_devoe,
	o => \cpu_output.reg_ip[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\cpu_output.reg_ip[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_ip\(1),
	devoe => ww_devoe,
	o => \cpu_output.reg_ip[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\cpu_output.reg_ip[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_ip\(2),
	devoe => ww_devoe,
	o => \cpu_output.reg_ip[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\cpu_output.reg_ip[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_ip\(3),
	devoe => ww_devoe,
	o => \cpu_output.reg_ip[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\cpu_output.reg_r1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r1\(0),
	devoe => ww_devoe,
	o => \cpu_output.reg_r1[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\cpu_output.reg_r1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r1\(1),
	devoe => ww_devoe,
	o => \cpu_output.reg_r1[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\cpu_output.reg_r1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r1\(2),
	devoe => ww_devoe,
	o => \cpu_output.reg_r1[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\cpu_output.reg_r1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r1\(3),
	devoe => ww_devoe,
	o => \cpu_output.reg_r1[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\cpu_output.reg_r0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r0\(0),
	devoe => ww_devoe,
	o => \cpu_output.reg_r0[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\cpu_output.reg_r0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r0\(1),
	devoe => ww_devoe,
	o => \cpu_output.reg_r0[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\cpu_output.reg_r0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r0\(2),
	devoe => ww_devoe,
	o => \cpu_output.reg_r0[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\cpu_output.reg_r0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.reg_r0\(3),
	devoe => ww_devoe,
	o => \cpu_output.reg_r0[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\cpu_output.mem_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_rd~q\,
	devoe => ww_devoe,
	o => \cpu_output.mem_rd~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\cpu_output.mem_wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_wr~q\,
	devoe => ww_devoe,
	o => \cpu_output.mem_wr~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\cpu_output.mem_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_addr\(0),
	devoe => ww_devoe,
	o => \cpu_output.mem_addr[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\cpu_output.mem_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_addr\(1),
	devoe => ww_devoe,
	o => \cpu_output.mem_addr[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\cpu_output.mem_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_addr\(2),
	devoe => ww_devoe,
	o => \cpu_output.mem_addr[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\cpu_output.mem_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_addr\(3),
	devoe => ww_devoe,
	o => \cpu_output.mem_addr[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\cpu_output.mem_wdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_wdata\(0),
	devoe => ww_devoe,
	o => \cpu_output.mem_wdata[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\cpu_output.mem_wdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_wdata\(1),
	devoe => ww_devoe,
	o => \cpu_output.mem_wdata[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\cpu_output.mem_wdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_wdata\(2),
	devoe => ww_devoe,
	o => \cpu_output.mem_wdata[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\cpu_output.mem_wdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.mem_wdata\(3),
	devoe => ww_devoe,
	o => \cpu_output.mem_wdata[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\cpu_output.led_exec~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.led_exec~q\,
	devoe => ww_devoe,
	o => \cpu_output.led_exec~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\cpu_output.led_dec~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.led_dec~q\,
	devoe => ww_devoe,
	o => \cpu_output.led_dec~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\cpu_output.led_fetch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.led_fetch~q\,
	devoe => ww_devoe,
	o => \cpu_output.led_fetch~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\cpu_output.digit_latch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.digit_latch~q\,
	devoe => ww_devoe,
	o => \cpu_output.digit_latch~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\cpu_output.digit_value[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.digit_value\(0),
	devoe => ww_devoe,
	o => \cpu_output.digit_value[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\cpu_output.digit_value[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.digit_value\(1),
	devoe => ww_devoe,
	o => \cpu_output.digit_value[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\cpu_output.digit_value[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.digit_value\(2),
	devoe => ww_devoe,
	o => \cpu_output.digit_value[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\cpu_output.digit_value[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.digit_value\(3),
	devoe => ww_devoe,
	o => \cpu_output.digit_value[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\cpu_output.beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cpu_output.beep~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\cpu_output.halted~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_r.cpu_output.halted~q\,
	devoe => ww_devoe,
	o => \cpu_output.halted~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\cpu_output.paused~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cpu_output.paused~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\cpu_output.running~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r.cpu_output.running~q\,
	devoe => ww_devoe,
	o => \cpu_output.running~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y17_N28
\Selector55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\r.state.fetch_read~q\ & (((!\r.cnt\(0) & !\Equal0~0_combout\)))) # (!\r.state.fetch_read~q\ & (!\r.state.fetch_addr~q\ & (\r.cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_addr~q\,
	datab => \r.state.fetch_read~q\,
	datac => \r.cnt\(0),
	datad => \Equal0~0_combout\,
	combout => \Selector55~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X13_Y17_N29
\r.cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~2_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cnt\(0));

-- Location: LCCOMB_X14_Y17_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \r.cnt\(2) $ (((\r.cnt\(0)) # (\r.cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.cnt\(0),
	datac => \r.cnt\(1),
	datad => \r.cnt\(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X13_Y17_N16
\Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\r.state.fetch_read~q\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X13_Y17_N24
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\r.state.fetch_addr~q\) # (\r.state.fetch_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_addr~q\,
	datad => \r.state.fetch_read~q\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X13_Y17_N20
\Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\Add1~0_combout\ & (((\r.cnt\(2) & !\Selector53~0_combout\)))) # (!\Add1~0_combout\ & ((\Selector30~1_combout\) # ((\r.cnt\(2) & !\Selector53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Selector30~1_combout\,
	datac => \r.cnt\(2),
	datad => \Selector53~0_combout\,
	combout => \Selector53~1_combout\);

-- Location: FF_X13_Y17_N21
\r.cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector53~1_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cnt\(2));

-- Location: LCCOMB_X14_Y17_N26
\Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~2_combout\ = (\r.cnt\(3) & ((\r.cnt\(0)) # ((\r.cnt\(2)) # (\r.cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cnt\(0),
	datab => \r.cnt\(2),
	datac => \r.cnt\(1),
	datad => \r.cnt\(3),
	combout => \Selector52~2_combout\);

-- Location: LCCOMB_X13_Y17_N22
\Selector52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~3_combout\ = (\r.state.fetch_read~q\ & (((\Selector52~2_combout\)))) # (!\r.state.fetch_read~q\ & (!\r.state.fetch_addr~q\ & (\r.cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_addr~q\,
	datab => \r.state.fetch_read~q\,
	datac => \r.cnt\(3),
	datad => \Selector52~2_combout\,
	combout => \Selector52~3_combout\);

-- Location: FF_X13_Y17_N23
\r.cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector52~3_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cnt\(3));

-- Location: LCCOMB_X13_Y17_N12
\Selector54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~2_combout\ = (\r.cnt\(1) & (((\r.cnt\(0))))) # (!\r.cnt\(1) & (!\r.cnt\(0) & ((\r.cnt\(2)) # (\r.cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cnt\(1),
	datab => \r.cnt\(2),
	datac => \r.cnt\(3),
	datad => \r.cnt\(0),
	combout => \Selector54~2_combout\);

-- Location: LCCOMB_X13_Y17_N6
\Selector54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~3_combout\ = (\r.state.fetch_read~q\ & (((\Selector54~2_combout\)))) # (!\r.state.fetch_read~q\ & ((\r.state.fetch_addr~q\) # ((\r.cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_addr~q\,
	datab => \r.state.fetch_read~q\,
	datac => \r.cnt\(1),
	datad => \Selector54~2_combout\,
	combout => \Selector54~3_combout\);

-- Location: FF_X13_Y17_N7
\r.cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector54~3_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cnt\(1));

-- Location: LCCOMB_X13_Y17_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\r.cnt\(1) & (!\r.cnt\(2) & (!\r.cnt\(3) & !\r.cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cnt\(1),
	datab => \r.cnt\(2),
	datac => \r.cnt\(3),
	datad => \r.cnt\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y17_N30
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\r.state.fetch_read~q\ & (!\r.data_not_ins~q\ & (\r.second_ins_byte~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datab => \r.data_not_ins~q\,
	datac => \r.second_ins_byte~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X13_Y17_N31
\r.state.decode_two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.decode_two~q\);

-- Location: IOIBUF_X0_Y23_N8
\cpu_input.mem_rdata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.mem_rdata\(3),
	o => \cpu_input.mem_rdata[3]~input_o\);

-- Location: LCCOMB_X10_Y15_N12
\r.cpu_input.mem_rdata[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_input.mem_rdata[3]~feeder_combout\ = \cpu_input.mem_rdata[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_input.mem_rdata[3]~input_o\,
	combout => \r.cpu_input.mem_rdata[3]~feeder_combout\);

-- Location: FF_X10_Y15_N13
\r.cpu_input.mem_rdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_input.mem_rdata[3]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_input.mem_rdata\(3));

-- Location: LCCOMB_X10_Y17_N6
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\r.state.fetch_read~q\ & \r.cpu_input.mem_rdata\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.fetch_read~q\,
	datad => \r.cpu_input.mem_rdata\(3),
	combout => \Selector24~0_combout\);

-- Location: IOIBUF_X23_Y24_N8
\cpu_input.mem_rdata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.mem_rdata\(1),
	o => \cpu_input.mem_rdata[1]~input_o\);

-- Location: LCCOMB_X11_Y16_N14
\r.cpu_input.mem_rdata[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_input.mem_rdata[1]~feeder_combout\ = \cpu_input.mem_rdata[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_input.mem_rdata[1]~input_o\,
	combout => \r.cpu_input.mem_rdata[1]~feeder_combout\);

-- Location: FF_X11_Y16_N15
\r.cpu_input.mem_rdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_input.mem_rdata[1]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_input.mem_rdata\(1));

-- Location: LCCOMB_X10_Y17_N30
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\r.cpu_input.mem_rdata\(1) & \r.state.fetch_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_input.mem_rdata\(1),
	datac => \r.state.fetch_read~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X10_Y17_N31
\r.cpu_output.reg_is[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \r.cpu_output.reg_is[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_is\(1));

-- Location: IOIBUF_X0_Y6_N22
\cpu_input.mem_rdata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.mem_rdata\(2),
	o => \cpu_input.mem_rdata[2]~input_o\);

-- Location: LCCOMB_X10_Y15_N10
\r.cpu_input.mem_rdata[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_input.mem_rdata[2]~feeder_combout\ = \cpu_input.mem_rdata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_input.mem_rdata[2]~input_o\,
	combout => \r.cpu_input.mem_rdata[2]~feeder_combout\);

-- Location: FF_X10_Y15_N11
\r.cpu_input.mem_rdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_input.mem_rdata[2]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_input.mem_rdata\(2));

-- Location: LCCOMB_X10_Y17_N16
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\r.state.fetch_read~q\ & \r.cpu_input.mem_rdata\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.fetch_read~q\,
	datad => \r.cpu_input.mem_rdata\(2),
	combout => \Selector25~0_combout\);

-- Location: FF_X10_Y17_N17
\r.cpu_output.reg_is[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \r.cpu_output.reg_is[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_is\(2));

-- Location: LCCOMB_X13_Y15_N6
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ((!\r.cpu_output.reg_is\(2)) # (!\r.cpu_output.reg_is\(1))) # (!\r.cpu_output.reg_is\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Selector28~0_combout\);

-- Location: IOIBUF_X23_Y24_N1
\cpu_input.run~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.run\,
	o => \cpu_input.run~input_o\);

-- Location: LCCOMB_X13_Y15_N16
\r.cpu_input.run~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_input.run~feeder_combout\ = \cpu_input.run~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_input.run~input_o\,
	combout => \r.cpu_input.run~feeder_combout\);

-- Location: FF_X13_Y15_N17
\r.cpu_input.run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_input.run~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_input.run~q\);

-- Location: LCCOMB_X13_Y15_N8
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\r.state.halted~q\ & !\r.cpu_input.run~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datad => \r.cpu_input.run~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X13_Y17_N8
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\r.state.fetch_read~q\ & (\r.data_not_ins~q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datac => \r.data_not_ins~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X13_Y15_N10
\Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (!\r.state.ex_halt~q\ & (!\Selector15~0_combout\ & ((!\Selector48~0_combout\) # (!\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \r.state.ex_halt~q\,
	datac => \Selector15~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: FF_X13_Y15_N11
\r.state.halted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.halted~q\);

-- Location: LCCOMB_X13_Y17_N2
\r.cpu_output.reg_is[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_is[0]~0_combout\ = (\reset_n~input_o\ & ((\Selector31~0_combout\) # ((!\r.state.halted~q\ & \r.cpu_input.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \reset_n~input_o\,
	datac => \r.cpu_input.run~q\,
	datad => \Selector31~0_combout\,
	combout => \r.cpu_output.reg_is[0]~0_combout\);

-- Location: FF_X10_Y17_N7
\r.cpu_output.reg_is[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \r.cpu_output.reg_is[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_is\(3));

-- Location: LCCOMB_X10_Y17_N24
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\r.cpu_output.reg_is\(3) & (!\r.cpu_output.reg_is\(0) & (\r.cpu_output.reg_is\(1) & \r.cpu_output.reg_is\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(0),
	datac => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X12_Y18_N8
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\r.state.decode_two~q\ & \Mux0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode_two~q\,
	datad => \Mux0~7_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X12_Y18_N9
\r.state.ex_swap_r0_addr_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_swap_r0_addr_0~q\);

-- Location: LCCOMB_X11_Y16_N0
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\r.cpu_output.reg_is\(1) & (\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(0) & \r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X12_Y18_N18
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\r.state.decode_two~q\ & \Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.decode_two~q\,
	datad => \Mux0~3_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X12_Y18_N19
\r.state.ex_swap_r1_addr_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_swap_r1_addr_0~q\);

-- Location: LCCOMB_X12_Y18_N28
\v~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~28_combout\ = (!\r.state.ex_swap_r0_addr_0~q\ & !\r.state.ex_swap_r1_addr_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.ex_swap_r0_addr_0~q\,
	datad => \r.state.ex_swap_r1_addr_0~q\,
	combout => \v~28_combout\);

-- Location: LCCOMB_X11_Y17_N30
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (!\r.state.fetch_read~q\ & (\v~28_combout\ & (\r.data_not_ins~q\ & \r.state.halted~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datab => \v~28_combout\,
	datac => \r.data_not_ins~q\,
	datad => \r.state.halted~q\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X11_Y17_N22
\Selector57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\Selector57~0_combout\) # (((\r.data_not_ins~q\ & \Selector30~1_combout\)) # (!\v~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \v~28_combout\,
	datac => \r.data_not_ins~q\,
	datad => \Selector30~1_combout\,
	combout => \Selector57~1_combout\);

-- Location: FF_X11_Y17_N23
\r.data_not_ins\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector57~1_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.data_not_ins~q\);

-- Location: LCCOMB_X13_Y17_N18
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\r.state.fetch_read~q\ & (((\r.data_not_ins~q\)) # (!\Equal0~0_combout\))) # (!\r.state.fetch_read~q\ & (((\r.state.halted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \r.data_not_ins~q\,
	datac => \r.state.fetch_read~q\,
	datad => \r.state.halted~q\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X13_Y17_N4
\Selector56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\r.state.decode~q\ & (((\r.second_ins_byte~q\) # (\r.cpu_output.reg_is\(3))))) # (!\r.state.decode~q\ & (\Selector56~0_combout\ & (\r.second_ins_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.decode~q\,
	datab => \Selector56~0_combout\,
	datac => \r.second_ins_byte~q\,
	datad => \r.cpu_output.reg_is\(3),
	combout => \Selector56~1_combout\);

-- Location: FF_X13_Y17_N5
\r.second_ins_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector56~1_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.second_ins_byte~q\);

-- Location: LCCOMB_X13_Y17_N0
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\r.state.fetch_read~q\ & (!\r.second_ins_byte~q\ & (!\r.data_not_ins~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datab => \r.second_ins_byte~q\,
	datac => \r.data_not_ins~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X13_Y17_N25
\r.state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector31~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.decode~q\);

-- Location: LCCOMB_X11_Y16_N10
\Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (!\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(2) & (!\r.cpu_output.reg_is\(0) & !\r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X11_Y16_N24
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\r.state.decode~q\ & ((\Mux0~15_combout\) # ((!\r.cpu_output.reg_is\(3) & \r.state.decode_two~q\)))) # (!\r.state.decode~q\ & (!\r.cpu_output.reg_is\(3) & (\r.state.decode_two~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.decode~q\,
	datab => \r.cpu_output.reg_is\(3),
	datac => \r.state.decode_two~q\,
	datad => \Mux0~15_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X11_Y16_N25
\r.state.ex_halt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_halt~q\);

-- Location: LCCOMB_X13_Y15_N0
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\r.state.halted~q\ & (((\r.cpu_output.reg_is\(3) & \r.state.decode~q\)))) # (!\r.state.halted~q\ & ((\r.cpu_input.run~q\) # ((\r.cpu_output.reg_is\(3) & \r.state.decode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.cpu_input.run~q\,
	datac => \r.cpu_output.reg_is\(3),
	datad => \r.state.decode~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (!\r.state.fetch_addr~q\ & \r.state.halted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.fetch_addr~q\,
	datad => \r.state.halted~q\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X12_Y17_N28
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (!\r.state.decode~q\ & (\Selector23~2_combout\ & (!\r.state.decode_two~q\ & !\r.state.fetch_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.decode~q\,
	datab => \Selector23~2_combout\,
	datac => \r.state.decode_two~q\,
	datad => \r.state.fetch_read~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\Selector29~0_combout\) # ((!\r.state.ex_halt~q\ & \WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_halt~q\,
	datac => \Selector29~0_combout\,
	datad => \WideOr11~0_combout\,
	combout => \Selector29~1_combout\);

-- Location: FF_X12_Y17_N27
\r.state.fetch_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.fetch_addr~q\);

-- Location: LCCOMB_X13_Y17_N26
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\r.state.fetch_addr~q\) # ((\r.state.fetch_read~q\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_addr~q\,
	datac => \r.state.fetch_read~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X13_Y17_N27
\r.state.fetch_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.fetch_read~q\);

-- Location: IOIBUF_X0_Y7_N1
\cpu_input.mem_rdata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.mem_rdata\(0),
	o => \cpu_input.mem_rdata[0]~input_o\);

-- Location: LCCOMB_X10_Y17_N4
\r.cpu_input.mem_rdata[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_input.mem_rdata[0]~feeder_combout\ = \cpu_input.mem_rdata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_input.mem_rdata[0]~input_o\,
	combout => \r.cpu_input.mem_rdata[0]~feeder_combout\);

-- Location: FF_X10_Y17_N5
\r.cpu_input.mem_rdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_input.mem_rdata[0]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_input.mem_rdata\(0));

-- Location: LCCOMB_X10_Y17_N8
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\r.state.fetch_read~q\ & \r.cpu_input.mem_rdata\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.fetch_read~q\,
	datac => \r.cpu_input.mem_rdata\(0),
	combout => \Selector27~0_combout\);

-- Location: FF_X10_Y17_N9
\r.cpu_output.reg_is[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \r.cpu_output.reg_is[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_is\(0));

-- Location: LCCOMB_X13_Y17_N14
\v~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~29_combout\ = (\Equal0~0_combout\ & ((\r.second_ins_byte~q\) # (\r.data_not_ins~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.second_ins_byte~q\,
	datac => \r.data_not_ins~q\,
	datad => \Equal0~0_combout\,
	combout => \v~29_combout\);

-- Location: LCCOMB_X11_Y17_N20
\r.data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.data[0]~0_combout\ = (\v~29_combout\ & (\r.cpu_input.mem_rdata\(0))) # (!\v~29_combout\ & ((\r.data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_input.mem_rdata\(0),
	datac => \r.data\(0),
	datad => \v~29_combout\,
	combout => \r.data[0]~0_combout\);

-- Location: LCCOMB_X11_Y17_N8
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\r.data\(0) & \r.state.halted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.data\(0),
	datad => \r.state.halted~q\,
	combout => \Selector61~0_combout\);

-- Location: FF_X11_Y17_N21
\r.data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.data[0]~0_combout\,
	asdata => \Selector61~0_combout\,
	sload => \ALT_INV_r.state.fetch_read~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.data\(0));

-- Location: LCCOMB_X12_Y17_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\r.data_not_ins~q\ & (\r.cpu_output.reg_ip\(0) & VCC)) # (!\r.data_not_ins~q\ & (\r.cpu_output.reg_ip\(0) $ (VCC)))
-- \Add0~1\ = CARRY((!\r.data_not_ins~q\ & \r.cpu_output.reg_ip\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data_not_ins~q\,
	datab => \r.cpu_output.reg_ip\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X12_Y17_N0
\Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\r.state.fetch_addr~q\ & (((\Add0~0_combout\)))) # (!\r.state.fetch_addr~q\ & (\r.state.halted~q\ & (\r.data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.data\(0),
	datac => \r.state.fetch_addr~q\,
	datad => \Add0~0_combout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X10_Y17_N14
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\r.cpu_output.reg_is\(3) & (!\r.cpu_output.reg_is\(0) & (!\r.cpu_output.reg_is\(1) & !\r.cpu_output.reg_is\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(0),
	datac => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X12_Y17_N8
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\r.state.decode_two~q\ & \Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode_two~q\,
	datad => \Mux0~1_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X12_Y17_N9
\r.state.ex_jp_if_r0_nz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_jp_if_r0_nz~q\);

-- Location: LCCOMB_X10_Y17_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\r.cpu_output.reg_is\(3) & (\r.cpu_output.reg_is\(0) & (!\r.cpu_output.reg_is\(1) & !\r.cpu_output.reg_is\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(0),
	datac => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X12_Y17_N2
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\r.state.decode_two~q\ & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode_two~q\,
	datad => \Mux0~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X12_Y17_N3
\r.state.ex_jp_if_r0_z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_jp_if_r0_z~q\);

-- Location: LCCOMB_X12_Y16_N22
\Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\Equal0~0_combout\ & (\r.data_not_ins~q\ & (\Mux0~7_combout\ & \r.state.fetch_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \r.data_not_ins~q\,
	datac => \Mux0~7_combout\,
	datad => \r.state.fetch_read~q\,
	combout => \Selector48~1_combout\);

-- Location: FF_X12_Y16_N23
\r.state.ex_swap_r0_addr_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector48~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_swap_r0_addr_1~q\);

-- Location: LCCOMB_X11_Y16_N2
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(2) & (!\r.cpu_output.reg_is\(0) & \r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X12_Y16_N24
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\r.state.decode_two~q\ & \Mux0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.decode_two~q\,
	datad => \Mux0~6_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X12_Y16_N25
\r.state.ex_load_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_load_r0~q\);

-- Location: LCCOMB_X12_Y16_N26
\v~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~25_combout\ = (!\r.state.ex_swap_r0_addr_1~q\ & !\r.state.ex_load_r0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.ex_swap_r0_addr_1~q\,
	datad => \r.state.ex_load_r0~q\,
	combout => \v~25_combout\);

-- Location: LCCOMB_X10_Y15_N20
\r.data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.data[1]~1_combout\ = (\v~29_combout\ & (\r.cpu_input.mem_rdata\(1))) # (!\v~29_combout\ & ((\r.data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_input.mem_rdata\(1),
	datac => \r.data\(1),
	datad => \v~29_combout\,
	combout => \r.data[1]~1_combout\);

-- Location: LCCOMB_X10_Y15_N4
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\r.state.halted~q\ & \r.data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.halted~q\,
	datad => \r.data\(1),
	combout => \Selector60~0_combout\);

-- Location: FF_X10_Y15_N21
\r.data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.data[1]~1_combout\,
	asdata => \Selector60~0_combout\,
	sload => \ALT_INV_r.state.fetch_read~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.data\(1));

-- Location: LCCOMB_X11_Y16_N30
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(2) & (!\r.cpu_output.reg_is\(0) & !\r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X12_Y16_N10
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\r.state.decode~q\ & \Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode~q\,
	datad => \Mux0~9_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X12_Y16_N11
\r.state.ex_dec_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_dec_r0~q\);

-- Location: LCCOMB_X11_Y16_N16
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (!\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(0) & !\r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X12_Y16_N4
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Mux0~8_combout\ & \r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datac => \r.state.decode~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X12_Y16_N5
\r.state.ex_inc_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_inc_r0~q\);

-- Location: LCCOMB_X10_Y17_N22
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (!\r.cpu_output.reg_is\(3) & (\r.cpu_output.reg_is\(0) & (!\r.cpu_output.reg_is\(1) & \r.cpu_output.reg_is\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(0),
	datac => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X13_Y15_N22
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Mux0~10_combout\ & \r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~10_combout\,
	datad => \r.state.decode~q\,
	combout => \Selector38~0_combout\);

-- Location: FF_X13_Y15_N23
\r.state.ex_add_r0_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_add_r0_r1~q\);

-- Location: LCCOMB_X10_Y17_N20
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (!\r.cpu_output.reg_is\(3) & (!\r.cpu_output.reg_is\(0) & (\r.cpu_output.reg_is\(1) & \r.cpu_output.reg_is\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(3),
	datab => \r.cpu_output.reg_is\(0),
	datac => \r.cpu_output.reg_is\(1),
	datad => \r.cpu_output.reg_is\(2),
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X13_Y15_N12
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Mux0~11_combout\ & \r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~11_combout\,
	datad => \r.state.decode~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X13_Y15_N13
\r.state.ex_sub_r0_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_sub_r0_r1~q\);

-- Location: LCCOMB_X13_Y15_N30
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(1) & (\r.cpu_output.reg_is\(3) & \r.cpu_output.reg_is\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(2),
	datab => \r.cpu_output.reg_is\(1),
	datac => \r.cpu_output.reg_is\(3),
	datad => \r.cpu_output.reg_is\(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X13_Y15_N26
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Mux0~2_combout\ & \r.state.decode_two~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~2_combout\,
	datad => \r.state.decode_two~q\,
	combout => \Selector44~0_combout\);

-- Location: FF_X13_Y15_N27
\r.state.ex_load_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_load_r1~q\);

-- Location: LCCOMB_X12_Y16_N14
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Mux0~3_combout\ & (\r.data_not_ins~q\ & (\Equal0~0_combout\ & \r.state.fetch_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \r.data_not_ins~q\,
	datac => \Equal0~0_combout\,
	datad => \r.state.fetch_read~q\,
	combout => \Selector50~0_combout\);

-- Location: FF_X12_Y16_N15
\r.state.ex_swap_r1_addr_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_swap_r1_addr_1~q\);

-- Location: LCCOMB_X13_Y15_N4
\v~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~24_combout\ = (!\r.state.ex_load_r1~q\ & !\r.state.ex_swap_r1_addr_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_load_r1~q\,
	datad => \r.state.ex_swap_r1_addr_1~q\,
	combout => \v~24_combout\);

-- Location: LCCOMB_X10_Y15_N6
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\v~24_combout\ & (((\r.state.halted~q\ & !\r.cpu_output.reg_r1\(0))))) # (!\v~24_combout\ & (\r.data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(0),
	datab => \r.state.halted~q\,
	datac => \r.cpu_output.reg_r1\(0),
	datad => \v~24_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\r.cpu_output.reg_is\(2) & (!\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(3) & !\r.cpu_output.reg_is\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(2),
	datab => \r.cpu_output.reg_is\(1),
	datac => \r.cpu_output.reg_is\(3),
	datad => \r.cpu_output.reg_is\(0),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X13_Y15_N18
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\r.state.decode~q\ & \Mux0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.decode~q\,
	datad => \Mux0~4_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X13_Y15_N19
\r.state.ex_dec_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_dec_r1~q\);

-- Location: LCCOMB_X13_Y15_N14
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(1) & (!\r.cpu_output.reg_is\(3) & \r.cpu_output.reg_is\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(2),
	datab => \r.cpu_output.reg_is\(1),
	datac => \r.cpu_output.reg_is\(3),
	datad => \r.cpu_output.reg_is\(0),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X13_Y15_N24
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Mux0~5_combout\ & \r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~5_combout\,
	datad => \r.state.decode~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X13_Y15_N25
\r.state.ex_inc_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_inc_r1~q\);

-- Location: LCCOMB_X13_Y15_N2
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = ((\r.state.ex_inc_r1~q\) # ((\r.state.ex_load_r1~q\) # (\r.state.ex_swap_r1_addr_1~q\))) # (!\r.state.halted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.state.ex_inc_r1~q\,
	datac => \r.state.ex_load_r1~q\,
	datad => \r.state.ex_swap_r1_addr_1~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\r.cpu_output.reg_r1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_r1[0]~0_combout\ = (\reset_n~input_o\ & (!\Selector15~0_combout\ & ((\r.state.ex_dec_r1~q\) # (\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \r.state.ex_dec_r1~q\,
	datac => \Selector15~0_combout\,
	datad => \WideOr6~0_combout\,
	combout => \r.cpu_output.reg_r1[0]~0_combout\);

-- Location: FF_X10_Y15_N7
\r.cpu_output.reg_r1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \r.cpu_output.reg_r1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r1\(0));

-- Location: LCCOMB_X11_Y15_N4
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\r.cpu_output.reg_r0\(0) & ((GND) # (!\r.cpu_output.reg_r1\(0)))) # (!\r.cpu_output.reg_r0\(0) & (\r.cpu_output.reg_r1\(0) $ (GND)))
-- \Add7~1\ = CARRY((\r.cpu_output.reg_r0\(0)) # (!\r.cpu_output.reg_r1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(0),
	datab => \r.cpu_output.reg_r1\(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X11_Y15_N16
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\r.cpu_output.reg_r0\(0) & (\r.cpu_output.reg_r1\(0) $ (VCC))) # (!\r.cpu_output.reg_r0\(0) & (\r.cpu_output.reg_r1\(0) & VCC))
-- \Add6~1\ = CARRY((\r.cpu_output.reg_r0\(0) & \r.cpu_output.reg_r1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(0),
	datab => \r.cpu_output.reg_r1\(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X11_Y15_N24
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\r.state.ex_add_r0_r1~q\ & ((\Add6~0_combout\) # ((\r.state.ex_sub_r0_r1~q\ & \Add7~0_combout\)))) # (!\r.state.ex_add_r0_r1~q\ & (\r.state.ex_sub_r0_r1~q\ & (\Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_add_r0_r1~q\,
	datab => \r.state.ex_sub_r0_r1~q\,
	datac => \Add7~0_combout\,
	datad => \Add6~0_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X11_Y15_N14
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~2_combout\) # ((!\r.cpu_output.reg_r0\(0) & ((\r.state.ex_dec_r0~q\) # (\r.state.ex_inc_r0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_dec_r0~q\,
	datab => \r.cpu_output.reg_r0\(0),
	datac => \r.state.ex_inc_r0~q\,
	datad => \Selector15~2_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X12_Y16_N28
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\r.state.ex_swap_r0_addr_1~q\) # ((\r.state.ex_load_r0~q\) # ((\r.state.ex_inc_r0~q\) # (\r.state.ex_dec_r0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_swap_r0_addr_1~q\,
	datab => \r.state.ex_load_r0~q\,
	datac => \r.state.ex_inc_r0~q\,
	datad => \r.state.ex_dec_r0~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X12_Y15_N28
\WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\r.state.ex_add_r0_r1~q\) # (((\r.state.ex_sub_r0_r1~q\) # (\WideOr5~0_combout\)) # (!\r.state.halted~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_add_r0_r1~q\,
	datab => \r.state.halted~q\,
	datac => \r.state.ex_sub_r0_r1~q\,
	datad => \WideOr5~0_combout\,
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X11_Y15_N30
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\v~25_combout\ & (\r.cpu_output.reg_r0\(0) & ((!\WideOr5~1_combout\)))) # (!\v~25_combout\ & ((\r.data\(0)) # ((\r.cpu_output.reg_r0\(0) & !\WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~25_combout\,
	datab => \r.cpu_output.reg_r0\(0),
	datac => \r.data\(0),
	datad => \WideOr5~1_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X11_Y15_N12
\Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Selector15~3_combout\) # ((\Selector15~1_combout\) # ((\Selector15~0_combout\ & \r.cpu_output.reg_r0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector15~3_combout\,
	datac => \r.cpu_output.reg_r0\(0),
	datad => \Selector15~1_combout\,
	combout => \Selector15~4_combout\);

-- Location: FF_X11_Y15_N13
\r.cpu_output.reg_r0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~4_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r0\(0));

-- Location: LCCOMB_X11_Y16_N12
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\r.cpu_output.reg_r0\(0) & ((\r.cpu_output.reg_r0\(1) & (\r.state.ex_dec_r0~q\)) # (!\r.cpu_output.reg_r0\(1) & ((\r.state.ex_inc_r0~q\))))) # (!\r.cpu_output.reg_r0\(0) & ((\r.cpu_output.reg_r0\(1) & ((\r.state.ex_inc_r0~q\))) # 
-- (!\r.cpu_output.reg_r0\(1) & (\r.state.ex_dec_r0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(0),
	datab => \r.state.ex_dec_r0~q\,
	datac => \r.state.ex_inc_r0~q\,
	datad => \r.cpu_output.reg_r0\(1),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY(\r.cpu_output.reg_r1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(0),
	datad => VCC,
	cout => \Add4~1_cout\);

-- Location: LCCOMB_X12_Y15_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\r.cpu_output.reg_r1\(1) & ((\r.state.ex_inc_r1~q\ & (!\Add4~1_cout\)) # (!\r.state.ex_inc_r1~q\ & (\Add4~1_cout\ & VCC)))) # (!\r.cpu_output.reg_r1\(1) & ((\r.state.ex_inc_r1~q\ & ((\Add4~1_cout\) # (GND))) # (!\r.state.ex_inc_r1~q\ & 
-- (!\Add4~1_cout\))))
-- \Add4~3\ = CARRY((\r.cpu_output.reg_r1\(1) & (\r.state.ex_inc_r1~q\ & !\Add4~1_cout\)) # (!\r.cpu_output.reg_r1\(1) & ((\r.state.ex_inc_r1~q\) # (!\Add4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(1),
	datab => \r.state.ex_inc_r1~q\,
	datad => VCC,
	cin => \Add4~1_cout\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X12_Y15_N12
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\v~24_combout\ & (((\r.state.halted~q\ & \Add4~2_combout\)))) # (!\v~24_combout\ & (\r.data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(1),
	datab => \r.state.halted~q\,
	datac => \v~24_combout\,
	datad => \Add4~2_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X12_Y15_N13
\r.cpu_output.reg_r1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \r.cpu_output.reg_r1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r1\(1));

-- Location: LCCOMB_X11_Y15_N6
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\r.cpu_output.reg_r0\(1) & ((\r.cpu_output.reg_r1\(1) & (!\Add7~1\)) # (!\r.cpu_output.reg_r1\(1) & (\Add7~1\ & VCC)))) # (!\r.cpu_output.reg_r0\(1) & ((\r.cpu_output.reg_r1\(1) & ((\Add7~1\) # (GND))) # (!\r.cpu_output.reg_r1\(1) & 
-- (!\Add7~1\))))
-- \Add7~3\ = CARRY((\r.cpu_output.reg_r0\(1) & (\r.cpu_output.reg_r1\(1) & !\Add7~1\)) # (!\r.cpu_output.reg_r0\(1) & ((\r.cpu_output.reg_r1\(1)) # (!\Add7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(1),
	datab => \r.cpu_output.reg_r1\(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X11_Y15_N18
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\r.cpu_output.reg_r0\(1) & ((\r.cpu_output.reg_r1\(1) & (\Add6~1\ & VCC)) # (!\r.cpu_output.reg_r1\(1) & (!\Add6~1\)))) # (!\r.cpu_output.reg_r0\(1) & ((\r.cpu_output.reg_r1\(1) & (!\Add6~1\)) # (!\r.cpu_output.reg_r1\(1) & ((\Add6~1\) 
-- # (GND)))))
-- \Add6~3\ = CARRY((\r.cpu_output.reg_r0\(1) & (!\r.cpu_output.reg_r1\(1) & !\Add6~1\)) # (!\r.cpu_output.reg_r0\(1) & ((!\Add6~1\) # (!\r.cpu_output.reg_r1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(1),
	datab => \r.cpu_output.reg_r1\(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X11_Y15_N0
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Add7~2_combout\ & ((\r.state.ex_sub_r0_r1~q\) # ((\r.state.ex_add_r0_r1~q\ & \Add6~2_combout\)))) # (!\Add7~2_combout\ & (((\r.state.ex_add_r0_r1~q\ & \Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \r.state.ex_sub_r0_r1~q\,
	datac => \r.state.ex_add_r0_r1~q\,
	datad => \Add6~2_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X11_Y15_N26
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Selector14~0_combout\) # ((\Selector14~1_combout\) # ((!\v~25_combout\ & \r.data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~25_combout\,
	datab => \r.data\(1),
	datac => \Selector14~0_combout\,
	datad => \Selector14~1_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X12_Y15_N14
\r.cpu_output.reg_r0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_r0[1]~0_combout\ = ((\r.state.ex_sub_r0_r1~q\) # (\r.state.ex_add_r0_r1~q\)) # (!\r.state.halted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.halted~q\,
	datac => \r.state.ex_sub_r0_r1~q\,
	datad => \r.state.ex_add_r0_r1~q\,
	combout => \r.cpu_output.reg_r0[1]~0_combout\);

-- Location: LCCOMB_X12_Y15_N8
\r.cpu_output.reg_r0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_r0[1]~1_combout\ = (\reset_n~input_o\ & (!\Selector15~0_combout\ & ((\r.cpu_output.reg_r0[1]~0_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \r.cpu_output.reg_r0[1]~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \WideOr5~0_combout\,
	combout => \r.cpu_output.reg_r0[1]~1_combout\);

-- Location: FF_X11_Y15_N27
\r.cpu_output.reg_r0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~2_combout\,
	ena => \r.cpu_output.reg_r0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r0\(1));

-- Location: LCCOMB_X10_Y15_N14
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\r.state.ex_inc_r0~q\ & (\r.cpu_output.reg_r0\(2) $ (((\r.cpu_output.reg_r0\(1) & \r.cpu_output.reg_r0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(2),
	datab => \r.cpu_output.reg_r0\(1),
	datac => \r.cpu_output.reg_r0\(0),
	datad => \r.state.ex_inc_r0~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X12_Y15_N10
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\r.state.ex_dec_r0~q\ & (\r.cpu_output.reg_r0\(2) $ (((!\r.cpu_output.reg_r0\(0) & !\r.cpu_output.reg_r0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(0),
	datab => \r.state.ex_dec_r0~q\,
	datac => \r.cpu_output.reg_r0\(1),
	datad => \r.cpu_output.reg_r0\(2),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X10_Y15_N2
\r.data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.data[2]~2_combout\ = (\v~29_combout\ & (\r.cpu_input.mem_rdata\(2))) # (!\v~29_combout\ & ((\r.data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_input.mem_rdata\(2),
	datac => \r.data\(2),
	datad => \v~29_combout\,
	combout => \r.data[2]~2_combout\);

-- Location: LCCOMB_X10_Y15_N22
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\r.state.halted~q\ & \r.data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.halted~q\,
	datad => \r.data\(2),
	combout => \Selector59~0_combout\);

-- Location: FF_X10_Y15_N3
\r.data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.data[2]~2_combout\,
	asdata => \Selector59~0_combout\,
	sload => \ALT_INV_r.state.fetch_read~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.data\(2));

-- Location: LCCOMB_X11_Y16_N26
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\r.data\(2) & ((\r.state.ex_load_r0~q\) # (\r.state.ex_swap_r0_addr_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.ex_load_r0~q\,
	datac => \r.data\(2),
	datad => \r.state.ex_swap_r0_addr_1~q\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X12_Y15_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\r.cpu_output.reg_r1\(2) $ (\r.state.ex_inc_r1~q\ $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\r.cpu_output.reg_r1\(2) & ((!\Add4~3\) # (!\r.state.ex_inc_r1~q\))) # (!\r.cpu_output.reg_r1\(2) & (!\r.state.ex_inc_r1~q\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(2),
	datab => \r.state.ex_inc_r1~q\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X12_Y15_N30
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\v~24_combout\ & (((\r.state.halted~q\ & \Add4~4_combout\)))) # (!\v~24_combout\ & (\r.data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(2),
	datab => \r.state.halted~q\,
	datac => \Add4~4_combout\,
	datad => \v~24_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X12_Y15_N31
\r.cpu_output.reg_r1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \r.cpu_output.reg_r1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r1\(2));

-- Location: LCCOMB_X11_Y15_N8
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\r.cpu_output.reg_r1\(2) $ (\r.cpu_output.reg_r0\(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\r.cpu_output.reg_r1\(2) & (\r.cpu_output.reg_r0\(2) & !\Add7~3\)) # (!\r.cpu_output.reg_r1\(2) & ((\r.cpu_output.reg_r0\(2)) # (!\Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(2),
	datab => \r.cpu_output.reg_r0\(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X11_Y15_N20
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\r.cpu_output.reg_r1\(2) $ (\r.cpu_output.reg_r0\(2) $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\r.cpu_output.reg_r1\(2) & ((\r.cpu_output.reg_r0\(2)) # (!\Add6~3\))) # (!\r.cpu_output.reg_r1\(2) & (\r.cpu_output.reg_r0\(2) & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(2),
	datab => \r.cpu_output.reg_r0\(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X11_Y15_N2
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\r.state.ex_add_r0_r1~q\ & ((\Add6~4_combout\) # ((\r.state.ex_sub_r0_r1~q\ & \Add7~4_combout\)))) # (!\r.state.ex_add_r0_r1~q\ & (\r.state.ex_sub_r0_r1~q\ & (\Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_add_r0_r1~q\,
	datab => \r.state.ex_sub_r0_r1~q\,
	datac => \Add7~4_combout\,
	datad => \Add6~4_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X11_Y15_N28
\Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\Selector13~1_combout\) # ((\Selector13~0_combout\) # ((\Selector13~2_combout\) # (\Selector13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~1_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector13~2_combout\,
	datad => \Selector13~3_combout\,
	combout => \Selector13~4_combout\);

-- Location: FF_X11_Y15_N29
\r.cpu_output.reg_r0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~4_combout\,
	ena => \r.cpu_output.reg_r0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r0\(2));

-- Location: LCCOMB_X10_Y15_N24
\r.data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.data[3]~3_combout\ = (\v~29_combout\ & (\r.cpu_input.mem_rdata\(3))) # (!\v~29_combout\ & ((\r.data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_input.mem_rdata\(3),
	datac => \r.data\(3),
	datad => \v~29_combout\,
	combout => \r.data[3]~3_combout\);

-- Location: LCCOMB_X10_Y15_N8
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\r.state.halted~q\ & \r.data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.halted~q\,
	datad => \r.data\(3),
	combout => \Selector58~0_combout\);

-- Location: FF_X10_Y15_N25
\r.data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.data[3]~3_combout\,
	asdata => \Selector58~0_combout\,
	sload => \ALT_INV_r.state.fetch_read~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.data\(3));

-- Location: LCCOMB_X12_Y15_N26
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \r.cpu_output.reg_r0\(3) $ (((\r.cpu_output.reg_r0\(2)) # ((\r.cpu_output.reg_r0\(1)) # (\r.cpu_output.reg_r0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(3),
	datab => \r.cpu_output.reg_r0\(2),
	datac => \r.cpu_output.reg_r0\(1),
	datad => \r.cpu_output.reg_r0\(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X12_Y15_N20
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \r.cpu_output.reg_r0\(3) $ (((\r.cpu_output.reg_r0\(2) & (\r.cpu_output.reg_r0\(1) & \r.cpu_output.reg_r0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(3),
	datab => \r.cpu_output.reg_r0\(2),
	datac => \r.cpu_output.reg_r0\(1),
	datad => \r.cpu_output.reg_r0\(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add3~0_combout\ & (((\r.state.ex_inc_r0~q\ & \Add2~0_combout\)))) # (!\Add3~0_combout\ & ((\r.state.ex_dec_r0~q\) # ((\r.state.ex_inc_r0~q\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \r.state.ex_dec_r0~q\,
	datac => \r.state.ex_inc_r0~q\,
	datad => \Add2~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \r.cpu_output.reg_r1\(3) $ (\Add4~5\ $ (!\r.state.ex_inc_r1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_output.reg_r1\(3),
	datad => \r.state.ex_inc_r1~q\,
	cin => \Add4~5\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\v~24_combout\ & (((\r.state.halted~q\ & \Add4~6_combout\)))) # (!\v~24_combout\ & (\r.data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(3),
	datab => \v~24_combout\,
	datac => \r.state.halted~q\,
	datad => \Add4~6_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X12_Y15_N25
\r.cpu_output.reg_r1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \r.cpu_output.reg_r1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r1\(3));

-- Location: LCCOMB_X11_Y15_N22
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = \r.cpu_output.reg_r0\(3) $ (\Add6~5\ $ (\r.cpu_output.reg_r1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_output.reg_r0\(3),
	datad => \r.cpu_output.reg_r1\(3),
	cin => \Add6~5\,
	combout => \Add6~6_combout\);

-- Location: LCCOMB_X11_Y15_N10
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = \r.cpu_output.reg_r0\(3) $ (\Add7~5\ $ (!\r.cpu_output.reg_r1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_output.reg_r0\(3),
	datad => \r.cpu_output.reg_r1\(3),
	cin => \Add7~5\,
	combout => \Add7~6_combout\);

-- Location: LCCOMB_X12_Y15_N18
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\r.state.ex_add_r0_r1~q\ & ((\Add6~6_combout\) # ((\r.state.ex_sub_r0_r1~q\ & \Add7~6_combout\)))) # (!\r.state.ex_add_r0_r1~q\ & (((\r.state.ex_sub_r0_r1~q\ & \Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_add_r0_r1~q\,
	datab => \Add6~6_combout\,
	datac => \r.state.ex_sub_r0_r1~q\,
	datad => \Add7~6_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X12_Y15_N22
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector12~0_combout\) # ((\Selector12~1_combout\) # ((\r.data\(3) & !\v~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(3),
	datab => \Selector12~0_combout\,
	datac => \v~25_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X12_Y15_N23
\r.cpu_output.reg_r0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~2_combout\,
	ena => \r.cpu_output.reg_r0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_r0\(3));

-- Location: LCCOMB_X12_Y17_N10
\r.cpu_output.reg_ip[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_ip[0]~2_combout\ = (\r.cpu_output.reg_r0\(2)) # ((\r.cpu_output.reg_r0\(1)) # ((\r.cpu_output.reg_r0\(3)) # (\r.cpu_output.reg_r0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(2),
	datab => \r.cpu_output.reg_r0\(1),
	datac => \r.cpu_output.reg_r0\(3),
	datad => \r.cpu_output.reg_r0\(0),
	combout => \r.cpu_output.reg_ip[0]~2_combout\);

-- Location: LCCOMB_X12_Y17_N16
\r.cpu_output.reg_ip[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_ip[0]~3_combout\ = (\r.state.ex_jp_if_r0_nz~q\ & ((\r.state.ex_jp_if_r0_z~q\) # ((!\r.cpu_output.reg_ip[0]~2_combout\)))) # (!\r.state.ex_jp_if_r0_nz~q\ & ((\r.state.ex_jp_if_r0_z~q\ & ((\r.cpu_output.reg_ip[0]~2_combout\))) # 
-- (!\r.state.ex_jp_if_r0_z~q\ & (\Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_jp_if_r0_nz~q\,
	datab => \r.state.ex_jp_if_r0_z~q\,
	datac => \Selector23~2_combout\,
	datad => \r.cpu_output.reg_ip[0]~2_combout\,
	combout => \r.cpu_output.reg_ip[0]~3_combout\);

-- Location: LCCOMB_X12_Y17_N30
\r.cpu_output.reg_ip[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.reg_ip[0]~4_combout\ = (\reset_n~input_o\ & (!\r.cpu_output.reg_ip[0]~3_combout\ & ((\r.state.halted~q\) # (\r.cpu_input.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \reset_n~input_o\,
	datac => \r.cpu_input.run~q\,
	datad => \r.cpu_output.reg_ip[0]~3_combout\,
	combout => \r.cpu_output.reg_ip[0]~4_combout\);

-- Location: FF_X12_Y17_N1
\r.cpu_output.reg_ip[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~3_combout\,
	ena => \r.cpu_output.reg_ip[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_ip\(0));

-- Location: LCCOMB_X12_Y17_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\r.cpu_output.reg_ip\(1) & (!\Add0~1\)) # (!\r.cpu_output.reg_ip\(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\r.cpu_output.reg_ip\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r.cpu_output.reg_ip\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X12_Y17_N14
\Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\r.state.fetch_addr~q\ & (((\Add0~2_combout\)))) # (!\r.state.fetch_addr~q\ & (\r.data\(1) & (\r.state.halted~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(1),
	datab => \r.state.halted~q\,
	datac => \r.state.fetch_addr~q\,
	datad => \Add0~2_combout\,
	combout => \Selector22~2_combout\);

-- Location: FF_X12_Y17_N15
\r.cpu_output.reg_ip[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~2_combout\,
	ena => \r.cpu_output.reg_ip[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_ip\(1));

-- Location: LCCOMB_X12_Y17_N22
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\r.cpu_output.reg_ip\(2) & (\Add0~3\ $ (GND))) # (!\r.cpu_output.reg_ip\(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\r.cpu_output.reg_ip\(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_ip\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X12_Y17_N12
\Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\r.state.fetch_addr~q\ & (\Add0~4_combout\)) # (!\r.state.fetch_addr~q\ & (((\r.state.halted~q\ & \r.data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \r.state.halted~q\,
	datac => \r.state.fetch_addr~q\,
	datad => \r.data\(2),
	combout => \Selector21~2_combout\);

-- Location: FF_X12_Y17_N13
\r.cpu_output.reg_ip[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~2_combout\,
	ena => \r.cpu_output.reg_ip[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_ip\(2));

-- Location: LCCOMB_X12_Y17_N24
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Add0~5\ $ (\r.cpu_output.reg_ip\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r.cpu_output.reg_ip\(3),
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X12_Y17_N6
\Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\r.state.fetch_addr~q\ & (((\Add0~6_combout\)))) # (!\r.state.fetch_addr~q\ & (\r.data\(3) & (\r.state.halted~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(3),
	datab => \r.state.halted~q\,
	datac => \r.state.fetch_addr~q\,
	datad => \Add0~6_combout\,
	combout => \Selector20~2_combout\);

-- Location: FF_X12_Y17_N7
\r.cpu_output.reg_ip[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~2_combout\,
	ena => \r.cpu_output.reg_ip[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.reg_ip\(3));

-- Location: FF_X13_Y17_N17
\r.cpu_output.mem_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \r.state.fetch_addr~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_rd~q\);

-- Location: LCCOMB_X10_Y17_N2
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (!\r.cpu_output.reg_is\(1) & (\r.cpu_output.reg_is\(2) & (!\r.cpu_output.reg_is\(0) & \r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X11_Y16_N6
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\r.state.decode_two~q\ & \Mux0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode_two~q\,
	datad => \Mux0~12_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X12_Y16_N21
\r.state.ex_store_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector45~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_store_r0~q\);

-- Location: LCCOMB_X11_Y16_N18
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (!\r.cpu_output.reg_is\(1) & (\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(0) & \r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X12_Y16_N6
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\r.state.decode_two~q\ & \Mux0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.decode_two~q\,
	datad => \Mux0~13_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X12_Y16_N7
\r.state.ex_store_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_store_r1~q\);

-- Location: LCCOMB_X12_Y16_N0
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\r.state.ex_swap_r0_addr_1~q\) # ((\r.state.ex_store_r0~q\) # ((\r.state.ex_swap_r1_addr_1~q\) # (\r.state.ex_store_r1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_swap_r0_addr_1~q\,
	datab => \r.state.ex_store_r0~q\,
	datac => \r.state.ex_swap_r1_addr_1~q\,
	datad => \r.state.ex_store_r1~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X12_Y16_N9
\r.cpu_output.mem_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \WideOr4~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_wr~q\);

-- Location: LCCOMB_X11_Y17_N16
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\v~28_combout\ & (\r.state.halted~q\ & (\r.addr\(0)))) # (!\v~28_combout\ & (((\r.data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \v~28_combout\,
	datac => \r.addr\(0),
	datad => \r.data\(0),
	combout => \Selector65~0_combout\);

-- Location: FF_X11_Y17_N17
\r.addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.addr\(0));

-- Location: LCCOMB_X11_Y17_N26
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r.data_not_ins~q\ & (\r.addr\(0))) # (!\r.data_not_ins~q\ & ((\r.state.fetch_addr~q\ & ((\r.cpu_output.reg_ip\(0)))) # (!\r.state.fetch_addr~q\ & (\r.addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data_not_ins~q\,
	datab => \r.addr\(0),
	datac => \r.cpu_output.reg_ip\(0),
	datad => \r.state.fetch_addr~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X11_Y16_N28
\v~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~26_combout\ = (\r.state.ex_store_r0~q\) # (\r.state.ex_store_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_store_r0~q\,
	datad => \r.state.ex_store_r1~q\,
	combout => \v~26_combout\);

-- Location: LCCOMB_X11_Y17_N14
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\v~26_combout\ & (((\r.data\(0))))) # (!\v~26_combout\ & (\r.state.halted~q\ & ((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.data\(0),
	datac => \Selector11~0_combout\,
	datad => \v~26_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X11_Y17_N2
\r.cpu_output.mem_addr[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.mem_addr[0]~2_combout\ = (\reset_n~input_o\ & ((\r.state.fetch_addr~q\) # ((\WideOr4~0_combout\) # (!\r.state.halted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \r.state.fetch_addr~q\,
	datac => \WideOr4~0_combout\,
	datad => \r.state.halted~q\,
	combout => \r.cpu_output.mem_addr[0]~2_combout\);

-- Location: FF_X11_Y17_N15
\r.cpu_output.mem_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	ena => \r.cpu_output.mem_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_addr\(0));

-- Location: LCCOMB_X11_Y17_N4
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\v~28_combout\ & (\r.state.halted~q\ & (\r.addr\(1)))) # (!\v~28_combout\ & (((\r.data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \v~28_combout\,
	datac => \r.addr\(1),
	datad => \r.data\(1),
	combout => \Selector64~0_combout\);

-- Location: FF_X11_Y17_N5
\r.addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.addr\(1));

-- Location: LCCOMB_X11_Y17_N18
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\r.data_not_ins~q\ & (((\r.addr\(1))))) # (!\r.data_not_ins~q\ & ((\r.state.fetch_addr~q\ & (\r.cpu_output.reg_ip\(1))) # (!\r.state.fetch_addr~q\ & ((\r.addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data_not_ins~q\,
	datab => \r.cpu_output.reg_ip\(1),
	datac => \r.addr\(1),
	datad => \r.state.fetch_addr~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X11_Y17_N24
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\v~26_combout\ & (\r.data\(1))) # (!\v~26_combout\ & (((\Selector10~0_combout\ & \r.state.halted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(1),
	datab => \Selector10~0_combout\,
	datac => \r.state.halted~q\,
	datad => \v~26_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X11_Y17_N25
\r.cpu_output.mem_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	ena => \r.cpu_output.mem_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_addr\(1));

-- Location: LCCOMB_X11_Y17_N0
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\v~28_combout\ & (((\r.addr\(2) & \r.state.halted~q\)))) # (!\v~28_combout\ & (\r.data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(2),
	datab => \v~28_combout\,
	datac => \r.addr\(2),
	datad => \r.state.halted~q\,
	combout => \Selector63~0_combout\);

-- Location: FF_X11_Y17_N1
\r.addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.addr\(2));

-- Location: LCCOMB_X10_Y17_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\r.data_not_ins~q\ & (\r.addr\(2))) # (!\r.data_not_ins~q\ & ((\r.state.fetch_addr~q\ & ((\r.cpu_output.reg_ip\(2)))) # (!\r.state.fetch_addr~q\ & (\r.addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data_not_ins~q\,
	datab => \r.addr\(2),
	datac => \r.cpu_output.reg_ip\(2),
	datad => \r.state.fetch_addr~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X11_Y17_N6
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\v~26_combout\ & (\r.data\(2))) # (!\v~26_combout\ & (((\Selector9~0_combout\ & \r.state.halted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.data\(2),
	datab => \v~26_combout\,
	datac => \Selector9~0_combout\,
	datad => \r.state.halted~q\,
	combout => \Selector9~1_combout\);

-- Location: FF_X11_Y17_N7
\r.cpu_output.mem_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	ena => \r.cpu_output.mem_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_addr\(2));

-- Location: LCCOMB_X11_Y17_N10
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\v~28_combout\ & (\r.state.halted~q\ & (\r.addr\(3)))) # (!\v~28_combout\ & (((\r.data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \v~28_combout\,
	datac => \r.addr\(3),
	datad => \r.data\(3),
	combout => \Selector62~0_combout\);

-- Location: FF_X11_Y17_N11
\r.addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.addr\(3));

-- Location: LCCOMB_X11_Y17_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\r.state.fetch_addr~q\ & ((\r.data_not_ins~q\ & (\r.addr\(3))) # (!\r.data_not_ins~q\ & ((\r.cpu_output.reg_ip\(3)))))) # (!\r.state.fetch_addr~q\ & (\r.addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.addr\(3),
	datab => \r.state.fetch_addr~q\,
	datac => \r.data_not_ins~q\,
	datad => \r.cpu_output.reg_ip\(3),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X11_Y17_N12
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\v~26_combout\ & (((\r.data\(3))))) # (!\v~26_combout\ & (\r.state.halted~q\ & ((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \v~26_combout\,
	datac => \r.data\(3),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X11_Y17_N13
\r.cpu_output.mem_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	ena => \r.cpu_output.mem_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_addr\(3));

-- Location: LCCOMB_X12_Y16_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\r.state.ex_swap_r1_addr_1~q\) # ((\r.state.ex_store_r1~q\) # ((!\r.state.ex_swap_r0_addr_1~q\ & !\r.state.ex_store_r0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.ex_swap_r0_addr_1~q\,
	datab => \r.state.ex_store_r0~q\,
	datac => \r.state.ex_swap_r1_addr_1~q\,
	datad => \r.state.ex_store_r1~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X12_Y16_N20
\v~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~27_combout\ = (!\r.state.ex_swap_r1_addr_1~q\ & !\r.state.ex_store_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r.state.ex_swap_r1_addr_1~q\,
	datad => \r.state.ex_store_r1~q\,
	combout => \v~27_combout\);

-- Location: LCCOMB_X12_Y16_N2
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\r.cpu_output.reg_r0\(0) & (((\r.cpu_output.reg_r1\(0) & !\v~27_combout\)) # (!\Selector7~0_combout\))) # (!\r.cpu_output.reg_r0\(0) & (\r.cpu_output.reg_r1\(0) & ((!\v~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(0),
	datab => \r.cpu_output.reg_r1\(0),
	datac => \Selector7~0_combout\,
	datad => \v~27_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X12_Y16_N8
\r.cpu_output.mem_wdata[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.mem_wdata[0]~0_combout\ = (\reset_n~input_o\ & ((\WideOr4~0_combout\) # (!\r.state.halted~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \r.state.halted~q\,
	datad => \WideOr4~0_combout\,
	combout => \r.cpu_output.mem_wdata[0]~0_combout\);

-- Location: FF_X12_Y16_N3
\r.cpu_output.mem_wdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	ena => \r.cpu_output.mem_wdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_wdata\(0));

-- Location: LCCOMB_X12_Y16_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\r.cpu_output.reg_r1\(1) & (((\r.cpu_output.reg_r0\(1) & !\Selector7~0_combout\)) # (!\v~27_combout\))) # (!\r.cpu_output.reg_r1\(1) & (\r.cpu_output.reg_r0\(1) & (!\Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r1\(1),
	datab => \r.cpu_output.reg_r0\(1),
	datac => \Selector7~0_combout\,
	datad => \v~27_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X12_Y16_N17
\r.cpu_output.mem_wdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \r.cpu_output.mem_wdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_wdata\(1));

-- Location: LCCOMB_X12_Y16_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\r.cpu_output.reg_r0\(2) & (((\r.cpu_output.reg_r1\(2) & !\v~27_combout\)) # (!\Selector7~0_combout\))) # (!\r.cpu_output.reg_r0\(2) & (\r.cpu_output.reg_r1\(2) & ((!\v~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(2),
	datab => \r.cpu_output.reg_r1\(2),
	datac => \Selector7~0_combout\,
	datad => \v~27_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X12_Y16_N19
\r.cpu_output.mem_wdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \r.cpu_output.mem_wdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_wdata\(2));

-- Location: LCCOMB_X12_Y16_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector7~0_combout\ & (\r.cpu_output.reg_r1\(3) & ((!\v~27_combout\)))) # (!\Selector7~0_combout\ & ((\r.cpu_output.reg_r0\(3)) # ((\r.cpu_output.reg_r1\(3) & !\v~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \r.cpu_output.reg_r1\(3),
	datac => \r.cpu_output.reg_r0\(3),
	datad => \v~27_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X12_Y16_N13
\r.cpu_output.mem_wdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \r.cpu_output.mem_wdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.mem_wdata\(3));

-- Location: FF_X12_Y17_N29
\r.cpu_output.led_exec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr11~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.led_exec~q\);

-- Location: LCCOMB_X11_Y16_N4
\p_comb:v.cpu_output.led_dec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_comb:v.cpu_output.led_dec~0_combout\ = (\r.state.decode_two~q\) # (\r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r.state.decode_two~q\,
	datad => \r.state.decode~q\,
	combout => \p_comb:v.cpu_output.led_dec~0_combout\);

-- Location: FF_X11_Y16_N5
\r.cpu_output.led_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p_comb:v.cpu_output.led_dec~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.led_dec~q\);

-- Location: LCCOMB_X14_Y17_N20
\r.cpu_output.led_fetch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.led_fetch~feeder_combout\ = \Selector53~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector53~0_combout\,
	combout => \r.cpu_output.led_fetch~feeder_combout\);

-- Location: FF_X14_Y17_N21
\r.cpu_output.led_fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_output.led_fetch~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.led_fetch~q\);

-- Location: LCCOMB_X11_Y16_N8
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\r.cpu_output.reg_is\(1) & (\r.cpu_output.reg_is\(2) & (\r.cpu_output.reg_is\(0) & !\r.cpu_output.reg_is\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_is\(1),
	datab => \r.cpu_output.reg_is\(2),
	datac => \r.cpu_output.reg_is\(0),
	datad => \r.cpu_output.reg_is\(3),
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X11_Y16_N22
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Mux0~14_combout\ & \r.state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~14_combout\,
	datad => \r.state.decode~q\,
	combout => \Selector40~0_combout\);

-- Location: FF_X11_Y16_N23
\r.state.ex_print_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.state.ex_print_r0~q\);

-- Location: FF_X11_Y16_N29
\r.cpu_output.digit_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \r.state.ex_print_r0~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.digit_latch~q\);

-- Location: LCCOMB_X10_Y15_N16
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\r.state.ex_print_r0~q\ & (((\r.cpu_output.reg_r0\(0))))) # (!\r.state.ex_print_r0~q\ & (\r.state.halted~q\ & ((\r.cpu_output.digit_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.cpu_output.reg_r0\(0),
	datac => \r.cpu_output.digit_value\(0),
	datad => \r.state.ex_print_r0~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X10_Y15_N17
\r.cpu_output.digit_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.digit_value\(0));

-- Location: LCCOMB_X10_Y15_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r.state.ex_print_r0~q\ & (((\r.cpu_output.reg_r0\(1))))) # (!\r.state.ex_print_r0~q\ & (\r.state.halted~q\ & ((\r.cpu_output.digit_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.state.halted~q\,
	datab => \r.cpu_output.reg_r0\(1),
	datac => \r.cpu_output.digit_value\(1),
	datad => \r.state.ex_print_r0~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X10_Y15_N27
\r.cpu_output.digit_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.digit_value\(1));

-- Location: LCCOMB_X10_Y15_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r.state.ex_print_r0~q\ & (\r.cpu_output.reg_r0\(2))) # (!\r.state.ex_print_r0~q\ & (((\r.state.halted~q\ & \r.cpu_output.digit_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(2),
	datab => \r.state.halted~q\,
	datac => \r.cpu_output.digit_value\(2),
	datad => \r.state.ex_print_r0~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X10_Y15_N29
\r.cpu_output.digit_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.digit_value\(2));

-- Location: LCCOMB_X11_Y16_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r.state.ex_print_r0~q\ & (\r.cpu_output.reg_r0\(3))) # (!\r.state.ex_print_r0~q\ & (((\r.cpu_output.digit_value\(3) & \r.state.halted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r.cpu_output.reg_r0\(3),
	datab => \r.state.ex_print_r0~q\,
	datac => \r.cpu_output.digit_value\(3),
	datad => \r.state.halted~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X11_Y16_N21
\r.cpu_output.digit_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.digit_value\(3));

-- Location: LCCOMB_X10_Y16_N0
\r.cpu_output.halted~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r.cpu_output.halted~feeder_combout\ = \r.state.halted~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r.state.halted~q\,
	combout => \r.cpu_output.halted~feeder_combout\);

-- Location: FF_X10_Y16_N1
\r.cpu_output.halted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r.cpu_output.halted~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.halted~q\);

-- Location: FF_X12_Y17_N19
\r.cpu_output.running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \r.state.halted~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r.cpu_output.running~q\);

-- Location: IOIBUF_X34_Y12_N8
\cpu_input.step~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.step\,
	o => \cpu_input.step~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\cpu_input.stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_cpu_input.stop\,
	o => \cpu_input.stop~input_o\);

\ww_cpu_output.reg_is\(0) <= \cpu_output.reg_is[0]~output_o\;

\ww_cpu_output.reg_is\(1) <= \cpu_output.reg_is[1]~output_o\;

\ww_cpu_output.reg_is\(2) <= \cpu_output.reg_is[2]~output_o\;

\ww_cpu_output.reg_is\(3) <= \cpu_output.reg_is[3]~output_o\;

\ww_cpu_output.reg_ip\(0) <= \cpu_output.reg_ip[0]~output_o\;

\ww_cpu_output.reg_ip\(1) <= \cpu_output.reg_ip[1]~output_o\;

\ww_cpu_output.reg_ip\(2) <= \cpu_output.reg_ip[2]~output_o\;

\ww_cpu_output.reg_ip\(3) <= \cpu_output.reg_ip[3]~output_o\;

\ww_cpu_output.reg_r1\(0) <= \cpu_output.reg_r1[0]~output_o\;

\ww_cpu_output.reg_r1\(1) <= \cpu_output.reg_r1[1]~output_o\;

\ww_cpu_output.reg_r1\(2) <= \cpu_output.reg_r1[2]~output_o\;

\ww_cpu_output.reg_r1\(3) <= \cpu_output.reg_r1[3]~output_o\;

\ww_cpu_output.reg_r0\(0) <= \cpu_output.reg_r0[0]~output_o\;

\ww_cpu_output.reg_r0\(1) <= \cpu_output.reg_r0[1]~output_o\;

\ww_cpu_output.reg_r0\(2) <= \cpu_output.reg_r0[2]~output_o\;

\ww_cpu_output.reg_r0\(3) <= \cpu_output.reg_r0[3]~output_o\;

\ww_cpu_output.mem_rd\ <= \cpu_output.mem_rd~output_o\;

\ww_cpu_output.mem_wr\ <= \cpu_output.mem_wr~output_o\;

\ww_cpu_output.mem_addr\(0) <= \cpu_output.mem_addr[0]~output_o\;

\ww_cpu_output.mem_addr\(1) <= \cpu_output.mem_addr[1]~output_o\;

\ww_cpu_output.mem_addr\(2) <= \cpu_output.mem_addr[2]~output_o\;

\ww_cpu_output.mem_addr\(3) <= \cpu_output.mem_addr[3]~output_o\;

\ww_cpu_output.mem_wdata\(0) <= \cpu_output.mem_wdata[0]~output_o\;

\ww_cpu_output.mem_wdata\(1) <= \cpu_output.mem_wdata[1]~output_o\;

\ww_cpu_output.mem_wdata\(2) <= \cpu_output.mem_wdata[2]~output_o\;

\ww_cpu_output.mem_wdata\(3) <= \cpu_output.mem_wdata[3]~output_o\;

\ww_cpu_output.led_exec\ <= \cpu_output.led_exec~output_o\;

\ww_cpu_output.led_dec\ <= \cpu_output.led_dec~output_o\;

\ww_cpu_output.led_fetch\ <= \cpu_output.led_fetch~output_o\;

\ww_cpu_output.digit_latch\ <= \cpu_output.digit_latch~output_o\;

\ww_cpu_output.digit_value\(0) <= \cpu_output.digit_value[0]~output_o\;

\ww_cpu_output.digit_value\(1) <= \cpu_output.digit_value[1]~output_o\;

\ww_cpu_output.digit_value\(2) <= \cpu_output.digit_value[2]~output_o\;

\ww_cpu_output.digit_value\(3) <= \cpu_output.digit_value[3]~output_o\;

\ww_cpu_output.beep\ <= \cpu_output.beep~output_o\;

\ww_cpu_output.halted\ <= \cpu_output.halted~output_o\;

\ww_cpu_output.paused\ <= \cpu_output.paused~output_o\;

\ww_cpu_output.running\ <= \cpu_output.running~output_o\;
END structure;


