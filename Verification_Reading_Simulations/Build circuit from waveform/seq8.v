module top_module (
    input clock,
    input a,
    output p,
    output q );

    always @(clock)
        if(clock)
            p <= a;
    
    always_ff @(negedge clock)
        q <= a;
endmodule
