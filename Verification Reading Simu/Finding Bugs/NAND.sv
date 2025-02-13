module top_module (input a, input b, input c, output out);//
	logic out_put;
    andgate inst1 (out_put, a, b, c, 1'b1, 1'b1);
	assign out = !out_put;
endmodule
