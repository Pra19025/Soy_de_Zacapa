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
if (contador <380)
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
q<=8'b01010100;
end
else if(contador == 'd29)
begin
q<=8'b01100001;
end
else if(contador == 'd30)
begin
q<=8'b01101010;
end
else if(contador == 'd31)
begin
q<=8'b01110101;
end
else if(contador == 'd32)
begin
q<=8'b01101101;
end
else if(contador == 'd33)
begin
q<=8'b01110101;
end
else if(contador == 'd34)
begin
q<=8'b01101100;
end
else if(contador == 'd35)
begin
q<=8'b01100011;
end
else if(contador == 'd36)
begin
q<=8'b01101111;
end
else if(contador == 'd37)
begin
q<=8'b00001010;
end
else if(contador == 'd38)
begin
q<=8'b01010100;
end
else if(contador == 'd39)
begin
q<=8'b01100001;
end
else if(contador == 'd40)
begin
q<=8'b01100011;
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
q<=8'b11100001;
end
else if(contador == 'd44)
begin
q<=8'b00001010;
end
else if(contador == 'd45)
begin
q<=8'b01000001;
end
else if(contador == 'd46)
begin
q<=8'b01100011;
end
else if(contador == 'd47)
begin
q<=8'b01100001;
end
else if(contador == 'd48)
begin
q<=8'b01110100;
end
else if(contador == 'd49)
begin
q<=8'b01100101;
end
else if(contador == 'd50)
begin
q<=8'b01101110;
end
else if(contador == 'd51)
begin
q<=8'b01100001;
end
else if(contador == 'd52)
begin
q<=8'b01101110;
end
else if(contador == 'd53)
begin
q<=8'b01100111;
end
else if(contador == 'd54)
begin
q<=8'b01101111;
end
else if(contador == 'd55)
begin
q<=8'b00001010;
end
else if(contador == 'd56)
begin
q<=8'b01000110;
end
else if(contador == 'd57)
begin
q<=8'b01110101;
end
else if(contador == 'd58)
begin
q<=8'b01100101;
end
else if(contador == 'd59)
begin
q<=8'b01100111;
end
else if(contador == 'd60)
begin
q<=8'b01101111;
end
else if(contador == 'd61)
begin
q<=8'b00001010;
end
else if(contador == 'd62)
begin
q<=8'b01010011;
end
else if(contador == 'd63)
begin
q<=8'b01100001;
end
else if(contador == 'd64)
begin
q<=8'b01101110;
end
else if(contador == 'd65)
begin
q<=8'b01110100;
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
q<=8'b01001101;
end
else if(contador == 'd69)
begin
q<=8'b01100001;
end
else if(contador == 'd70)
begin
q<=8'b01110010;
end
else if(contador == 'd71)
begin
q<=8'b11101101;
end
else if(contador == 'd72)
begin
q<=8'b01100001;
end
else if(contador == 'd73)
begin
q<=8'b00001010;
end
else if(contador == 'd74)
begin
q<=8'b01000001;
end
else if(contador == 'd75)
begin
q<=8'b01100111;
end
else if(contador == 'd76)
begin
q<=8'b01110101;
end
else if(contador == 'd77)
begin
q<=8'b01100001;
end
else if(contador == 'd78)
begin
q<=8'b00001010;
end
else if(contador == 'd79)
begin
q<=8'b01000011;
end
else if(contador == 'd80)
begin
q<=8'b01100101;
end
else if(contador == 'd81)
begin
q<=8'b01110010;
end
else if(contador == 'd82)
begin
q<=8'b01110010;
end
else if(contador == 'd83)
begin
q<=8'b01101111;
end
else if(contador == 'd84)
begin
q<=8'b00100000;
end
else if(contador == 'd85)
begin
q<=8'b01011010;
end
else if(contador == 'd86)
begin
q<=8'b01110101;
end
else if(contador == 'd87)
begin
q<=8'b01101110;
end
else if(contador == 'd88)
begin
q<=8'b01101001;
end
else if(contador == 'd89)
begin
q<=8'b01101100;
end
else if(contador == 'd90)
begin
q<=8'b00001010;
end
else if(contador == 'd91)
begin
q<=8'b01000001;
end
else if(contador == 'd92)
begin
q<=8'b01110100;
end
else if(contador == 'd93)
begin
q<=8'b01101001;
end
else if(contador == 'd94)
begin
q<=8'b01110100;
end
else if(contador == 'd95)
begin
q<=8'b01101100;
end
else if(contador == 'd96)
begin
q<=8'b11100001;
end
else if(contador == 'd97)
begin
q<=8'b01101110;
end
else if(contador == 'd98)
begin
q<=8'b00001010;
end
else if(contador == 'd99)
begin
q<=8'b01010011;
end
else if(contador == 'd100)
begin
q<=8'b01100001;
end
else if(contador == 'd101)
begin
q<=8'b01101110;
end
else if(contador == 'd102)
begin
q<=8'b01110100;
end
else if(contador == 'd103)
begin
q<=8'b01101111;
end
else if(contador == 'd104)
begin
q<=8'b00100000;
end
else if(contador == 'd105)
begin
q<=8'b01010100;
end
else if(contador == 'd106)
begin
q<=8'b01101111;
end
else if(contador == 'd107)
begin
q<=8'b01101101;
end
else if(contador == 'd108)
begin
q<=8'b11100001;
end
else if(contador == 'd109)
begin
q<=8'b01110011;
end
else if(contador == 'd110)
begin
q<=8'b00001010;
end
else if(contador == 'd111)
begin
q<=8'b01010011;
end
else if(contador == 'd112)
begin
q<=8'b01101001;
end
else if(contador == 'd113)
begin
q<=8'b01100101;
end
else if(contador == 'd114)
begin
q<=8'b01110100;
end
else if(contador == 'd115)
begin
q<=8'b01100101;
end
else if(contador == 'd116)
begin
q<=8'b00100000;
end
else if(contador == 'd117)
begin
q<=8'b01001111;
end
else if(contador == 'd118)
begin
q<=8'b01110010;
end
else if(contador == 'd119)
begin
q<=8'b01100101;
end
else if(contador == 'd120)
begin
q<=8'b01101010;
end
else if(contador == 'd121)
begin
q<=8'b01100001;
end
else if(contador == 'd122)
begin
q<=8'b01110011;
end
else if(contador == 'd123)
begin
q<=8'b00001010;
end
else if(contador == 'd124)
begin
q<=8'b01000011;
end
else if(contador == 'd125)
begin
q<=8'b01100101;
end
else if(contador == 'd126)
begin
q<=8'b01110010;
end
else if(contador == 'd127)
begin
q<=8'b01110010;
end
else if(contador == 'd128)
begin
q<=8'b01101111;
end
else if(contador == 'd129)
begin
q<=8'b00100000;
end
else if(contador == 'd130)
begin
q<=8'b01010001;
end
else if(contador == 'd131)
begin
q<=8'b01110101;
end
else if(contador == 'd132)
begin
q<=8'b01100101;
end
else if(contador == 'd133)
begin
q<=8'b01101101;
end
else if(contador == 'd134)
begin
q<=8'b01100001;
end
else if(contador == 'd135)
begin
q<=8'b01100100;
end
else if(contador == 'd136)
begin
q<=8'b01101111;
end
else if(contador == 'd137)
begin
q<=8'b00001010;
end
else if(contador == 'd138)
begin
q<=8'b01010100;
end
else if(contador == 'd139)
begin
q<=8'b01101111;
end
else if(contador == 'd140)
begin
q<=8'b01101100;
end
else if(contador == 'd141)
begin
q<=8'b01101001;
end
else if(contador == 'd142)
begin
q<=8'b01101101;
end
else if(contador == 'd143)
begin
q<=8'b11100001;
end
else if(contador == 'd144)
begin
q<=8'b01101110;
end
else if(contador == 'd145)
begin
q<=8'b00001010;
end
else if(contador == 'd146)
begin
q<=8'b01000011;
end
else if(contador == 'd147)
begin
q<=8'b01110101;
end
else if(contador == 'd148)
begin
q<=8'b01111000;
end
else if(contador == 'd149)
begin
q<=8'b01101100;
end
else if(contador == 'd150)
begin
q<=8'b01101001;
end
else if(contador == 'd151)
begin
q<=8'b01110001;
end
else if(contador == 'd152)
begin
q<=8'b01110101;
end
else if(contador == 'd153)
begin
q<=8'b01100101;
end
else if(contador == 'd154)
begin
q<=8'b01101100;
end
else if(contador == 'd155)
begin
q<=8'b00001010;
end
else if(contador == 'd156)
begin
q<=8'b01010011;
end
else if(contador == 'd157)
begin
q<=8'b01100001;
end
else if(contador == 'd158)
begin
q<=8'b01101110;
end
else if(contador == 'd159)
begin
q<=8'b00100000;
end
else if(contador == 'd160)
begin
q<=8'b01010000;
end
else if(contador == 'd161)
begin
q<=8'b01100101;
end
else if(contador == 'd162)
begin
q<=8'b01100100;
end
else if(contador == 'd163)
begin
q<=8'b01110010;
end
else if(contador == 'd164)
begin
q<=8'b01101111;
end
else if(contador == 'd165)
begin
q<=8'b00001010;
end
else if(contador == 'd166)
begin
q<=8'b01000011;
end
else if(contador == 'd167)
begin
q<=8'b01101000;
end
else if(contador == 'd168)
begin
q<=8'b01101001;
end
else if(contador == 'd169)
begin
q<=8'b01100011;
end
else if(contador == 'd170)
begin
q<=8'b01100001;
end
else if(contador == 'd171)
begin
q<=8'b01100010;
end
else if(contador == 'd172)
begin
q<=8'b01100001;
end
else if(contador == 'd173)
begin
q<=8'b01101100;
end
else if(contador == 'd174)
begin
q<=8'b00001010;
end
else if(contador == 'd175)
begin
q<=8'b01001100;
end
else if(contador == 'd176)
begin
q<=8'b01100001;
end
else if(contador == 'd177)
begin
q<=8'b01100011;
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
q<=8'b01100100;
end
else if(contador == 'd181)
begin
q<=8'b11110011;
end
else if(contador == 'd182)
begin
q<=8'b01101110;
end
else if(contador == 'd183)
begin
q<=8'b00001010;
end
else if(contador == 'd184)
begin
q<=8'b01010000;
end
else if(contador == 'd185)
begin
q<=8'b01100001;
end
else if(contador == 'd186)
begin
q<=8'b01100011;
end
else if(contador == 'd187)
begin
q<=8'b01100001;
end
else if(contador == 'd188)
begin
q<=8'b01111001;
end
else if(contador == 'd189)
begin
q<=8'b01100001;
end
else if(contador == 'd190)
begin
q<=8'b00001010;
end
else if(contador == 'd191)
begin
q<=8'b01010011;
end
else if(contador == 'd192)
begin
q<=8'b01100001;
end
else if(contador == 'd193)
begin
q<=8'b01101110;
end
else if(contador == 'd194)
begin
q<=8'b01110100;
end
else if(contador == 'd195)
begin
q<=8'b01101001;
end
else if(contador == 'd196)
begin
q<=8'b01100001;
end
else if(contador == 'd197)
begin
q<=8'b01100111;
end
else if(contador == 'd198)
begin
q<=8'b01110101;
end
else if(contador == 'd199)
begin
q<=8'b01101001;
end
else if(contador == 'd200)
begin
q<=8'b01110100;
end
else if(contador == 'd201)
begin
q<=8'b01101111;
end
else if(contador == 'd202)
begin
q<=8'b00001010;
end
else if(contador == 'd203)
begin
q<=8'b01010011;
end
else if(contador == 'd204)
begin
q<=8'b01100001;
end
else if(contador == 'd205)
begin
q<=8'b01101110;
end
else if(contador == 'd206)
begin
q<=8'b00100000;
end
else if(contador == 'd207)
begin
q<=8'b01000001;
end
else if(contador == 'd208)
begin
q<=8'b01101110;
end
else if(contador == 'd209)
begin
q<=8'b01110100;
end
else if(contador == 'd210)
begin
q<=8'b01101111;
end
else if(contador == 'd211)
begin
q<=8'b01101110;
end
else if(contador == 'd212)
begin
q<=8'b01101001;
end
else if(contador == 'd213)
begin
q<=8'b01101111;
end
else if(contador == 'd214)
begin
q<=8'b00001010;
end
else if(contador == 'd215)
begin
q<=8'b01001010;
end
else if(contador == 'd216)
begin
q<=8'b01110101;
end
else if(contador == 'd217)
begin
q<=8'b01101101;
end
else if(contador == 'd218)
begin
q<=8'b01100001;
end
else if(contador == 'd219)
begin
q<=8'b01111001;
end
else if(contador == 'd220)
begin
q<=8'b00001010;
end
else if(contador == 'd221)
begin
q<=8'b01010100;
end
else if(contador == 'd222)
begin
q<=8'b01101111;
end
else if(contador == 'd223)
begin
q<=8'b01100010;
end
else if(contador == 'd224)
begin
q<=8'b11110011;
end
else if(contador == 'd225)
begin
q<=8'b01101110;
end
else if(contador == 'd226)
begin
q<=8'b00001010;
end
else if(contador == 'd227)
begin
q<=8'b01000001;
end
else if(contador == 'd228)
begin
q<=8'b01101100;
end
else if(contador == 'd229)
begin
q<=8'b01111010;
end
else if(contador == 'd230)
begin
q<=8'b01100001;
end
else if(contador == 'd231)
begin
q<=8'b01110100;
end
else if(contador == 'd232)
begin
q<=8'b01100001;
end
else if(contador == 'd233)
begin
q<=8'b01110100;
end
else if(contador == 'd234)
begin
q<=8'b01100101;
end
else if(contador == 'd235)
begin
q<=8'b00001010;
end
else if(contador == 'd236)
begin
q<=8'b01010011;
end
else if(contador == 'd237)
begin
q<=8'b01110101;
end
else if(contador == 'd238)
begin
q<=8'b01100011;
end
else if(contador == 'd239)
begin
q<=8'b01101000;
end
else if(contador == 'd240)
begin
q<=8'b01101001;
end
else if(contador == 'd241)
begin
q<=8'b01110100;
end
else if(contador == 'd242)
begin
q<=8'b11100001;
end
else if(contador == 'd243)
begin
q<=8'b01101110;
end
else if(contador == 'd244)
begin
q<=8'b00001010;
end
else if(contador == 'd245)
begin
q<=8'b01010100;
end
else if(contador == 'd246)
begin
q<=8'b01100101;
end
else if(contador == 'd247)
begin
q<=8'b01100011;
end
else if(contador == 'd248)
begin
q<=8'b01110101;
end
else if(contador == 'd249)
begin
q<=8'b01100001;
end
else if(contador == 'd250)
begin
q<=8'b01101101;
end
else if(contador == 'd251)
begin
q<=8'b01100010;
end
else if(contador == 'd252)
begin
q<=8'b01110101;
end
else if(contador == 'd253)
begin
q<=8'b01110010;
end
else if(contador == 'd254)
begin
q<=8'b01110010;
end
else if(contador == 'd255)
begin
q<=8'b01101111;
end
else if(contador == 'd256)
begin
q<=8'b00001010;
end
else if(contador == 'd257)
begin
q<=8'b01010001;
end
else if(contador == 'd258)
begin
q<=8'b01110101;
end
else if(contador == 'd259)
begin
q<=8'b01100101;
end
else if(contador == 'd260)
begin
q<=8'b01110100;
end
else if(contador == 'd261)
begin
q<=8'b01111010;
end
else if(contador == 'd262)
begin
q<=8'b01100001;
end
else if(contador == 'd263)
begin
q<=8'b01101100;
end
else if(contador == 'd264)
begin
q<=8'b01110000;
end
else if(contador == 'd265)
begin
q<=8'b01100101;
end
else if(contador == 'd266)
begin
q<=8'b01110001;
end
else if(contador == 'd267)
begin
q<=8'b01110101;
end
else if(contador == 'd268)
begin
q<=8'b01100101;
end
else if(contador == 'd269)
begin
q<=8'b00001010;
end
else if(contador == 'd270)
begin
q<=8'b01001010;
end
else if(contador == 'd271)
begin
q<=8'b01110101;
end
else if(contador == 'd272)
begin
q<=8'b01101101;
end
else if(contador == 'd273)
begin
q<=8'b01100001;
end
else if(contador == 'd274)
begin
q<=8'b01111001;
end
else if(contador == 'd275)
begin
q<=8'b01110100;
end
else if(contador == 'd276)
begin
q<=8'b01100101;
end
else if(contador == 'd277)
begin
q<=8'b01110000;
end
else if(contador == 'd278)
begin
q<=8'b01100101;
end
else if(contador == 'd279)
begin
q<=8'b01110001;
end
else if(contador == 'd280)
begin
q<=8'b01110101;
end
else if(contador == 'd281)
begin
q<=8'b01100101;
end
else if(contador == 'd282)
begin
q<=8'b00001010;
end
else if(contador == 'd283)
begin
q<=8'b01000011;
end
else if(contador == 'd284)
begin
q<=8'b01101000;
end
else if(contador == 'd285)
begin
q<=8'b01101001;
end
else if(contador == 'd286)
begin
q<=8'b01101110;
end
else if(contador == 'd287)
begin
q<=8'b01100111;
end
else if(contador == 'd288)
begin
q<=8'b01101111;
end
else if(contador == 'd289)
begin
q<=8'b00001010;
end
else if(contador == 'd290)
begin
q<=8'b01010100;
end
else if(contador == 'd291)
begin
q<=8'b01100001;
end
else if(contador == 'd292)
begin
q<=8'b01101000;
end
else if(contador == 'd293)
begin
q<=8'b01110101;
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
q<=8'b00001010;
end
else if(contador == 'd297)
begin
q<=8'b01000011;
end
else if(contador == 'd298)
begin
q<=8'b01110010;
end
else if(contador == 'd299)
begin
q<=8'b01110101;
end
else if(contador == 'd300)
begin
q<=8'b01111010;
end
else if(contador == 'd301)
begin
q<=8'b00100000;
end
else if(contador == 'd302)
begin
q<=8'b01010001;
end
else if(contador == 'd303)
begin
q<=8'b01110101;
end
else if(contador == 'd304)
begin
q<=8'b01100101;
end
else if(contador == 'd305)
begin
q<=8'b01101101;
end
else if(contador == 'd306)
begin
q<=8'b01100001;
end
else if(contador == 'd307)
begin
q<=8'b01100100;
end
else if(contador == 'd308)
begin
q<=8'b01100001;
end
else if(contador == 'd309)
begin
q<=8'b00001010;
end
else if(contador == 'd310)
begin
q<=8'b01001101;
end
else if(contador == 'd311)
begin
q<=8'b01101111;
end
else if(contador == 'd312)
begin
q<=8'b01111001;
end
else if(contador == 'd313)
begin
q<=8'b01110101;
end
else if(contador == 'd314)
begin
q<=8'b01110100;
end
else if(contador == 'd315)
begin
q<=8'b01100001;
end
else if(contador == 'd316)
begin
q<=8'b00001010;
end
else if(contador == 'd317)
begin
q<=8'b01001001;
end
else if(contador == 'd318)
begin
q<=8'b01110000;
end
else if(contador == 'd319)
begin
q<=8'b01100001;
end
else if(contador == 'd320)
begin
q<=8'b01101100;
end
else if(contador == 'd321)
begin
q<=8'b01100001;
end
else if(contador == 'd322)
begin
q<=8'b00001010;
end
else if(contador == 'd323)
begin
q<=8'b01000001;
end
else if(contador == 'd324)
begin
q<=8'b01101101;
end
else if(contador == 'd325)
begin
q<=8'b01100001;
end
else if(contador == 'd326)
begin
q<=8'b01111001;
end
else if(contador == 'd327)
begin
q<=8'b01101111;
end
else if(contador == 'd328)
begin
q<=8'b00001010;
end
else if(contador == 'd329)
begin
q<=8'b01001001;
end
else if(contador == 'd330)
begin
q<=8'b01111000;
end
else if(contador == 'd331)
begin
q<=8'b01110100;
end
else if(contador == 'd332)
begin
q<=8'b01100101;
end
else if(contador == 'd333)
begin
q<=8'b01110000;
end
else if(contador == 'd334)
begin
q<=8'b01100101;
end
else if(contador == 'd335)
begin
q<=8'b01110001;
end
else if(contador == 'd336)
begin
q<=8'b01110101;
end
else if(contador == 'd337)
begin
q<=8'b01100101;
end
else if(contador == 'd338)
begin
q<=8'b00001010;
end
else if(contador == 'd339)
begin
q<=8'b01001101;
end
else if(contador == 'd340)
begin
q<=8'b01101111;
end
else if(contador == 'd341)
begin
q<=8'b01101110;
end
else if(contador == 'd342)
begin
q<=8'b01110100;
end
else if(contador == 'd343)
begin
q<=8'b01100101;
end
else if(contador == 'd344)
begin
q<=8'b01110010;
end
else if(contador == 'd345)
begin
q<=8'b01110010;
end
else if(contador == 'd346)
begin
q<=8'b01101001;
end
else if(contador == 'd347)
begin
q<=8'b01100011;
end
else if(contador == 'd348)
begin
q<=8'b01101111;
end
else if(contador == 'd349)
begin
q<=8'b00001010;
end
else if(contador == 'd350)
begin
q<=8'b01000011;
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
q<=8'b01110010;
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
q<=8'b01010010;
end
else if(contador == 'd357)
begin
q<=8'b01100101;
end
else if(contador == 'd358)
begin
q<=8'b01100100;
end
else if(contador == 'd359)
begin
q<=8'b01101111;
end
else if(contador == 'd360)
begin
q<=8'b01101110;
end
else if(contador == 'd361)
begin
q<=8'b01100100;
end
else if(contador == 'd362)
begin
q<=8'b01101111;
end
else if(contador == 'd363)
begin
q<=8'b00001010;
end
else if(contador == 'd364)
begin
q<=8'b01001100;
end
else if(contador == 'd365)
begin
q<=8'b01100001;
end
else if(contador == 'd366)
begin
q<=8'b01110011;
end
else if(contador == 'd367)
begin
q<=8'b00100000;
end
else if(contador == 'd368)
begin
q<=8'b01010110;
end
else if(contador == 'd369)
begin
q<=8'b11101101;
end
else if(contador == 'd370)
begin
q<=8'b01100010;
end
else if(contador == 'd371)
begin
q<=8'b01101111;
end
else if(contador == 'd372)
begin
q<=8'b01110010;
end
else if(contador == 'd373)
begin
q<=8'b01100001;
end
else if(contador == 'd374)
begin
q<=8'b01110011;
end
else if(contador == 'd375)
begin
q<=8'b00001010;
end
else if(contador == 'd376)
begin
q<=8'b01000011;
end
else if(contador == 'd377)
begin
q<=8'b01110101;
end
else if(contador == 'd378)
begin
q<=8'b01101100;
end
else if(contador == 'd379)
begin
q<=8'b01101101;
end
else if(contador == 'd380)
begin
q<=8'b01100001;
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
