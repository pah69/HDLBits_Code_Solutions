module top_module ();
	reg clk, reset;
    reg t;
    reg q;
    
    tff tff_inst(clk, reset, t, q);
    always 
     #5 clk = ~clk;
 	initial begin
     clk = 0;
 	end
    
    // reset
    initial begin
       reset = 0;
        #10;
        reset = 1;
        #10;
        reset = 0;
        t = 1'b1;
    end
    
    always@(posedge clk)
endmodule
