module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = (~x3 & x2) | (x2 & x1) | (x3 & x1);

    // assign f = (~x3 & x2 & ~x1) | // Row 2
    //            (~x3 & x2 &  x1) | // Row 3
    //            ( x3 & ~x2 &  x1) | // Row 5
    //            ( x3 &  x2 &  x1);  // Row 7
endmodule
