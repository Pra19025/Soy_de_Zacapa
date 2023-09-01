module tt_um_chip_SP_NoelFPB(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output reg [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,  // IOs: Bidirectional Input path
    output wire [7:0] uio_out, // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,  // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,     // will go high when the design is enabled
    input  wire       clk,     // clock
    input  wire       rst_n    // rst_n_n - low to rst_n
);

    // Assign the input.
    assign uio_out = 8'h00;
    assign uio_oe = 8'h00;
    assign ena = ui_in[0];

    // String and index
    wire [7:0] string [0:50];

    reg [7:0] index = 0;

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
    assign string[11] = 8'h61;
    assign string[12] = 8'h63;
    assign string[13] = 8'h61;
    assign string[14] = 8'h6E;
    assign string[15] = 8'h61;
    assign string[16] = 8'h20;
    assign string[17] = 8'h41;
    assign string[18] = 8'h63;
    assign string[19] = 8'h61;
    assign string[20] = 8'h74;
    assign string[21] = 8'h65;
    assign string[22] = 8'h6E;
    assign string[23] = 8'h61;
    assign string[24] = 8'h6E;
    assign string[25] = 8'h67;
    assign string[26] = 8'h6F;
    assign string[27] = 8'h20;
    assign string[28] = 8'h46;
    assign string[29] = 8'h75;
    assign string[30] = 8'h65;
    assign string[31] = 8'h67;
    assign string[32] = 8'h6F;
    assign string[33] = 8'h20;
    assign string[34] = 8'h53;
    assign string[35] = 8'h61;
    assign string[36] = 8'h6E;
    assign string[37] = 8'h74;
    assign string[38] = 8'h61;
    assign string[39] = 8'h20;
    assign string[40] = 8'h4D;
    assign string[41] = 8'h61;
    assign string[42] = 8'h72;
    assign string[43] = 8'h69;
    assign string[44] = 8'h61;
    assign string[45] = 8'h20;
    assign string[46] = 8'h41;
    assign string[47] = 8'h67;
    assign string[48] = 8'h75;
    assign string[49] = 8'h61;
    assign string[50] = 8'h20;

    // Output logic
    always @(posedge clk or negedge rst_n) begin

        if (~rst_n) begin
            index <= 0;
            uo_out <= 8'h00;
        end else if (ena) begin
            uo_out <= string[index];
            if (index < 50) // Adjust this value based on the actual length of your string
                index <= index + 1;
            else
                index <= 0;
        end
    end

endmodule
