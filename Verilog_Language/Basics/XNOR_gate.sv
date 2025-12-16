module XNOR_gate(
    input a,
    input b,
    output out);

    reg xor_out;
    always @(a or b) begin
        xor_out = a ^ b;        
    end

    assign out = ~xor_out;
    
    
endmodule