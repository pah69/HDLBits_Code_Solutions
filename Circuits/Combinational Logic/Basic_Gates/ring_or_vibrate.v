module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign ringer = (ring|ring) ? 1 : 0;
    assign motor = (vibrate_mode|ring) ? 1 : 0;
endmodule
