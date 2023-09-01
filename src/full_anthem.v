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

    assign uio_oe = 8'h00;
    assign ena = ui_in[0];

    // String and index
    wire [7:0] string [0:50];
    reg[7:0] salida;
    reg [7:0] index;

    assign string[0]  = 8'h54;
    assign string[1]  = 8'h61;
    assign string[2]  = 8'h6A;
    assign string[3]  = 8'h75;
    assign string[4]  = 8'h6D;
    assign string[5]  = 8'h75;
    assign string[6]  = 8'h6C;
    assign string[7]  = 8'h63;
    assign string[8]  = 8'h6F;
    assign string[9]  = 8'h20;
    assign string[10] = 8'h54;
  

    // Output logic
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            index <= 0;
            salida <= 8'h00;
        end else if (ena) begin
            salida <= string[index];
            if (index < 10) // Adjust this value based on the actual length of your string
                index <= index + 1;
            else
                index <= 0;
        end
    end

    assign uo_out = salida;

endmodule

