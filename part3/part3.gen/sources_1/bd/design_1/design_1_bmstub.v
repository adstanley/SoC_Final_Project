// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  uart_rtl_0_rxd,
  uart_rtl_0_txd,
  clk_100MHz,
  rst_rtl,
  LED,
  rst,
  gpio,
  SPKL,
  SPKR,
  hdmi_tx_0_tmds_clk_n_port_out,
  hdmi_tx_0_tmds_data_n_port_out,
  hdmi_tx_0_tmds_clk_p_port_out,
  hdmi_tx_0_tmds_data_p_port_out
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 RxD" *)
  (* X_INTERFACE_MODE = "master uart_rtl_0" *)
  input uart_rtl_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 TxD" *)
  output uart_rtl_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_100MHZ" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *)
  input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_RTL RST" *)
  (* X_INTERFACE_MODE = "slave RST.RST_RTL" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_RTL, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rst_rtl;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]LED;
  (* X_INTERFACE_IGNORE = "true" *)
  input rst;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]gpio;
  (* X_INTERFACE_IGNORE = "true" *)
  output SPKL;
  (* X_INTERFACE_IGNORE = "true" *)
  output SPKR;
  (* X_INTERFACE_IGNORE = "true" *)
  output hdmi_tx_0_tmds_clk_n_port_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]hdmi_tx_0_tmds_data_n_port_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output hdmi_tx_0_tmds_clk_p_port_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]hdmi_tx_0_tmds_data_p_port_out;

  // stub module has no contents

endmodule
