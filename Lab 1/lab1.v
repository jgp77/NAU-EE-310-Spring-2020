module lab1 ( rst , clk , ss3 , ss2 , ss1 , ss0 ) ;

	input rst, clk;
	output reg [6:0] ss3, ss2, ss1, ss0;
	
	localparam  [2:0] state_____  =  0 ,
							state1____  =  1 ,
							state_2___  =  2 ,
							state__3__  =  3 ,
							state___4_  =  4 ,
							state____5  =  5 ;
	reg  [2:0]  state ;


	always @(posedge clk) begin
		  if  ( rst )  begin
			 state  = state_____ ;
		  end
		  else  begin 
			 case  ( state )
				state_____  :  begin
				  state  =  state1____ ;
				end
				
				state1____  :  begin
				  state  =  state_2___ ;
				end
				
				state_2___  :  begin
				  state  =  state__3__ ;
				end
				
				state__3__  :  begin
				  state  =  state___4_ ;
				end
				
				state___4_  :  begin
				  state  =  state____5 ;
				end
				
				state____5  :  begin
				  state  =  state_____;
				end
				
				default  :  begin
				  state  =  state_____ ;
				end
			 endcase
		  end
		  
		  //5072
		  
		  case  ( state )
			 state_____  :  begin
				ss3  =  7'b1111111 ;
				ss2  =  7'b1111111 ;
				ss1  =  7'b1111111 ;
				ss0  =  7'b1111111 ;
			 end
			 state1____  :  begin
				ss3  =  7'b0010010 ;
				ss2  =  7'b1111111 ;
				ss1  =  7'b1111111 ;
				ss0  =  7'b1111111 ;
			 end
			 state_2___  :  begin
				ss3  =  7'b1111111 ;
				ss2  =  7'b1000000 ;
				ss1  =  7'b1111111 ;
				ss0  =  7'b1111111 ;
			 end
			 state__3__  :  begin
				ss3  =  7'b1111111 ;
				ss2  =  7'b1111111 ;
				ss1  =  7'b1111000 ;
				ss0  =  7'b1111111 ;
			 end
			 
			 state___4_  :  begin
				ss3  =  7'b1111111 ;
				ss2  =  7'b1111111 ;
				ss1  =  7'b1111111 ;
				ss0  =  7'b0100100 ;
			 end
			 // All
			 state____5  :  begin
				ss3  =  7'b0010010 ;
				ss2  =  7'b1000000 ;
				ss1  =  7'b1111000 ;
				ss0  =  7'b0100100 ;
				end
			 
			 default  :  begin
				ss3  =  7'b1111111 ;
				ss2  =  7'b1111111 ;
				ss1  =  7'b1111111 ;
				ss0  =  7'b1111111 ;
			 end
		  endcase
		end
endmodule