`timescale 1ns / 1ps
module adder_32(A, B, S);
   input [31:0] A, B;
   output reg [31:0] S;

   always @(A, B) begin
      S = A + B;
   end
endmodule
