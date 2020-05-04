`timescale 1ns / 1ps
module signext_16_32(I, O);
   input signed [15:0] I;
   output reg [31:0] O;

   always @(I) begin
      O = I;
   end
endmodule
