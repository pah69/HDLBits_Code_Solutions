module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
  reg [7:0]q1_to_d2;
  reg [7:0] q2_to_d3;
  reg [7:0] q3_to_mux;

  reg out_mux;
  my_dff8 d1 (
      .clk(clk),
      .d  (d),
      .q  (q1_to_d2)
  );

  my_dff8 d2 (
      .clk(clk),
      .d  (q1_to_d2),
      .q  (q2_to_d3)
  );

  my_dff8 d3 (
      .clk(clk),
      .d  (q2_to_d3),
      .q  (q3_to_mux)
  );

  always_comb begin
    case (sel)
      2'b00:   q = d;
      2'b01:   q = q1_to_d2;
      2'b10:   q = q2_to_d3;
      2'b11:   q = q3_to_mux;
      default: q = 0;
    endcase
  end

endmodule
