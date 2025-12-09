`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: R T R 
// 
// Create Date: 20.07.2025 23:25:03
// Design Name: 
// Module Name: D_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Clock,Preset and Clear inputs are negative edge triggered
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: This is for synthesis. PRESET_BAR (PRE_BAR) have more
//                      Priority than CLEAR_BAR(CLR_BAR)                      
//
// 
//////////////////////////////////////////////////////////////////////////////////


module D_flip_flop(

  

                    D,
                    
                    PRE_BAR,
                    
                    CLR_BAR,
                    
                    CLK,
                    
                    Q,
                    
                    Qbar);


input  D;

input PRE_BAR;

input CLR_BAR;

input  CLK;

output reg Q;

output wire Qbar;


always@(negedge CLK or negedge PRE_BAR or negedge CLR_BAR)

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
