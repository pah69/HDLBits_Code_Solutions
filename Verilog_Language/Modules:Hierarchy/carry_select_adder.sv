module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

reg [15:0] in_mux1;
reg [15:0] in_mux2;

reg [1:0] sel_in;

reg [15:0] out_mux1;
reg [31:16] out_mux2;


    add16 inst1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(0),
        .sum(out_mux1[15:0]),
        .cout(sel_in)
    );

    add16 inst2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(0),
        .sum(in_mux1),
        .cout()
    );

    add16 inst3(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1),
        .sum(in_mux2),
        .cout()
    );

    always_comb begin
        if (~sel_in) begin
            out_mux2 = in_mux1;
        end else begin
            out_mux2 = in_mux2;
        end
    end
    
    assign sum = {out_mux2,out_mux1};

endmodule
