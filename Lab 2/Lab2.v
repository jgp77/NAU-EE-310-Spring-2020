module Lab2 ( rst , clk , S , V , ss1 , ss0 ) ;

	input 		rst,clk;
	input  		[1:0]	S;
	input  		[3:0] V ;
	output reg  [6:0] ss1,ss0;
	reg  			[7:4] ss1_undecoded;
	reg  			[3:0] ss0_undecoded;
	reg 			[7:0]	acc;
	
	always  @ (posedge clk)  begin
	
		if (rst) begin
			acc = 8'b00000000;
		end
		
		else if (S == 1) begin
	
			acc = acc - V;
			
		end
		
		else begin
		
			acc = acc + V;
			
		end

		ss1_undecoded = acc[7:4];
		ss0_undecoded = acc[3:0];
		
		case  ( ss1_undecoded )
			4'h0  :  ss1 =  7'b1000000 ;
			4'h1  :  ss1 =  7'b1111001 ;
			4'h2  :  ss1 =  7'b0100100 ;
			4'h3  :  ss1 =  7'b0110000 ;
			4'h4  :  ss1 =  7'b0011001 ;
			4'h5  :  ss1 =  7'b0010010 ;
			4'h6  :  ss1 =  7'b0000010 ;
			4'h7  :  ss1 =  7'b1111000 ;
			4'h8  :  ss1 =  7'b0000000 ;
			4'h9  :  ss1 =  7'b0010000 ;
			4'hA  :  ss1 =  7'b0001000 ;
			4'hB  :  ss1 =  7'b0000011 ;
			4'hC  :  ss1 =  7'b1000110 ;
			4'hD  :  ss1 =  7'b0100001 ;
			4'hE  :  ss1 =  7'b0000110 ;
			4'hF  :  ss1 =  7'b0001110 ;
		endcase
		case  ( ss0_undecoded )
			4'h0  :  ss0  =  7'b1000000 ;
			4'h1  :  ss0  =  7'b1111001 ;
			4'h2  :  ss0  =  7'b0100100 ;
			4'h3  :  ss0  =  7'b0110000 ;
			4'h4  :  ss0  =  7'b0011001 ;
			4'h5  :  ss0  =  7'b0010010 ;
			4'h6  :  ss0  =  7'b0000010 ;
			4'h7  :  ss0  =  7'b1111000 ;
			4'h8  :  ss0  =  7'b0000000 ;
			4'h9  :  ss0  =  7'b0010000 ;
			4'hA  :  ss0  =  7'b0001000 ;
			4'hB  :  ss0  =  7'b0000011 ;
			4'hC  :  ss0  =  7'b1000110 ;
			4'hD  :  ss0  =  7'b0100001 ;
			4'hE  :  ss0  =  7'b0000110 ;
			4'hF  :  ss0  =  7'b0001110 ;
		endcase

		
	end

endmodule