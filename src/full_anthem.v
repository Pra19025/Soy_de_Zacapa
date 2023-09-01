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
    wire ena;
    assign uio_out = 8'h00;
    assign uio_oe = 8'h00;
    assign ena = ui_in[0];

    // String and index
    reg [7:0] string [0:255] = {
        8'h54, 8'h61, 8'h6A, 8'h75, 8'h6D, 8'h75, 8'h6C, 8'h63, 8'h6F, 8'h20, // Tajumulco
        8'h54, 8'h61, 8'h63, 8'h61, 8'h6E, 8'h61, 8'h20, // Tacana
        8'h41, 8'h63, 8'h61, 8'h74, 8'h65, 8'h6E, 8'h61, 8'h6E, 8'h67, 8'h6F, 8'h20, // Acatenango
        8'h46, 8'h75, 8'h65, 8'h67, 8'h6F, 8'h20, // Fuego
        8'h53, 8'h61, 8'h6E, 8'h74, 8'h61, 8'h20, 8'h4D, 8'h61, 8'h72, 8'h69, 8'h61, 8'h20, // Santa Maria
        8'h41, 8'h67, 8'h75, 8'h61, 8'h20// Agua
    };

    reg [7:0] index = 0;

    // Output logic
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            index <= 0;
            uo_out <= 8'h00;
        end else if (ena) begin
            uo_out <= string[index];
            if (index < 255) // Adjust this value based on the actual length of your string
                index <= index + 1;
            else
                index <= 0;
        end
    end

endmodule
