`timescale 1ns / 1ps
module mux2x1_5(I1, I0, s, D);
   input [4:0] I1, I0;
   input s;
   output reg [4:0] D;
   
   always @(I1, I0, s)
   begin
      if (!s) begin
         D = I0;
      end
      else begin
         D = I1;
      end
   end
endmodule
