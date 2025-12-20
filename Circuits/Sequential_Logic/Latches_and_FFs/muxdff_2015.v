module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);

    reg mux_o;

    assign mux_o = L ? r_in : q_in;

    always @(posedge clk) begin
        Q <= mux_o;
    end

endmodule
