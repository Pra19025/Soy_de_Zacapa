module tt_um_chip_SP(
  output reg [7:0] q_out,
  input reset,
  input clk,
  input [1:0] select,
  input EN
);

  reg [11:0] contador;
  reg [7:0] q;

  always @(posedge clk or posedge reset)
    if (reset)
      contador <= 12'b000000000000;
    else if (select == 2'b00 || select == 2'b11) begin
      if (contador < 8)
        contador <= contador + 1;
      else
        contador <= 0;
    end else if (select == 2'b01 || select == 2'b10) begin
      if (contador < 6)
        contador <= contador + 1;
      else
        contador <= 0;
    end

  always @(posedge clk)
    if (select == 2'b00 || select == 2'b11) begin
      case (contador)
        0: q <= 8'b01000111;
        1: q <= 8'b01110101;
        2: q <= 8'b01100001;
        3: q <= 8'b01110100;
        4: q <= 8'b01100101;
        5: q <= 8'b01101101;
        6: q <= 8'b01100001;
        7: q <= 8'b01101100;
        8: q <= 8'b01100001;
        default: q <= 8'b00000000;
      endcase
    end else if (select == 2'b01 || select == 2'b10) begin
      case (contador)
        0: q <= 8'b01010001;
        1: q <= 8'b01010001;
        2: q <= 8'b01110101;
        3: q <= 8'b01100101;
        4: q <= 8'b01110100;
        5: q <= 8'b01111010;
        6: q <= 8'b01100001;
        default: q <= 8'b00000000;
      endcase
    end else
      q <= 8'b00000000;

  assign q_out = q;

endmodule
