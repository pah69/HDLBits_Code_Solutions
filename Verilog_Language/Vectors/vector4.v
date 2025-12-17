module top_module(
    input [7:0] in,
    output [31:0] out);

    // replicate bit[7] 24 times, followed by the 8-bit number itself
    assign out = {{24{in[7]}}, in};
endmodule