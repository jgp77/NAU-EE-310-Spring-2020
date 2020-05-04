`timescale 1ns / 1ps
module adder_32(A, B, S, add_sub, alu_eq,alu_less);
   input signed [31:0] A, B;
   output reg signed [31:0] S;
   input add_sub;
	input alu_less;
   output reg alu_eq;

   always @(A, B, add_sub, alu_less) begin
	
		if (alu_less == 1) begin
			if (A < B) begin
				S = 1;
			end
			else begin
				S = 0;
			end
		end
		else begin
			case ( add_sub )
				0 : S = A + B;
				1 : S = A - B;
			endcase
		end
   end

   always @(A, B) begin
      if (A==B) begin
         alu_eq = 1;
      end
      else begin
         alu_eq = 0;
      end
   end
endmodule
