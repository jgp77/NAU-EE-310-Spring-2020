module Lab3_tb;

parameter  PER  =  10 ;

reg  clk_tb ;
reg [1:0] S_tb;
reg [3:0] X_tb;
wire [3:0] Q_tb;
wire [6:0] SS_tb;

// 5209702 -> 9702 -> 10 0101 1110 0110 -> A= 0101 b= 1110 c=0110
reg [3:0] A = 4'b0101;
reg [3:0] B = 4'b1110;
reg [3:0] C = 4'b0110;

Lab3  dut  ( clk_tb , S_tb , X_tb , Q_tb , SS_tb ) ;

always  begin
  clk_tb  =  0 ;
  #(PER/2) ;
  clk_tb  =  1 ;
  #(PER/2) ;
end

initial begin

S_tb = 2'b10;
X_tb = A;
#PER;
S_tb = 2'b11;
X_tb = B;
#PER;
S_tb = 2'b00;
X_tb = C;
#PER;
S_tb = 2'b11;
X_tb = A;
#PER;
S_tb = 2'b01;
X_tb = B;
#PER;
S_tb = 2'b11;
X_tb = C;
#PER;
S_tb = 2'b00;
X_tb = A;
#PER;
S_tb = 2'b10;
X_tb = B;
#PER;
S_tb = 2'b01;
X_tb = C;
#PER;
$stop;

end
endmodule
