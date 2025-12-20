module top_module (
    input d, 
    input ena,
    output q);

    always @(d or ena) begin
        if(ena) begin
       		q <= d;
        end
    end
endmodule
