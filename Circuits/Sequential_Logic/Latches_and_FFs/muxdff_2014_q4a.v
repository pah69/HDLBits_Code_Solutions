module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    reg mux1_o;
    reg mux2_o;
    
    assign mux1_o = E ? w : Q;
    assign mux2_o = L ? R : mux1_o;
    
    always_ff @(posedge clk) begin
        Q <= mux2_o;   
    end


endmodule
