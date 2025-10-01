`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2025 21:51:56
// Design Name: 
// Module Name: D_FF
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



module D_FF(

                    D,
                    
                    PRE_BAR,
                    
                    CLR_BAR,
                    
                    CLK_BAR,
                    
                    Q,
                    
                    Qbar);


input  D;

input PRE_BAR;

input CLR_BAR;

input  CLK_BAR;

output reg Q;

output wire Qbar;


always@(negedge CLK_BAR or negedge PRE_BAR or negedge CLR_BAR)

    begin
       
        if(PRE_BAR==0)
        
            begin
            
                Q<=1;
                
            end    
         
        else if(CLR_BAR==0)
        
            begin
            
                Q<=0;   
            end
         
          else
          
            begin 
            
                Q<=D;
                
            end
       
    end
    
    assign Qbar=~Q;
    
endmodule
