// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Mar 27 13:48:40 2026
// Host        : _Zoomy_ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
RNhtecGr7K/+eY+S6HN/6BvGrQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
