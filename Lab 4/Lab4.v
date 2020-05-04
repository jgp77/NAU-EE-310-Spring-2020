module Lab4 ( V , W , X , A , B , S ) ;
//Lab4 dut ( SW[8] , SW[7] , SW[6] , SW[5:3] , SW[2:0] , LEDG[2:0]);

input  V, W , X ;
input  [2:0]  A , B ;
output reg  [2:0]  S ;

always  @ (W, X, A, B)  begin
	case  ({ V, W , X })
		0  :  S  =  A + B;
		1  :  S  =  A - B;
		2  :  S  =  A + 1;
		3  :  S  =  0;
		4  :  S  =  A & B;
		5  :  S  =  A | B;
		6  :  S  =  A ^ B;
		7  :  S  =  ~A;
	endcase
end

endmodule