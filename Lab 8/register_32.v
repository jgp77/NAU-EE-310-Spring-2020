`timescale 1ns / 1ps
module register_32(clk, rst, ld, D, Q);
   input clk, rst;
   input ld;
   input [31:0] D;
   output reg [31:0] Q;

   always @(posedge clk) begin
      if (rst) begin
         Q = 0;
      end
      else if (ld) begin
         Q = D;
      end
   end
endmodule
