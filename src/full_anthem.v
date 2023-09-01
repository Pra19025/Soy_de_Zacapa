`default_nettype none

module tt_um_chip_SP_NoelFPB(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // rst_n_n - low to rst_n
);

// Assign the input.
assign uio_out = 8'h00;
assign uio_oe = 8'h00;
assign uo_out[7:6] = 2'h0;

wire W_1;
wire W_2;
wire W_3;
wire W_4;
wire W_5;
wire W_6;
wire W_7;
wire W_8;
wire W_9;
wire W_10;
wire W_11;
wire W_12;
wire W_13;
wire W_14;
wire W_15;
wire W_16;
wire W_17;
wire W_18;
wire W_19;
wire clk_G;
wire EN;

assign uo_out[0] = W_19;
assign uo_out[1] = W_18;
assign uo_out[2] = W_16;
assign uo_out[3] = W_13;
assign uo_out[4] = W_9;
assign uo_out[5] = W_4;


assign EN = ui_in[0];

AND_2 U1(EN,EN,W_1);
INV  U2(W_1,W_2);
INV  U3(W_2,W_3);
INV  U4(W_3,W_4);
INV  U5(W_4,W_5);
INV  U6(W_5,W_6);
INV  U7(W_6,W_7);
INV  U8(W_7,W_8);
INV  U9(W_8,W_9);
INV  U10(W_9,W_10);
INV  U11(W_10,W_11);
INV  U12(W_11,W_12);
INV  U13(W_12,W_13);
INV  U14(W_13,W_14);
INV  U15(W_14,W_15);
INV  U16(W_15,W_16);
INV  U17(W_16,W_17);
INV  U18(W_17,W_18);
INV  U19(W_18,W_19);
INV  U20(W_19,W_1);

endmodule

module INV(A, B);
    input A;
    output B;
    assign B = ~A;
endmodule

module AND_2(in1, in2, out);
    input in1, in2;
    output out;
    assign out = in1 & in2;
endmodule

