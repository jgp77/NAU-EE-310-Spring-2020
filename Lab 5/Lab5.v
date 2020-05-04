module Lab5 ( rst , clk , A , B , SS1 , SS0 ) ;

	input rst, clk;
	input [3:0] A,B;
	output reg [6:0] SS1,SS0;
	
	localparam  [2:0] state____  =  0 ,
							state1___  =  1 ,
							state_2__  =  2 ,
							state__3_  =  3 ,
							state___4  =  4 ;
	reg [2:0]  state ;
	reg [7:0]  M;
	reg [4:0] temp;
	reg [3:0] X,Y;
	reg [3:0] SS1_undecoded,SS0_undecoded;
	

	always @(posedge clk) begin
		  if  ( rst )  begin
			 state  = state____ ;
		  end
		  else  begin 
			 case  ( state )
				state____  :  begin
				  state  =  state1___ ;
				  
				end
				
				state1___  :  begin
				  state  =  state_2__ ;
				end
				
				state_2__  :  begin
				  state  =  state__3_ ;
				end
				
				state__3_  :  begin
				  state  =  state___4 ;
				end
				
				state___4  :  begin
				  state  =  state____ ;
				
				end
				
				
				default  :  begin
				  state  =  state____ ;
				end
			 endcase
		  end
		  
		  
		case  ( state )
			state____  :  begin
				M=0;
				X=A;
				Y=B;
			end
			state1___  :  begin		
				temp=(M[7:4] + (X[0]*Y));
				M[2:0] = M[3:1];
				M[7:3] = temp;
				X=X>>1;
			end
			state_2__  :  begin
				temp=(M[7:4] + (X[0]*Y));
				M[2:0] = M[3:1];
				M[7:3] = temp;				 
				X=X>>1;
			end
			state__3_  :  begin
				temp=(M[7:4] + (X[0]*Y));
				M[2:0] = M[3:1];
				M[7:3] = temp;
				X=X>>1;
		
			end
			state___4  :  begin
				temp=(M[7:4] + (X[0]*Y));
				M[2:0] = M[3:1];
				M[7:3] = temp;		
				X=X>>1;
			end
		endcase
SS1_undecoded = M[7:4];
SS0_undecoded = M[3:0];
end


		always @(SS1_undecoded) begin
			case  ( SS1_undecoded )
				4'h0  :  SS1  =  7'b1000000 ;
				4'h1  :  SS1  =  7'b1111001 ;
				4'h2  :  SS1  =  7'b0100100 ;
				4'h3  :  SS1  =  7'b0110000 ;
				4'h4  :  SS1  =  7'b0011001 ;
				4'h5  :  SS1  =  7'b0010010 ;
				4'h6  :  SS1  =  7'b0000010 ;
				4'h7  :  SS1  =  7'b1111000 ;
				4'h8  :  SS1  =  7'b0000000 ;
				4'h9  :  SS1  =  7'b0010000 ;
				4'hA  :  SS1  =  7'b0001000 ;
				4'hB  :  SS1  =  7'b0000011 ;
				4'hC  :  SS1  =  7'b1000110 ;
				4'hD  :  SS1  =  7'b0100001 ;
				4'hE  :  SS1  =  7'b0000110 ;
				4'hF  :  SS1  =  7'b0001110 ;
			endcase
		end
		always @(SS0_undecoded) begin
			case  ( SS0_undecoded )
				4'h0  :  SS0  =  7'b1000000 ;
				4'h1  :  SS0  =  7'b1111001 ;
				4'h2  :  SS0  =  7'b0100100 ;
				4'h3  :  SS0  =  7'b0110000 ;
				4'h4  :  SS0  =  7'b0011001 ;
				4'h5  :  SS0  =  7'b0010010 ;
				4'h6  :  SS0  =  7'b0000010 ;
				4'h7  :  SS0  =  7'b1111000 ;
				4'h8  :  SS0  =  7'b0000000 ;
				4'h9  :  SS0  =  7'b0010000 ;
				4'hA  :  SS0  =  7'b0001000 ;
				4'hB  :  SS0  =  7'b0000011 ;
				4'hC  :  SS0  =  7'b1000110 ;
				4'hD  :  SS0  =  7'b0100001 ;
				4'hE  :  SS0  =  7'b0000110 ;
				4'hF  :  SS0  =  7'b0001110 ;
			endcase
		end
		
endmodule