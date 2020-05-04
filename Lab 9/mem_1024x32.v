`timescale 1ns / 1ps
module mem_1024x32(clk, ra, rd, re, wa, wd, we, dbg_a, dbg_e, dbg_o);    
   input clk;
   input [9:0] ra, wa;
   input re, we;
   output reg [31:0] rd;
   input [31:0] wd;
   
   input [9:0] dbg_a;
   input dbg_e;
   output reg [31:0] dbg_o;
   
   reg [31:0] memory [0:1023];
   
   always @(posedge clk) begin
     if (we) begin
         memory[wa] = wd;
      end
   end
   
   always @* begin
      if (re) begin
         rd = memory[ra];
      end
      else begin
         rd = 0;
      end
   end
   
   always @* begin
      if (dbg_e) begin
         dbg_o = memory[dbg_a];
      end
      else begin
         dbg_o = 0;
      end
   end
   
endmodule
