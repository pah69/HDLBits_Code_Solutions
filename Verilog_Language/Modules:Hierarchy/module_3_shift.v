module top_module (
    input  clk,
    input  d,
    output q
);  
    wire q1_to_d2;
    my_dff d1(
        .clk(clk),
        .d(d),
        .q(q1_to_d2)
    );

    wire q2_to_d3;
    my_dff d2(
        .clk(clk),
        .d(q1_to_d2),
        .q(q2_to_d3)
    );
    my_dff d3(
        .clk(clk),
        .d(q2_to_d3),
        .q(q)
    );
endmodule
