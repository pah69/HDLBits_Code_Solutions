module NOR_gate(
    input a,
    input b,
    output out);
    
    reg or_out;
    always @(a or b) begin
        or_out = a | b;        
    end

    assign out = ~or_out;
    // assign out = ~(a | b);
    
endmodule