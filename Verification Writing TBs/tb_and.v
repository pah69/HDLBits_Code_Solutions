module top_module();
    reg [1:0] in;
    reg out;
    
     andgate dut_inst(in, out);
     initial begin
       in = 2'b00;
        //out 
        #10;
        in = 2'b01;
        #10;
        in = 2'b10;
        #10;
        in = 2'b11;
    end
   
endmodule
