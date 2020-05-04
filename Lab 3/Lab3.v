module Lab3 ( clk , S , X , Q , SS ) ;

	input clk;
	input [1:0] S;
	input [3:0] X;
	output reg [3:0] Q;
	output reg [6:0] SS;
	
	reg [3:0] muxResult;
	
	
	always  @ (S, X, Q)  begin
		case (S)
			2'b00: muxResult = Q + 4'b0001;
			2'b01: muxResult = Q - 4'b0001;
			2'b10: muxResult = 0;
			2'b11: muxResult = X + Q;
		endcase
	end

	always  @ (posedge clk)  begin
		
		Q = muxResult;
		
		
		case  ( muxResult )
				4'h0  :  SS =  7'b1000000 ;
				4'h1  :  SS =  7'b1111001 ;
				4'h2  :  SS =  7'b0100100 ;
				4'h3  :  SS =  7'b0110000 ;
				4'h4  :  SS =  7'b0011001 ;
				4'h5  :  SS =  7'b0010010 ;
				4'h6  :  SS =  7'b0000010 ;
				4'h7  :  SS =  7'b1111000 ;
				4'h8  :  SS =  7'b0000000 ;
				4'h9  :  SS =  7'b0010000 ;
				4'hA  :  SS =  7'b0001000 ;
				4'hB  :  SS =  7'b0000011 ;
				4'hC  :  SS =  7'b1000110 ;
				4'hD  :  SS =  7'b0100001 ;
				4'hE  :  SS =  7'b0000110 ;
				4'hF  :  SS =  7'b0001110 ;
		endcase
	end
endmodule
