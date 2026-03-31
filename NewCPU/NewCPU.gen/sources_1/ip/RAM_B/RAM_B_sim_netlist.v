// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Mar 31 17:12:36 2026
// Host        : _Zoomy_ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim g:/system/NewCPU/NewCPU.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RAM_B
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
  RAM_B_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
`pragma protect data_block
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
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
