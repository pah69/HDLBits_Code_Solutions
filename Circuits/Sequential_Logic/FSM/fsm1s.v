module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output reg out;

    parameter A=0, B=1; 
    reg present_state, next_state;

    // Sequential Logic
    always @(posedge clk) begin
        if (reset) begin  
            present_state <= B;
        end else begin
            present_state <= next_state;
        end
    end

    // Combinational Logic
    always @(*) begin
        case (present_state)
            A: next_state = (in == 1'b0) ? B : A;
            B: next_state = (in == 1'b0) ? A : B;
            default: next_state = B;
        endcase
    end

    // Output logic
    always @(*) begin
        case (present_state)
            B: out = 1'b1;
            A: out = 1'b0;
            default: out = 1'b0;
        endcase
    end

endmodule