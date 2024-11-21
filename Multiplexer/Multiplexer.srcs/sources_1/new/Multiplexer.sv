`timescale 1ns / 1ps

module Multiplexer #(
    parameter bits = 8,
    selectBits = 3
) (
    d,
    s,
    y
);
    input  logic [bits-1:0] d[2**selectBits-1:0];
    input  logic [selectBits-1:0] s;
    output logic [bits-1:0] y;
    
  always @(*) begin
    y = d[s];
  end

endmodule

