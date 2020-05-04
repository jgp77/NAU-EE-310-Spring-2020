`timescale 1ns / 1ps
module adder_32(A, B, S, add_sub);
   input [31:0] A, B;
	input add_sub;
   output reg [31:0] S;

   always @(A, B) begin
		if (add_sub == 0) begin
			S = A + B;
		end
		else if (add_sub==1) begin
			S = A - B;
		end
   end
endmodule
