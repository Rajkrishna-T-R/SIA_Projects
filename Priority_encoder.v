

module Priority_encoder(
                        input wire i0,
                        input wire i1,
                        input wire i2,
                        input wire i3,
                        input wire i4,
                        input wire i5,
                        input wire i6,
                        input wire i7,
                        input wire i8,
                        output reg y0,
                        output reg y1,
                        output reg y2,
                        output reg valid
                    
                     );
    
    always@(*)
        begin
            
          if((i0==1'b1) && ({i7,i6,i5,i4,i3,i2,i1}==7'b0000000))
          
            begin
              {y2,y1,y0} = 3'b000;
              valid=1;
            end
            
          else if ((i1==1'b1) && ({i7,i6,i5,i4,i3,i2}==6'b000000) )
          
              begin
                  {y2,y1,y0} = 3'b001;
                  valid=1;
              end
              
          else if ((i2==1'b1)&&({i7,i6,i5,i4,i3}==5'b00000))
          
            begin
                  {y2,y1,y0} = 3'b010;
                  valid=1;
            end
            
           else if ((i3==1'b1)&&({i7,i6,i5,i4}==4'b0000))
           
            begin
                 {y2,y1,y0} = 3'b011;
                 valid=1;
            end
            
           else if ((i4==1'b1)&&({i7,i6,i5}==3'b000))
           
            begin
                {y2,y1,y0} = 3'b100;
                valid=1;
            end
            
           else if ((i5==1'b1)&&({i7,i6}==2'b00))
           
            begin
                {y2,y1,y0} = 3'b101;
                valid=1;
            end
            
           else if ((i6==1'b1)&&({i7}==1'b0))
           
            begin
                {y2,y1,y0} = 3'b110;
                valid=1;
            end
            
            else if (i7==1'b1)
            
            begin
                {y2,y1,y0} = 3'b111;
                valid=1;
            end
                
          else 
          
            begin
                {y2,y1,y0}  = 3'b000;
                valid       = 0;
            end
            
            
            
        end
    
    
    
    
endmodule
