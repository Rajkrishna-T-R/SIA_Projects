`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2025 21:46:11
// Design Name: 
// Module Name: XOR_applier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module XOR_applier(

                    data_in,
                    
                    Key,
                    
                    data_out
                    
                   );
  parameter N=8;
  
  input [N-1:0]data_in;
  
  input [N-1:0]Key;
  
  output [N-1:0]data_out;
  
  assign  data_out=Key^data_in;
  
endmodule
