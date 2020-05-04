`timescale 1ns / 1ps
module MIPSzy_TB();
   reg clk_tb, rst_tb;
   
   reg [9:0] dbg_a;
   reg dbg_e;
   wire signed [31:0] dbg_o;
   
   reg [31:0] test_numbers [0:7];
   integer i;
   
   localparam PER = 20;
   
   MIPSzy MIPSzy_0(clk_tb, rst_tb, dbg_a, dbg_e, dbg_o);
   
   initial begin
      #1;
      MIPSzy_0.DM.memory[(5000-4096)/4] = test_numbers[0];
      MIPSzy_0.DM.memory[(5004-4096)/4] = test_numbers[1];
      MIPSzy_0.DM.memory[(5008-4096)/4] = test_numbers[2];
      MIPSzy_0.DM.memory[(5012-4096)/4] = test_numbers[3];
      MIPSzy_0.DM.memory[(5016-4096)/4] = test_numbers[4];
      MIPSzy_0.DM.memory[(5020-4096)/4] = test_numbers[5];
      MIPSzy_0.DM.memory[(5024-4096)/4] = test_numbers[6];
      MIPSzy_0.DM.memory[(5028-4096)/4] = test_numbers[7];
      for (i=0;i<1024;i=i+1) MIPSzy_0.IM.memory[i] = 'd0;
   end
   
   initial begin
      // initialize test numbers (can be any number up to 32-bits long)
      test_numbers[0] = -15     ;  // Number to be stored in DM[5000]
      test_numbers[1] = -1024    ;  // Number to be stored in DM[5004]
      test_numbers[2] = 7     ;  // Number to be stored in DM[5008]
      test_numbers[3] = 13   ;  // Number to be stored in DM[5012]
      test_numbers[4] = -71    ;  // Number to be stored in DM[5016]
      test_numbers[5] = 119  ;  // Number to be stored in DM[5020]
      test_numbers[6] = -937   ;  // Number to be stored in DM[5024]
      test_numbers[7] = -3579 ;  // Number to be stored in DM[5028]
      // initialize instruction memory
      #2;
		MIPSzy_0.IM.memory[0] = 'b00100000000010000001001110001000;
		MIPSzy_0.IM.memory[1] = 'b00100001000010010000000000100000;
		MIPSzy_0.IM.memory[2] = 'b00010001001010000000000000001000;
		MIPSzy_0.IM.memory[3] = 'b10001101000010100000000000000000;
		MIPSzy_0.IM.memory[4] = 'b00100001000010000000000000000100;
		MIPSzy_0.IM.memory[5] = 'b00000001010000000101100000100100;
		MIPSzy_0.IM.memory[6] = 'b00010000000010111111111111111100;
		MIPSzy_0.IM.memory[7] = 'b00000000000010100101000000100010;
		MIPSzy_0.IM.memory[8] = 'b10101101000010101111111111111100;
		MIPSzy_0.IM.memory[9] = 'b00010000000000001111111111111001;
   end

   // Generate clock
   always begin
      clk_tb = 0;      
      #(PER / 2);
      clk_tb = 1;
      #(PER / 2);
   end
   
   initial begin
      dbg_a = 0;
      dbg_e = 0;
      rst_tb = 1;
      #PER rst_tb = 0;
      #(200*PER);
      dbg_a = 226; dbg_e=1; #(PER/2); $display("Data at address 5000 is %d", dbg_o); #(PER/2);
      dbg_a = 227; dbg_e=1; #(PER/2); $display("Data at address 5004 is %d", dbg_o); #(PER/2);
      dbg_a = 228; dbg_e=1; #(PER/2); $display("Data at address 5008 is %d", dbg_o); #(PER/2);
      dbg_a = 229; dbg_e=1; #(PER/2); $display("Data at address 5012 is %d", dbg_o); #(PER/2);
      dbg_a = 230; dbg_e=1; #(PER/2); $display("Data at address 5016 is %d", dbg_o); #(PER/2);
      dbg_a = 231; dbg_e=1; #(PER/2); $display("Data at address 5020 is %d", dbg_o); #(PER/2);
      dbg_a = 232; dbg_e=1; #(PER/2); $display("Data at address 5024 is %d", dbg_o); #(PER/2);
      dbg_a = 233; dbg_e=1; #(PER/2); $display("Data at address 5028 is %d", dbg_o); #(PER/2);
      $stop;
   end
   
   
endmodule
