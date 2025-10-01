`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2025 21:48:37
// Design Name: 
// Module Name: PIPO_register
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


module PIPO_register(

                      data_in,data_out,CLR_BAR,CLK_BAR,PRE_BAR
    
                     );

parameter N=8; // Using this the size of the register can be changed


input CLK_BAR,CLR_BAR,PRE_BAR;

input [N-1:0]data_in; output wire [N-1:0] data_out;

genvar dff;

generate for(dff=0;dff<N;dff=dff+1)
    begin : DFF //Label
            
            D_FF regs(.D(data_in[dff]),.Q(data_out[dff]),.CLK_BAR(CLK_BAR),.CLR_BAR(CLR_BAR),.PRE_BAR(PRE_BAR));   
    end
endgenerate

endmodule
