`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2025 23:51:28
// Design Name: 
// Module Name: Two_stage_comms
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


module Two_stage_comms(
           
                    input clk_bar,
                    
                    input clr_bar,
                    
                    input pre_bar,
                    
                    input [7:0]data_in,
                    
                    input [7:0]key_in,
                    
                    input [7:0]key_out,
                    
                    output [7:0]data_out

           
                      );
    
    wire [7:0] comms_line;
    
    Top_module Transmitter ( 
                             .clk_bar(clk_bar),
                    
                             .clr_bar(clr_bar),
                    
                             .pre_bar(pre_bar),
                    
                             .data_in(data_in),
                    
                             .key_in(key_in),
                    
                             .data_out(comms_line)

                           );
                           
      XOR_applier Receiver (
                            .Key(key_out),
                            
                            .data_in(comms_line),
                            
                            .data_out(data_out)
                            );
    
    
    
    
    
    
    
    
endmodule
