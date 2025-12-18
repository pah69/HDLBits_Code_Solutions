module top_module (
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
  reg [ 15:0] sum_o1,sum_o2;
  reg [ 31:0] xor_out;

  reg cout1_to_cin2;
  
  assign xor_out = {32{sub}} ^ b;

  add16 inst1 (
      .cin (sub),
      .a   (a[15:0]),
      .b   (xor_out[15:0]),
      .sum (sum_o1),
      .cout(cout1_to_cin2)
  );

  add16 inst2 (
      .a   (a[31:16]),
      .b   (xor_out[31:16]),
      .sum (sum_o2),
      .cin (cout1_to_cin2),
      .cout()
  );

  assign sum = {sum_o2, sum_o1};

endmodule
