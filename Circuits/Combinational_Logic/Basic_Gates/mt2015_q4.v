module A (
    input  x,
    input  y,
    output z
);
  assign z = (x ^ y) & x;

endmodule

module B(
    input  x,
    input  y,
    output z
);
  assign z = ~(x ^ y);
endmodule

// Combine circuit A and B
module top_module (
    input  x,
    input  y,
    output z
);
  reg out_IA1;
  reg out_IB1;
  reg out_IA2;
  reg out_IB2;

  reg out_z;
  A IA1 (
      .x(x),
      .y(y),
      .z(out_IA1)
  );
  A IA2 (
      .x(x),
      .y(y),
      .z(out_IA2)
  );
  B IB2 (
      .x(x),
      .y(y),
      .z(out_IB2)
  );

  B IB1 (
      .x(x),
      .y(y),
      .z(out_IB1)
  );

  assign out_z = (out_IA1 | out_IB1) ^ (out_IA2 & out_IB2);

  assign z = out_z;
endmodule
