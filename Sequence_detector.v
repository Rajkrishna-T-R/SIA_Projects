`timescale 10ns / 1ns



module Seq_detector( 
                       input x,
                       
                       input clr_bar,
                       
                       input pre_bar,
                       
                       input clk_bar,
                       
                       output z

                    );
         
             wire  Q2,Q1,Q2_bar,Q1_bar,zbar;
             wire D2,D1;
             wire Zwire;
              
              // D2 & Q2 MSB
              // D1 & Q1 LSB
         
         
  
         
    
              
              // Logical expression for 1 bit over lapping
             
              assign D2 =((~x) & Q1)|(x & Q2 & (~Q1)); 
              assign D1 = x;
              assign Zwire  = (x)&(Q2)&(Q1);
                           
               D_flip_flop DFF2(.D(D2),.PRE_BAR(pre_bar),.CLR_BAR(clr_bar),.CLK(clk_bar),.Q(Q2),.Qbar(Qbar2)); 
              
               D_flip_flop DFF1(.D(D1),.PRE_BAR(pre_bar),.CLR_BAR(clr_bar),.CLK(clk_bar),.Q(Q1),.Qbar(Qbar1));   
               
               D_flip_flop DFFz(.D(Zwire),.PRE_BAR(pre_bar),.CLR_BAR(clr_bar),.CLK(clk_bar),.Q(z),.Qbar(zbar)); 
endmodule
