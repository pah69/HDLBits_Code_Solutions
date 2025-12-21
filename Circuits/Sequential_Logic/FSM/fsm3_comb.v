module top_module (
    input in,
    input [1:0] state,
    output [1:0] next_state,
    output out
);  //

  parameter A = 0, B = 1, C = 2, D = 3;

  // State transition logic: next_state = f(state, in)
  always @(*) begin
    case (state)
      A: begin
        next_state = in ? B : A;
        out = 0;
      end
    B: begin
        next_state = in ? B : C;
        out = 0;
      end
    C: begin
        next_state = in ? D : A;
        out = 0;
      end
    D: begin
        next_state = in ? B : C;
        out = 1;
      end
    default: begin
        next_state = state;
        out = 0;
      end
    endcase
  end
  // Output logic:  out = f(state) for a Moore state machine

endmodule
