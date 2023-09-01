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
    assign uio_out = 8'h00;
    assign uio_oe = 8'h00;

    // State enumeration
    typedef enum reg [1:0] {
        IDLE = 2'b00,
        RUN  = 2'b01
    } state_type;

    // State variables
    state_type state, next_state;

    // String and index
    reg [7:0] string [0:255] = {
        8'h54, 8'h61, 8'h6A, 8'h75, 8'h6D, 8'h75, 8'h6C, 8'h63, 8'h6F, 8'h20, // Tajumulco
        8'h54, 8'h61, 8'h63, 8'h61, 8'h6E, 8'h61, 8'h20, // Tacana
        8'h41, 8'h63, 8'h61, 8'h74, 8'h65, 8'h6E, 8'h61, 8'h6E, 8'h67, 8'h6F, 8'h20, // Acatenango
        8'h46, 8'h75, 8'h65, 8'h67, 8'h6F, 8'h20, // Fuego
        8'h53, 8'h61, 8'h6E, 8'h74, 8'h61, 8'h20, 8'h4D, 8'h61, 8'h72, 8'h69, 8'h61, 8'h20, // Santa Maria
        8'h41, 8'h67, 8'h75, 8'h61, 8'h20, // Agua
        8'h43, 8'h65, 8'h72, 8'h72, 8'h6F, 8'h20, 8'h5A, 8'h75, 8'h6E, 8'h69, 8'h6C, 8'h20, // Cerro Zunil
        8'h41, 8'h74, 8'h69, 8'h74, 8'h6C, 8'h61, 8'h6E, 8'h20, // Atitlan
        8'h53, 8'h61, 8'h6E, 8'h74, 8'h6F, 8'h20, 8'h54, 8'h6F, 8'h6D, 8'h61, 8'h73, 8'h20, // Santo Tomas
        8'h53, 8'h69, 8'h65, 8'h74, 8'h65, 8'h20, 8'h4F, 8'h72, 8'h65, 8'h6A, 8'h61, 8'h73, 8'h20, // Siete Orejas
        8'h43, 8'h65, 8'h72, 8'h72, 8'h6F, 8'h20, 8'h51, 8'h75, 8'h65, 8'h6D, 8'h61, 8'h64, 8'h6F, 8'h20, // Cerro Quemado
        8'h54, 8'h6F, 8'h6C, 8'h69, 8'h6D, 8'h61, 8'h6E, // Toliman

        8'h4C, 8'h61, 8'h73, 8'h20, 8'h56, 8'h69, 8'h62, 8'h6F, 8'h72, 8'h61, 8'h73, 8'h20, // Las Viboras
        8'h43, 8'h75, 8'h6C, 8'h6D, 8'h61 // Culma
    };

    reg [7:0] index = 0;

    // FSM logic
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        next_state = state;
        case(state)
            IDLE: begin
                next_state = RUN;
                index = 0;
            end
            RUN: begin
                if (index < 255) // Adjust this value based on the length of your string
                    next_state = RUN;
                else
                    next_state = IDLE;
            end
        endcase
    end

    // Output logic
    always @(posedge clk) begin
        if (state == RUN) begin
            uo_out <= string[index];
            index <= index + 1;
        end
    end

endmodule
