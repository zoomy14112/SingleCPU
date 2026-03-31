// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Mar 31 17:12:36 2026
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
PSKTkgBsQLcqAPrll2ir9bLJTA==
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
