`default_nettype none

module tt_um_chip_SP_volcanes(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // rst_n_n - low to rst_n
);

    reg [7:0] salida;

    // Assign the input.
    assign uio_out = 8'h00;
    assign uio_oe = 8'h00;

    // State constants
    parameter IDLE = 2'b00;
    parameter RUN  = 2'b01;

    // State variables
    reg [1:0] state, next_state;

    ///------------------------

    // Array and index for initialization
    reg [7:0] arreglo [0:255];
    reg [8:0] init_index = 0;  // 9 bits to count up to 255

    // Initialize array on reset release    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            init_index <= 9'h00;
        end else if (init_index <= 9'hFF) begin  // <= 255
            case (init_index)
                9'h00: arreglo[init_index] <= 8'h54;
                9'h01: arreglo[init_index] <= 8'h61;
                // Add more cases here for each element
                // ...
                9'hFF: arreglo[init_index] <= 8'h20;  // Last element (replace with actual value)
            endcase
            init_index <= init_index + 1;
        end
    end


    ///----------------------

    

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
                if (index < 255) //ajustar
                    next_state = RUN;
                else
                    next_state = IDLE;
            end
        endcase
    end

    // Output logic
    always @(posedge clk) begin
        if (state == RUN) begin
            salida <= arreglo[index];
            index <= index + 1;
        end
    end

    assign uo_out = salida;

endmodule
