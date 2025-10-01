`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2025 23:44:56
// Design Name: 
// Module Name: tb_Two_stage_comms
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


module tb_Two_stage_comms;

reg CLK_BAR,CLR_BAR,PRE_BAR;

reg [7:0]data_in;
wire [7:0]data_out_final;
reg [7:0]key_in,key_out;
    

Two_stage_comms uut(
           
                     .clk_bar(CLK_BAR),
                    
                     .clr_bar(CLR_BAR),
                    
                     .pre_bar(PRE_BAR),
                    
                     .data_in(data_in),
                    
                     .key_in(key_in),
                     
                     .key_out(key_out),
                    
                     .data_out(data_out_final)

           
                      );
    
    

 
initial 

        begin
                
              CLK_BAR=1'b0;
              CLR_BAR=1'b1;
              PRE_BAR=1'b1;
              
              forever #5 CLK_BAR=~CLK_BAR;
              
        end
        
initial 

    begin
        #10;
        
        PRE_BAR=1'b0;
        
        #15;
        
        PRE_BAR=1'b1;
        
        #10;
        
        CLR_BAR=1'b0;
        
        #15;
        
        CLR_BAR=1'b1;
        
        #10;
        

        
    end
    
    
initial

 begin
 
    #100;

    data_in<= 8'b00101011; 
    
    key_in <= 8'b00101110;
    
    key_out <= 8'b00101111; // wrong key given by receiver
    #20;
    key_out <= 8'b00101110; //  Correct key
    
 end


initial 
    begin
       #200 $finish;
    end
    
       
                                 
                        
             
endmodule
