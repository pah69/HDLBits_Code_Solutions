module 7458_chip (
  input p1a, p1b, p1c, p1d, p1e, p1f,
  output p1y,
  input p2a, p2b, p2c, p2d,
  output p2y);

  reg [1:0] and1;
  reg [1:0] and2;
  reg [1:0] and3;
  reg [1:0] and4;

always_comb begin
  and1 = p1a & p1b & p1c;
end 

always_comb begin
  and2 = p1f & p1e & p1d;
end

always_comb begin
  and3 = p2a & p2b;
end

always_comb begin
  and4 = p2c & p2d;
end

assign p1y = and1 | and2;
assign p2y = and3 | and4;


endmodule
