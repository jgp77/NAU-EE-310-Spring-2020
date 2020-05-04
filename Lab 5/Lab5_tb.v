module  Lab5_tb ;


reg  clk_tb , rst_tb ;
wire  [6:0]  SS0_tb,SS1_tb ;
reg [3:0] A_tb,B_tb;

localparam  PER  =  20 ;

Lab5  dut ( rst_tb , clk_tb , A_tb , B_tb , SS1_tb , SS0_tb ) ;

// Generate clock
always begin
clk_tb = 0;
#(PER/2) ;
clk_tb = 1;
#(PER/2) ;
end


// Other stimulus
initial begin
//143
A_tb=13;
B_tb=11;
rst_tb  =  1 ;
#PER ;
rst_tb  =  0 ;
#PER ;
#PER ;
#PER ;
#PER ;
#PER;


$stop ;
end


endmodule