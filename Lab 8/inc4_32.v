`timescale 1ns / 1ps
module inc4_32(A, S);
   input [31:0] A;
   output reg [31:0] S;

   always @(A) begin
      S = A + 4;
   end
endmodule
