module top_module (
    input logic [1:0] sel,
    input logic [7:0] a,
    input logic [7:0] b,
    input logic [7:0] c,
    input logic [7:0] d,
    output logic [7:0] out  ); 

    logic [7:0] out_mux0, out_mux1;
    // 1st mux 
    mux2 mux0 ( sel[0],    a,    b, out_mux0 );
    // 2nd mux
    mux2 mux1 ( sel[0],    c,    d, out_mux1 );
    // 3rd mux
    mux2 mux3 ( sel[1], out_mux0, out_mux1,  out );

endmodule
