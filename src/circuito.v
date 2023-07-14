module tt_um_chip_SP_NoelFPB(q_out, reset, clk, EN, clk_s, select);
output [7:0] q_out;
input reset;
input clk;
input [1:0]select;
reg [11:0] contador;
reg [7:0] q;
input EN;
output clk_s;
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
assign clk_s = clk_G;
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
INV  U20(W_19,clk_G);
always @ (posedge reset or posedge clk)
if (reset)
contador<=12'b000000000000;
else if(select==2'b00 || select==2'b11) begin
if (contador <8)
contador <= contador + 1;
else
contador <= 0;
end
else if(select==2'b01 || select==2'b10) begin
if (contador <6)
contador <= contador + 1;
else
contador <= 0;
end
always @ (posedge clk)
if(select==2'b00 || select==2'b11)
begin
if(contador == 'd0)
begin
q<=8'b01000111;
end
else if(contador == 'd1)
begin
q<=8'b01110101;
end
else if(contador == 'd2)
begin
q<=8'b01100001;
end
else if(contador == 'd3)
begin
q<=8'b01110100;
end
else if(contador == 'd4)
begin
q<=8'b01100101;
end
else if(contador == 'd5)
begin
q<=8'b01101101;
end
else if(contador == 'd6)
begin
q<=8'b01100001;
end
else if(contador == 'd7)
begin
q<=8'b01101100;
end
else if(contador == 'd8)
begin
q<=8'b01100001;
end
end
else if(select==2'b01 || select==2'b10)
begin
if(contador == 'd0)
begin
q<=8'b01010001;
end
else if(contador == 'd1)
begin
q<=8'b01010001;
end
else if(contador == 'd2)
begin
q<=8'b01110101;
end
else if(contador == 'd3)
begin
q<=8'b01100101;
end
else if(contador == 'd4)
begin
q<=8'b01110100;
end
else if(contador == 'd5)
begin
q<=8'b01111010;
end
else if(contador == 'd6)
begin
q<=8'b01100001;
end
end
assign q_out = q;
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
