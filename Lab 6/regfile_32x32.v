`timescale 1ns / 1ps
module regfile_32x32(clk, rst,
                     r1a, r1d, r1e, 
                     r2a, r2d, r2e,
                     wa, wd, we);    
   input clk, rst;
   input [4:0] r1a, r2a, wa;
   input r1e, r2e, we;
   output reg [31:0] r1d, r2d;
   input [31:0] wd;

   integer i;
   reg [31:0] registers [0:31];
   
   // Write procedure
   always @(posedge clk) begin
      if (rst) begin
         for (i = 0; i < 32; i = i+1) begin
            registers[i] = 0;
         end
      end
      else if (we) begin
         registers[wa] = wd;
      end
   end
   
   // Read ports procedure
   always @* begin
      // Read port 1
      if (r1e) begin
         r1d = registers[r1a];
      end
      else begin
         r1d = 0;
      end

      // Read port 2
      if (r2e) begin
         r2d = registers[r2a];
      end
      else begin
         r2d = 0;
      end
   end   
endmodule
