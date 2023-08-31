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



wire[1:0]select;
assign select = ui_in[1:0]; 
reg [11:0] contador;
reg [7:0] q;
// Assign the input.
assign uio_out = 8'h00;
assign uo_out = 8'h00;
assign uio_oe = 8'h00;

always @ (posedge rst_n or posedge clk)
if (rst_n)
contador<=12'b000000000000;
else if(select==2'b00 || select==2'b11) begin
if (contador <1545)
contador <= contador + 1;
else
contador <= 0;
end
else if(select==2'b01 || select==2'b10) begin
if (contador <77)
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
else if(contador == 'd126)
begin
q<=8'b00001010;
end
else if(contador == 'd127)
begin
q<=8'b01010011;
end
else if(contador == 'd128)
begin
q<=8'b01101001;
end
else if(contador == 'd129)
begin
q<=8'b00100000;
end
else if(contador == 'd130)
begin
q<=8'b01101101;
end
else if(contador == 'd131)
begin
q<=8'b01100001;
end
else if(contador == 'd132)
begin
q<=8'b11110001;
end
else if(contador == 'd133)
begin
q<=8'b01100001;
end
else if(contador == 'd134)
begin
q<=8'b01101110;
end
else if(contador == 'd135)
begin
q<=8'b01100001;
end
else if(contador == 'd136)
begin
q<=8'b00100000;
end
else if(contador == 'd137)
begin
q<=8'b01110100;
end
else if(contador == 'd138)
begin
q<=8'b01110101;
end
else if(contador == 'd139)
begin
q<=8'b00100000;
end
else if(contador == 'd140)
begin
q<=8'b01110011;
end
else if(contador == 'd141)
begin
q<=8'b01110101;
end
else if(contador == 'd142)
begin
q<=8'b01100101;
end
else if(contador == 'd143)
begin
q<=8'b01101100;
end
else if(contador == 'd144)
begin
q<=8'b01101111;
end
else if(contador == 'd145)
begin
q<=8'b00100000;
end
else if(contador == 'd146)
begin
q<=8'b01110011;
end
else if(contador == 'd147)
begin
q<=8'b01100001;
end
else if(contador == 'd148)
begin
q<=8'b01100111;
end
else if(contador == 'd149)
begin
q<=8'b01110010;
end
else if(contador == 'd150)
begin
q<=8'b01100001;
end
else if(contador == 'd151)
begin
q<=8'b01100100;
end
else if(contador == 'd152)
begin
q<=8'b01101111;
end
else if(contador == 'd153)
begin
q<=8'b00001010;
end
else if(contador == 'd154)
begin
q<=8'b01101100;
end
else if(contador == 'd155)
begin
q<=8'b01101111;
end
else if(contador == 'd156)
begin
q<=8'b00100000;
end
else if(contador == 'd157)
begin
q<=8'b01100001;
end
else if(contador == 'd158)
begin
q<=8'b01101101;
end
else if(contador == 'd159)
begin
q<=8'b01100101;
end
else if(contador == 'd160)
begin
q<=8'b01101110;
end
else if(contador == 'd161)
begin
q<=8'b01100001;
end
else if(contador == 'd162)
begin
q<=8'b01111010;
end
else if(contador == 'd163)
begin
q<=8'b01100001;
end
else if(contador == 'd164)
begin
q<=8'b00100000;
end
else if(contador == 'd165)
begin
q<=8'b01101001;
end
else if(contador == 'd166)
begin
q<=8'b01101110;
end
else if(contador == 'd167)
begin
q<=8'b01110110;
end
else if(contador == 'd168)
begin
q<=8'b01100001;
end
else if(contador == 'd169)
begin
q<=8'b01110011;
end
else if(contador == 'd170)
begin
q<=8'b01101001;
end
else if(contador == 'd171)
begin
q<=8'b11110011;
end
else if(contador == 'd172)
begin
q<=8'b01101110;
end
else if(contador == 'd173)
begin
q<=8'b00100000;
end
else if(contador == 'd174)
begin
q<=8'b01100101;
end
else if(contador == 'd175)
begin
q<=8'b01111000;
end
else if(contador == 'd176)
begin
q<=8'b01110100;
end
else if(contador == 'd177)
begin
q<=8'b01110010;
end
else if(contador == 'd178)
begin
q<=8'b01100001;
end
else if(contador == 'd179)
begin
q<=8'b01101110;
end
else if(contador == 'd180)
begin
q<=8'b01101010;
end
else if(contador == 'd181)
begin
q<=8'b01100101;
end
else if(contador == 'd182)
begin
q<=8'b01110010;
end
else if(contador == 'd183)
begin
q<=8'b01100001;
end
else if(contador == 'd184)
begin
q<=8'b00101100;
end
else if(contador == 'd185)
begin
q<=8'b00001010;
end
else if(contador == 'd186)
begin
q<=8'b01101100;
end
else if(contador == 'd187)
begin
q<=8'b01101001;
end
else if(contador == 'd188)
begin
q<=8'b01100010;
end
else if(contador == 'd189)
begin
q<=8'b01110010;
end
else if(contador == 'd190)
begin
q<=8'b01100101;
end
else if(contador == 'd191)
begin
q<=8'b00100000;
end
else if(contador == 'd192)
begin
q<=8'b01100001;
end
else if(contador == 'd193)
begin
q<=8'b01101100;
end
else if(contador == 'd194)
begin
q<=8'b00100000;
end
else if(contador == 'd195)
begin
q<=8'b01110110;
end
else if(contador == 'd196)
begin
q<=8'b01101001;
end
else if(contador == 'd197)
begin
q<=8'b01100101;
end
else if(contador == 'd198)
begin
q<=8'b01101110;
end
else if(contador == 'd199)
begin
q<=8'b01110100;
end
else if(contador == 'd200)
begin
q<=8'b01101111;
end
else if(contador == 'd201)
begin
q<=8'b00100000;
end
else if(contador == 'd202)
begin
q<=8'b01110100;
end
else if(contador == 'd203)
begin
q<=8'b01110101;
end
else if(contador == 'd204)
begin
q<=8'b00100000;
end
else if(contador == 'd205)
begin
q<=8'b01101000;
end
else if(contador == 'd206)
begin
q<=8'b01100101;
end
else if(contador == 'd207)
begin
q<=8'b01110010;
end
else if(contador == 'd208)
begin
q<=8'b01101101;
end
else if(contador == 'd209)
begin
q<=8'b01101111;
end
else if(contador == 'd210)
begin
q<=8'b01110011;
end
else if(contador == 'd211)
begin
q<=8'b01100001;
end
else if(contador == 'd212)
begin
q<=8'b00100000;
end
else if(contador == 'd213)
begin
q<=8'b01100010;
end
else if(contador == 'd214)
begin
q<=8'b01100001;
end
else if(contador == 'd215)
begin
q<=8'b01101110;
end
else if(contador == 'd216)
begin
q<=8'b01100100;
end
else if(contador == 'd217)
begin
q<=8'b01100101;
end
else if(contador == 'd218)
begin
q<=8'b01110010;
end
else if(contador == 'd219)
begin
q<=8'b01100001;
end
else if(contador == 'd220)
begin
q<=8'b00001010;
end
else if(contador == 'd221)
begin
q<=8'b01100001;
end
else if(contador == 'd222)
begin
q<=8'b00100000;
end
else if(contador == 'd223)
begin
q<=8'b01110110;
end
else if(contador == 'd224)
begin
q<=8'b01100101;
end
else if(contador == 'd225)
begin
q<=8'b01101110;
end
else if(contador == 'd226)
begin
q<=8'b01100011;
end
else if(contador == 'd227)
begin
q<=8'b01100101;
end
else if(contador == 'd228)
begin
q<=8'b01110010;
end
else if(contador == 'd229)
begin
q<=8'b00100000;
end
else if(contador == 'd230)
begin
q<=8'b01101111;
end
else if(contador == 'd231)
begin
q<=8'b00100000;
end
else if(contador == 'd232)
begin
q<=8'b01100001;
end
else if(contador == 'd233)
begin
q<=8'b00100000;
end
else if(contador == 'd234)
begin
q<=8'b01101101;
end
else if(contador == 'd235)
begin
q<=8'b01101111;
end
else if(contador == 'd236)
begin
q<=8'b01110010;
end
else if(contador == 'd237)
begin
q<=8'b01101001;
end
else if(contador == 'd238)
begin
q<=8'b01110010;
end
else if(contador == 'd239)
begin
q<=8'b00100000;
end
else if(contador == 'd240)
begin
q<=8'b01101100;
end
else if(contador == 'd241)
begin
q<=8'b01101100;
end
else if(contador == 'd242)
begin
q<=8'b01100001;
end
else if(contador == 'd243)
begin
q<=8'b01101101;
end
else if(contador == 'd244)
begin
q<=8'b01100001;
end
else if(contador == 'd245)
begin
q<=8'b01110010;
end
else if(contador == 'd246)
begin
q<=8'b11100001;
end
else if(contador == 'd247)
begin
q<=8'b00101110;
end
else if(contador == 'd248)
begin
q<=8'b00001010;
end
else if(contador == 'd249)
begin
q<=8'b00001010;
end
else if(contador == 'd250)
begin
q<=8'b01001100;
end
else if(contador == 'd251)
begin
q<=8'b01101001;
end
else if(contador == 'd252)
begin
q<=8'b01100010;
end
else if(contador == 'd253)
begin
q<=8'b01110010;
end
else if(contador == 'd254)
begin
q<=8'b01100101;
end
else if(contador == 'd255)
begin
q<=8'b00100000;
end
else if(contador == 'd256)
begin
q<=8'b01100001;
end
else if(contador == 'd257)
begin
q<=8'b01101100;
end
else if(contador == 'd258)
begin
q<=8'b00100000;
end
else if(contador == 'd259)
begin
q<=8'b01110110;
end
else if(contador == 'd260)
begin
q<=8'b01101001;
end
else if(contador == 'd261)
begin
q<=8'b01100101;
end
else if(contador == 'd262)
begin
q<=8'b01101110;
end
else if(contador == 'd263)
begin
q<=8'b01110100;
end
else if(contador == 'd264)
begin
q<=8'b01101111;
end
else if(contador == 'd265)
begin
q<=8'b00100000;
end
else if(contador == 'd266)
begin
q<=8'b01110100;
end
else if(contador == 'd267)
begin
q<=8'b01110101;
end
else if(contador == 'd268)
begin
q<=8'b00100000;
end
else if(contador == 'd269)
begin
q<=8'b01101000;
end
else if(contador == 'd270)
begin
q<=8'b01100101;
end
else if(contador == 'd271)
begin
q<=8'b01110010;
end
else if(contador == 'd272)
begin
q<=8'b01101101;
end
else if(contador == 'd273)
begin
q<=8'b01101111;
end
else if(contador == 'd274)
begin
q<=8'b01110011;
end
else if(contador == 'd275)
begin
q<=8'b01100001;
end
else if(contador == 'd276)
begin
q<=8'b00100000;
end
else if(contador == 'd277)
begin
q<=8'b01100010;
end
else if(contador == 'd278)
begin
q<=8'b01100001;
end
else if(contador == 'd279)
begin
q<=8'b01101110;
end
else if(contador == 'd280)
begin
q<=8'b01100100;
end
else if(contador == 'd281)
begin
q<=8'b01100101;
end
else if(contador == 'd282)
begin
q<=8'b01110010;
end
else if(contador == 'd283)
begin
q<=8'b01100001;
end
else if(contador == 'd284)
begin
q<=8'b00001010;
end
else if(contador == 'd285)
begin
q<=8'b01100001;
end
else if(contador == 'd286)
begin
q<=8'b00100000;
end
else if(contador == 'd287)
begin
q<=8'b01110110;
end
else if(contador == 'd288)
begin
q<=8'b01100101;
end
else if(contador == 'd289)
begin
q<=8'b01101110;
end
else if(contador == 'd290)
begin
q<=8'b01100011;
end
else if(contador == 'd291)
begin
q<=8'b01100101;
end
else if(contador == 'd292)
begin
q<=8'b01110010;
end
else if(contador == 'd293)
begin
q<=8'b00100000;
end
else if(contador == 'd294)
begin
q<=8'b01101111;
end
else if(contador == 'd295)
begin
q<=8'b00100000;
end
else if(contador == 'd296)
begin
q<=8'b01100001;
end
else if(contador == 'd297)
begin
q<=8'b00100000;
end
else if(contador == 'd298)
begin
q<=8'b01101101;
end
else if(contador == 'd299)
begin
q<=8'b01101111;
end
else if(contador == 'd300)
begin
q<=8'b01110010;
end
else if(contador == 'd301)
begin
q<=8'b01101001;
end
else if(contador == 'd302)
begin
q<=8'b01110010;
end
else if(contador == 'd303)
begin
q<=8'b00100000;
end
else if(contador == 'd304)
begin
q<=8'b01101100;
end
else if(contador == 'd305)
begin
q<=8'b01101100;
end
else if(contador == 'd306)
begin
q<=8'b01100001;
end
else if(contador == 'd307)
begin
q<=8'b01101101;
end
else if(contador == 'd308)
begin
q<=8'b01100001;
end
else if(contador == 'd309)
begin
q<=8'b01110010;
end
else if(contador == 'd310)
begin
q<=8'b11100001;
end
else if(contador == 'd311)
begin
q<=8'b00111011;
end
else if(contador == 'd312)
begin
q<=8'b00001010;
end
else if(contador == 'd313)
begin
q<=8'b01110001;
end
else if(contador == 'd314)
begin
q<=8'b01110101;
end
else if(contador == 'd315)
begin
q<=8'b01100101;
end
else if(contador == 'd316)
begin
q<=8'b00100000;
end
else if(contador == 'd317)
begin
q<=8'b01110100;
end
else if(contador == 'd318)
begin
q<=8'b01110101;
end
else if(contador == 'd319)
begin
q<=8'b00100000;
end
else if(contador == 'd320)
begin
q<=8'b01110000;
end
else if(contador == 'd321)
begin
q<=8'b01110101;
end
else if(contador == 'd322)
begin
q<=8'b01100101;
end
else if(contador == 'd323)
begin
q<=8'b01100010;
end
else if(contador == 'd324)
begin
q<=8'b01101100;
end
else if(contador == 'd325)
begin
q<=8'b01101111;
end
else if(contador == 'd326)
begin
q<=8'b00100000;
end
else if(contador == 'd327)
begin
q<=8'b01100011;
end
else if(contador == 'd328)
begin
q<=8'b01101111;
end
else if(contador == 'd329)
begin
q<=8'b01101110;
end
else if(contador == 'd330)
begin
q<=8'b00100000;
end
else if(contador == 'd331)
begin
q<=8'b11100001;
end
else if(contador == 'd332)
begin
q<=8'b01101110;
end
else if(contador == 'd333)
begin
q<=8'b01101001;
end
else if(contador == 'd334)
begin
q<=8'b01101101;
end
else if(contador == 'd335)
begin
q<=8'b01100001;
end
else if(contador == 'd336)
begin
q<=8'b00100000;
end
else if(contador == 'd337)
begin
q<=8'b01100110;
end
else if(contador == 'd338)
begin
q<=8'b01101001;
end
else if(contador == 'd339)
begin
q<=8'b01100101;
end
else if(contador == 'd340)
begin
q<=8'b01110010;
end
else if(contador == 'd341)
begin
q<=8'b01100001;
end
else if(contador == 'd342)
begin
q<=8'b00001010;
end
else if(contador == 'd343)
begin
q<=8'b01100001;
end
else if(contador == 'd344)
begin
q<=8'b01101110;
end
else if(contador == 'd345)
begin
q<=8'b01110100;
end
else if(contador == 'd346)
begin
q<=8'b01100101;
end
else if(contador == 'd347)
begin
q<=8'b01110011;
end
else if(contador == 'd348)
begin
q<=8'b00100000;
end
else if(contador == 'd349)
begin
q<=8'b01101101;
end
else if(contador == 'd350)
begin
q<=8'b01110101;
end
else if(contador == 'd351)
begin
q<=8'b01100101;
end
else if(contador == 'd352)
begin
q<=8'b01110010;
end
else if(contador == 'd353)
begin
q<=8'b01110100;
end
else if(contador == 'd354)
begin
q<=8'b01101111;
end
else if(contador == 'd355)
begin
q<=8'b00100000;
end
else if(contador == 'd356)
begin
q<=8'b01110001;
end
else if(contador == 'd357)
begin
q<=8'b01110101;
end
else if(contador == 'd358)
begin
q<=8'b01100101;
end
else if(contador == 'd359)
begin
q<=8'b00100000;
end
else if(contador == 'd360)
begin
q<=8'b01100101;
end
else if(contador == 'd361)
begin
q<=8'b01110011;
end
else if(contador == 'd362)
begin
q<=8'b01100011;
end
else if(contador == 'd363)
begin
q<=8'b01101100;
end
else if(contador == 'd364)
begin
q<=8'b01100001;
end
else if(contador == 'd365)
begin
q<=8'b01110110;
end
else if(contador == 'd366)
begin
q<=8'b01101111;
end
else if(contador == 'd367)
begin
q<=8'b00100000;
end
else if(contador == 'd368)
begin
q<=8'b01110011;
end
else if(contador == 'd369)
begin
q<=8'b01100101;
end
else if(contador == 'd370)
begin
q<=8'b01110010;
end
else if(contador == 'd371)
begin
q<=8'b11100001;
end
else if(contador == 'd372)
begin
q<=8'b00101110;
end
else if(contador == 'd373)
begin
q<=8'b00001010;
end
else if(contador == 'd374)
begin
q<=8'b00001010;
end
else if(contador == 'd375)
begin
q<=8'b01000100;
end
else if(contador == 'd376)
begin
q<=8'b01100101;
end
else if(contador == 'd377)
begin
q<=8'b00100000;
end
else if(contador == 'd378)
begin
q<=8'b01110100;
end
else if(contador == 'd379)
begin
q<=8'b01110101;
end
else if(contador == 'd380)
begin
q<=8'b01110011;
end
else if(contador == 'd381)
begin
q<=8'b00100000;
end
else if(contador == 'd382)
begin
q<=8'b01110110;
end
else if(contador == 'd383)
begin
q<=8'b01101001;
end
else if(contador == 'd384)
begin
q<=8'b01100101;
end
else if(contador == 'd385)
begin
q<=8'b01101010;
end
else if(contador == 'd386)
begin
q<=8'b01100001;
end
else if(contador == 'd387)
begin
q<=8'b01110011;
end
else if(contador == 'd388)
begin
q<=8'b00100000;
end
else if(contador == 'd389)
begin
q<=8'b01111001;
end
else if(contador == 'd390)
begin
q<=8'b00100000;
end
else if(contador == 'd391)
begin
q<=8'b01100100;
end
else if(contador == 'd392)
begin
q<=8'b01110101;
end
else if(contador == 'd393)
begin
q<=8'b01110010;
end
else if(contador == 'd394)
begin
q<=8'b01100001;
end
else if(contador == 'd395)
begin
q<=8'b01110011;
end
else if(contador == 'd396)
begin
q<=8'b00100000;
end
else if(contador == 'd397)
begin
q<=8'b01100011;
end
else if(contador == 'd398)
begin
q<=8'b01100001;
end
else if(contador == 'd399)
begin
q<=8'b01100100;
end
else if(contador == 'd400)
begin
q<=8'b01100101;
end
else if(contador == 'd401)
begin
q<=8'b01101110;
end
else if(contador == 'd402)
begin
q<=8'b01100001;
end
else if(contador == 'd403)
begin
q<=8'b01110011;
end
else if(contador == 'd404)
begin
q<=8'b00001010;
end
else if(contador == 'd405)
begin
q<=8'b01110100;
end
else if(contador == 'd406)
begin
q<=8'b01110101;
end
else if(contador == 'd407)
begin
q<=8'b00100000;
end
else if(contador == 'd408)
begin
q<=8'b01100110;
end
else if(contador == 'd409)
begin
q<=8'b01101111;
end
else if(contador == 'd410)
begin
q<=8'b01110010;
end
else if(contador == 'd411)
begin
q<=8'b01101010;
end
else if(contador == 'd412)
begin
q<=8'b01100001;
end
else if(contador == 'd413)
begin
q<=8'b01110011;
end
else if(contador == 'd414)
begin
q<=8'b01110100;
end
else if(contador == 'd415)
begin
q<=8'b01100101;
end
else if(contador == 'd416)
begin
q<=8'b00100000;
end
else if(contador == 'd417)
begin
q<=8'b01100011;
end
else if(contador == 'd418)
begin
q<=8'b01101111;
end
else if(contador == 'd419)
begin
q<=8'b01101110;
end
else if(contador == 'd420)
begin
q<=8'b00100000;
end
else if(contador == 'd421)
begin
q<=8'b01101101;
end
else if(contador == 'd422)
begin
q<=8'b01100001;
end
else if(contador == 'd423)
begin
q<=8'b01101110;
end
else if(contador == 'd424)
begin
q<=8'b01101111;
end
else if(contador == 'd425)
begin
q<=8'b00100000;
end
else if(contador == 'd426)
begin
q<=8'b01101001;
end
else if(contador == 'd427)
begin
q<=8'b01110010;
end
else if(contador == 'd428)
begin
q<=8'b01100001;
end
else if(contador == 'd429)
begin
q<=8'b01100011;
end
else if(contador == 'd430)
begin
q<=8'b01110101;
end
else if(contador == 'd431)
begin
q<=8'b01101110;
end
else if(contador == 'd432)
begin
q<=8'b01100100;
end
else if(contador == 'd433)
begin
q<=8'b01100001;
end
else if(contador == 'd434)
begin
q<=8'b00001010;
end
else if(contador == 'd435)
begin
q<=8'b01100101;
end
else if(contador == 'd436)
begin
q<=8'b01101100;
end
else if(contador == 'd437)
begin
q<=8'b00100000;
end
else if(contador == 'd438)
begin
q<=8'b01100001;
end
else if(contador == 'd439)
begin
q<=8'b01110010;
end
else if(contador == 'd440)
begin
q<=8'b01100001;
end
else if(contador == 'd441)
begin
q<=8'b01100100;
end
else if(contador == 'd442)
begin
q<=8'b01101111;
end
else if(contador == 'd443)
begin
q<=8'b00100000;
end
else if(contador == 'd444)
begin
q<=8'b01110001;
end
else if(contador == 'd445)
begin
q<=8'b01110101;
end
else if(contador == 'd446)
begin
q<=8'b01100101;
end
else if(contador == 'd447)
begin
q<=8'b00100000;
end
else if(contador == 'd448)
begin
q<=8'b01100101;
end
else if(contador == 'd449)
begin
q<=8'b01101100;
end
else if(contador == 'd450)
begin
q<=8'b00100000;
end
else if(contador == 'd451)
begin
q<=8'b01110011;
end
else if(contador == 'd452)
begin
q<=8'b01110101;
end
else if(contador == 'd453)
begin
q<=8'b01100101;
end
else if(contador == 'd454)
begin
q<=8'b01101100;
end
else if(contador == 'd455)
begin
q<=8'b01101111;
end
else if(contador == 'd456)
begin
q<=8'b00100000;
end
else if(contador == 'd457)
begin
q<=8'b01100110;
end
else if(contador == 'd458)
begin
q<=8'b01100101;
end
else if(contador == 'd459)
begin
q<=8'b01100011;
end
else if(contador == 'd460)
begin
q<=8'b01110101;
end
else if(contador == 'd461)
begin
q<=8'b01101110;
end
else if(contador == 'd462)
begin
q<=8'b01100100;
end
else if(contador == 'd463)
begin
q<=8'b01100001;
end
else if(contador == 'd464)
begin
q<=8'b00001010;
end
else if(contador == 'd465)
begin
q<=8'b01111001;
end
else if(contador == 'd466)
begin
q<=8'b00100000;
end
else if(contador == 'd467)
begin
q<=8'b01101100;
end
else if(contador == 'd468)
begin
q<=8'b01100001;
end
else if(contador == 'd469)
begin
q<=8'b00100000;
end
else if(contador == 'd470)
begin
q<=8'b01100101;
end
else if(contador == 'd471)
begin
q<=8'b01110011;
end
else if(contador == 'd472)
begin
q<=8'b01110000;
end
else if(contador == 'd473)
begin
q<=8'b01100001;
end
else if(contador == 'd474)
begin
q<=8'b01100100;
end
else if(contador == 'd475)
begin
q<=8'b01100001;
end
else if(contador == 'd476)
begin
q<=8'b00100000;
end
else if(contador == 'd477)
begin
q<=8'b01110001;
end
else if(contador == 'd478)
begin
q<=8'b01110101;
end
else if(contador == 'd479)
begin
q<=8'b01100101;
end
else if(contador == 'd480)
begin
q<=8'b00100000;
end
else if(contador == 'd481)
begin
q<=8'b01110011;
end
else if(contador == 'd482)
begin
q<=8'b01100001;
end
else if(contador == 'd483)
begin
q<=8'b01101100;
end
else if(contador == 'd484)
begin
q<=8'b01110110;
end
else if(contador == 'd485)
begin
q<=8'b01100001;
end
else if(contador == 'd486)
begin
q<=8'b00100000;
end
else if(contador == 'd487)
begin
q<=8'b01100101;
end
else if(contador == 'd488)
begin
q<=8'b01101100;
end
else if(contador == 'd489)
begin
q<=8'b00100000;
end
else if(contador == 'd490)
begin
q<=8'b01101000;
end
else if(contador == 'd491)
begin
q<=8'b01101111;
end
else if(contador == 'd492)
begin
q<=8'b01101110;
end
else if(contador == 'd493)
begin
q<=8'b01101111;
end
else if(contador == 'd494)
begin
q<=8'b01110010;
end
else if(contador == 'd495)
begin
q<=8'b00101110;
end
else if(contador == 'd496)
begin
q<=8'b00001010;
end
else if(contador == 'd497)
begin
q<=8'b00001010;
end
else if(contador == 'd498)
begin
q<=8'b01001110;
end
else if(contador == 'd499)
begin
q<=8'b01110101;
end
else if(contador == 'd500)
begin
q<=8'b01100101;
end
else if(contador == 'd501)
begin
q<=8'b01110011;
end
else if(contador == 'd502)
begin
q<=8'b01110100;
end
else if(contador == 'd503)
begin
q<=8'b01110010;
end
else if(contador == 'd504)
begin
q<=8'b01101111;
end
else if(contador == 'd505)
begin
q<=8'b01110011;
end
else if(contador == 'd506)
begin
q<=8'b00100000;
end
else if(contador == 'd507)
begin
q<=8'b01110000;
end
else if(contador == 'd508)
begin
q<=8'b01100001;
end
else if(contador == 'd509)
begin
q<=8'b01100100;
end
else if(contador == 'd510)
begin
q<=8'b01110010;
end
else if(contador == 'd511)
begin
q<=8'b01100101;
end
else if(contador == 'd512)
begin
q<=8'b01110011;
end
else if(contador == 'd513)
begin
q<=8'b00100000;
end
else if(contador == 'd514)
begin
q<=8'b01101100;
end
else if(contador == 'd515)
begin
q<=8'b01110101;
end
else if(contador == 'd516)
begin
q<=8'b01100011;
end
else if(contador == 'd517)
begin
q<=8'b01101000;
end
else if(contador == 'd518)
begin
q<=8'b01100001;
end
else if(contador == 'd519)
begin
q<=8'b01110010;
end
else if(contador == 'd520)
begin
q<=8'b01101111;
end
else if(contador == 'd521)
begin
q<=8'b01101110;
end
else if(contador == 'd522)
begin
q<=8'b00100000;
end
else if(contador == 'd523)
begin
q<=8'b01110101;
end
else if(contador == 'd524)
begin
q<=8'b01101110;
end
else if(contador == 'd525)
begin
q<=8'b00100000;
end
else if(contador == 'd526)
begin
q<=8'b01100100;
end
else if(contador == 'd527)
begin
q<=8'b11101101;
end
else if(contador == 'd528)
begin
q<=8'b01100001;
end
else if(contador == 'd529)
begin
q<=8'b00001010;
end
else if(contador == 'd530)
begin
q<=8'b01100101;
end
else if(contador == 'd531)
begin
q<=8'b01101110;
end
else if(contador == 'd532)
begin
q<=8'b01100011;
end
else if(contador == 'd533)
begin
q<=8'b01100101;
end
else if(contador == 'd534)
begin
q<=8'b01101110;
end
else if(contador == 'd535)
begin
q<=8'b01100100;
end
else if(contador == 'd536)
begin
q<=8'b01101001;
end
else if(contador == 'd537)
begin
q<=8'b01100100;
end
else if(contador == 'd538)
begin
q<=8'b01101111;
end
else if(contador == 'd539)
begin
q<=8'b01110011;
end
else if(contador == 'd540)
begin
q<=8'b00100000;
end
else if(contador == 'd541)
begin
q<=8'b01100101;
end
else if(contador == 'd542)
begin
q<=8'b01101110;
end
else if(contador == 'd543)
begin
q<=8'b00100000;
end
else if(contador == 'd544)
begin
q<=8'b01110000;
end
else if(contador == 'd545)
begin
q<=8'b01100001;
end
else if(contador == 'd546)
begin
q<=8'b01110100;
end
else if(contador == 'd547)
begin
q<=8'b01110010;
end
else if(contador == 'd548)
begin
q<=8'b01101001;
end
else if(contador == 'd549)
begin
q<=8'b01101111;
end
else if(contador == 'd550)
begin
q<=8'b00100000;
end
else if(contador == 'd551)
begin
q<=8'b01100001;
end
else if(contador == 'd552)
begin
q<=8'b01110010;
end
else if(contador == 'd553)
begin
q<=8'b01100100;
end
else if(contador == 'd554)
begin
q<=8'b01101001;
end
else if(contador == 'd555)
begin
q<=8'b01101101;
end
else if(contador == 'd556)
begin
q<=8'b01101001;
end
else if(contador == 'd557)
begin
q<=8'b01100101;
end
else if(contador == 'd558)
begin
q<=8'b01101110;
end
else if(contador == 'd559)
begin
q<=8'b01110100;
end
else if(contador == 'd560)
begin
q<=8'b01101111;
end
else if(contador == 'd561)
begin
q<=8'b00001010;
end
else if(contador == 'd562)
begin
q<=8'b01111001;
end
else if(contador == 'd563)
begin
q<=8'b00100000;
end
else if(contador == 'd564)
begin
q<=8'b01101100;
end
else if(contador == 'd565)
begin
q<=8'b01101111;
end
else if(contador == 'd566)
begin
q<=8'b01100111;
end
else if(contador == 'd567)
begin
q<=8'b01110010;
end
else if(contador == 'd568)
begin
q<=8'b01100001;
end
else if(contador == 'd569)
begin
q<=8'b01110010;
end
else if(contador == 'd570)
begin
q<=8'b01101111;
end
else if(contador == 'd571)
begin
q<=8'b01101110;
end
else if(contador == 'd572)
begin
q<=8'b00100000;
end
else if(contador == 'd573)
begin
q<=8'b01110011;
end
else if(contador == 'd574)
begin
q<=8'b01101001;
end
else if(contador == 'd575)
begin
q<=8'b01101110;
end
else if(contador == 'd576)
begin
q<=8'b00100000;
end
else if(contador == 'd577)
begin
q<=8'b01100011;
end
else if(contador == 'd578)
begin
q<=8'b01101000;
end
else if(contador == 'd579)
begin
q<=8'b01101111;
end
else if(contador == 'd580)
begin
q<=8'b01110001;
end
else if(contador == 'd581)
begin
q<=8'b01110101;
end
else if(contador == 'd582)
begin
q<=8'b01100101;
end
else if(contador == 'd583)
begin
q<=8'b00100000;
end
else if(contador == 'd584)
begin
q<=8'b01110011;
end
else if(contador == 'd585)
begin
q<=8'b01100001;
end
else if(contador == 'd586)
begin
q<=8'b01101110;
end
else if(contador == 'd587)
begin
q<=8'b01100111;
end
else if(contador == 'd588)
begin
q<=8'b01110010;
end
else if(contador == 'd589)
begin
q<=8'b01101001;
end
else if(contador == 'd590)
begin
q<=8'b01100101;
end
else if(contador == 'd591)
begin
q<=8'b01101110;
end
else if(contador == 'd592)
begin
q<=8'b01110100;
end
else if(contador == 'd593)
begin
q<=8'b01101111;
end
else if(contador == 'd594)
begin
q<=8'b00001010;
end
else if(contador == 'd595)
begin
q<=8'b01100011;
end
else if(contador == 'd596)
begin
q<=8'b01101111;
end
else if(contador == 'd597)
begin
q<=8'b01101100;
end
else if(contador == 'd598)
begin
q<=8'b01101111;
end
else if(contador == 'd599)
begin
q<=8'b01100011;
end
else if(contador == 'd600)
begin
q<=8'b01100001;
end
else if(contador == 'd601)
begin
q<=8'b01110010;
end
else if(contador == 'd602)
begin
q<=8'b01110100;
end
else if(contador == 'd603)
begin
q<=8'b01100101;
end
else if(contador == 'd604)
begin
q<=8'b00100000;
end
else if(contador == 'd605)
begin
q<=8'b01100101;
end
else if(contador == 'd606)
begin
q<=8'b01101110;
end
else if(contador == 'd607)
begin
q<=8'b00100000;
end
else if(contador == 'd608)
begin
q<=8'b01110101;
end
else if(contador == 'd609)
begin
q<=8'b01101110;
end
else if(contador == 'd610)
begin
q<=8'b00100000;
end
else if(contador == 'd611)
begin
q<=8'b01110100;
end
else if(contador == 'd612)
begin
q<=8'b01110010;
end
else if(contador == 'd613)
begin
q<=8'b01101111;
end
else if(contador == 'd614)
begin
q<=8'b01101110;
end
else if(contador == 'd615)
begin
q<=8'b01101111;
end
else if(contador == 'd616)
begin
q<=8'b00100000;
end
else if(contador == 'd617)
begin
q<=8'b01100100;
end
else if(contador == 'd618)
begin
q<=8'b01100101;
end
else if(contador == 'd619)
begin
q<=8'b00100000;
end
else if(contador == 'd620)
begin
q<=8'b01100001;
end
else if(contador == 'd621)
begin
q<=8'b01101101;
end
else if(contador == 'd622)
begin
q<=8'b01101111;
end
else if(contador == 'd623)
begin
q<=8'b01110010;
end
else if(contador == 'd624)
begin
q<=8'b00101110;
end
else if(contador == 'd625)
begin
q<=8'b00001010;
end
else if(contador == 'd626)
begin
q<=8'b00001010;
end
else if(contador == 'd627)
begin
q<=8'b01011001;
end
else if(contador == 'd628)
begin
q<=8'b00100000;
end
else if(contador == 'd629)
begin
q<=8'b01101100;
end
else if(contador == 'd630)
begin
q<=8'b01101111;
end
else if(contador == 'd631)
begin
q<=8'b01100111;
end
else if(contador == 'd632)
begin
q<=8'b01110010;
end
else if(contador == 'd633)
begin
q<=8'b01100001;
end
else if(contador == 'd634)
begin
q<=8'b01110010;
end
else if(contador == 'd635)
begin
q<=8'b01101111;
end
else if(contador == 'd636)
begin
q<=8'b01101110;
end
else if(contador == 'd637)
begin
q<=8'b00100000;
end
else if(contador == 'd638)
begin
q<=8'b01110011;
end
else if(contador == 'd639)
begin
q<=8'b01101001;
end
else if(contador == 'd640)
begin
q<=8'b01101110;
end
else if(contador == 'd641)
begin
q<=8'b00100000;
end
else if(contador == 'd642)
begin
q<=8'b01100011;
end
else if(contador == 'd643)
begin
q<=8'b01101000;
end
else if(contador == 'd644)
begin
q<=8'b01101111;
end
else if(contador == 'd645)
begin
q<=8'b01110001;
end
else if(contador == 'd646)
begin
q<=8'b01110101;
end
else if(contador == 'd647)
begin
q<=8'b01100101;
end
else if(contador == 'd648)
begin
q<=8'b00100000;
end
else if(contador == 'd649)
begin
q<=8'b01110011;
end
else if(contador == 'd650)
begin
q<=8'b01100001;
end
else if(contador == 'd651)
begin
q<=8'b01101110;
end
else if(contador == 'd652)
begin
q<=8'b01100111;
end
else if(contador == 'd653)
begin
q<=8'b01110010;
end
else if(contador == 'd654)
begin
q<=8'b01101001;
end
else if(contador == 'd655)
begin
q<=8'b01100101;
end
else if(contador == 'd656)
begin
q<=8'b01101110;
end
else if(contador == 'd657)
begin
q<=8'b01110100;
end
else if(contador == 'd658)
begin
q<=8'b01101111;
end
else if(contador == 'd659)
begin
q<=8'b00001010;
end
else if(contador == 'd660)
begin
q<=8'b01100011;
end
else if(contador == 'd661)
begin
q<=8'b01101111;
end
else if(contador == 'd662)
begin
q<=8'b01101100;
end
else if(contador == 'd663)
begin
q<=8'b01101111;
end
else if(contador == 'd664)
begin
q<=8'b01100011;
end
else if(contador == 'd665)
begin
q<=8'b01100001;
end
else if(contador == 'd666)
begin
q<=8'b01110010;
end
else if(contador == 'd667)
begin
q<=8'b01110100;
end
else if(contador == 'd668)
begin
q<=8'b01100101;
end
else if(contador == 'd669)
begin
q<=8'b00100000;
end
else if(contador == 'd670)
begin
q<=8'b01100101;
end
else if(contador == 'd671)
begin
q<=8'b01101110;
end
else if(contador == 'd672)
begin
q<=8'b00100000;
end
else if(contador == 'd673)
begin
q<=8'b01110101;
end
else if(contador == 'd674)
begin
q<=8'b01101110;
end
else if(contador == 'd675)
begin
q<=8'b00100000;
end
else if(contador == 'd676)
begin
q<=8'b01110100;
end
else if(contador == 'd677)
begin
q<=8'b01110010;
end
else if(contador == 'd678)
begin
q<=8'b01101111;
end
else if(contador == 'd679)
begin
q<=8'b01101110;
end
else if(contador == 'd680)
begin
q<=8'b01101111;
end
else if(contador == 'd681)
begin
q<=8'b00100000;
end
else if(contador == 'd682)
begin
q<=8'b01100100;
end
else if(contador == 'd683)
begin
q<=8'b01100101;
end
else if(contador == 'd684)
begin
q<=8'b00100000;
end
else if(contador == 'd685)
begin
q<=8'b01100001;
end
else if(contador == 'd686)
begin
q<=8'b01101101;
end
else if(contador == 'd687)
begin
q<=8'b01101111;
end
else if(contador == 'd688)
begin
q<=8'b01110010;
end
else if(contador == 'd689)
begin
q<=8'b00101100;
end
else if(contador == 'd690)
begin
q<=8'b00001010;
end
else if(contador == 'd691)
begin
q<=8'b01110001;
end
else if(contador == 'd692)
begin
q<=8'b01110101;
end
else if(contador == 'd693)
begin
q<=8'b01100101;
end
else if(contador == 'd694)
begin
q<=8'b00100000;
end
else if(contador == 'd695)
begin
q<=8'b01100100;
end
else if(contador == 'd696)
begin
q<=8'b11101001;
end
else if(contador == 'd697)
begin
q<=8'b00100000;
end
else if(contador == 'd698)
begin
q<=8'b01110000;
end
else if(contador == 'd699)
begin
q<=8'b01100001;
end
else if(contador == 'd700)
begin
q<=8'b01110100;
end
else if(contador == 'd701)
begin
q<=8'b01110010;
end
else if(contador == 'd702)
begin
q<=8'b01101001;
end
else if(contador == 'd703)
begin
q<=8'b01100001;
end
else if(contador == 'd704)
begin
q<=8'b00100000;
end
else if(contador == 'd705)
begin
q<=8'b01100101;
end
else if(contador == 'd706)
begin
q<=8'b01101110;
end
else if(contador == 'd707)
begin
q<=8'b00100000;
end
else if(contador == 'd708)
begin
q<=8'b01100101;
end
else if(contador == 'd709)
begin
q<=8'b01101110;
end
else if(contador == 'd710)
begin
q<=8'b11101001;
end
else if(contador == 'd711)
begin
q<=8'b01110010;
end
else if(contador == 'd712)
begin
q<=8'b01100111;
end
else if(contador == 'd713)
begin
q<=8'b01101001;
end
else if(contador == 'd714)
begin
q<=8'b01100011;
end
else if(contador == 'd715)
begin
q<=8'b01101111;
end
else if(contador == 'd716)
begin
q<=8'b00100000;
end
else if(contador == 'd717)
begin
q<=8'b01100001;
end
else if(contador == 'd718)
begin
q<=8'b01100011;
end
else if(contador == 'd719)
begin
q<=8'b01100101;
end
else if(contador == 'd720)
begin
q<=8'b01101110;
end
else if(contador == 'd721)
begin
q<=8'b01110100;
end
else if(contador == 'd722)
begin
q<=8'b01101111;
end
else if(contador == 'd723)
begin
q<=8'b00101100;
end
else if(contador == 'd724)
begin
q<=8'b00001010;
end
else if(contador == 'd725)
begin
q<=8'b01100100;
end
else if(contador == 'd726)
begin
q<=8'b01101001;
end
else if(contador == 'd727)
begin
q<=8'b01100101;
end
else if(contador == 'd728)
begin
q<=8'b01110010;
end
else if(contador == 'd729)
begin
q<=8'b01101111;
end
else if(contador == 'd730)
begin
q<=8'b01101110;
end
else if(contador == 'd731)
begin
q<=8'b00100000;
end
else if(contador == 'd732)
begin
q<=8'b01110110;
end
else if(contador == 'd733)
begin
q<=8'b01101001;
end
else if(contador == 'd734)
begin
q<=8'b01100100;
end
else if(contador == 'd735)
begin
q<=8'b01100001;
end
else if(contador == 'd736)
begin
q<=8'b00100000;
end
else if(contador == 'd737)
begin
q<=8'b01100001;
end
else if(contador == 'd738)
begin
q<=8'b01101100;
end
else if(contador == 'd739)
begin
q<=8'b00100000;
end
else if(contador == 'd740)
begin
q<=8'b01101001;
end
else if(contador == 'd741)
begin
q<=8'b01100100;
end
else if(contador == 'd742)
begin
q<=8'b01100101;
end
else if(contador == 'd743)
begin
q<=8'b01100001;
end
else if(contador == 'd744)
begin
q<=8'b01101100;
end
else if(contador == 'd745)
begin
q<=8'b00100000;
end
else if(contador == 'd746)
begin
q<=8'b01110010;
end
else if(contador == 'd747)
begin
q<=8'b01100101;
end
else if(contador == 'd748)
begin
q<=8'b01100100;
end
else if(contador == 'd749)
begin
q<=8'b01100101;
end
else if(contador == 'd750)
begin
q<=8'b01101110;
end
else if(contador == 'd751)
begin
q<=8'b01110100;
end
else if(contador == 'd752)
begin
q<=8'b01101111;
end
else if(contador == 'd753)
begin
q<=8'b01110010;
end
else if(contador == 'd754)
begin
q<=8'b00101110;
end
else if(contador == 'd755)
begin
q<=8'b00001010;
end
else if(contador == 'd756)
begin
q<=8'b00001010;
end
else if(contador == 'd757)
begin
q<=8'b01000101;
end
else if(contador == 'd758)
begin
q<=8'b01110011;
end
else if(contador == 'd759)
begin
q<=8'b00100000;
end
else if(contador == 'd760)
begin
q<=8'b01110100;
end
else if(contador == 'd761)
begin
q<=8'b01110101;
end
else if(contador == 'd762)
begin
q<=8'b00100000;
end
else if(contador == 'd763)
begin
q<=8'b01100101;
end
else if(contador == 'd764)
begin
q<=8'b01101110;
end
else if(contador == 'd765)
begin
q<=8'b01110011;
end
else if(contador == 'd766)
begin
q<=8'b01100101;
end
else if(contador == 'd767)
begin
q<=8'b11110001;
end
else if(contador == 'd768)
begin
q<=8'b01100001;
end
else if(contador == 'd769)
begin
q<=8'b00100000;
end
else if(contador == 'd770)
begin
q<=8'b01110000;
end
else if(contador == 'd771)
begin
q<=8'b01100101;
end
else if(contador == 'd772)
begin
q<=8'b01100100;
end
else if(contador == 'd773)
begin
q<=8'b01100001;
end
else if(contador == 'd774)
begin
q<=8'b01111010;
end
else if(contador == 'd775)
begin
q<=8'b01101111;
end
else if(contador == 'd776)
begin
q<=8'b00100000;
end
else if(contador == 'd777)
begin
q<=8'b01100100;
end
else if(contador == 'd778)
begin
q<=8'b01100101;
end
else if(contador == 'd779)
begin
q<=8'b00100000;
end
else if(contador == 'd780)
begin
q<=8'b01100011;
end
else if(contador == 'd781)
begin
q<=8'b01101001;
end
else if(contador == 'd782)
begin
q<=8'b01100101;
end
else if(contador == 'd783)
begin
q<=8'b01101100;
end
else if(contador == 'd784)
begin
q<=8'b01101111;
end
else if(contador == 'd785)
begin
q<=8'b00001010;
end
else if(contador == 'd786)
begin
q<=8'b01100101;
end
else if(contador == 'd787)
begin
q<=8'b01101110;
end
else if(contador == 'd788)
begin
q<=8'b00100000;
end
else if(contador == 'd789)
begin
q<=8'b01110001;
end
else if(contador == 'd790)
begin
q<=8'b01110101;
end
else if(contador == 'd791)
begin
q<=8'b01100101;
end
else if(contador == 'd792)
begin
q<=8'b00100000;
end
else if(contador == 'd793)
begin
q<=8'b01110000;
end
else if(contador == 'd794)
begin
q<=8'b01110010;
end
else if(contador == 'd795)
begin
q<=8'b01100101;
end
else if(contador == 'd796)
begin
q<=8'b01101110;
end
else if(contador == 'd797)
begin
q<=8'b01100100;
end
else if(contador == 'd798)
begin
q<=8'b01100101;
end
else if(contador == 'd799)
begin
q<=8'b00100000;
end
else if(contador == 'd800)
begin
q<=8'b01110101;
end
else if(contador == 'd801)
begin
q<=8'b01101110;
end
else if(contador == 'd802)
begin
q<=8'b01100001;
end
else if(contador == 'd803)
begin
q<=8'b00100000;
end
else if(contador == 'd804)
begin
q<=8'b01101110;
end
else if(contador == 'd805)
begin
q<=8'b01110101;
end
else if(contador == 'd806)
begin
q<=8'b01100010;
end
else if(contador == 'd807)
begin
q<=8'b01100101;
end
else if(contador == 'd808)
begin
q<=8'b00100000;
end
else if(contador == 'd809)
begin
q<=8'b01110011;
end
else if(contador == 'd810)
begin
q<=8'b01110101;
end
else if(contador == 'd811)
begin
q<=8'b00100000;
end
else if(contador == 'd812)
begin
q<=8'b01100001;
end
else if(contador == 'd813)
begin
q<=8'b01101100;
end
else if(contador == 'd814)
begin
q<=8'b01100010;
end
else if(contador == 'd815)
begin
q<=8'b01110101;
end
else if(contador == 'd816)
begin
q<=8'b01110010;
end
else if(contador == 'd817)
begin
q<=8'b01100001;
end
else if(contador == 'd818)
begin
q<=8'b00101100;
end
else if(contador == 'd819)
begin
q<=8'b00001010;
end
else if(contador == 'd820)
begin
q<=8'b01111001;
end
else if(contador == 'd821)
begin
q<=8'b00100000;
end
else if(contador == 'd822)
begin
q<=8'b10100001;
end
else if(contador == 'd823)
begin
q<=8'b01100001;
end
else if(contador == 'd824)
begin
q<=8'b01111001;
end
else if(contador == 'd825)
begin
q<=8'b00100000;
end
else if(contador == 'd826)
begin
q<=8'b01100100;
end
else if(contador == 'd827)
begin
q<=8'b01100101;
end
else if(contador == 'd828)
begin
q<=8'b00100000;
end
else if(contador == 'd829)
begin
q<=8'b01100001;
end
else if(contador == 'd830)
begin
q<=8'b01110001;
end
else if(contador == 'd831)
begin
q<=8'b01110101;
end
else if(contador == 'd832)
begin
q<=8'b01100101;
end
else if(contador == 'd833)
begin
q<=8'b01101100;
end
else if(contador == 'd834)
begin
q<=8'b00100000;
end
else if(contador == 'd835)
begin
q<=8'b01110001;
end
else if(contador == 'd836)
begin
q<=8'b01110101;
end
else if(contador == 'd837)
begin
q<=8'b01100101;
end
else if(contador == 'd838)
begin
q<=8'b00101100;
end
else if(contador == 'd839)
begin
q<=8'b00100000;
end
else if(contador == 'd840)
begin
q<=8'b01100011;
end
else if(contador == 'd841)
begin
q<=8'b01101111;
end
else if(contador == 'd842)
begin
q<=8'b01101110;
end
else if(contador == 'd843)
begin
q<=8'b00100000;
end
else if(contador == 'd844)
begin
q<=8'b01100011;
end
else if(contador == 'd845)
begin
q<=8'b01101001;
end
else if(contador == 'd846)
begin
q<=8'b01100101;
end
else if(contador == 'd847)
begin
q<=8'b01100111;
end
else if(contador == 'd848)
begin
q<=8'b01100001;
end
else if(contador == 'd849)
begin
q<=8'b00100000;
end
else if(contador == 'd850)
begin
q<=8'b01101100;
end
else if(contador == 'd851)
begin
q<=8'b01101111;
end
else if(contador == 'd852)
begin
q<=8'b01100011;
end
else if(contador == 'd853)
begin
q<=8'b01110101;
end
else if(contador == 'd854)
begin
q<=8'b01110010;
end
else if(contador == 'd855)
begin
q<=8'b01100001;
end
else if(contador == 'd856)
begin
q<=8'b00101100;
end
else if(contador == 'd857)
begin
q<=8'b00001010;
end
else if(contador == 'd858)
begin
q<=8'b01110011;
end
else if(contador == 'd859)
begin
q<=8'b01110101;
end
else if(contador == 'd860)
begin
q<=8'b01110011;
end
else if(contador == 'd861)
begin
q<=8'b00100000;
end
else if(contador == 'd862)
begin
q<=8'b01100011;
end
else if(contador == 'd863)
begin
q<=8'b01101111;
end
else if(contador == 'd864)
begin
q<=8'b01101100;
end
else if(contador == 'd865)
begin
q<=8'b01101111;
end
else if(contador == 'd866)
begin
q<=8'b01110010;
end
else if(contador == 'd867)
begin
q<=8'b01100101;
end
else if(contador == 'd868)
begin
q<=8'b01110011;
end
else if(contador == 'd869)
begin
q<=8'b00100000;
end
else if(contador == 'd870)
begin
q<=8'b01110000;
end
else if(contador == 'd871)
begin
q<=8'b01110010;
end
else if(contador == 'd872)
begin
q<=8'b01100101;
end
else if(contador == 'd873)
begin
q<=8'b01110100;
end
else if(contador == 'd874)
begin
q<=8'b01100101;
end
else if(contador == 'd875)
begin
q<=8'b01101110;
end
else if(contador == 'd876)
begin
q<=8'b01100100;
end
else if(contador == 'd877)
begin
q<=8'b01100001;
end
else if(contador == 'd878)
begin
q<=8'b00100000;
end
else if(contador == 'd879)
begin
q<=8'b01101101;
end
else if(contador == 'd880)
begin
q<=8'b01100001;
end
else if(contador == 'd881)
begin
q<=8'b01101110;
end
else if(contador == 'd882)
begin
q<=8'b01100011;
end
else if(contador == 'd883)
begin
q<=8'b01101000;
end
else if(contador == 'd884)
begin
q<=8'b01100001;
end
else if(contador == 'd885)
begin
q<=8'b01110010;
end
else if(contador == 'd886)
begin
q<=8'b00100001;
end
else if(contador == 'd887)
begin
q<=8'b00001010;
end
else if(contador == 'd888)
begin
q<=8'b00001010;
end
else if(contador == 'd889)
begin
q<=8'b01010000;
end
else if(contador == 'd890)
begin
q<=8'b01110101;
end
else if(contador == 'd891)
begin
q<=8'b01100101;
end
else if(contador == 'd892)
begin
q<=8'b01110011;
end
else if(contador == 'd893)
begin
q<=8'b00100000;
end
else if(contador == 'd894)
begin
q<=8'b01110011;
end
else if(contador == 'd895)
begin
q<=8'b01110101;
end
else if(contador == 'd896)
begin
q<=8'b01110011;
end
else if(contador == 'd897)
begin
q<=8'b00100000;
end
else if(contador == 'd898)
begin
q<=8'b01101000;
end
else if(contador == 'd899)
begin
q<=8'b01101001;
end
else if(contador == 'd900)
begin
q<=8'b01101010;
end
else if(contador == 'd901)
begin
q<=8'b01101111;
end
else if(contador == 'd902)
begin
q<=8'b01110011;
end
else if(contador == 'd903)
begin
q<=8'b00100000;
end
else if(contador == 'd904)
begin
q<=8'b01110110;
end
else if(contador == 'd905)
begin
q<=8'b01100001;
end
else if(contador == 'd906)
begin
q<=8'b01101100;
end
else if(contador == 'd907)
begin
q<=8'b01101001;
end
else if(contador == 'd908)
begin
q<=8'b01100101;
end
else if(contador == 'd909)
begin
q<=8'b01101110;
end
else if(contador == 'd910)
begin
q<=8'b01110100;
end
else if(contador == 'd911)
begin
q<=8'b01100101;
end
else if(contador == 'd912)
begin
q<=8'b01110011;
end
else if(contador == 'd913)
begin
q<=8'b00100000;
end
else if(contador == 'd914)
begin
q<=8'b01111001;
end
else if(contador == 'd915)
begin
q<=8'b00100000;
end
else if(contador == 'd916)
begin
q<=8'b01100001;
end
else if(contador == 'd917)
begin
q<=8'b01101100;
end
else if(contador == 'd918)
begin
q<=8'b01110100;
end
else if(contador == 'd919)
begin
q<=8'b01101001;
end
else if(contador == 'd920)
begin
q<=8'b01110110;
end
else if(contador == 'd921)
begin
q<=8'b01101111;
end
else if(contador == 'd922)
begin
q<=8'b01110011;
end
else if(contador == 'd923)
begin
q<=8'b00101100;
end
else if(contador == 'd924)
begin
q<=8'b00001010;
end
else if(contador == 'd925)
begin
q<=8'b01110001;
end
else if(contador == 'd926)
begin
q<=8'b01110101;
end
else if(contador == 'd927)
begin
q<=8'b01100101;
end
else if(contador == 'd928)
begin
q<=8'b00100000;
end
else if(contador == 'd929)
begin
q<=8'b01110110;
end
else if(contador == 'd930)
begin
q<=8'b01100101;
end
else if(contador == 'd931)
begin
q<=8'b01101110;
end
else if(contador == 'd932)
begin
q<=8'b01100101;
end
else if(contador == 'd933)
begin
q<=8'b01110010;
end
else if(contador == 'd934)
begin
q<=8'b01100001;
end
else if(contador == 'd935)
begin
q<=8'b01101110;
end
else if(contador == 'd936)
begin
q<=8'b00100000;
end
else if(contador == 'd937)
begin
q<=8'b01101100;
end
else if(contador == 'd938)
begin
q<=8'b01100001;
end
else if(contador == 'd939)
begin
q<=8'b00100000;
end
else if(contador == 'd940)
begin
q<=8'b01010000;
end
else if(contador == 'd941)
begin
q<=8'b01100001;
end
else if(contador == 'd942)
begin
q<=8'b01111010;
end
else if(contador == 'd943)
begin
q<=8'b00100000;
end
else if(contador == 'd944)
begin
q<=8'b01100011;
end
else if(contador == 'd945)
begin
q<=8'b01110101;
end
else if(contador == 'd946)
begin
q<=8'b01100001;
end
else if(contador == 'd947)
begin
q<=8'b01101100;
end
else if(contador == 'd948)
begin
q<=8'b00100000;
end
else if(contador == 'd949)
begin
q<=8'b01110000;
end
else if(contador == 'd950)
begin
q<=8'b01110010;
end
else if(contador == 'd951)
begin
q<=8'b01100101;
end
else if(contador == 'd952)
begin
q<=8'b01110011;
end
else if(contador == 'd953)
begin
q<=8'b01100101;
end
else if(contador == 'd954)
begin
q<=8'b01100001;
end
else if(contador == 'd955)
begin
q<=8'b00101100;
end
else if(contador == 'd956)
begin
q<=8'b00001010;
end
else if(contador == 'd957)
begin
q<=8'b01101110;
end
else if(contador == 'd958)
begin
q<=8'b01110101;
end
else if(contador == 'd959)
begin
q<=8'b01101110;
end
else if(contador == 'd960)
begin
q<=8'b01100011;
end
else if(contador == 'd961)
begin
q<=8'b01100001;
end
else if(contador == 'd962)
begin
q<=8'b00100000;
end
else if(contador == 'd963)
begin
q<=8'b01100101;
end
else if(contador == 'd964)
begin
q<=8'b01110011;
end
else if(contador == 'd965)
begin
q<=8'b01110001;
end
else if(contador == 'd966)
begin
q<=8'b01110101;
end
else if(contador == 'd967)
begin
q<=8'b01101001;
end
else if(contador == 'd968)
begin
q<=8'b01110110;
end
else if(contador == 'd969)
begin
q<=8'b01100001;
end
else if(contador == 'd970)
begin
q<=8'b01101110;
end
else if(contador == 'd971)
begin
q<=8'b00100000;
end
else if(contador == 'd972)
begin
q<=8'b01101100;
end
else if(contador == 'd973)
begin
q<=8'b01100001;
end
else if(contador == 'd974)
begin
q<=8'b00100000;
end
else if(contador == 'd975)
begin
q<=8'b01110010;
end
else if(contador == 'd976)
begin
q<=8'b01110101;
end
else if(contador == 'd977)
begin
q<=8'b01100100;
end
else if(contador == 'd978)
begin
q<=8'b01100001;
end
else if(contador == 'd979)
begin
q<=8'b00100000;
end
else if(contador == 'd980)
begin
q<=8'b01110000;
end
else if(contador == 'd981)
begin
q<=8'b01100101;
end
else if(contador == 'd982)
begin
q<=8'b01101100;
end
else if(contador == 'd983)
begin
q<=8'b01100101;
end
else if(contador == 'd984)
begin
q<=8'b01100001;
end
else if(contador == 'd985)
begin
q<=8'b00001010;
end
else if(contador == 'd986)
begin
q<=8'b01110011;
end
else if(contador == 'd987)
begin
q<=8'b01101001;
end
else if(contador == 'd988)
begin
q<=8'b00100000;
end
else if(contador == 'd989)
begin
q<=8'b01100100;
end
else if(contador == 'd990)
begin
q<=8'b01100101;
end
else if(contador == 'd991)
begin
q<=8'b01100110;
end
else if(contador == 'd992)
begin
q<=8'b01101001;
end
else if(contador == 'd993)
begin
q<=8'b01100101;
end
else if(contador == 'd994)
begin
q<=8'b01101110;
end
else if(contador == 'd995)
begin
q<=8'b01100100;
end
else if(contador == 'd996)
begin
q<=8'b01100101;
end
else if(contador == 'd997)
begin
q<=8'b01101110;
end
else if(contador == 'd998)
begin
q<=8'b00100000;
end
else if(contador == 'd999)
begin
q<=8'b01110011;
end
else if(contador == 'd1000)
begin
q<=8'b01110101;
end
else if(contador == 'd1001)
begin
q<=8'b00100000;
end
else if(contador == 'd1002)
begin
q<=8'b01110100;
end
else if(contador == 'd1003)
begin
q<=8'b01101001;
end
else if(contador == 'd1004)
begin
q<=8'b01100101;
end
else if(contador == 'd1005)
begin
q<=8'b01110010;
end
else if(contador == 'd1006)
begin
q<=8'b01110010;
end
else if(contador == 'd1007)
begin
q<=8'b01100001;
end
else if(contador == 'd1008)
begin
q<=8'b00100000;
end
else if(contador == 'd1009)
begin
q<=8'b01111001;
end
else if(contador == 'd1010)
begin
q<=8'b00100000;
end
else if(contador == 'd1011)
begin
q<=8'b01110011;
end
else if(contador == 'd1012)
begin
q<=8'b01110101;
end
else if(contador == 'd1013)
begin
q<=8'b00100000;
end
else if(contador == 'd1014)
begin
q<=8'b01101000;
end
else if(contador == 'd1015)
begin
q<=8'b01101111;
end
else if(contador == 'd1016)
begin
q<=8'b01100111;
end
else if(contador == 'd1017)
begin
q<=8'b01100001;
end
else if(contador == 'd1018)
begin
q<=8'b01110010;
end
else if(contador == 'd1019)
begin
q<=8'b00101110;
end
else if(contador == 'd1020)
begin
q<=8'b00001010;
end
else if(contador == 'd1021)
begin
q<=8'b00001010;
end
else if(contador == 'd1022)
begin
q<=8'b01001110;
end
else if(contador == 'd1023)
begin
q<=8'b01110101;
end
else if(contador == 'd1024)
begin
q<=8'b01101110;
end
else if(contador == 'd1025)
begin
q<=8'b01100011;
end
else if(contador == 'd1026)
begin
q<=8'b01100001;
end
else if(contador == 'd1027)
begin
q<=8'b00100000;
end
else if(contador == 'd1028)
begin
q<=8'b01100101;
end
else if(contador == 'd1029)
begin
q<=8'b01110011;
end
else if(contador == 'd1030)
begin
q<=8'b01110001;
end
else if(contador == 'd1031)
begin
q<=8'b01110101;
end
else if(contador == 'd1032)
begin
q<=8'b01101001;
end
else if(contador == 'd1033)
begin
q<=8'b01110110;
end
else if(contador == 'd1034)
begin
q<=8'b01100001;
end
else if(contador == 'd1035)
begin
q<=8'b01101110;
end
else if(contador == 'd1036)
begin
q<=8'b00100000;
end
else if(contador == 'd1037)
begin
q<=8'b01101100;
end
else if(contador == 'd1038)
begin
q<=8'b01100001;
end
else if(contador == 'd1039)
begin
q<=8'b00100000;
end
else if(contador == 'd1040)
begin
q<=8'b01110010;
end
else if(contador == 'd1041)
begin
q<=8'b01110101;
end
else if(contador == 'd1042)
begin
q<=8'b01100100;
end
else if(contador == 'd1043)
begin
q<=8'b01100001;
end
else if(contador == 'd1044)
begin
q<=8'b00100000;
end
else if(contador == 'd1045)
begin
q<=8'b01110000;
end
else if(contador == 'd1046)
begin
q<=8'b01100101;
end
else if(contador == 'd1047)
begin
q<=8'b01101100;
end
else if(contador == 'd1048)
begin
q<=8'b01100101;
end
else if(contador == 'd1049)
begin
q<=8'b01100001;
end
else if(contador == 'd1050)
begin
q<=8'b00001010;
end
else if(contador == 'd1051)
begin
q<=8'b01110011;
end
else if(contador == 'd1052)
begin
q<=8'b01101001;
end
else if(contador == 'd1053)
begin
q<=8'b00100000;
end
else if(contador == 'd1054)
begin
q<=8'b01100100;
end
else if(contador == 'd1055)
begin
q<=8'b01100101;
end
else if(contador == 'd1056)
begin
q<=8'b01100110;
end
else if(contador == 'd1057)
begin
q<=8'b01101001;
end
else if(contador == 'd1058)
begin
q<=8'b01100101;
end
else if(contador == 'd1059)
begin
q<=8'b01101110;
end
else if(contador == 'd1060)
begin
q<=8'b01100100;
end
else if(contador == 'd1061)
begin
q<=8'b01100101;
end
else if(contador == 'd1062)
begin
q<=8'b01101110;
end
else if(contador == 'd1063)
begin
q<=8'b00100000;
end
else if(contador == 'd1064)
begin
q<=8'b01110011;
end
else if(contador == 'd1065)
begin
q<=8'b01110101;
end
else if(contador == 'd1066)
begin
q<=8'b00100000;
end
else if(contador == 'd1067)
begin
q<=8'b01110100;
end
else if(contador == 'd1068)
begin
q<=8'b01101001;
end
else if(contador == 'd1069)
begin
q<=8'b01100101;
end
else if(contador == 'd1070)
begin
q<=8'b01110010;
end
else if(contador == 'd1071)
begin
q<=8'b01110010;
end
else if(contador == 'd1072)
begin
q<=8'b01100001;
end
else if(contador == 'd1073)
begin
q<=8'b00100000;
end
else if(contador == 'd1074)
begin
q<=8'b01111001;
end
else if(contador == 'd1075)
begin
q<=8'b00100000;
end
else if(contador == 'd1076)
begin
q<=8'b01110011;
end
else if(contador == 'd1077)
begin
q<=8'b01110101;
end
else if(contador == 'd1078)
begin
q<=8'b00100000;
end
else if(contador == 'd1079)
begin
q<=8'b01101000;
end
else if(contador == 'd1080)
begin
q<=8'b01101111;
end
else if(contador == 'd1081)
begin
q<=8'b01100111;
end
else if(contador == 'd1082)
begin
q<=8'b01100001;
end
else if(contador == 'd1083)
begin
q<=8'b01110010;
end
else if(contador == 'd1084)
begin
q<=8'b00101100;
end
else if(contador == 'd1085)
begin
q<=8'b00001010;
end
else if(contador == 'd1086)
begin
q<=8'b01110001;
end
else if(contador == 'd1087)
begin
q<=8'b01110101;
end
else if(contador == 'd1088)
begin
q<=8'b01100101;
end
else if(contador == 'd1089)
begin
q<=8'b00100000;
end
else if(contador == 'd1090)
begin
q<=8'b01100101;
end
else if(contador == 'd1091)
begin
q<=8'b01110011;
end
else if(contador == 'd1092)
begin
q<=8'b00100000;
end
else if(contador == 'd1093)
begin
q<=8'b01110100;
end
else if(contador == 'd1094)
begin
q<=8'b01100001;
end
else if(contador == 'd1095)
begin
q<=8'b01101110;
end
else if(contador == 'd1096)
begin
q<=8'b00100000;
end
else if(contador == 'd1097)
begin
q<=8'b01110011;
end
else if(contador == 'd1098)
begin
q<=8'b11110011;
end
else if(contador == 'd1099)
begin
q<=8'b01101100;
end
else if(contador == 'd1100)
begin
q<=8'b01101111;
end
else if(contador == 'd1101)
begin
q<=8'b00100000;
end
else if(contador == 'd1102)
begin
q<=8'b01100101;
end
else if(contador == 'd1103)
begin
q<=8'b01101100;
end
else if(contador == 'd1104)
begin
q<=8'b00100000;
end
else if(contador == 'd1105)
begin
q<=8'b01101000;
end
else if(contador == 'd1106)
begin
q<=8'b01101111;
end
else if(contador == 'd1107)
begin
q<=8'b01101110;
end
else if(contador == 'd1108)
begin
q<=8'b01101111;
end
else if(contador == 'd1109)
begin
q<=8'b01110010;
end
else if(contador == 'd1110)
begin
q<=8'b00100000;
end
else if(contador == 'd1111)
begin
q<=8'b01110011;
end
else if(contador == 'd1112)
begin
q<=8'b01110101;
end
else if(contador == 'd1113)
begin
q<=8'b00100000;
end
else if(contador == 'd1114)
begin
q<=8'b01100001;
end
else if(contador == 'd1115)
begin
q<=8'b01101100;
end
else if(contador == 'd1116)
begin
q<=8'b01101101;
end
else if(contador == 'd1117)
begin
q<=8'b01100001;
end
else if(contador == 'd1118)
begin
q<=8'b00100000;
end
else if(contador == 'd1119)
begin
q<=8'b01101001;
end
else if(contador == 'd1120)
begin
q<=8'b01100100;
end
else if(contador == 'd1121)
begin
q<=8'b01100101;
end
else if(contador == 'd1122)
begin
q<=8'b01100001;
end
else if(contador == 'd1123)
begin
q<=8'b00001010;
end
else if(contador == 'd1124)
begin
q<=8'b01111001;
end
else if(contador == 'd1125)
begin
q<=8'b00100000;
end
else if(contador == 'd1126)
begin
q<=8'b01100101;
end
else if(contador == 'd1127)
begin
q<=8'b01101100;
end
else if(contador == 'd1128)
begin
q<=8'b00100000;
end
else if(contador == 'd1129)
begin
q<=8'b01100001;
end
else if(contador == 'd1130)
begin
q<=8'b01101100;
end
else if(contador == 'd1131)
begin
q<=8'b01110100;
end
else if(contador == 'd1132)
begin
q<=8'b01100001;
end
else if(contador == 'd1133)
begin
q<=8'b01110010;
end
else if(contador == 'd1134)
begin
q<=8'b00100000;
end
else if(contador == 'd1135)
begin
q<=8'b01100100;
end
else if(contador == 'd1136)
begin
q<=8'b01100101;
end
else if(contador == 'd1137)
begin
q<=8'b00100000;
end
else if(contador == 'd1138)
begin
q<=8'b01101100;
end
else if(contador == 'd1139)
begin
q<=8'b01100001;
end
else if(contador == 'd1140)
begin
q<=8'b00100000;
end
else if(contador == 'd1141)
begin
q<=8'b01110000;
end
else if(contador == 'd1142)
begin
q<=8'b01100001;
end
else if(contador == 'd1143)
begin
q<=8'b01110100;
end
else if(contador == 'd1144)
begin
q<=8'b01110010;
end
else if(contador == 'd1145)
begin
q<=8'b01101001;
end
else if(contador == 'd1146)
begin
q<=8'b01100001;
end
else if(contador == 'd1147)
begin
q<=8'b00100000;
end
else if(contador == 'd1148)
begin
q<=8'b01110011;
end
else if(contador == 'd1149)
begin
q<=8'b01110101;
end
else if(contador == 'd1150)
begin
q<=8'b00100000;
end
else if(contador == 'd1151)
begin
q<=8'b01100001;
end
else if(contador == 'd1152)
begin
q<=8'b01101100;
end
else if(contador == 'd1153)
begin
q<=8'b01110100;
end
else if(contador == 'd1154)
begin
q<=8'b01100001;
end
else if(contador == 'd1155)
begin
q<=8'b01110010;
end
else if(contador == 'd1156)
begin
q<=8'b00101110;
end
else if(contador == 'd1157)
begin
q<=8'b00001010;
end
else if(contador == 'd1158)
begin
q<=8'b00001010;
end
else if(contador == 'd1159)
begin
q<=8'b01010010;
end
else if(contador == 'd1160)
begin
q<=8'b01100101;
end
else if(contador == 'd1161)
begin
q<=8'b01100011;
end
else if(contador == 'd1162)
begin
q<=8'b01101111;
end
else if(contador == 'd1163)
begin
q<=8'b01110011;
end
else if(contador == 'd1164)
begin
q<=8'b01110100;
end
else if(contador == 'd1165)
begin
q<=8'b01100001;
end
else if(contador == 'd1166)
begin
q<=8'b01100100;
end
else if(contador == 'd1167)
begin
q<=8'b01100001;
end
else if(contador == 'd1168)
begin
q<=8'b00100000;
end
else if(contador == 'd1169)
begin
q<=8'b01100101;
end
else if(contador == 'd1170)
begin
q<=8'b01101110;
end
else if(contador == 'd1171)
begin
q<=8'b00100000;
end
else if(contador == 'd1172)
begin
q<=8'b01100101;
end
else if(contador == 'd1173)
begin
q<=8'b01101100;
end
else if(contador == 'd1174)
begin
q<=8'b00100000;
end
else if(contador == 'd1175)
begin
q<=8'b01100001;
end
else if(contador == 'd1176)
begin
q<=8'b01101110;
end
else if(contador == 'd1177)
begin
q<=8'b01100100;
end
else if(contador == 'd1178)
begin
q<=8'b01100101;
end
else if(contador == 'd1179)
begin
q<=8'b00100000;
end
else if(contador == 'd1180)
begin
q<=8'b01110011;
end
else if(contador == 'd1181)
begin
q<=8'b01101111;
end
else if(contador == 'd1182)
begin
q<=8'b01100010;
end
else if(contador == 'd1183)
begin
q<=8'b01100101;
end
else if(contador == 'd1184)
begin
q<=8'b01110010;
end
else if(contador == 'd1185)
begin
q<=8'b01100010;
end
else if(contador == 'd1186)
begin
q<=8'b01101001;
end
else if(contador == 'd1187)
begin
q<=8'b01101111;
end
else if(contador == 'd1188)
begin
q<=8'b00001010;
end
else if(contador == 'd1189)
begin
q<=8'b01100100;
end
else if(contador == 'd1190)
begin
q<=8'b01100101;
end
else if(contador == 'd1191)
begin
q<=8'b00100000;
end
else if(contador == 'd1192)
begin
q<=8'b01100100;
end
else if(contador == 'd1193)
begin
q<=8'b01101111;
end
else if(contador == 'd1194)
begin
q<=8'b01110011;
end
else if(contador == 'd1195)
begin
q<=8'b00100000;
end
else if(contador == 'd1196)
begin
q<=8'b01101101;
end
else if(contador == 'd1197)
begin
q<=8'b01100001;
end
else if(contador == 'd1198)
begin
q<=8'b01110010;
end
else if(contador == 'd1199)
begin
q<=8'b01100101;
end
else if(contador == 'd1200)
begin
q<=8'b01110011;
end
else if(contador == 'd1201)
begin
q<=8'b00100000;
end
else if(contador == 'd1202)
begin
q<=8'b01100001;
end
else if(contador == 'd1203)
begin
q<=8'b01101100;
end
else if(contador == 'd1204)
begin
q<=8'b00100000;
end
else if(contador == 'd1205)
begin
q<=8'b01110010;
end
else if(contador == 'd1206)
begin
q<=8'b01110101;
end
else if(contador == 'd1207)
begin
q<=8'b01101001;
end
else if(contador == 'd1208)
begin
q<=8'b01100100;
end
else if(contador == 'd1209)
begin
q<=8'b01101111;
end
else if(contador == 'd1210)
begin
q<=8'b00100000;
end
else if(contador == 'd1211)
begin
q<=8'b01110011;
end
else if(contador == 'd1212)
begin
q<=8'b01101111;
end
else if(contador == 'd1213)
begin
q<=8'b01101110;
end
else if(contador == 'd1214)
begin
q<=8'b01101111;
end
else if(contador == 'd1215)
begin
q<=8'b01110010;
end
else if(contador == 'd1216)
begin
q<=8'b01101111;
end
else if(contador == 'd1217)
begin
q<=8'b00101100;
end
else if(contador == 'd1218)
begin
q<=8'b00001010;
end
else if(contador == 'd1219)
begin
q<=8'b01100010;
end
else if(contador == 'd1220)
begin
q<=8'b01100001;
end
else if(contador == 'd1221)
begin
q<=8'b01101010;
end
else if(contador == 'd1222)
begin
q<=8'b01101111;
end
else if(contador == 'd1223)
begin
q<=8'b00100000;
end
else if(contador == 'd1224)
begin
q<=8'b01100101;
end
else if(contador == 'd1225)
begin
q<=8'b01101100;
end
else if(contador == 'd1226)
begin
q<=8'b00100000;
end
else if(contador == 'd1227)
begin
q<=8'b01100001;
end
else if(contador == 'd1228)
begin
q<=8'b01101100;
end
else if(contador == 'd1229)
begin
q<=8'b01100001;
end
else if(contador == 'd1230)
begin
q<=8'b00100000;
end
else if(contador == 'd1231)
begin
q<=8'b01100100;
end
else if(contador == 'd1232)
begin
q<=8'b01100101;
end
else if(contador == 'd1233)
begin
q<=8'b00100000;
end
else if(contador == 'd1234)
begin
q<=8'b01100111;
end
else if(contador == 'd1235)
begin
q<=8'b01110010;
end
else if(contador == 'd1236)
begin
q<=8'b01100001;
end
else if(contador == 'd1237)
begin
q<=8'b01101110;
end
else if(contador == 'd1238)
begin
q<=8'b01100001;
end
else if(contador == 'd1239)
begin
q<=8'b00100000;
end
else if(contador == 'd1240)
begin
q<=8'b01111001;
end
else if(contador == 'd1241)
begin
q<=8'b00100000;
end
else if(contador == 'd1242)
begin
q<=8'b01100100;
end
else if(contador == 'd1243)
begin
q<=8'b01100101;
end
else if(contador == 'd1244)
begin
q<=8'b00100000;
end
else if(contador == 'd1245)
begin
q<=8'b01101111;
end
else if(contador == 'd1246)
begin
q<=8'b01110010;
end
else if(contador == 'd1247)
begin
q<=8'b01101111;
end
else if(contador == 'd1248)
begin
q<=8'b00001010;
end
else if(contador == 'd1249)
begin
q<=8'b01110100;
end
else if(contador == 'd1250)
begin
q<=8'b01100101;
end
else if(contador == 'd1251)
begin
q<=8'b00100000;
end
else if(contador == 'd1252)
begin
q<=8'b01100001;
end
else if(contador == 'd1253)
begin
q<=8'b01100100;
end
else if(contador == 'd1254)
begin
q<=8'b01101111;
end
else if(contador == 'd1255)
begin
q<=8'b01110010;
end
else if(contador == 'd1256)
begin
q<=8'b01101101;
end
else if(contador == 'd1257)
begin
q<=8'b01100101;
end
else if(contador == 'd1258)
begin
q<=8'b01100011;
end
else if(contador == 'd1259)
begin
q<=8'b01100101;
end
else if(contador == 'd1260)
begin
q<=8'b01110011;
end
else if(contador == 'd1261)
begin
q<=8'b00100000;
end
else if(contador == 'd1262)
begin
q<=8'b01100100;
end
else if(contador == 'd1263)
begin
q<=8'b01100101;
end
else if(contador == 'd1264)
begin
q<=8'b01101100;
end
else if(contador == 'd1265)
begin
q<=8'b00100000;
end
else if(contador == 'd1266)
begin
q<=8'b01100010;
end
else if(contador == 'd1267)
begin
q<=8'b01100101;
end
else if(contador == 'd1268)
begin
q<=8'b01101100;
end
else if(contador == 'd1269)
begin
q<=8'b01101100;
end
else if(contador == 'd1270)
begin
q<=8'b01101111;
end
else if(contador == 'd1271)
begin
q<=8'b00100000;
end
else if(contador == 'd1272)
begin
q<=8'b01110001;
end
else if(contador == 'd1273)
begin
q<=8'b01110101;
end
else if(contador == 'd1274)
begin
q<=8'b01100101;
end
else if(contador == 'd1275)
begin
q<=8'b01110100;
end
else if(contador == 'd1276)
begin
q<=8'b01111010;
end
else if(contador == 'd1277)
begin
q<=8'b01100001;
end
else if(contador == 'd1278)
begin
q<=8'b01101100;
end
else if(contador == 'd1279)
begin
q<=8'b00101110;
end
else if(contador == 'd1280)
begin
q<=8'b00001010;
end
else if(contador == 'd1281)
begin
q<=8'b00001010;
end
else if(contador == 'd1282)
begin
q<=8'b01000001;
end
else if(contador == 'd1283)
begin
q<=8'b01110110;
end
else if(contador == 'd1284)
begin
q<=8'b01100101;
end
else if(contador == 'd1285)
begin
q<=8'b00100000;
end
else if(contador == 'd1286)
begin
q<=8'b01101001;
end
else if(contador == 'd1287)
begin
q<=8'b01101110;
end
else if(contador == 'd1288)
begin
q<=8'b01100100;
end
else if(contador == 'd1289)
begin
q<=8'b01101001;
end
else if(contador == 'd1290)
begin
q<=8'b01100001;
end
else if(contador == 'd1291)
begin
q<=8'b01101110;
end
else if(contador == 'd1292)
begin
q<=8'b01100001;
end
else if(contador == 'd1293)
begin
q<=8'b00100000;
end
else if(contador == 'd1294)
begin
q<=8'b01110001;
end
else if(contador == 'd1295)
begin
q<=8'b01110101;
end
else if(contador == 'd1296)
begin
q<=8'b01100101;
end
else if(contador == 'd1297)
begin
q<=8'b00100000;
end
else if(contador == 'd1298)
begin
q<=8'b01110110;
end
else if(contador == 'd1299)
begin
q<=8'b01101001;
end
else if(contador == 'd1300)
begin
q<=8'b01110110;
end
else if(contador == 'd1301)
begin
q<=8'b01100101;
end
else if(contador == 'd1302)
begin
q<=8'b00100000;
end
else if(contador == 'd1303)
begin
q<=8'b01100101;
end
else if(contador == 'd1304)
begin
q<=8'b01101110;
end
else if(contador == 'd1305)
begin
q<=8'b00100000;
end
else if(contador == 'd1306)
begin
q<=8'b01110100;
end
else if(contador == 'd1307)
begin
q<=8'b01110101;
end
else if(contador == 'd1308)
begin
q<=8'b00100000;
end
else if(contador == 'd1309)
begin
q<=8'b01100101;
end
else if(contador == 'd1310)
begin
q<=8'b01110011;
end
else if(contador == 'd1311)
begin
q<=8'b01100011;
end
else if(contador == 'd1312)
begin
q<=8'b01110101;
end
else if(contador == 'd1313)
begin
q<=8'b01100100;
end
else if(contador == 'd1314)
begin
q<=8'b01101111;
end
else if(contador == 'd1315)
begin
q<=8'b00001010;
end
else if(contador == 'd1316)
begin
q<=8'b01110000;
end
else if(contador == 'd1317)
begin
q<=8'b01100001;
end
else if(contador == 'd1318)
begin
q<=8'b01101100;
end
else if(contador == 'd1319)
begin
q<=8'b01100001;
end
else if(contador == 'd1320)
begin
q<=8'b01100100;
end
else if(contador == 'd1321)
begin
q<=8'b01101001;
end
else if(contador == 'd1322)
begin
q<=8'b11110011;
end
else if(contador == 'd1323)
begin
q<=8'b01101110;
end
else if(contador == 'd1324)
begin
q<=8'b00100000;
end
else if(contador == 'd1325)
begin
q<=8'b01110001;
end
else if(contador == 'd1326)
begin
q<=8'b01110101;
end
else if(contador == 'd1327)
begin
q<=8'b01100101;
end
else if(contador == 'd1328)
begin
q<=8'b00100000;
end
else if(contador == 'd1329)
begin
q<=8'b01110000;
end
else if(contador == 'd1330)
begin
q<=8'b01110010;
end
else if(contador == 'd1331)
begin
q<=8'b01101111;
end
else if(contador == 'd1332)
begin
q<=8'b01110100;
end
else if(contador == 'd1333)
begin
q<=8'b01100101;
end
else if(contador == 'd1334)
begin
q<=8'b01100111;
end
else if(contador == 'd1335)
begin
q<=8'b01100101;
end
else if(contador == 'd1336)
begin
q<=8'b00100000;
end
else if(contador == 'd1337)
begin
q<=8'b01110100;
end
else if(contador == 'd1338)
begin
q<=8'b01110101;
end
else if(contador == 'd1339)
begin
q<=8'b00100000;
end
else if(contador == 'd1340)
begin
q<=8'b01110011;
end
else if(contador == 'd1341)
begin
q<=8'b01110101;
end
else if(contador == 'd1342)
begin
q<=8'b01100101;
end
else if(contador == 'd1343)
begin
q<=8'b01101100;
end
else if(contador == 'd1344)
begin
q<=8'b01101111;
end
else if(contador == 'd1345)
begin
q<=8'b00111011;
end
else if(contador == 'd1346)
begin
q<=8'b00001010;
end
else if(contador == 'd1347)
begin
q<=8'b10100001;
end
else if(contador == 'd1348)
begin
q<=8'b01101111;
end
else if(contador == 'd1349)
begin
q<=8'b01101010;
end
else if(contador == 'd1350)
begin
q<=8'b01100001;
end
else if(contador == 'd1351)
begin
q<=8'b01101100;
end
else if(contador == 'd1352)
begin
q<=8'b11100001;
end
else if(contador == 'd1353)
begin
q<=8'b00100000;
end
else if(contador == 'd1354)
begin
q<=8'b01110001;
end
else if(contador == 'd1355)
begin
q<=8'b01110101;
end
else if(contador == 'd1356)
begin
q<=8'b01100101;
end
else if(contador == 'd1357)
begin
q<=8'b00100000;
end
else if(contador == 'd1358)
begin
q<=8'b01110010;
end
else if(contador == 'd1359)
begin
q<=8'b01100101;
end
else if(contador == 'd1360)
begin
q<=8'b01101101;
end
else if(contador == 'd1361)
begin
q<=8'b01101111;
end
else if(contador == 'd1362)
begin
q<=8'b01101110;
end
else if(contador == 'd1363)
begin
q<=8'b01110100;
end
else if(contador == 'd1364)
begin
q<=8'b01100101;
end
else if(contador == 'd1365)
begin
q<=8'b00100000;
end
else if(contador == 'd1366)
begin
q<=8'b01110011;
end
else if(contador == 'd1367)
begin
q<=8'b01110101;
end
else if(contador == 'd1368)
begin
q<=8'b00100000;
end
else if(contador == 'd1369)
begin
q<=8'b01110110;
end
else if(contador == 'd1370)
begin
q<=8'b01110101;
end
else if(contador == 'd1371)
begin
q<=8'b01100101;
end
else if(contador == 'd1372)
begin
q<=8'b01101100;
end
else if(contador == 'd1373)
begin
q<=8'b01101111;
end
else if(contador == 'd1374)
begin
q<=8'b00101100;
end
else if(contador == 'd1375)
begin
q<=8'b00001010;
end
else if(contador == 'd1376)
begin
q<=8'b01101101;
end
else if(contador == 'd1377)
begin
q<=8'b11100001;
end
else if(contador == 'd1378)
begin
q<=8'b01110011;
end
else if(contador == 'd1379)
begin
q<=8'b00100000;
end
else if(contador == 'd1380)
begin
q<=8'b01110001;
end
else if(contador == 'd1381)
begin
q<=8'b01110101;
end
else if(contador == 'd1382)
begin
q<=8'b01100101;
end
else if(contador == 'd1383)
begin
q<=8'b00100000;
end
else if(contador == 'd1384)
begin
q<=8'b01100101;
end
else if(contador == 'd1385)
begin
q<=8'b01101100;
end
else if(contador == 'd1386)
begin
q<=8'b00100000;
end
else if(contador == 'd1387)
begin
q<=8'b01100011;
end
else if(contador == 'd1388)
begin
q<=8'b11110011;
end
else if(contador == 'd1389)
begin
q<=8'b01101110;
end
else if(contador == 'd1390)
begin
q<=8'b01100100;
end
else if(contador == 'd1391)
begin
q<=8'b01101111;
end
else if(contador == 'd1392)
begin
q<=8'b01110010;
end
else if(contador == 'd1393)
begin
q<=8'b00100000;
end
else if(contador == 'd1394)
begin
q<=8'b01111001;
end
else if(contador == 'd1395)
begin
q<=8'b00100000;
end
else if(contador == 'd1396)
begin
q<=8'b01100101;
end
else if(contador == 'd1397)
begin
q<=8'b01101100;
end
else if(contador == 'd1398)
begin
q<=8'b00100000;
end
else if(contador == 'd1399)
begin
q<=8'b11100001;
end
else if(contador == 'd1400)
begin
q<=8'b01100111;
end
else if(contador == 'd1401)
begin
q<=8'b01110101;
end
else if(contador == 'd1402)
begin
q<=8'b01101001;
end
else if(contador == 'd1403)
begin
q<=8'b01101100;
end
else if(contador == 'd1404)
begin
q<=8'b01100001;
end
else if(contador == 'd1405)
begin
q<=8'b00100000;
end
else if(contador == 'd1406)
begin
q<=8'b01110010;
end
else if(contador == 'd1407)
begin
q<=8'b01100101;
end
else if(contador == 'd1408)
begin
q<=8'b01100001;
end
else if(contador == 'd1409)
begin
q<=8'b01101100;
end
else if(contador == 'd1410)
begin
q<=8'b00100001;
end
else if(contador == 'd1411)
begin
q<=8'b00001010;
end
else if(contador == 'd1412)
begin
q<=8'b00001010;
end
else if(contador == 'd1413)
begin
q<=8'b10100001;
end
else if(contador == 'd1414)
begin
q<=8'b01001111;
end
else if(contador == 'd1415)
begin
q<=8'b01101010;
end
else if(contador == 'd1416)
begin
q<=8'b01100001;
end
else if(contador == 'd1417)
begin
q<=8'b01101100;
end
else if(contador == 'd1418)
begin
q<=8'b11100001;
end
else if(contador == 'd1419)
begin
q<=8'b00100000;
end
else if(contador == 'd1420)
begin
q<=8'b01110001;
end
else if(contador == 'd1421)
begin
q<=8'b01110101;
end
else if(contador == 'd1422)
begin
q<=8'b01100101;
end
else if(contador == 'd1423)
begin
q<=8'b00100000;
end
else if(contador == 'd1424)
begin
q<=8'b01110010;
end
else if(contador == 'd1425)
begin
q<=8'b01100101;
end
else if(contador == 'd1426)
begin
q<=8'b01101101;
end
else if(contador == 'd1427)
begin
q<=8'b01101111;
end
else if(contador == 'd1428)
begin
q<=8'b01101110;
end
else if(contador == 'd1429)
begin
q<=8'b01110100;
end
else if(contador == 'd1430)
begin
q<=8'b01100101;
end
else if(contador == 'd1431)
begin
q<=8'b00100000;
end
else if(contador == 'd1432)
begin
q<=8'b01110011;
end
else if(contador == 'd1433)
begin
q<=8'b01110101;
end
else if(contador == 'd1434)
begin
q<=8'b00100000;
end
else if(contador == 'd1435)
begin
q<=8'b01110110;
end
else if(contador == 'd1436)
begin
q<=8'b01110101;
end
else if(contador == 'd1437)
begin
q<=8'b01100101;
end
else if(contador == 'd1438)
begin
q<=8'b01101100;
end
else if(contador == 'd1439)
begin
q<=8'b01101111;
end
else if(contador == 'd1440)
begin
q<=8'b00101100;
end
else if(contador == 'd1441)
begin
q<=8'b00001010;
end
else if(contador == 'd1442)
begin
q<=8'b01101101;
end
else if(contador == 'd1443)
begin
q<=8'b11100001;
end
else if(contador == 'd1444)
begin
q<=8'b01110011;
end
else if(contador == 'd1445)
begin
q<=8'b00100000;
end
else if(contador == 'd1446)
begin
q<=8'b01110001;
end
else if(contador == 'd1447)
begin
q<=8'b01110101;
end
else if(contador == 'd1448)
begin
q<=8'b01100101;
end
else if(contador == 'd1449)
begin
q<=8'b00100000;
end
else if(contador == 'd1450)
begin
q<=8'b01100101;
end
else if(contador == 'd1451)
begin
q<=8'b01101100;
end
else if(contador == 'd1452)
begin
q<=8'b00100000;
end
else if(contador == 'd1453)
begin
q<=8'b01100011;
end
else if(contador == 'd1454)
begin
q<=8'b11110011;
end
else if(contador == 'd1455)
begin
q<=8'b01101110;
end
else if(contador == 'd1456)
begin
q<=8'b01100100;
end
else if(contador == 'd1457)
begin
q<=8'b01101111;
end
else if(contador == 'd1458)
begin
q<=8'b01110010;
end
else if(contador == 'd1459)
begin
q<=8'b00100000;
end
else if(contador == 'd1460)
begin
q<=8'b01111001;
end
else if(contador == 'd1461)
begin
q<=8'b00100000;
end
else if(contador == 'd1462)
begin
q<=8'b01100101;
end
else if(contador == 'd1463)
begin
q<=8'b01101100;
end
else if(contador == 'd1464)
begin
q<=8'b00100000;
end
else if(contador == 'd1465)
begin
q<=8'b11100001;
end
else if(contador == 'd1466)
begin
q<=8'b01100111;
end
else if(contador == 'd1467)
begin
q<=8'b01110101;
end
else if(contador == 'd1468)
begin
q<=8'b01101001;
end
else if(contador == 'd1469)
begin
q<=8'b01101100;
end
else if(contador == 'd1470)
begin
q<=8'b01100001;
end
else if(contador == 'd1471)
begin
q<=8'b00100000;
end
else if(contador == 'd1472)
begin
q<=8'b01110010;
end
else if(contador == 'd1473)
begin
q<=8'b01100101;
end
else if(contador == 'd1474)
begin
q<=8'b01100001;
end
else if(contador == 'd1475)
begin
q<=8'b01101100;
end
else if(contador == 'd1476)
begin
q<=8'b00101100;
end
else if(contador == 'd1477)
begin
q<=8'b00001010;
end
else if(contador == 'd1478)
begin
q<=8'b01111001;
end
else if(contador == 'd1479)
begin
q<=8'b00100000;
end
else if(contador == 'd1480)
begin
q<=8'b01100101;
end
else if(contador == 'd1481)
begin
q<=8'b01101110;
end
else if(contador == 'd1482)
begin
q<=8'b00100000;
end
else if(contador == 'd1483)
begin
q<=8'b01110011;
end
else if(contador == 'd1484)
begin
q<=8'b01110101;
end
else if(contador == 'd1485)
begin
q<=8'b01110011;
end
else if(contador == 'd1486)
begin
q<=8'b00100000;
end
else if(contador == 'd1487)
begin
q<=8'b01100001;
end
else if(contador == 'd1488)
begin
q<=8'b01101100;
end
else if(contador == 'd1489)
begin
q<=8'b01100001;
end
else if(contador == 'd1490)
begin
q<=8'b01110011;
end
else if(contador == 'd1491)
begin
q<=8'b00100000;
end
else if(contador == 'd1492)
begin
q<=8'b01101100;
end
else if(contador == 'd1493)
begin
q<=8'b01100101;
end
else if(contador == 'd1494)
begin
q<=8'b01110110;
end
else if(contador == 'd1495)
begin
q<=8'b01100001;
end
else if(contador == 'd1496)
begin
q<=8'b01101110;
end
else if(contador == 'd1497)
begin
q<=8'b01110100;
end
else if(contador == 'd1498)
begin
q<=8'b01100101;
end
else if(contador == 'd1499)
begin
q<=8'b00100000;
end
else if(contador == 'd1500)
begin
q<=8'b01101000;
end
else if(contador == 'd1501)
begin
q<=8'b01100001;
end
else if(contador == 'd1502)
begin
q<=8'b01110011;
end
else if(contador == 'd1503)
begin
q<=8'b01110100;
end
else if(contador == 'd1504)
begin
q<=8'b01100001;
end
else if(contador == 'd1505)
begin
q<=8'b00100000;
end
else if(contador == 'd1506)
begin
q<=8'b01100101;
end
else if(contador == 'd1507)
begin
q<=8'b01101100;
end
else if(contador == 'd1508)
begin
q<=8'b00100000;
end
else if(contador == 'd1509)
begin
q<=8'b01100011;
end
else if(contador == 'd1510)
begin
q<=8'b01101001;
end
else if(contador == 'd1511)
begin
q<=8'b01100101;
end
else if(contador == 'd1512)
begin
q<=8'b01101100;
end
else if(contador == 'd1513)
begin
q<=8'b01101111;
end
else if(contador == 'd1514)
begin
q<=8'b00101100;
end
else if(contador == 'd1515)
begin
q<=8'b00001010;
end
else if(contador == 'd1516)
begin
q<=8'b01000111;
end
else if(contador == 'd1517)
begin
q<=8'b01110101;
end
else if(contador == 'd1518)
begin
q<=8'b01100001;
end
else if(contador == 'd1519)
begin
q<=8'b01110100;
end
else if(contador == 'd1520)
begin
q<=8'b01100101;
end
else if(contador == 'd1521)
begin
q<=8'b01101101;
end
else if(contador == 'd1522)
begin
q<=8'b01100001;
end
else if(contador == 'd1523)
begin
q<=8'b01101100;
end
else if(contador == 'd1524)
begin
q<=8'b01100001;
end
else if(contador == 'd1525)
begin
q<=8'b00101100;
end
else if(contador == 'd1526)
begin
q<=8'b00100000;
end
else if(contador == 'd1527)
begin
q<=8'b01110100;
end
else if(contador == 'd1528)
begin
q<=8'b01110101;
end
else if(contador == 'd1529)
begin
q<=8'b00100000;
end
else if(contador == 'd1530)
begin
q<=8'b01101110;
end
else if(contador == 'd1531)
begin
q<=8'b01101111;
end
else if(contador == 'd1532)
begin
q<=8'b01101101;
end
else if(contador == 'd1533)
begin
q<=8'b01100010;
end
else if(contador == 'd1534)
begin
q<=8'b01110010;
end
else if(contador == 'd1535)
begin
q<=8'b01100101;
end
else if(contador == 'd1536)
begin
q<=8'b00100000;
end
else if(contador == 'd1537)
begin
q<=8'b01101001;
end
else if(contador == 'd1538)
begin
q<=8'b01101110;
end
else if(contador == 'd1539)
begin
q<=8'b01101101;
end
else if(contador == 'd1540)
begin
q<=8'b01101111;
end
else if(contador == 'd1541)
begin
q<=8'b01110010;
end
else if(contador == 'd1542)
begin
q<=8'b01110100;
end
else if(contador == 'd1543)
begin
q<=8'b01100001;
end
else if(contador == 'd1544)
begin
q<=8'b01101100;
end
else if(contador == 'd1545)
begin
q<=8'b00100001;
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
q<=8'b00111010;
end
else if(contador == 'd24)
begin
q<=8'b00100000;
end
else if(contador == 'd25)
begin
q<=8'b01000001;
end
else if(contador == 'd26)
begin
q<=8'b01101110;
end
else if(contador == 'd27)
begin
q<=8'b01100111;
end
else if(contador == 'd28)
begin
q<=8'b01100101;
end
else if(contador == 'd29)
begin
q<=8'b01101100;
end
else if(contador == 'd30)
begin
q<=8'b00100000;
end
else if(contador == 'd31)
begin
q<=8'b01001111;
end
else if(contador == 'd32)
begin
q<=8'b01110010;
end
else if(contador == 'd33)
begin
q<=8'b01100101;
end
else if(contador == 'd34)
begin
q<=8'b01101100;
end
else if(contador == 'd35)
begin
q<=8'b01101100;
end
else if(contador == 'd36)
begin
q<=8'b01100001;
end
else if(contador == 'd37)
begin
q<=8'b01101110;
end
else if(contador == 'd38)
begin
q<=8'b01100001;
end
else if(contador == 'd39)
begin
q<=8'b00101100;
end
else if(contador == 'd40)
begin
q<=8'b00100000;
end
else if(contador == 'd41)
begin
q<=8'b01000100;
end
else if(contador == 'd42)
begin
q<=8'b01100001;
end
else if(contador == 'd43)
begin
q<=8'b01101110;
end
else if(contador == 'd44)
begin
q<=8'b01101001;
end
else if(contador == 'd45)
begin
q<=8'b01100101;
end
else if(contador == 'd46)
begin
q<=8'b01101100;
end
else if(contador == 'd47)
begin
q<=8'b00100000;
end
else if(contador == 'd48)
begin
q<=8'b01001101;
end
else if(contador == 'd49)
begin
q<=8'b01110101;
end
else if(contador == 'd50)
begin
q<=8'b01101110;
end
else if(contador == 'd51)
begin
q<=8'b01100100;
end
else if(contador == 'd52)
begin
q<=8'b01101111;
end
else if(contador == 'd53)
begin
q<=8'b00101100;
end
else if(contador == 'd54)
begin
q<=8'b00100000;
end
else if(contador == 'd55)
begin
q<=8'b01001010;
end
else if(contador == 'd56)
begin
q<=8'b01110101;
end
else if(contador == 'd57)
begin
q<=8'b01101100;
end
else if(contador == 'd58)
begin
q<=8'b01101001;
end
else if(contador == 'd59)
begin
q<=8'b01101111;
end
else if(contador == 'd60)
begin
q<=8'b00100000;
end
else if(contador == 'd61)
begin
q<=8'b01001100;
end
else if(contador == 'd62)
begin
q<=8'b01101111;
end
else if(contador == 'd63)
begin
q<=8'b01110000;
end
else if(contador == 'd64)
begin
q<=8'b01100101;
end
else if(contador == 'd65)
begin
q<=8'b01111010;
end
else if(contador == 'd66)
begin
q<=8'b00100000;
end
else if(contador == 'd67)
begin
q<=8'b01111001;
end
else if(contador == 'd68)
begin
q<=8'b00100000;
end
else if(contador == 'd69)
begin
q<=8'b01001110;
end
else if(contador == 'd70)
begin
q<=8'b01101111;
end
else if(contador == 'd71)
begin
q<=8'b01100101;
end
else if(contador == 'd72)
begin
q<=8'b01101100;
end
else if(contador == 'd73)
begin
q<=8'b00100000;
end
else if(contador == 'd74)
begin
q<=8'b01010000;
end
else if(contador == 'd75)
begin
q<=8'b01110010;
end
else if(contador == 'd76)
begin
q<=8'b01100001;
end
else if(contador == 'd77)
begin
q<=8'b01100100;
end
end
assign uo_out = q;
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
