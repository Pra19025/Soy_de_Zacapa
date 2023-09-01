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
assign uio_oe = 8'h00;


always @ (posedge rst_n or posedge clk)
if (rst_n)
contador<=12'b000000000000;
else if(select==2'b00 || select==2'b11) begin
if (contador <706)
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
q<=8'b00100000;
end
else if(contador == 'd1)
begin
q<=8'b01001100;
end
else if(contador == 'd2)
begin
q<=8'b01101111;
end
else if(contador == 'd3)
begin
q<=8'b01110011;
end
else if(contador == 'd4)
begin
q<=8'b00100000;
end
else if(contador == 'd5)
begin
q<=8'b01110110;
end
else if(contador == 'd6)
begin
q<=8'b01101111;
end
else if(contador == 'd7)
begin
q<=8'b01101100;
end
else if(contador == 'd8)
begin
q<=8'b01100011;
end
else if(contador == 'd9)
begin
q<=8'b01100001;
end
else if(contador == 'd10)
begin
q<=8'b01101110;
end
else if(contador == 'd11)
begin
q<=8'b01100101;
end
else if(contador == 'd12)
begin
q<=8'b01110011;
end
else if(contador == 'd13)
begin
q<=8'b00100000;
end
else if(contador == 'd14)
begin
q<=8'b01100100;
end
else if(contador == 'd15)
begin
q<=8'b01100101;
end
else if(contador == 'd16)
begin
q<=8'b00100000;
end
else if(contador == 'd17)
begin
q<=8'b01000111;
end
else if(contador == 'd18)
begin
q<=8'b01110101;
end
else if(contador == 'd19)
begin
q<=8'b01100001;
end
else if(contador == 'd20)
begin
q<=8'b01110100;
end
else if(contador == 'd21)
begin
q<=8'b01100101;
end
else if(contador == 'd22)
begin
q<=8'b01101101;
end
else if(contador == 'd23)
begin
q<=8'b01100001;
end
else if(contador == 'd24)
begin
q<=8'b01101100;
end
else if(contador == 'd25)
begin
q<=8'b01100001;
end
else if(contador == 'd26)
begin
q<=8'b00111010;
end
else if(contador == 'd27)
begin
q<=8'b00001010;
end
else if(contador == 'd28)
begin
q<=8'b00110001;
end
else if(contador == 'd29)
begin
q<=8'b00100000;
end
else if(contador == 'd30)
begin
q<=8'b00100000;
end
else if(contador == 'd31)
begin
q<=8'b00100000;
end
else if(contador == 'd32)
begin
q<=8'b01010100;
end
else if(contador == 'd33)
begin
q<=8'b01100001;
end
else if(contador == 'd34)
begin
q<=8'b01101010;
end
else if(contador == 'd35)
begin
q<=8'b01110101;
end
else if(contador == 'd36)
begin
q<=8'b01101101;
end
else if(contador == 'd37)
begin
q<=8'b01110101;
end
else if(contador == 'd38)
begin
q<=8'b01101100;
end
else if(contador == 'd39)
begin
q<=8'b01100011;
end
else if(contador == 'd40)
begin
q<=8'b01101111;
end
else if(contador == 'd41)
begin
q<=8'b00001001;
end
else if(contador == 'd42)
begin
q<=8'b00110100;
end
else if(contador == 'd43)
begin
q<=8'b00101100;
end
else if(contador == 'd44)
begin
q<=8'b00110010;
end
else if(contador == 'd45)
begin
q<=8'b00110010;
end
else if(contador == 'd46)
begin
q<=8'b00110010;
end
else if(contador == 'd47)
begin
q<=8'b00001010;
end
else if(contador == 'd48)
begin
q<=8'b00110010;
end
else if(contador == 'd49)
begin
q<=8'b00001001;
end
else if(contador == 'd50)
begin
q<=8'b01010100;
end
else if(contador == 'd51)
begin
q<=8'b01100001;
end
else if(contador == 'd52)
begin
q<=8'b01100011;
end
else if(contador == 'd53)
begin
q<=8'b01100001;
end
else if(contador == 'd54)
begin
q<=8'b01101110;
end
else if(contador == 'd55)
begin
q<=8'b11100001;
end
else if(contador == 'd56)
begin
q<=8'b00001001;
end
else if(contador == 'd57)
begin
q<=8'b00110100;
end
else if(contador == 'd58)
begin
q<=8'b00101100;
end
else if(contador == 'd59)
begin
q<=8'b00110000;
end
else if(contador == 'd60)
begin
q<=8'b00111001;
end
else if(contador == 'd61)
begin
q<=8'b00110010;
end
else if(contador == 'd62)
begin
q<=8'b00001010;
end
else if(contador == 'd63)
begin
q<=8'b00110011;
end
else if(contador == 'd64)
begin
q<=8'b00001001;
end
else if(contador == 'd65)
begin
q<=8'b01000001;
end
else if(contador == 'd66)
begin
q<=8'b01100011;
end
else if(contador == 'd67)
begin
q<=8'b01100001;
end
else if(contador == 'd68)
begin
q<=8'b01110100;
end
else if(contador == 'd69)
begin
q<=8'b01100101;
end
else if(contador == 'd70)
begin
q<=8'b01101110;
end
else if(contador == 'd71)
begin
q<=8'b01100001;
end
else if(contador == 'd72)
begin
q<=8'b01101110;
end
else if(contador == 'd73)
begin
q<=8'b01100111;
end
else if(contador == 'd74)
begin
q<=8'b01101111;
end
else if(contador == 'd75)
begin
q<=8'b00001001;
end
else if(contador == 'd76)
begin
q<=8'b00110011;
end
else if(contador == 'd77)
begin
q<=8'b00101100;
end
else if(contador == 'd78)
begin
q<=8'b00111001;
end
else if(contador == 'd79)
begin
q<=8'b00110111;
end
else if(contador == 'd80)
begin
q<=8'b00110110;
end
else if(contador == 'd81)
begin
q<=8'b00001010;
end
else if(contador == 'd82)
begin
q<=8'b00110100;
end
else if(contador == 'd83)
begin
q<=8'b00001001;
end
else if(contador == 'd84)
begin
q<=8'b01000110;
end
else if(contador == 'd85)
begin
q<=8'b01110101;
end
else if(contador == 'd86)
begin
q<=8'b01100101;
end
else if(contador == 'd87)
begin
q<=8'b01100111;
end
else if(contador == 'd88)
begin
q<=8'b01101111;
end
else if(contador == 'd89)
begin
q<=8'b00001001;
end
else if(contador == 'd90)
begin
q<=8'b00110011;
end
else if(contador == 'd91)
begin
q<=8'b00101100;
end
else if(contador == 'd92)
begin
q<=8'b00111000;
end
else if(contador == 'd93)
begin
q<=8'b00110011;
end
else if(contador == 'd94)
begin
q<=8'b00110000;
end
else if(contador == 'd95)
begin
q<=8'b00001010;
end
else if(contador == 'd96)
begin
q<=8'b00110101;
end
else if(contador == 'd97)
begin
q<=8'b00001001;
end
else if(contador == 'd98)
begin
q<=8'b01010011;
end
else if(contador == 'd99)
begin
q<=8'b01100001;
end
else if(contador == 'd100)
begin
q<=8'b01101110;
end
else if(contador == 'd101)
begin
q<=8'b01110100;
end
else if(contador == 'd102)
begin
q<=8'b01100001;
end
else if(contador == 'd103)
begin
q<=8'b00100000;
end
else if(contador == 'd104)
begin
q<=8'b01001101;
end
else if(contador == 'd105)
begin
q<=8'b01100001;
end
else if(contador == 'd106)
begin
q<=8'b01110010;
end
else if(contador == 'd107)
begin
q<=8'b11101101;
end
else if(contador == 'd108)
begin
q<=8'b01100001;
end
else if(contador == 'd109)
begin
q<=8'b00001001;
end
else if(contador == 'd110)
begin
q<=8'b00110011;
end
else if(contador == 'd111)
begin
q<=8'b00101100;
end
else if(contador == 'd112)
begin
q<=8'b00110111;
end
else if(contador == 'd113)
begin
q<=8'b00110111;
end
else if(contador == 'd114)
begin
q<=8'b00110010;
end
else if(contador == 'd115)
begin
q<=8'b00001010;
end
else if(contador == 'd116)
begin
q<=8'b00110110;
end
else if(contador == 'd117)
begin
q<=8'b00001001;
end
else if(contador == 'd118)
begin
q<=8'b01000001;
end
else if(contador == 'd119)
begin
q<=8'b01100111;
end
else if(contador == 'd120)
begin
q<=8'b01110101;
end
else if(contador == 'd121)
begin
q<=8'b01100001;
end
else if(contador == 'd122)
begin
q<=8'b00001001;
end
else if(contador == 'd123)
begin
q<=8'b00110011;
end
else if(contador == 'd124)
begin
q<=8'b00101100;
end
else if(contador == 'd125)
begin
q<=8'b00110111;
end
else if(contador == 'd126)
begin
q<=8'b00110110;
end
else if(contador == 'd127)
begin
q<=8'b00110011;
end
else if(contador == 'd128)
begin
q<=8'b00001010;
end
else if(contador == 'd129)
begin
q<=8'b00110111;
end
else if(contador == 'd130)
begin
q<=8'b00001001;
end
else if(contador == 'd131)
begin
q<=8'b01000011;
end
else if(contador == 'd132)
begin
q<=8'b01100101;
end
else if(contador == 'd133)
begin
q<=8'b01110010;
end
else if(contador == 'd134)
begin
q<=8'b01110010;
end
else if(contador == 'd135)
begin
q<=8'b01101111;
end
else if(contador == 'd136)
begin
q<=8'b00100000;
end
else if(contador == 'd137)
begin
q<=8'b01011010;
end
else if(contador == 'd138)
begin
q<=8'b01110101;
end
else if(contador == 'd139)
begin
q<=8'b01101110;
end
else if(contador == 'd140)
begin
q<=8'b01101001;
end
else if(contador == 'd141)
begin
q<=8'b01101100;
end
else if(contador == 'd142)
begin
q<=8'b00001001;
end
else if(contador == 'd143)
begin
q<=8'b00110011;
end
else if(contador == 'd144)
begin
q<=8'b00101100;
end
else if(contador == 'd145)
begin
q<=8'b00110101;
end
else if(contador == 'd146)
begin
q<=8'b00110100;
end
else if(contador == 'd147)
begin
q<=8'b00110010;
end
else if(contador == 'd148)
begin
q<=8'b00001010;
end
else if(contador == 'd149)
begin
q<=8'b00111000;
end
else if(contador == 'd150)
begin
q<=8'b00001001;
end
else if(contador == 'd151)
begin
q<=8'b01000001;
end
else if(contador == 'd152)
begin
q<=8'b01110100;
end
else if(contador == 'd153)
begin
q<=8'b01101001;
end
else if(contador == 'd154)
begin
q<=8'b01110100;
end
else if(contador == 'd155)
begin
q<=8'b01101100;
end
else if(contador == 'd156)
begin
q<=8'b11100001;
end
else if(contador == 'd157)
begin
q<=8'b01101110;
end
else if(contador == 'd158)
begin
q<=8'b00001001;
end
else if(contador == 'd159)
begin
q<=8'b00110011;
end
else if(contador == 'd160)
begin
q<=8'b00101100;
end
else if(contador == 'd161)
begin
q<=8'b00110101;
end
else if(contador == 'd162)
begin
q<=8'b00110011;
end
else if(contador == 'd163)
begin
q<=8'b00110111;
end
else if(contador == 'd164)
begin
q<=8'b00001010;
end
else if(contador == 'd165)
begin
q<=8'b00111001;
end
else if(contador == 'd166)
begin
q<=8'b00001001;
end
else if(contador == 'd167)
begin
q<=8'b01010011;
end
else if(contador == 'd168)
begin
q<=8'b01100001;
end
else if(contador == 'd169)
begin
q<=8'b01101110;
end
else if(contador == 'd170)
begin
q<=8'b01110100;
end
else if(contador == 'd171)
begin
q<=8'b01101111;
end
else if(contador == 'd172)
begin
q<=8'b00100000;
end
else if(contador == 'd173)
begin
q<=8'b01010100;
end
else if(contador == 'd174)
begin
q<=8'b01101111;
end
else if(contador == 'd175)
begin
q<=8'b01101101;
end
else if(contador == 'd176)
begin
q<=8'b11100001;
end
else if(contador == 'd177)
begin
q<=8'b01110011;
end
else if(contador == 'd178)
begin
q<=8'b00001001;
end
else if(contador == 'd179)
begin
q<=8'b00110011;
end
else if(contador == 'd180)
begin
q<=8'b00101100;
end
else if(contador == 'd181)
begin
q<=8'b00110101;
end
else if(contador == 'd182)
begin
q<=8'b00110000;
end
else if(contador == 'd183)
begin
q<=8'b00110101;
end
else if(contador == 'd184)
begin
q<=8'b00001010;
end
else if(contador == 'd185)
begin
q<=8'b00110001;
end
else if(contador == 'd186)
begin
q<=8'b00110000;
end
else if(contador == 'd187)
begin
q<=8'b00001001;
end
else if(contador == 'd188)
begin
q<=8'b01010011;
end
else if(contador == 'd189)
begin
q<=8'b01101001;
end
else if(contador == 'd190)
begin
q<=8'b01100101;
end
else if(contador == 'd191)
begin
q<=8'b01110100;
end
else if(contador == 'd192)
begin
q<=8'b01100101;
end
else if(contador == 'd193)
begin
q<=8'b00100000;
end
else if(contador == 'd194)
begin
q<=8'b01001111;
end
else if(contador == 'd195)
begin
q<=8'b01110010;
end
else if(contador == 'd196)
begin
q<=8'b01100101;
end
else if(contador == 'd197)
begin
q<=8'b01101010;
end
else if(contador == 'd198)
begin
q<=8'b01100001;
end
else if(contador == 'd199)
begin
q<=8'b01110011;
end
else if(contador == 'd200)
begin
q<=8'b00001001;
end
else if(contador == 'd201)
begin
q<=8'b00110011;
end
else if(contador == 'd202)
begin
q<=8'b00101100;
end
else if(contador == 'd203)
begin
q<=8'b00110011;
end
else if(contador == 'd204)
begin
q<=8'b00110111;
end
else if(contador == 'd205)
begin
q<=8'b00110000;
end
else if(contador == 'd206)
begin
q<=8'b00001010;
end
else if(contador == 'd207)
begin
q<=8'b00110001;
end
else if(contador == 'd208)
begin
q<=8'b00110001;
end
else if(contador == 'd209)
begin
q<=8'b00001001;
end
else if(contador == 'd210)
begin
q<=8'b01000011;
end
else if(contador == 'd211)
begin
q<=8'b01100101;
end
else if(contador == 'd212)
begin
q<=8'b01110010;
end
else if(contador == 'd213)
begin
q<=8'b01110010;
end
else if(contador == 'd214)
begin
q<=8'b01101111;
end
else if(contador == 'd215)
begin
q<=8'b00100000;
end
else if(contador == 'd216)
begin
q<=8'b01010001;
end
else if(contador == 'd217)
begin
q<=8'b01110101;
end
else if(contador == 'd218)
begin
q<=8'b01100101;
end
else if(contador == 'd219)
begin
q<=8'b01101101;
end
else if(contador == 'd220)
begin
q<=8'b01100001;
end
else if(contador == 'd221)
begin
q<=8'b01100100;
end
else if(contador == 'd222)
begin
q<=8'b01101111;
end
else if(contador == 'd223)
begin
q<=8'b00001001;
end
else if(contador == 'd224)
begin
q<=8'b00110011;
end
else if(contador == 'd225)
begin
q<=8'b00101100;
end
else if(contador == 'd226)
begin
q<=8'b00110001;
end
else if(contador == 'd227)
begin
q<=8'b00111001;
end
else if(contador == 'd228)
begin
q<=8'b00110111;
end
else if(contador == 'd229)
begin
q<=8'b00001010;
end
else if(contador == 'd230)
begin
q<=8'b00110001;
end
else if(contador == 'd231)
begin
q<=8'b00110010;
end
else if(contador == 'd232)
begin
q<=8'b00001001;
end
else if(contador == 'd233)
begin
q<=8'b01010100;
end
else if(contador == 'd234)
begin
q<=8'b01101111;
end
else if(contador == 'd235)
begin
q<=8'b01101100;
end
else if(contador == 'd236)
begin
q<=8'b01101001;
end
else if(contador == 'd237)
begin
q<=8'b01101101;
end
else if(contador == 'd238)
begin
q<=8'b11100001;
end
else if(contador == 'd239)
begin
q<=8'b01101110;
end
else if(contador == 'd240)
begin
q<=8'b00001001;
end
else if(contador == 'd241)
begin
q<=8'b00110011;
end
else if(contador == 'd242)
begin
q<=8'b00101100;
end
else if(contador == 'd243)
begin
q<=8'b00110001;
end
else if(contador == 'd244)
begin
q<=8'b00110101;
end
else if(contador == 'd245)
begin
q<=8'b00111000;
end
else if(contador == 'd246)
begin
q<=8'b00001010;
end
else if(contador == 'd247)
begin
q<=8'b00110001;
end
else if(contador == 'd248)
begin
q<=8'b00110011;
end
else if(contador == 'd249)
begin
q<=8'b00001001;
end
else if(contador == 'd250)
begin
q<=8'b01000011;
end
else if(contador == 'd251)
begin
q<=8'b01110101;
end
else if(contador == 'd252)
begin
q<=8'b01111000;
end
else if(contador == 'd253)
begin
q<=8'b01101100;
end
else if(contador == 'd254)
begin
q<=8'b01101001;
end
else if(contador == 'd255)
begin
q<=8'b01110001;
end
else if(contador == 'd256)
begin
q<=8'b01110101;
end
else if(contador == 'd257)
begin
q<=8'b01100101;
end
else if(contador == 'd258)
begin
q<=8'b01101100;
end
else if(contador == 'd259)
begin
q<=8'b00001001;
end
else if(contador == 'd260)
begin
q<=8'b00110011;
end
else if(contador == 'd261)
begin
q<=8'b00101100;
end
else if(contador == 'd262)
begin
q<=8'b00110000;
end
else if(contador == 'd263)
begin
q<=8'b00110010;
end
else if(contador == 'd264)
begin
q<=8'b00110100;
end
else if(contador == 'd265)
begin
q<=8'b00001010;
end
else if(contador == 'd266)
begin
q<=8'b00110001;
end
else if(contador == 'd267)
begin
q<=8'b00110100;
end
else if(contador == 'd268)
begin
q<=8'b00001001;
end
else if(contador == 'd269)
begin
q<=8'b01010011;
end
else if(contador == 'd270)
begin
q<=8'b01100001;
end
else if(contador == 'd271)
begin
q<=8'b01101110;
end
else if(contador == 'd272)
begin
q<=8'b00100000;
end
else if(contador == 'd273)
begin
q<=8'b01010000;
end
else if(contador == 'd274)
begin
q<=8'b01100101;
end
else if(contador == 'd275)
begin
q<=8'b01100100;
end
else if(contador == 'd276)
begin
q<=8'b01110010;
end
else if(contador == 'd277)
begin
q<=8'b01101111;
end
else if(contador == 'd278)
begin
q<=8'b00001001;
end
else if(contador == 'd279)
begin
q<=8'b00110011;
end
else if(contador == 'd280)
begin
q<=8'b00101100;
end
else if(contador == 'd281)
begin
q<=8'b00110000;
end
else if(contador == 'd282)
begin
q<=8'b00110010;
end
else if(contador == 'd283)
begin
q<=8'b00110000;
end
else if(contador == 'd284)
begin
q<=8'b00001010;
end
else if(contador == 'd285)
begin
q<=8'b00110001;
end
else if(contador == 'd286)
begin
q<=8'b00110101;
end
else if(contador == 'd287)
begin
q<=8'b00001001;
end
else if(contador == 'd288)
begin
q<=8'b01000011;
end
else if(contador == 'd289)
begin
q<=8'b01101000;
end
else if(contador == 'd290)
begin
q<=8'b01101001;
end
else if(contador == 'd291)
begin
q<=8'b01100011;
end
else if(contador == 'd292)
begin
q<=8'b01100001;
end
else if(contador == 'd293)
begin
q<=8'b01100010;
end
else if(contador == 'd294)
begin
q<=8'b01100001;
end
else if(contador == 'd295)
begin
q<=8'b01101100;
end
else if(contador == 'd296)
begin
q<=8'b00001001;
end
else if(contador == 'd297)
begin
q<=8'b00110010;
end
else if(contador == 'd298)
begin
q<=8'b00101100;
end
else if(contador == 'd299)
begin
q<=8'b00111001;
end
else if(contador == 'd300)
begin
q<=8'b00110000;
end
else if(contador == 'd301)
begin
q<=8'b00110000;
end
else if(contador == 'd302)
begin
q<=8'b00001010;
end
else if(contador == 'd303)
begin
q<=8'b00110001;
end
else if(contador == 'd304)
begin
q<=8'b00110110;
end
else if(contador == 'd305)
begin
q<=8'b00001001;
end
else if(contador == 'd306)
begin
q<=8'b01001100;
end
else if(contador == 'd307)
begin
q<=8'b01100001;
end
else if(contador == 'd308)
begin
q<=8'b01100011;
end
else if(contador == 'd309)
begin
q<=8'b01100001;
end
else if(contador == 'd310)
begin
q<=8'b01101110;
end
else if(contador == 'd311)
begin
q<=8'b01100100;
end
else if(contador == 'd312)
begin
q<=8'b11110011;
end
else if(contador == 'd313)
begin
q<=8'b01101110;
end
else if(contador == 'd314)
begin
q<=8'b00001001;
end
else if(contador == 'd315)
begin
q<=8'b00110010;
end
else if(contador == 'd316)
begin
q<=8'b00101100;
end
else if(contador == 'd317)
begin
q<=8'b00110111;
end
else if(contador == 'd318)
begin
q<=8'b00110111;
end
else if(contador == 'd319)
begin
q<=8'b00110000;
end
else if(contador == 'd320)
begin
q<=8'b00001010;
end
else if(contador == 'd321)
begin
q<=8'b00110001;
end
else if(contador == 'd322)
begin
q<=8'b00110111;
end
else if(contador == 'd323)
begin
q<=8'b00001001;
end
else if(contador == 'd324)
begin
q<=8'b01010000;
end
else if(contador == 'd325)
begin
q<=8'b01100001;
end
else if(contador == 'd326)
begin
q<=8'b01100011;
end
else if(contador == 'd327)
begin
q<=8'b01100001;
end
else if(contador == 'd328)
begin
q<=8'b01111001;
end
else if(contador == 'd329)
begin
q<=8'b01100001;
end
else if(contador == 'd330)
begin
q<=8'b00001001;
end
else if(contador == 'd331)
begin
q<=8'b00110010;
end
else if(contador == 'd332)
begin
q<=8'b00101100;
end
else if(contador == 'd333)
begin
q<=8'b00110101;
end
else if(contador == 'd334)
begin
q<=8'b00110101;
end
else if(contador == 'd335)
begin
q<=8'b00110010;
end
else if(contador == 'd336)
begin
q<=8'b00001010;
end
else if(contador == 'd337)
begin
q<=8'b00110001;
end
else if(contador == 'd338)
begin
q<=8'b00111000;
end
else if(contador == 'd339)
begin
q<=8'b00001001;
end
else if(contador == 'd340)
begin
q<=8'b01010011;
end
else if(contador == 'd341)
begin
q<=8'b01100001;
end
else if(contador == 'd342)
begin
q<=8'b01101110;
end
else if(contador == 'd343)
begin
q<=8'b01110100;
end
else if(contador == 'd344)
begin
q<=8'b01101001;
end
else if(contador == 'd345)
begin
q<=8'b01100001;
end
else if(contador == 'd346)
begin
q<=8'b01100111;
end
else if(contador == 'd347)
begin
q<=8'b01110101;
end
else if(contador == 'd348)
begin
q<=8'b01101001;
end
else if(contador == 'd349)
begin
q<=8'b01110100;
end
else if(contador == 'd350)
begin
q<=8'b01101111;
end
else if(contador == 'd351)
begin
q<=8'b00001001;
end
else if(contador == 'd352)
begin
q<=8'b00110010;
end
else if(contador == 'd353)
begin
q<=8'b00101100;
end
else if(contador == 'd354)
begin
q<=8'b00110101;
end
else if(contador == 'd355)
begin
q<=8'b00110101;
end
else if(contador == 'd356)
begin
q<=8'b00110000;
end
else if(contador == 'd357)
begin
q<=8'b00001010;
end
else if(contador == 'd358)
begin
q<=8'b00110001;
end
else if(contador == 'd359)
begin
q<=8'b00111001;
end
else if(contador == 'd360)
begin
q<=8'b00001001;
end
else if(contador == 'd361)
begin
q<=8'b01010011;
end
else if(contador == 'd362)
begin
q<=8'b01100001;
end
else if(contador == 'd363)
begin
q<=8'b01101110;
end
else if(contador == 'd364)
begin
q<=8'b00100000;
end
else if(contador == 'd365)
begin
q<=8'b01000001;
end
else if(contador == 'd366)
begin
q<=8'b01101110;
end
else if(contador == 'd367)
begin
q<=8'b01110100;
end
else if(contador == 'd368)
begin
q<=8'b01101111;
end
else if(contador == 'd369)
begin
q<=8'b01101110;
end
else if(contador == 'd370)
begin
q<=8'b01101001;
end
else if(contador == 'd371)
begin
q<=8'b01101111;
end
else if(contador == 'd372)
begin
q<=8'b00001001;
end
else if(contador == 'd373)
begin
q<=8'b00110010;
end
else if(contador == 'd374)
begin
q<=8'b00101100;
end
else if(contador == 'd375)
begin
q<=8'b00110101;
end
else if(contador == 'd376)
begin
q<=8'b00110001;
end
else if(contador == 'd377)
begin
q<=8'b00110100;
end
else if(contador == 'd378)
begin
q<=8'b00001010;
end
else if(contador == 'd379)
begin
q<=8'b00110010;
end
else if(contador == 'd380)
begin
q<=8'b00110000;
end
else if(contador == 'd381)
begin
q<=8'b00001001;
end
else if(contador == 'd382)
begin
q<=8'b01001010;
end
else if(contador == 'd383)
begin
q<=8'b01110101;
end
else if(contador == 'd384)
begin
q<=8'b01101101;
end
else if(contador == 'd385)
begin
q<=8'b01100001;
end
else if(contador == 'd386)
begin
q<=8'b01111001;
end
else if(contador == 'd387)
begin
q<=8'b00001001;
end
else if(contador == 'd388)
begin
q<=8'b00110010;
end
else if(contador == 'd389)
begin
q<=8'b00101100;
end
else if(contador == 'd390)
begin
q<=8'b00110001;
end
else if(contador == 'd391)
begin
q<=8'b00110111;
end
else if(contador == 'd392)
begin
q<=8'b00110110;
end
else if(contador == 'd393)
begin
q<=8'b00001010;
end
else if(contador == 'd394)
begin
q<=8'b00110010;
end
else if(contador == 'd395)
begin
q<=8'b00110001;
end
else if(contador == 'd396)
begin
q<=8'b00001001;
end
else if(contador == 'd397)
begin
q<=8'b01010100;
end
else if(contador == 'd398)
begin
q<=8'b01101111;
end
else if(contador == 'd399)
begin
q<=8'b01100010;
end
else if(contador == 'd400)
begin
q<=8'b11110011;
end
else if(contador == 'd401)
begin
q<=8'b01101110;
end
else if(contador == 'd402)
begin
q<=8'b00001001;
end
else if(contador == 'd403)
begin
q<=8'b00110010;
end
else if(contador == 'd404)
begin
q<=8'b00101100;
end
else if(contador == 'd405)
begin
q<=8'b00110000;
end
else if(contador == 'd406)
begin
q<=8'b00111000;
end
else if(contador == 'd407)
begin
q<=8'b00110111;
end
else if(contador == 'd408)
begin
q<=8'b00001010;
end
else if(contador == 'd409)
begin
q<=8'b00110010;
end
else if(contador == 'd410)
begin
q<=8'b00110010;
end
else if(contador == 'd411)
begin
q<=8'b00001001;
end
else if(contador == 'd412)
begin
q<=8'b01000001;
end
else if(contador == 'd413)
begin
q<=8'b01101100;
end
else if(contador == 'd414)
begin
q<=8'b01111010;
end
else if(contador == 'd415)
begin
q<=8'b01100001;
end
else if(contador == 'd416)
begin
q<=8'b01110100;
end
else if(contador == 'd417)
begin
q<=8'b01100001;
end
else if(contador == 'd418)
begin
q<=8'b01110100;
end
else if(contador == 'd419)
begin
q<=8'b01100101;
end
else if(contador == 'd420)
begin
q<=8'b00001001;
end
else if(contador == 'd421)
begin
q<=8'b00110010;
end
else if(contador == 'd422)
begin
q<=8'b00101100;
end
else if(contador == 'd423)
begin
q<=8'b00110000;
end
else if(contador == 'd424)
begin
q<=8'b00110100;
end
else if(contador == 'd425)
begin
q<=8'b00110101;
end
else if(contador == 'd426)
begin
q<=8'b00001010;
end
else if(contador == 'd427)
begin
q<=8'b00110010;
end
else if(contador == 'd428)
begin
q<=8'b00110011;
end
else if(contador == 'd429)
begin
q<=8'b00001001;
end
else if(contador == 'd430)
begin
q<=8'b01010011;
end
else if(contador == 'd431)
begin
q<=8'b01110101;
end
else if(contador == 'd432)
begin
q<=8'b01100011;
end
else if(contador == 'd433)
begin
q<=8'b01101000;
end
else if(contador == 'd434)
begin
q<=8'b01101001;
end
else if(contador == 'd435)
begin
q<=8'b01110100;
end
else if(contador == 'd436)
begin
q<=8'b11100001;
end
else if(contador == 'd437)
begin
q<=8'b01101110;
end
else if(contador == 'd438)
begin
q<=8'b00001001;
end
else if(contador == 'd439)
begin
q<=8'b00110010;
end
else if(contador == 'd440)
begin
q<=8'b00101100;
end
else if(contador == 'd441)
begin
q<=8'b00110000;
end
else if(contador == 'd442)
begin
q<=8'b00110100;
end
else if(contador == 'd443)
begin
q<=8'b00110010;
end
else if(contador == 'd444)
begin
q<=8'b00001010;
end
else if(contador == 'd445)
begin
q<=8'b00110010;
end
else if(contador == 'd446)
begin
q<=8'b00110100;
end
else if(contador == 'd447)
begin
q<=8'b00001001;
end
else if(contador == 'd448)
begin
q<=8'b01010100;
end
else if(contador == 'd449)
begin
q<=8'b01100101;
end
else if(contador == 'd450)
begin
q<=8'b01100011;
end
else if(contador == 'd451)
begin
q<=8'b01110101;
end
else if(contador == 'd452)
begin
q<=8'b01100001;
end
else if(contador == 'd453)
begin
q<=8'b01101101;
end
else if(contador == 'd454)
begin
q<=8'b01100010;
end
else if(contador == 'd455)
begin
q<=8'b01110101;
end
else if(contador == 'd456)
begin
q<=8'b01110010;
end
else if(contador == 'd457)
begin
q<=8'b01110010;
end
else if(contador == 'd458)
begin
q<=8'b01101111;
end
else if(contador == 'd459)
begin
q<=8'b00001001;
end
else if(contador == 'd460)
begin
q<=8'b00110001;
end
else if(contador == 'd461)
begin
q<=8'b00101100;
end
else if(contador == 'd462)
begin
q<=8'b00111001;
end
else if(contador == 'd463)
begin
q<=8'b00110110;
end
else if(contador == 'd464)
begin
q<=8'b00110010;
end
else if(contador == 'd465)
begin
q<=8'b00001010;
end
else if(contador == 'd466)
begin
q<=8'b00110010;
end
else if(contador == 'd467)
begin
q<=8'b00110101;
end
else if(contador == 'd468)
begin
q<=8'b00001001;
end
else if(contador == 'd469)
begin
q<=8'b01010001;
end
else if(contador == 'd470)
begin
q<=8'b01110101;
end
else if(contador == 'd471)
begin
q<=8'b01100101;
end
else if(contador == 'd472)
begin
q<=8'b01110100;
end
else if(contador == 'd473)
begin
q<=8'b01111010;
end
else if(contador == 'd474)
begin
q<=8'b01100001;
end
else if(contador == 'd475)
begin
q<=8'b01101100;
end
else if(contador == 'd476)
begin
q<=8'b01110000;
end
else if(contador == 'd477)
begin
q<=8'b01100101;
end
else if(contador == 'd478)
begin
q<=8'b01110001;
end
else if(contador == 'd479)
begin
q<=8'b01110101;
end
else if(contador == 'd480)
begin
q<=8'b01100101;
end
else if(contador == 'd481)
begin
q<=8'b00001001;
end
else if(contador == 'd482)
begin
q<=8'b00110001;
end
else if(contador == 'd483)
begin
q<=8'b00101100;
end
else if(contador == 'd484)
begin
q<=8'b00111001;
end
else if(contador == 'd485)
begin
q<=8'b00110000;
end
else if(contador == 'd486)
begin
q<=8'b00110100;
end
else if(contador == 'd487)
begin
q<=8'b00001010;
end
else if(contador == 'd488)
begin
q<=8'b00110010;
end
else if(contador == 'd489)
begin
q<=8'b00110110;
end
else if(contador == 'd490)
begin
q<=8'b00001001;
end
else if(contador == 'd491)
begin
q<=8'b01001010;
end
else if(contador == 'd492)
begin
q<=8'b01110101;
end
else if(contador == 'd493)
begin
q<=8'b01101101;
end
else if(contador == 'd494)
begin
q<=8'b01100001;
end
else if(contador == 'd495)
begin
q<=8'b01111001;
end
else if(contador == 'd496)
begin
q<=8'b01110100;
end
else if(contador == 'd497)
begin
q<=8'b01100101;
end
else if(contador == 'd498)
begin
q<=8'b01110000;
end
else if(contador == 'd499)
begin
q<=8'b01100101;
end
else if(contador == 'd500)
begin
q<=8'b01110001;
end
else if(contador == 'd501)
begin
q<=8'b01110101;
end
else if(contador == 'd502)
begin
q<=8'b01100101;
end
else if(contador == 'd503)
begin
q<=8'b00001001;
end
else if(contador == 'd504)
begin
q<=8'b00110001;
end
else if(contador == 'd505)
begin
q<=8'b00101100;
end
else if(contador == 'd506)
begin
q<=8'b00111000;
end
else if(contador == 'd507)
begin
q<=8'b00110001;
end
else if(contador == 'd508)
begin
q<=8'b00110101;
end
else if(contador == 'd509)
begin
q<=8'b00001010;
end
else if(contador == 'd510)
begin
q<=8'b00110010;
end
else if(contador == 'd511)
begin
q<=8'b00110111;
end
else if(contador == 'd512)
begin
q<=8'b00001001;
end
else if(contador == 'd513)
begin
q<=8'b01000011;
end
else if(contador == 'd514)
begin
q<=8'b01101000;
end
else if(contador == 'd515)
begin
q<=8'b01101001;
end
else if(contador == 'd516)
begin
q<=8'b01101110;
end
else if(contador == 'd517)
begin
q<=8'b01100111;
end
else if(contador == 'd518)
begin
q<=8'b01101111;
end
else if(contador == 'd519)
begin
q<=8'b00001001;
end
else if(contador == 'd520)
begin
q<=8'b00110001;
end
else if(contador == 'd521)
begin
q<=8'b00101100;
end
else if(contador == 'd522)
begin
q<=8'b00110111;
end
else if(contador == 'd523)
begin
q<=8'b00110111;
end
else if(contador == 'd524)
begin
q<=8'b00110101;
end
else if(contador == 'd525)
begin
q<=8'b00001010;
end
else if(contador == 'd526)
begin
q<=8'b00110010;
end
else if(contador == 'd527)
begin
q<=8'b00111000;
end
else if(contador == 'd528)
begin
q<=8'b00001001;
end
else if(contador == 'd529)
begin
q<=8'b01010100;
end
else if(contador == 'd530)
begin
q<=8'b01100001;
end
else if(contador == 'd531)
begin
q<=8'b01101000;
end
else if(contador == 'd532)
begin
q<=8'b01110101;
end
else if(contador == 'd533)
begin
q<=8'b01100001;
end
else if(contador == 'd534)
begin
q<=8'b01101100;
end
else if(contador == 'd535)
begin
q<=8'b00001001;
end
else if(contador == 'd536)
begin
q<=8'b00110001;
end
else if(contador == 'd537)
begin
q<=8'b00101100;
end
else if(contador == 'd538)
begin
q<=8'b00110111;
end
else if(contador == 'd539)
begin
q<=8'b00110001;
end
else if(contador == 'd540)
begin
q<=8'b00110110;
end
else if(contador == 'd541)
begin
q<=8'b00001010;
end
else if(contador == 'd542)
begin
q<=8'b00110010;
end
else if(contador == 'd543)
begin
q<=8'b00111001;
end
else if(contador == 'd544)
begin
q<=8'b00001001;
end
else if(contador == 'd545)
begin
q<=8'b01000011;
end
else if(contador == 'd546)
begin
q<=8'b01110010;
end
else if(contador == 'd547)
begin
q<=8'b01110101;
end
else if(contador == 'd548)
begin
q<=8'b01111010;
end
else if(contador == 'd549)
begin
q<=8'b00100000;
end
else if(contador == 'd550)
begin
q<=8'b01010001;
end
else if(contador == 'd551)
begin
q<=8'b01110101;
end
else if(contador == 'd552)
begin
q<=8'b01100101;
end
else if(contador == 'd553)
begin
q<=8'b01101101;
end
else if(contador == 'd554)
begin
q<=8'b01100001;
end
else if(contador == 'd555)
begin
q<=8'b01100100;
end
else if(contador == 'd556)
begin
q<=8'b01100001;
end
else if(contador == 'd557)
begin
q<=8'b00001001;
end
else if(contador == 'd558)
begin
q<=8'b00110001;
end
else if(contador == 'd559)
begin
q<=8'b00101100;
end
else if(contador == 'd560)
begin
q<=8'b00110110;
end
else if(contador == 'd561)
begin
q<=8'b00111001;
end
else if(contador == 'd562)
begin
q<=8'b00110000;
end
else if(contador == 'd563)
begin
q<=8'b00001010;
end
else if(contador == 'd564)
begin
q<=8'b00110011;
end
else if(contador == 'd565)
begin
q<=8'b00110000;
end
else if(contador == 'd566)
begin
q<=8'b00001001;
end
else if(contador == 'd567)
begin
q<=8'b01001101;
end
else if(contador == 'd568)
begin
q<=8'b01101111;
end
else if(contador == 'd569)
begin
q<=8'b01111001;
end
else if(contador == 'd570)
begin
q<=8'b01110101;
end
else if(contador == 'd571)
begin
q<=8'b01110100;
end
else if(contador == 'd572)
begin
q<=8'b01100001;
end
else if(contador == 'd573)
begin
q<=8'b00001001;
end
else if(contador == 'd574)
begin
q<=8'b00110001;
end
else if(contador == 'd575)
begin
q<=8'b00101100;
end
else if(contador == 'd576)
begin
q<=8'b00110110;
end
else if(contador == 'd577)
begin
q<=8'b00110110;
end
else if(contador == 'd578)
begin
q<=8'b00110010;
end
else if(contador == 'd579)
begin
q<=8'b00001010;
end
else if(contador == 'd580)
begin
q<=8'b00110011;
end
else if(contador == 'd581)
begin
q<=8'b00110001;
end
else if(contador == 'd582)
begin
q<=8'b00001001;
end
else if(contador == 'd583)
begin
q<=8'b01001001;
end
else if(contador == 'd584)
begin
q<=8'b01110000;
end
else if(contador == 'd585)
begin
q<=8'b01100001;
end
else if(contador == 'd586)
begin
q<=8'b01101100;
end
else if(contador == 'd587)
begin
q<=8'b01100001;
end
else if(contador == 'd588)
begin
q<=8'b00001001;
end
else if(contador == 'd589)
begin
q<=8'b00110001;
end
else if(contador == 'd590)
begin
q<=8'b00101100;
end
else if(contador == 'd591)
begin
q<=8'b00110110;
end
else if(contador == 'd592)
begin
q<=8'b00110101;
end
else if(contador == 'd593)
begin
q<=8'b00110000;
end
else if(contador == 'd594)
begin
q<=8'b00001010;
end
else if(contador == 'd595)
begin
q<=8'b00110011;
end
else if(contador == 'd596)
begin
q<=8'b00110010;
end
else if(contador == 'd597)
begin
q<=8'b00001001;
end
else if(contador == 'd598)
begin
q<=8'b01000001;
end
else if(contador == 'd599)
begin
q<=8'b01101101;
end
else if(contador == 'd600)
begin
q<=8'b01100001;
end
else if(contador == 'd601)
begin
q<=8'b01111001;
end
else if(contador == 'd602)
begin
q<=8'b01101111;
end
else if(contador == 'd603)
begin
q<=8'b00001001;
end
else if(contador == 'd604)
begin
q<=8'b00110001;
end
else if(contador == 'd605)
begin
q<=8'b00101100;
end
else if(contador == 'd606)
begin
q<=8'b00110101;
end
else if(contador == 'd607)
begin
q<=8'b00110100;
end
else if(contador == 'd608)
begin
q<=8'b00110100;
end
else if(contador == 'd609)
begin
q<=8'b00001010;
end
else if(contador == 'd610)
begin
q<=8'b00110011;
end
else if(contador == 'd611)
begin
q<=8'b00110011;
end
else if(contador == 'd612)
begin
q<=8'b00001001;
end
else if(contador == 'd613)
begin
q<=8'b01001001;
end
else if(contador == 'd614)
begin
q<=8'b01111000;
end
else if(contador == 'd615)
begin
q<=8'b01110100;
end
else if(contador == 'd616)
begin
q<=8'b01100101;
end
else if(contador == 'd617)
begin
q<=8'b01110000;
end
else if(contador == 'd618)
begin
q<=8'b01100101;
end
else if(contador == 'd619)
begin
q<=8'b01110001;
end
else if(contador == 'd620)
begin
q<=8'b01110101;
end
else if(contador == 'd621)
begin
q<=8'b01100101;
end
else if(contador == 'd622)
begin
q<=8'b00001001;
end
else if(contador == 'd623)
begin
q<=8'b00110001;
end
else if(contador == 'd624)
begin
q<=8'b00101100;
end
else if(contador == 'd625)
begin
q<=8'b00110010;
end
else if(contador == 'd626)
begin
q<=8'b00111001;
end
else if(contador == 'd627)
begin
q<=8'b00110001;
end
else if(contador == 'd628)
begin
q<=8'b00001010;
end
else if(contador == 'd629)
begin
q<=8'b00110011;
end
else if(contador == 'd630)
begin
q<=8'b00110100;
end
else if(contador == 'd631)
begin
q<=8'b00001001;
end
else if(contador == 'd632)
begin
q<=8'b01001101;
end
else if(contador == 'd633)
begin
q<=8'b01101111;
end
else if(contador == 'd634)
begin
q<=8'b01101110;
end
else if(contador == 'd635)
begin
q<=8'b01110100;
end
else if(contador == 'd636)
begin
q<=8'b01100101;
end
else if(contador == 'd637)
begin
q<=8'b01110010;
end
else if(contador == 'd638)
begin
q<=8'b01110010;
end
else if(contador == 'd639)
begin
q<=8'b01101001;
end
else if(contador == 'd640)
begin
q<=8'b01100011;
end
else if(contador == 'd641)
begin
q<=8'b01101111;
end
else if(contador == 'd642)
begin
q<=8'b00001001;
end
else if(contador == 'd643)
begin
q<=8'b00110001;
end
else if(contador == 'd644)
begin
q<=8'b00101100;
end
else if(contador == 'd645)
begin
q<=8'b00110010;
end
else if(contador == 'd646)
begin
q<=8'b00111000;
end
else if(contador == 'd647)
begin
q<=8'b00110101;
end
else if(contador == 'd648)
begin
q<=8'b00001010;
end
else if(contador == 'd649)
begin
q<=8'b00110011;
end
else if(contador == 'd650)
begin
q<=8'b00110101;
end
else if(contador == 'd651)
begin
q<=8'b00001001;
end
else if(contador == 'd652)
begin
q<=8'b01000011;
end
else if(contador == 'd653)
begin
q<=8'b01100101;
end
else if(contador == 'd654)
begin
q<=8'b01110010;
end
else if(contador == 'd655)
begin
q<=8'b01110010;
end
else if(contador == 'd656)
begin
q<=8'b01101111;
end
else if(contador == 'd657)
begin
q<=8'b00100000;
end
else if(contador == 'd658)
begin
q<=8'b01010010;
end
else if(contador == 'd659)
begin
q<=8'b01100101;
end
else if(contador == 'd660)
begin
q<=8'b01100100;
end
else if(contador == 'd661)
begin
q<=8'b01101111;
end
else if(contador == 'd662)
begin
q<=8'b01101110;
end
else if(contador == 'd663)
begin
q<=8'b01100100;
end
else if(contador == 'd664)
begin
q<=8'b01101111;
end
else if(contador == 'd665)
begin
q<=8'b00001001;
end
else if(contador == 'd666)
begin
q<=8'b00110001;
end
else if(contador == 'd667)
begin
q<=8'b00101100;
end
else if(contador == 'd668)
begin
q<=8'b00110010;
end
else if(contador == 'd669)
begin
q<=8'b00110110;
end
else if(contador == 'd670)
begin
q<=8'b00110111;
end
else if(contador == 'd671)
begin
q<=8'b00001010;
end
else if(contador == 'd672)
begin
q<=8'b00110011;
end
else if(contador == 'd673)
begin
q<=8'b00110110;
end
else if(contador == 'd674)
begin
q<=8'b00001001;
end
else if(contador == 'd675)
begin
q<=8'b01001100;
end
else if(contador == 'd676)
begin
q<=8'b01100001;
end
else if(contador == 'd677)
begin
q<=8'b01110011;
end
else if(contador == 'd678)
begin
q<=8'b00100000;
end
else if(contador == 'd679)
begin
q<=8'b01010110;
end
else if(contador == 'd680)
begin
q<=8'b11101101;
end
else if(contador == 'd681)
begin
q<=8'b01100010;
end
else if(contador == 'd682)
begin
q<=8'b01101111;
end
else if(contador == 'd683)
begin
q<=8'b01110010;
end
else if(contador == 'd684)
begin
q<=8'b01100001;
end
else if(contador == 'd685)
begin
q<=8'b01110011;
end
else if(contador == 'd686)
begin
q<=8'b00001001;
end
else if(contador == 'd687)
begin
q<=8'b00110001;
end
else if(contador == 'd688)
begin
q<=8'b00101100;
end
else if(contador == 'd689)
begin
q<=8'b00110000;
end
else if(contador == 'd690)
begin
q<=8'b00110111;
end
else if(contador == 'd691)
begin
q<=8'b00110000;
end
else if(contador == 'd692)
begin
q<=8'b00001010;
end
else if(contador == 'd693)
begin
q<=8'b00110011;
end
else if(contador == 'd694)
begin
q<=8'b00110111;
end
else if(contador == 'd695)
begin
q<=8'b00001001;
end
else if(contador == 'd696)
begin
q<=8'b01000011;
end
else if(contador == 'd697)
begin
q<=8'b01110101;
end
else if(contador == 'd698)
begin
q<=8'b01101100;
end
else if(contador == 'd699)
begin
q<=8'b01101101;
end
else if(contador == 'd700)
begin
q<=8'b01100001;
end
else if(contador == 'd701)
begin
q<=8'b00001001;
end
else if(contador == 'd702)
begin
q<=8'b00110001;
end
else if(contador == 'd703)
begin
q<=8'b00101100;
end
else if(contador == 'd704)
begin
q<=8'b00110000;
end
else if(contador == 'd705)
begin
q<=8'b00110010;
end
else if(contador == 'd706)
begin
q<=8'b00110111;
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
