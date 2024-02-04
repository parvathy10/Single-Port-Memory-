//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sun Feb  4 12:09:50 2024
//Host        : kiwi running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (addra,
    clka,
    dina,
    douta,
    ena,
    rsta,
    wea);
  input [31:0]addra;
  input clka;
  input [31:0]dina;
  output [31:0]douta;
  input ena;
  input rsta;
  input [3:0]wea;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire [3:0]wea;

  design_1 design_1_i
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .rsta(rsta),
        .wea(wea));
endmodule
