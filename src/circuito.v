`default_nettype none

module tt_um_chip_SP_Soy_de_Zacapa(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // rst_n_n - low to rst_n
);



wire[1:0]select;
assign select = ui_in[1:0]; 
reg [11:0] contador;
reg [7:0] q;
    
// Assign the input.
assign uio_out = 8'h00;
assign uio_oe = 8'h00;

always @ (posedge reset or posedge clk)
if (reset)
contador<=12'b000000000000;
else if(select==2'b00 || select==2'b11) begin
if (contador <125)
contador <= contador + 1;
else
contador <= 0;
end
else if(select==2'b01 || select==2'b10) begin
if (contador <76)
contador <= contador + 1;
else
contador <= 0;
end
always @ (posedge clk)
if(select==2'b00 || select==2'b11)
begin
if(contador == 'd0)
begin
q<=8'b10100001;
end
else if(contador == 'd1)
begin
q<=8'b01000111;
end
else if(contador == 'd2)
begin
q<=8'b01110101;
end
else if(contador == 'd3)
begin
q<=8'b01100001;
end
else if(contador == 'd4)
begin
q<=8'b01110100;
end
else if(contador == 'd5)
begin
q<=8'b01100101;
end
else if(contador == 'd6)
begin
q<=8'b01101101;
end
else if(contador == 'd7)
begin
q<=8'b01100001;
end
else if(contador == 'd8)
begin
q<=8'b01101100;
end
else if(contador == 'd9)
begin
q<=8'b01100001;
end
else if(contador == 'd10)
begin
q<=8'b00100000;
end
else if(contador == 'd11)
begin
q<=8'b01100110;
end
else if(contador == 'd12)
begin
q<=8'b01100101;
end
else if(contador == 'd13)
begin
q<=8'b01101100;
end
else if(contador == 'd14)
begin
q<=8'b01101001;
end
else if(contador == 'd15)
begin
q<=8'b01111010;
end
else if(contador == 'd16)
begin
q<=8'b00100001;
end
else if(contador == 'd17)
begin
q<=8'b00100000;
end
else if(contador == 'd18)
begin
q<=8'b01110001;
end
else if(contador == 'd19)
begin
q<=8'b01110101;
end
else if(contador == 'd20)
begin
q<=8'b01100101;
end
else if(contador == 'd21)
begin
q<=8'b00100000;
end
else if(contador == 'd22)
begin
q<=8'b01110100;
end
else if(contador == 'd23)
begin
q<=8'b01110101;
end
else if(contador == 'd24)
begin
q<=8'b01110011;
end
else if(contador == 'd25)
begin
q<=8'b00100000;
end
else if(contador == 'd26)
begin
q<=8'b01100001;
end
else if(contador == 'd27)
begin
q<=8'b01110010;
end
else if(contador == 'd28)
begin
q<=8'b01100001;
end
else if(contador == 'd29)
begin
q<=8'b01110011;
end
else if(contador == 'd30)
begin
q<=8'b00001010;
end
else if(contador == 'd31)
begin
q<=8'b01101110;
end
else if(contador == 'd32)
begin
q<=8'b01101111;
end
else if(contador == 'd33)
begin
q<=8'b00100000;
end
else if(contador == 'd34)
begin
q<=8'b01110000;
end
else if(contador == 'd35)
begin
q<=8'b01110010;
end
else if(contador == 'd36)
begin
q<=8'b01101111;
end
else if(contador == 'd37)
begin
q<=8'b01100110;
end
else if(contador == 'd38)
begin
q<=8'b01100001;
end
else if(contador == 'd39)
begin
q<=8'b01101110;
end
else if(contador == 'd40)
begin
q<=8'b01100101;
end
else if(contador == 'd41)
begin
q<=8'b00100000;
end
else if(contador == 'd42)
begin
q<=8'b01101010;
end
else if(contador == 'd43)
begin
q<=8'b01100001;
end
else if(contador == 'd44)
begin
q<=8'b01101101;
end
else if(contador == 'd45)
begin
q<=8'b11100001;
end
else if(contador == 'd46)
begin
q<=8'b01110011;
end
else if(contador == 'd47)
begin
q<=8'b00100000;
end
else if(contador == 'd48)
begin
q<=8'b01100101;
end
else if(contador == 'd49)
begin
q<=8'b01101100;
end
else if(contador == 'd50)
begin
q<=8'b00100000;
end
else if(contador == 'd51)
begin
q<=8'b01110110;
end
else if(contador == 'd52)
begin
q<=8'b01100101;
end
else if(contador == 'd53)
begin
q<=8'b01110010;
end
else if(contador == 'd54)
begin
q<=8'b01100100;
end
else if(contador == 'd55)
begin
q<=8'b01110101;
end
else if(contador == 'd56)
begin
q<=8'b01100111;
end
else if(contador == 'd57)
begin
q<=8'b01101111;
end
else if(contador == 'd58)
begin
q<=8'b00111011;
end
else if(contador == 'd59)
begin
q<=8'b00001010;
end
else if(contador == 'd60)
begin
q<=8'b01101110;
end
else if(contador == 'd61)
begin
q<=8'b01101001;
end
else if(contador == 'd62)
begin
q<=8'b00100000;
end
else if(contador == 'd63)
begin
q<=8'b01101000;
end
else if(contador == 'd64)
begin
q<=8'b01100001;
end
else if(contador == 'd65)
begin
q<=8'b01111001;
end
else if(contador == 'd66)
begin
q<=8'b01100001;
end
else if(contador == 'd67)
begin
q<=8'b00100000;
end
else if(contador == 'd68)
begin
q<=8'b01100101;
end
else if(contador == 'd69)
begin
q<=8'b01110011;
end
else if(contador == 'd70)
begin
q<=8'b01100011;
end
else if(contador == 'd71)
begin
q<=8'b01101100;
end
else if(contador == 'd72)
begin
q<=8'b01100001;
end
else if(contador == 'd73)
begin
q<=8'b01110110;
end
else if(contador == 'd74)
begin
q<=8'b01101111;
end
else if(contador == 'd75)
begin
q<=8'b01110011;
end
else if(contador == 'd76)
begin
q<=8'b00100000;
end
else if(contador == 'd77)
begin
q<=8'b01110001;
end
else if(contador == 'd78)
begin
q<=8'b01110101;
end
else if(contador == 'd79)
begin
q<=8'b01100101;
end
else if(contador == 'd80)
begin
q<=8'b00100000;
end
else if(contador == 'd81)
begin
q<=8'b01101100;
end
else if(contador == 'd82)
begin
q<=8'b01100001;
end
else if(contador == 'd83)
begin
q<=8'b01101101;
end
else if(contador == 'd84)
begin
q<=8'b01100001;
end
else if(contador == 'd85)
begin
q<=8'b01101110;
end
else if(contador == 'd86)
begin
q<=8'b00100000;
end
else if(contador == 'd87)
begin
q<=8'b01100101;
end
else if(contador == 'd88)
begin
q<=8'b01101100;
end
else if(contador == 'd89)
begin
q<=8'b00100000;
end
else if(contador == 'd90)
begin
q<=8'b01111001;
end
else if(contador == 'd91)
begin
q<=8'b01110101;
end
else if(contador == 'd92)
begin
q<=8'b01100111;
end
else if(contador == 'd93)
begin
q<=8'b01101111;
end
else if(contador == 'd94)
begin
q<=8'b00001010;
end
else if(contador == 'd95)
begin
q<=8'b01101110;
end
else if(contador == 'd96)
begin
q<=8'b01101001;
end
else if(contador == 'd97)
begin
q<=8'b00100000;
end
else if(contador == 'd98)
begin
q<=8'b01110100;
end
else if(contador == 'd99)
begin
q<=8'b01101001;
end
else if(contador == 'd100)
begin
q<=8'b01110010;
end
else if(contador == 'd101)
begin
q<=8'b01100001;
end
else if(contador == 'd102)
begin
q<=8'b01101110;
end
else if(contador == 'd103)
begin
q<=8'b01101111;
end
else if(contador == 'd104)
begin
q<=8'b01110011;
end
else if(contador == 'd105)
begin
q<=8'b00100000;
end
else if(contador == 'd106)
begin
q<=8'b01110001;
end
else if(contador == 'd107)
begin
q<=8'b01110101;
end
else if(contador == 'd108)
begin
q<=8'b01100101;
end
else if(contador == 'd109)
begin
q<=8'b00100000;
end
else if(contador == 'd110)
begin
q<=8'b01100101;
end
else if(contador == 'd111)
begin
q<=8'b01110011;
end
else if(contador == 'd112)
begin
q<=8'b01100011;
end
else if(contador == 'd113)
begin
q<=8'b01110101;
end
else if(contador == 'd114)
begin
q<=8'b01110000;
end
else if(contador == 'd115)
begin
q<=8'b01100001;
end
else if(contador == 'd116)
begin
q<=8'b01101110;
end
else if(contador == 'd117)
begin
q<=8'b00100000;
end
else if(contador == 'd118)
begin
q<=8'b01110100;
end
else if(contador == 'd119)
begin
q<=8'b01110101;
end
else if(contador == 'd120)
begin
q<=8'b00100000;
end
else if(contador == 'd121)
begin
q<=8'b01100110;
end
else if(contador == 'd122)
begin
q<=8'b01100001;
end
else if(contador == 'd123)
begin
q<=8'b01111010;
end
else if(contador == 'd124)
begin
q<=8'b00101110;
end
else if(contador == 'd125)
begin
q<=8'b00001010;
end
end
else if(select==2'b01 || select==2'b10)
begin
if(contador == 'd0)
begin
q<=8'b01010000;
end
else if(contador == 'd1)
begin
q<=8'b01010000;
end
else if(contador == 'd2)
begin
q<=8'b01110010;
end
else if(contador == 'd3)
begin
q<=8'b01101111;
end
else if(contador == 'd4)
begin
q<=8'b01111001;
end
else if(contador == 'd5)
begin
q<=8'b01100101;
end
else if(contador == 'd6)
begin
q<=8'b01100011;
end
else if(contador == 'd7)
begin
q<=8'b01110100;
end
else if(contador == 'd8)
begin
q<=8'b01101111;
end
else if(contador == 'd9)
begin
q<=8'b00100000;
end
else if(contador == 'd10)
begin
q<=8'b01110100;
end
else if(contador == 'd11)
begin
q<=8'b01110010;
end
else if(contador == 'd12)
begin
q<=8'b01100001;
end
else if(contador == 'd13)
begin
q<=8'b01100010;
end
else if(contador == 'd14)
begin
q<=8'b01100001;
end
else if(contador == 'd15)
begin
q<=8'b01101010;
end
else if(contador == 'd16)
begin
q<=8'b01100001;
end
else if(contador == 'd17)
begin
q<=8'b01100100;
end
else if(contador == 'd18)
begin
q<=8'b01101111;
end
else if(contador == 'd19)
begin
q<=8'b00100000;
end
else if(contador == 'd20)
begin
q<=8'b01110000;
end
else if(contador == 'd21)
begin
q<=8'b01101111;
end
else if(contador == 'd22)
begin
q<=8'b01110010;
end
else if(contador == 'd23)
begin
q<=8'b00100000;
end
else if(contador == 'd24)
begin
q<=8'b01000001;
end
else if(contador == 'd25)
begin
q<=8'b01101110;
end
else if(contador == 'd26)
begin
q<=8'b01100111;
end
else if(contador == 'd27)
begin
q<=8'b01100101;
end
else if(contador == 'd28)
begin
q<=8'b01101100;
end
else if(contador == 'd29)
begin
q<=8'b00100000;
end
else if(contador == 'd30)
begin
q<=8'b01001111;
end
else if(contador == 'd31)
begin
q<=8'b01110010;
end
else if(contador == 'd32)
begin
q<=8'b01100101;
end
else if(contador == 'd33)
begin
q<=8'b01101100;
end
else if(contador == 'd34)
begin
q<=8'b01101100;
end
else if(contador == 'd35)
begin
q<=8'b01100001;
end
else if(contador == 'd36)
begin
q<=8'b01101110;
end
else if(contador == 'd37)
begin
q<=8'b01100001;
end
else if(contador == 'd38)
begin
q<=8'b00101100;
end
else if(contador == 'd39)
begin
q<=8'b00100000;
end
else if(contador == 'd40)
begin
q<=8'b01000100;
end
else if(contador == 'd41)
begin
q<=8'b01100001;
end
else if(contador == 'd42)
begin
q<=8'b01101110;
end
else if(contador == 'd43)
begin
q<=8'b01101001;
end
else if(contador == 'd44)
begin
q<=8'b01100101;
end
else if(contador == 'd45)
begin
q<=8'b01101100;
end
else if(contador == 'd46)
begin
q<=8'b00100000;
end
else if(contador == 'd47)
begin
q<=8'b01001101;
end
else if(contador == 'd48)
begin
q<=8'b01110101;
end
else if(contador == 'd49)
begin
q<=8'b01101110;
end
else if(contador == 'd50)
begin
q<=8'b01100100;
end
else if(contador == 'd51)
begin
q<=8'b01101111;
end
else if(contador == 'd52)
begin
q<=8'b00101100;
end
else if(contador == 'd53)
begin
q<=8'b00100000;
end
else if(contador == 'd54)
begin
q<=8'b01001010;
end
else if(contador == 'd55)
begin
q<=8'b01110101;
end
else if(contador == 'd56)
begin
q<=8'b01101100;
end
else if(contador == 'd57)
begin
q<=8'b01101001;
end
else if(contador == 'd58)
begin
q<=8'b01101111;
end
else if(contador == 'd59)
begin
q<=8'b00100000;
end
else if(contador == 'd60)
begin
q<=8'b01001100;
end
else if(contador == 'd61)
begin
q<=8'b01101111;
end
else if(contador == 'd62)
begin
q<=8'b01110000;
end
else if(contador == 'd63)
begin
q<=8'b01100101;
end
else if(contador == 'd64)
begin
q<=8'b01111010;
end
else if(contador == 'd65)
begin
q<=8'b00100000;
end
else if(contador == 'd66)
begin
q<=8'b01111001;
end
else if(contador == 'd67)
begin
q<=8'b00100000;
end
else if(contador == 'd68)
begin
q<=8'b01001110;
end
else if(contador == 'd69)
begin
q<=8'b01101111;
end
else if(contador == 'd70)
begin
q<=8'b01100101;
end
else if(contador == 'd71)
begin
q<=8'b01101100;
end
else if(contador == 'd72)
begin
q<=8'b00100000;
end
else if(contador == 'd73)
begin
q<=8'b01010000;
end
else if(contador == 'd74)
begin
q<=8'b01110010;
end
else if(contador == 'd75)
begin
q<=8'b01100001;
end
else if(contador == 'd76)
begin
q<=8'b01100100;
end
end
assign uo_out = q;
endmodule
