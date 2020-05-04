`timescale 1ns / 1ps
module mipszy_ctrl(ir31_26, ir5_0,
                   rf_wd_s, rf_wa_s, rf_we, rf_r1e, rf_r2e,
                   add2_s,
                   dm_we, dm_re, add_sub, alu_eq, pc_s,alu_less);

   input [5:0] ir31_26, ir5_0;
   output reg rf_wd_s, rf_wa_s, rf_we, rf_r1e, rf_r2e;
   output reg add2_s;
   output reg dm_we, dm_re;
   output reg add_sub;
   input alu_eq;
   output reg pc_s;
	output reg alu_less;

   always @* begin
      if (ir31_26 == 'b100011) begin // lw
         rf_wd_s = 0;
         rf_wa_s = 1;
         rf_we = 1;
         rf_r1e = 1;
         rf_r2e = 0;
         add2_s = 0;
         dm_we = 0;
         dm_re = 1;            
         add_sub = 0;
         pc_s = 0;
			alu_less = 0;
      end
      else if (ir31_26 == 'b101011) begin // sw
         rf_wd_s = 0;
         rf_wa_s = 0;
         rf_we = 0;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 0;
         dm_we = 1;
         dm_re = 0;            
         add_sub = 0;
         pc_s = 0;
			alu_less = 0;
      end
      else if (ir31_26 == 'b001000) begin // addi
         rf_wd_s = 1;
         rf_wa_s = 1;
         rf_we = 1;
         rf_r1e = 1;
         rf_r2e = 0;
         add2_s = 0;
         dm_we = 0;
         dm_re = 0;            
         add_sub = 0;
         pc_s = 0;
			alu_less = 0;
      end
      else if (ir31_26 == 'b000000 &&
               ir5_0   == 'b100000) begin // add
         rf_wd_s = 1;
         rf_wa_s = 0;
         rf_we = 1;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 1;
         dm_we = 0;
         dm_re = 0;            
         add_sub = 0;
         pc_s = 0;
			alu_less = 0;
      end
      else if (ir31_26 == 'b000000 &&
               ir5_0   == 'b100010) begin // sub
         rf_wd_s = 1;
         rf_wa_s = 0;
         rf_we = 1;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 1;
         dm_we = 0;
         dm_re = 0;
         add_sub = 1;
         pc_s = 0;
			alu_less = 0;
      end
      else if (ir31_26 == 'b000100) begin // beq
         rf_wd_s = 0;
         rf_wa_s = 0;
         rf_we = 0;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 1;
         dm_we = 0;
         dm_re = 0;
         add_sub = 0;
			alu_less = 0;
         if (alu_eq == 1) begin
            pc_s = 1; // Branch (pass target address)
         end
         else begin
            pc_s = 0; // No branch (just pass PC + 4)
         end
      end
      else if (ir31_26 == 'b000101) begin // bne
         rf_wd_s = 0;
         rf_wa_s = 0;
         rf_we = 0;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 1;
         dm_we = 0;
         dm_re = 0;
         add_sub = 0;
			alu_less = 0;
         if (alu_eq == 0) begin
            pc_s = 1; // Branch (pass target address)
         end
         else begin
            pc_s = 0; // No branch (just pass PC + 4)
         end
      end
		
		 else if (ir31_26 == 'b000000 &&
               ir5_0   == 'b100100) begin // slt
         rf_wd_s = 1;
         rf_wa_s = 0;
         rf_we = 1;
         rf_r1e = 1;
         rf_r2e = 1;
         add2_s = 1;
         dm_we = 0;
         dm_re = 0;            
         add_sub = 0;
         pc_s = 0;
			alu_less = 1; 
      end
		
      else begin
         rf_wd_s = 0;
         rf_wa_s = 0;
         rf_we = 0;
         rf_r1e = 0;
         rf_r2e = 0;
         add2_s = 0;
         dm_we = 0;
         dm_re = 0;
         add_sub = 0;
         pc_s = 0;
			alu_less = 0;
      end
   end
endmodule
