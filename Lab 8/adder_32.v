`timescale 1ns / 1ps
module adder_32(A, B, S, add_sub,alu_eq);
   input [31:0] A, B;
   output reg [31:0] S;
	output reg alu_eq;
   input add_sub;

   always @(A, B, add_sub) begin
      case ( add_sub )
         0 : S = A + B;
         1 : S = A - B;
      endcase
   end
	always @(A, B) begin
      if (A==B) begin
			alu_eq = 1;
		end
		else begin
			alu_eq=0;
		end
   end
endmodule
