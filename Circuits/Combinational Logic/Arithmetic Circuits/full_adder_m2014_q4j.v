module top_module (
    input  [3:0] x,
    input  [3:0] y,
    output [4:0] sum
);

  wire [2:0] c;

  fa fa_inst[3:0] (
      x,
      y,
      {c, 1'b0},
      {sum[4], c},
      sum[3:0]
  );
endmodule

module fa (
    input  a,
    b,
    cin,
    output cout,
    sum
);

  assign cout = (a & b) | (a & cin) | (b & cin);
  assign sum  = a ^ b ^ cin;
endmodule
