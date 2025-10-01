`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2025 23:15:04
// Design Name: 
// Module Name: Top_module
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


module Top_module(  

                    input clk_bar,
                    
                    input clr_bar,
                    
                    input pre_bar,
                    
                    input [7:0]data_in,
                    
                    input [7:0]key_in,
                    
                    output [7:0]data_out

    );
    
    wire [7:0]data_into_reg_wire;
    
    
    PIPO_register REG_in(.CLK_BAR(clk_bar),.CLR_BAR(clr_bar),.PRE_BAR(pre_bar),.data_in(data_into_reg_wire),.data_out(data_out));
    
    XOR_applier XOR_in(.data_in(data_in),.data_out(data_into_reg_wire),.Key(key_in));
    
    
endmodule
