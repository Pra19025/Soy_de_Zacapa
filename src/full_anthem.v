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
    wire [7:0] string;

    reg [7:0] index = 0;

    assign string  = 8'h54;
    
    // Output logic
    always @(posedge clk or negedge rst_n) begin

        if (~rst_n) begin
            index <= 0;
            uo_out <= 8'h00;
        end else if (ena) begin
            uo_out <= string;
            if (index < 20) // Adjust this value based on the actual length of your string
                index <= index + 1;
            else
                index <= 0;
        end
    end

endmodule

