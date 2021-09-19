-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.2
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rgb_bgr_kernel is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    imgblock_0_0_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_1_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_2_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_3_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_4_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_5_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_6_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_7_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_8_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_0_9_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_0_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_1_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_2_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_3_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_4_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_5_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_6_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_7_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_8_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_1_9_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_0_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_1_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_2_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_3_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_4_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_5_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_6_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_7_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_8_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_2_9_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_0_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_1_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_2_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_3_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_4_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_5_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_6_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_7_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_8_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_3_9_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_0_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_1_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_2_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_3_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_4_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_5_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_6_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_7_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_8_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    imgblock_4_9_V_read : IN STD_LOGIC_VECTOR (9 downto 0);
    loop_r : IN STD_LOGIC_VECTOR (1 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (13 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of rgb_bgr_kernel is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv15_7FF9 : STD_LOGIC_VECTOR (14 downto 0) := "111111111111001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal t1_reg_1036 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ret_V_6_fu_716_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ret_V_6_reg_1041 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln1353_10_fu_782_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1353_10_reg_1046 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln114_fu_918_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln114_reg_1051 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_fu_956_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal res_reg_1056 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_s_fu_454_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_s_fu_454_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln_fu_488_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_46_fu_500_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_46_fu_500_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal lhs_V_fu_480_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal rhs_V_fu_526_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ret_V_fu_530_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln215_fu_484_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln215_fu_546_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln215_17_fu_552_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_47_fu_556_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln215_3_fu_586_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln215_19_fu_592_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_48_fu_596_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal lhs_V_4_fu_582_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal rhs_V_3_fu_622_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ret_V_5_fu_626_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln215_4_fu_636_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln215_22_fu_642_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_49_fu_646_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_50_fu_676_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1353_28_fu_702_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln215_23_fu_672_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1353_fu_706_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal lhs_V_5_fu_632_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln1353_29_fu_712_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_fu_722_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_51_fu_752_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1353_30_fu_778_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln215_24_fu_748_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_52_fu_788_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_53_fu_818_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal lhs_V_6_fu_814_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal rhs_V_4_fu_844_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ret_V_8_fu_848_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal t3_fu_854_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_54_fu_866_p12 : STD_LOGIC_VECTOR (9 downto 0);
    signal shl_ln_fu_896_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln113_fu_892_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln113_1_fu_904_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal t4_fu_908_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln113_2_fu_914_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln112_fu_862_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln1353_fu_927_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln1353_31_fu_930_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal ret_V_7_fu_933_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln108_fu_924_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln109_fu_939_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln114_fu_943_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal sext_ln114_fu_949_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln114_fu_953_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sub_ln115_fu_969_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln115_3_fu_974_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln115_fu_984_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln115_fu_988_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln115_4_fu_998_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln115_1_fu_1007_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_136_fu_962_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln115_1_fu_992_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln115_1_fu_1011_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln116_fu_1023_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln115_fu_1015_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal imgblock_0_0_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_1_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_2_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_3_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_4_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_5_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_6_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_7_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_8_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_0_9_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_0_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_1_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_2_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_3_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_4_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_5_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_6_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_7_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_8_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_1_9_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_0_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_1_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_2_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_3_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_4_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_5_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_6_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_7_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_8_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_2_9_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_0_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_1_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_2_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_3_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_4_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_5_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_6_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_7_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_8_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_3_9_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_0_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_1_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_2_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_3_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_4_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_5_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_6_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_7_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_8_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal imgblock_4_9_V_read_int_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal loop_r_int_reg : STD_LOGIC_VECTOR (1 downto 0);

    component ISPPipeline_accelkbM IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        din2 : IN STD_LOGIC_VECTOR (9 downto 0);
        din3 : IN STD_LOGIC_VECTOR (9 downto 0);
        din4 : IN STD_LOGIC_VECTOR (9 downto 0);
        din5 : IN STD_LOGIC_VECTOR (9 downto 0);
        din6 : IN STD_LOGIC_VECTOR (9 downto 0);
        din7 : IN STD_LOGIC_VECTOR (9 downto 0);
        din8 : IN STD_LOGIC_VECTOR (9 downto 0);
        din9 : IN STD_LOGIC_VECTOR (9 downto 0);
        din10 : IN STD_LOGIC_VECTOR (3 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    ISPPipeline_accelkbM_U223 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_2_0_V_read_int_reg,
        din1 => imgblock_2_1_V_read_int_reg,
        din2 => imgblock_2_2_V_read_int_reg,
        din3 => imgblock_2_3_V_read_int_reg,
        din4 => imgblock_2_4_V_read_int_reg,
        din5 => imgblock_2_5_V_read_int_reg,
        din6 => imgblock_2_6_V_read_int_reg,
        din7 => imgblock_2_7_V_read_int_reg,
        din8 => imgblock_2_8_V_read_int_reg,
        din9 => imgblock_2_9_V_read_int_reg,
        din10 => tmp_s_fu_454_p11,
        dout => tmp_s_fu_454_p12);

    ISPPipeline_accelkbM_U224 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_2_0_V_read_int_reg,
        din1 => imgblock_2_1_V_read_int_reg,
        din2 => imgblock_2_2_V_read_int_reg,
        din3 => imgblock_2_3_V_read_int_reg,
        din4 => imgblock_2_4_V_read_int_reg,
        din5 => imgblock_2_5_V_read_int_reg,
        din6 => imgblock_2_6_V_read_int_reg,
        din7 => imgblock_2_7_V_read_int_reg,
        din8 => imgblock_2_8_V_read_int_reg,
        din9 => imgblock_2_9_V_read_int_reg,
        din10 => tmp_46_fu_500_p11,
        dout => tmp_46_fu_500_p12);

    ISPPipeline_accelkbM_U225 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_0_0_V_read_int_reg,
        din1 => imgblock_0_1_V_read_int_reg,
        din2 => imgblock_0_2_V_read_int_reg,
        din3 => imgblock_0_3_V_read_int_reg,
        din4 => imgblock_0_4_V_read_int_reg,
        din5 => imgblock_0_5_V_read_int_reg,
        din6 => imgblock_0_6_V_read_int_reg,
        din7 => imgblock_0_7_V_read_int_reg,
        din8 => imgblock_0_8_V_read_int_reg,
        din9 => imgblock_0_9_V_read_int_reg,
        din10 => zext_ln215_17_fu_552_p1,
        dout => tmp_47_fu_556_p12);

    ISPPipeline_accelkbM_U226 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_1_0_V_read_int_reg,
        din1 => imgblock_1_1_V_read_int_reg,
        din2 => imgblock_1_2_V_read_int_reg,
        din3 => imgblock_1_3_V_read_int_reg,
        din4 => imgblock_1_4_V_read_int_reg,
        din5 => imgblock_1_5_V_read_int_reg,
        din6 => imgblock_1_6_V_read_int_reg,
        din7 => imgblock_1_7_V_read_int_reg,
        din8 => imgblock_1_8_V_read_int_reg,
        din9 => imgblock_1_9_V_read_int_reg,
        din10 => zext_ln215_19_fu_592_p1,
        dout => tmp_48_fu_596_p12);

    ISPPipeline_accelkbM_U227 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_1_0_V_read_int_reg,
        din1 => imgblock_1_1_V_read_int_reg,
        din2 => imgblock_1_2_V_read_int_reg,
        din3 => imgblock_1_3_V_read_int_reg,
        din4 => imgblock_1_4_V_read_int_reg,
        din5 => imgblock_1_5_V_read_int_reg,
        din6 => imgblock_1_6_V_read_int_reg,
        din7 => imgblock_1_7_V_read_int_reg,
        din8 => imgblock_1_8_V_read_int_reg,
        din9 => imgblock_1_9_V_read_int_reg,
        din10 => zext_ln215_22_fu_642_p1,
        dout => tmp_49_fu_646_p12);

    ISPPipeline_accelkbM_U228 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_3_0_V_read_int_reg,
        din1 => imgblock_3_1_V_read_int_reg,
        din2 => imgblock_3_2_V_read_int_reg,
        din3 => imgblock_3_3_V_read_int_reg,
        din4 => imgblock_3_4_V_read_int_reg,
        din5 => imgblock_3_5_V_read_int_reg,
        din6 => imgblock_3_6_V_read_int_reg,
        din7 => imgblock_3_7_V_read_int_reg,
        din8 => imgblock_3_8_V_read_int_reg,
        din9 => imgblock_3_9_V_read_int_reg,
        din10 => zext_ln215_19_fu_592_p1,
        dout => tmp_50_fu_676_p12);

    ISPPipeline_accelkbM_U229 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_3_0_V_read_int_reg,
        din1 => imgblock_3_1_V_read_int_reg,
        din2 => imgblock_3_2_V_read_int_reg,
        din3 => imgblock_3_3_V_read_int_reg,
        din4 => imgblock_3_4_V_read_int_reg,
        din5 => imgblock_3_5_V_read_int_reg,
        din6 => imgblock_3_6_V_read_int_reg,
        din7 => imgblock_3_7_V_read_int_reg,
        din8 => imgblock_3_8_V_read_int_reg,
        din9 => imgblock_3_9_V_read_int_reg,
        din10 => zext_ln215_22_fu_642_p1,
        dout => tmp_fu_722_p12);

    ISPPipeline_accelkbM_U230 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_4_0_V_read_int_reg,
        din1 => imgblock_4_1_V_read_int_reg,
        din2 => imgblock_4_2_V_read_int_reg,
        din3 => imgblock_4_3_V_read_int_reg,
        din4 => imgblock_4_4_V_read_int_reg,
        din5 => imgblock_4_5_V_read_int_reg,
        din6 => imgblock_4_6_V_read_int_reg,
        din7 => imgblock_4_7_V_read_int_reg,
        din8 => imgblock_4_8_V_read_int_reg,
        din9 => imgblock_4_9_V_read_int_reg,
        din10 => zext_ln215_17_fu_552_p1,
        dout => tmp_51_fu_752_p12);

    ISPPipeline_accelkbM_U231 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_1_0_V_read_int_reg,
        din1 => imgblock_1_1_V_read_int_reg,
        din2 => imgblock_1_2_V_read_int_reg,
        din3 => imgblock_1_3_V_read_int_reg,
        din4 => imgblock_1_4_V_read_int_reg,
        din5 => imgblock_1_5_V_read_int_reg,
        din6 => imgblock_1_6_V_read_int_reg,
        din7 => imgblock_1_7_V_read_int_reg,
        din8 => imgblock_1_8_V_read_int_reg,
        din9 => imgblock_1_9_V_read_int_reg,
        din10 => zext_ln215_17_fu_552_p1,
        dout => tmp_52_fu_788_p12);

    ISPPipeline_accelkbM_U232 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_3_0_V_read_int_reg,
        din1 => imgblock_3_1_V_read_int_reg,
        din2 => imgblock_3_2_V_read_int_reg,
        din3 => imgblock_3_3_V_read_int_reg,
        din4 => imgblock_3_4_V_read_int_reg,
        din5 => imgblock_3_5_V_read_int_reg,
        din6 => imgblock_3_6_V_read_int_reg,
        din7 => imgblock_3_7_V_read_int_reg,
        din8 => imgblock_3_8_V_read_int_reg,
        din9 => imgblock_3_9_V_read_int_reg,
        din10 => zext_ln215_17_fu_552_p1,
        dout => tmp_53_fu_818_p12);

    ISPPipeline_accelkbM_U233 : component ISPPipeline_accelkbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 10,
        din9_WIDTH => 10,
        din10_WIDTH => 4,
        dout_WIDTH => 10)
    port map (
        din0 => imgblock_2_0_V_read_int_reg,
        din1 => imgblock_2_1_V_read_int_reg,
        din2 => imgblock_2_2_V_read_int_reg,
        din3 => imgblock_2_3_V_read_int_reg,
        din4 => imgblock_2_4_V_read_int_reg,
        din5 => imgblock_2_5_V_read_int_reg,
        din6 => imgblock_2_6_V_read_int_reg,
        din7 => imgblock_2_7_V_read_int_reg,
        din8 => imgblock_2_8_V_read_int_reg,
        din9 => imgblock_2_9_V_read_int_reg,
        din10 => zext_ln215_17_fu_552_p1,
        dout => tmp_54_fu_866_p12);




    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce))) then
                add_ln114_reg_1051 <= add_ln114_fu_918_p2;
                add_ln1353_10_reg_1046 <= add_ln1353_10_fu_782_p2;
                res_reg_1056 <= res_fu_956_p2;
                ret_V_6_reg_1041 <= ret_V_6_fu_716_p2;
                t1_reg_1036 <= ret_V_fu_530_p2(10 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                imgblock_0_0_V_read_int_reg <= imgblock_0_0_V_read;
                imgblock_0_1_V_read_int_reg <= imgblock_0_1_V_read;
                imgblock_0_2_V_read_int_reg <= imgblock_0_2_V_read;
                imgblock_0_3_V_read_int_reg <= imgblock_0_3_V_read;
                imgblock_0_4_V_read_int_reg <= imgblock_0_4_V_read;
                imgblock_0_5_V_read_int_reg <= imgblock_0_5_V_read;
                imgblock_0_6_V_read_int_reg <= imgblock_0_6_V_read;
                imgblock_0_7_V_read_int_reg <= imgblock_0_7_V_read;
                imgblock_0_8_V_read_int_reg <= imgblock_0_8_V_read;
                imgblock_0_9_V_read_int_reg <= imgblock_0_9_V_read;
                imgblock_1_0_V_read_int_reg <= imgblock_1_0_V_read;
                imgblock_1_1_V_read_int_reg <= imgblock_1_1_V_read;
                imgblock_1_2_V_read_int_reg <= imgblock_1_2_V_read;
                imgblock_1_3_V_read_int_reg <= imgblock_1_3_V_read;
                imgblock_1_4_V_read_int_reg <= imgblock_1_4_V_read;
                imgblock_1_5_V_read_int_reg <= imgblock_1_5_V_read;
                imgblock_1_6_V_read_int_reg <= imgblock_1_6_V_read;
                imgblock_1_7_V_read_int_reg <= imgblock_1_7_V_read;
                imgblock_1_8_V_read_int_reg <= imgblock_1_8_V_read;
                imgblock_1_9_V_read_int_reg <= imgblock_1_9_V_read;
                imgblock_2_0_V_read_int_reg <= imgblock_2_0_V_read;
                imgblock_2_1_V_read_int_reg <= imgblock_2_1_V_read;
                imgblock_2_2_V_read_int_reg <= imgblock_2_2_V_read;
                imgblock_2_3_V_read_int_reg <= imgblock_2_3_V_read;
                imgblock_2_4_V_read_int_reg <= imgblock_2_4_V_read;
                imgblock_2_5_V_read_int_reg <= imgblock_2_5_V_read;
                imgblock_2_6_V_read_int_reg <= imgblock_2_6_V_read;
                imgblock_2_7_V_read_int_reg <= imgblock_2_7_V_read;
                imgblock_2_8_V_read_int_reg <= imgblock_2_8_V_read;
                imgblock_2_9_V_read_int_reg <= imgblock_2_9_V_read;
                imgblock_3_0_V_read_int_reg <= imgblock_3_0_V_read;
                imgblock_3_1_V_read_int_reg <= imgblock_3_1_V_read;
                imgblock_3_2_V_read_int_reg <= imgblock_3_2_V_read;
                imgblock_3_3_V_read_int_reg <= imgblock_3_3_V_read;
                imgblock_3_4_V_read_int_reg <= imgblock_3_4_V_read;
                imgblock_3_5_V_read_int_reg <= imgblock_3_5_V_read;
                imgblock_3_6_V_read_int_reg <= imgblock_3_6_V_read;
                imgblock_3_7_V_read_int_reg <= imgblock_3_7_V_read;
                imgblock_3_8_V_read_int_reg <= imgblock_3_8_V_read;
                imgblock_3_9_V_read_int_reg <= imgblock_3_9_V_read;
                imgblock_4_0_V_read_int_reg <= imgblock_4_0_V_read;
                imgblock_4_1_V_read_int_reg <= imgblock_4_1_V_read;
                imgblock_4_2_V_read_int_reg <= imgblock_4_2_V_read;
                imgblock_4_3_V_read_int_reg <= imgblock_4_3_V_read;
                imgblock_4_4_V_read_int_reg <= imgblock_4_4_V_read;
                imgblock_4_5_V_read_int_reg <= imgblock_4_5_V_read;
                imgblock_4_6_V_read_int_reg <= imgblock_4_6_V_read;
                imgblock_4_7_V_read_int_reg <= imgblock_4_7_V_read;
                imgblock_4_8_V_read_int_reg <= imgblock_4_8_V_read;
                imgblock_4_9_V_read_int_reg <= imgblock_4_9_V_read;
                loop_r_int_reg <= loop_r;
            end if;
        end if;
    end process;
    add_ln114_fu_918_p2 <= std_logic_vector(unsigned(zext_ln113_2_fu_914_p1) + unsigned(zext_ln112_fu_862_p1));
    add_ln1353_10_fu_782_p2 <= std_logic_vector(unsigned(zext_ln1353_30_fu_778_p1) + unsigned(zext_ln215_24_fu_748_p1));
    add_ln1353_fu_706_p2 <= std_logic_vector(unsigned(zext_ln1353_28_fu_702_p1) + unsigned(zext_ln215_23_fu_672_p1));
    add_ln215_3_fu_586_p2 <= std_logic_vector(unsigned(zext_ln215_fu_484_p1) + unsigned(ap_const_lv3_1));
    add_ln215_4_fu_636_p2 <= std_logic_vector(unsigned(zext_ln215_fu_484_p1) + unsigned(ap_const_lv3_3));
    add_ln215_fu_546_p2 <= std_logic_vector(unsigned(zext_ln215_fu_484_p1) + unsigned(ap_const_lv3_2));
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
    ap_return <= 
        ap_const_lv14_0 when (icmp_ln116_fu_1023_p2(0) = '1') else 
        select_ln115_fu_1015_p3;
    icmp_ln116_fu_1023_p2 <= "1" when (signed(res_reg_1056) < signed(ap_const_lv15_7FF9)) else "0";
    lhs_V_4_fu_582_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_47_fu_556_p12),11));
    lhs_V_5_fu_632_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_5_fu_626_p2),12));
    lhs_V_6_fu_814_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_52_fu_788_p12),11));
    lhs_V_fu_480_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_454_p12),11));
    or_ln_fu_488_p3 <= (ap_const_lv1_1 & loop_r_int_reg);
    res_fu_956_p2 <= std_logic_vector(signed(sext_ln114_fu_949_p1) + signed(zext_ln114_fu_953_p1));
    ret_V_5_fu_626_p2 <= std_logic_vector(unsigned(lhs_V_4_fu_582_p1) + unsigned(rhs_V_3_fu_622_p1));
    ret_V_6_fu_716_p2 <= std_logic_vector(unsigned(lhs_V_5_fu_632_p1) + unsigned(zext_ln1353_29_fu_712_p1));
    ret_V_7_fu_933_p2 <= std_logic_vector(unsigned(zext_ln1353_fu_927_p1) + unsigned(zext_ln1353_31_fu_930_p1));
    ret_V_8_fu_848_p2 <= std_logic_vector(unsigned(lhs_V_6_fu_814_p1) + unsigned(rhs_V_4_fu_844_p1));
    ret_V_fu_530_p2 <= std_logic_vector(unsigned(lhs_V_fu_480_p1) + unsigned(rhs_V_fu_526_p1));
    rhs_V_3_fu_622_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_48_fu_596_p12),11));
    rhs_V_4_fu_844_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_53_fu_818_p12),11));
    rhs_V_fu_526_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_46_fu_500_p12),11));
    select_ln115_fu_1015_p3 <= 
        sub_ln115_1_fu_992_p2 when (tmp_136_fu_962_p3(0) = '1') else 
        zext_ln115_1_fu_1011_p1;
        sext_ln114_fu_949_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln114_fu_943_p2),15));

        sext_ln115_1_fu_1007_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln115_4_fu_998_p4),13));

        sext_ln115_fu_984_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln115_3_fu_974_p4),13));

    shl_ln_fu_896_p3 <= (tmp_54_fu_866_p12 & ap_const_lv2_0);
    sub_ln114_fu_943_p2 <= std_logic_vector(unsigned(zext_ln108_fu_924_p1) - unsigned(zext_ln109_fu_939_p1));
    sub_ln115_1_fu_992_p2 <= std_logic_vector(unsigned(ap_const_lv14_0) - unsigned(zext_ln115_fu_988_p1));
    sub_ln115_fu_969_p2 <= std_logic_vector(unsigned(ap_const_lv15_0) - unsigned(res_reg_1056));
    t3_fu_854_p3 <= (ret_V_8_fu_848_p2 & ap_const_lv2_0);
    t4_fu_908_p2 <= std_logic_vector(unsigned(zext_ln113_fu_892_p1) + unsigned(zext_ln113_1_fu_904_p1));
    tmp_136_fu_962_p3 <= res_reg_1056(14 downto 14);
    tmp_46_fu_500_p11 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln_fu_488_p3),4));
    tmp_s_fu_454_p11 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loop_r_int_reg),4));
    trunc_ln115_3_fu_974_p4 <= sub_ln115_fu_969_p2(14 downto 3);
    trunc_ln115_4_fu_998_p4 <= res_reg_1056(14 downto 3);
    zext_ln108_fu_924_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t1_reg_1036),14));
    zext_ln109_fu_939_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_7_fu_933_p2),14));
    zext_ln112_fu_862_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t3_fu_854_p3),14));
    zext_ln113_1_fu_904_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_896_p3),13));
    zext_ln113_2_fu_914_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t4_fu_908_p2),14));
    zext_ln113_fu_892_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_54_fu_866_p12),13));
    zext_ln114_fu_953_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln114_reg_1051),15));
    zext_ln115_1_fu_1011_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln115_1_fu_1007_p1),14));
    zext_ln115_fu_988_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln115_fu_984_p1),14));
    zext_ln1353_28_fu_702_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_50_fu_676_p12),11));
    zext_ln1353_29_fu_712_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1353_fu_706_p2),12));
    zext_ln1353_30_fu_778_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_51_fu_752_p12),11));
    zext_ln1353_31_fu_930_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1353_10_reg_1046),13));
    zext_ln1353_fu_927_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_6_reg_1041),13));
    zext_ln215_17_fu_552_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_fu_546_p2),4));
    zext_ln215_19_fu_592_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_3_fu_586_p2),4));
    zext_ln215_22_fu_642_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_4_fu_636_p2),4));
    zext_ln215_23_fu_672_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_49_fu_646_p12),11));
    zext_ln215_24_fu_748_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_722_p12),11));
    zext_ln215_fu_484_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loop_r_int_reg),3));
end behav;