// WARNING: Do NOT edit the input and output ports in this file in a text
// editor if you plan to continue editing the block that represents it in
// the Block Editor! File corruption is VERY likely to occur.

// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions
// and other software and tools, and its AMPP partner logic
// functions, and any output files from any of the foregoing
// (including device programming or simulation files), and any
// associated documentation or information are expressly subject
// to the terms and conditions of the Altera Program License
// Subscription Agreement, Altera MegaCore Function License
// Agreement, or other applicable license agreement, including,
// without limitation, that your use is for the sole purpose of
// programming logic devices manufactured by Altera and sold by
// Altera or its authorized distributors.  Please refer to the
// applicable agreement for further details.


// Generated by Quartus II 64-Bit Version 13.1 (Build Build 162 10/23/2013)
// Created on Thu Oct 24 20:06:43 2024

//  Module Declaration
module Xone
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
Z1, Z2, Z3, Z4, X1
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input Z1;
input Z2;
input Z3;
input Z4;
output X1;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

assign X1 = (Z2&Z3|Z1&Z4);

endmodule