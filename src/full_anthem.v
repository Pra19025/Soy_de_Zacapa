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
    // Assign the input.
    assign uio_out = 8'h00;
    assign uio_oe = 8'h00;
    reg [11:0] contador;

    // String and index
    reg [7:0] string [0:255] = {
        8'h54, 8'h61, 8'h6A, 8'h75, 8'h6D, 8'h75, 8'h6C, 8'h63, 8'h6F, 8'h20, // Tajumulco
        8'h54, 8'h61, 8'h63, 8'h61, 8'h6E, 8'h61, 8'h20, // Tacana
        8'h41, 8'h63, 8'h61, 8'h74, 8'h65, 8'h6E, 8'h61, 8'h6E, 8'h67, 8'h6F, 8'h20, // Acatenango
        8'h46, 8'h75, 8'h65, 8'h67, 8'h6F, 8'h20, // Fuego
        8'h53, 8'h61, 8'h6E, 8'h74, 8'h61, 8'h20, 8'h4D, 8'h61, 8'h72, 8'h69, 8'h61, 8'h20, // Santa Maria
        8'h41, 8'h67, 8'h75, 8'h61, 8'h20// Agua
    };

    always @ (posedge rst_n or posedge clk)
    if (rst_n)
    contador<=12'b000000000000;
    else if(select==2'b00 || select==2'b11) begin
        if (contador <255)
            uo_out <= string[contador];
            contador <= contador + 1;
        else
            contador <= 0;
    end
    else
        contador <= 0;

endmodule
