`timescale 1ns / 1ps


module tb_priority_encoder;

reg i0,i1,i2,i3,i4,i5,i6,i7;
wire y0,y1,y2;
wire valid;
    Priority_encoder uut (
                        .i0(i0),
                        .i1(i1),
                        .i2(i2),
                        .i3(i3),
                        .i4(i4),
                        .i5(i5),
                        .i6(i6),
                        .i7(i7),
                        .y0(y0),
                        .y1(y1),
                        .y2(y2),
                        .valid(valid)
                    
                     );
                     
                     
 integer i=0;                    
                
     initial
        begin
            for(i=0;i<=128;i=i+1)
                begin
                    {i7,i6,i5,i4,i3,i2,i1,i0}=i[7:0];
                    #5;
                end
            #10;
            
            $finish;
        end
                
        
                
                     
     
    
endmodule
