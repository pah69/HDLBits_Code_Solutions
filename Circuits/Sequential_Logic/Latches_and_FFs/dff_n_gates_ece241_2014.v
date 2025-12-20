module top_module (
    input clk,
    input x,
    output z
); 
    reg dff1_o;
    reg dff2_o;
    reg dff3_o;
    

    always_ff@(posedge clk) begin
        dff1_o <= x ^ dff1_o;
    end

    always_ff@(posedge clk) begin
        dff2_o <= x & ~dff2_o;
    end

    always_ff@(posedge clk) begin
        dff3_o <= x | ~dff3_o;
    end

    assign z = ~(dff1_o | dff2_o | dff3_o);
    
endmodule   
