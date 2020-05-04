module  lab1_tb ;


reg  clk_tb , rst_tb ;
wire  [6:0]  ss3_tb , ss2_tb , ss1_tb , ss0_tb ;

localparam  PER  =  20 ;

lab1  dut  (rst_tb , clk_tb, ss3_tb , ss2_tb , ss1_tb , ss0_tb ) ;


// Generate clock
always begin
clk_tb = 0;
#(PER/2) ;
clk_tb = 1;
#(PER/2) ;
end


// Other stimulus
initial begin
rst_tb  =  1 ;
#PER ;
rst_tb  =  0 ;
#PER ;
#PER ;
#PER ;
#PER ;
#PER ;
#PER ;

$stop ;
end


endmodule