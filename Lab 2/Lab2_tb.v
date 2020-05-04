module Lab2_tb;

reg  	clk_tb , rst_tb;
reg [1:0] S_tb;
reg [3:0] V_tb;
wire  [6:0] ss1_tb, ss0_tb;

localparam  PER = 20;


Lab2  dut  (rst_tb , clk_tb, S_tb, V_tb, ss1_tb, ss0_tb);


// Generate clock
always begin
clk_tb = 0;
#(PER/2);
clk_tb = 1;
#(PER/2);
end


// Other stimulus
initial begin
#PER;
S_tb = 0;
V_tb = 0;
rst_tb = 1;
#PER;
rst_tb = 0;
#PER;
S_tb = 0;
V_tb = 4'b1110;
#PER;
S_tb = 0;
V_tb = 4'b0111;
#PER;
S_tb = 1;
V_tb = 4'b0110;
#PER;
S_tb = 1;
V_tb = 4'b0010;
#PER;
S_tb = 0;
V_tb = 4'b0111;
#PER;
S_tb = 0;
V_tb = 0;
rst_tb = 1;
#PER;
rst_tb = 0;
#PER;
$stop;
end


endmodule