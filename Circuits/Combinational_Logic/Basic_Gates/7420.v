module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    reg out_nand1;
    reg out_nand2;

    assign out_nand1 = ~(p1a & p1b & p1c & p1d);
    assign p1y = out_nand1;
    assign out_nand2 = ~(p2a & p2b & p2c & p2d);
    assign p2y = out_nand2;
endmodule
