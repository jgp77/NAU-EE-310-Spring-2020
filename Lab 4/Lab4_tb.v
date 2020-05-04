module  Lab4_tb;

reg   V_tb, W_tb, X_tb;
reg   [2:0]  A_tb , B_tb;
wire  [2:0]  S_tb;

localparam  PER  =  10;

Lab4  dut  (V_tb, W_tb, X_tb, A_tb, B_tb, S_tb);

initial begin
	// 5209702 -> 02 -> 000 010 -> A=000 B=010
	A_tb  =  3'b000;
	B_tb  =  3'b010;
	
	
	V_tb = 1'b0;
	W_tb  =  1'b0;
	X_tb  =  1'b0;
	#(PER);
	
	V_tb = 1'b1;
	W_tb  =  1'b0;
	X_tb  =  1'b0;
	#(PER);
	
	V_tb = 1'b0;
	W_tb  =  1'b1;
	X_tb  =  1'b0;
	#(PER);
	
	
	V_tb = 1'b1;
	W_tb  =  1'b1;
	X_tb  =  1'b0;
	#(PER);
	
	V_tb = 1'b0;
	W_tb  =  1'b0;
	X_tb  =  1'b1;
	#(PER);
	
	V_tb = 1'b1;
	W_tb  =  1'b0;
	X_tb  =  1'b1;
	#(PER);
	
	V_tb = 1'b0;
	W_tb  =  1'b1;
	X_tb  =  1'b1;
	#(PER);
	
	V_tb = 1'b1;
	W_tb  =  1'b1;
	X_tb  =  1'b1;
	#(PER);
	
	$stop;
end


endmodule
