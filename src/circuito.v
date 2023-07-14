module chip_SP_NoelFPB(q_out, reset, clk, select);
output [7:0] q_out;
input reset;
input clk;
input [1:0]select;
reg [11:0] contador;
reg [7:0] q;


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

