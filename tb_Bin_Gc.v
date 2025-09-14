`timescale 10ns / 1ns


module tb_Bin_Gc;

  reg [3:0]Bin_input;
  
  wire [3:0]Gc_output;
  


  Bin_to_Gc_4bit uut (.Bin_input(Bin_input),.Gc_output(Gc_output));
  
  initial 
    
    begin
        
        Bin_input = 4'b0000;#5;
        Bin_input = 4'b0001;#5;
        Bin_input = 4'b0010;#5;
        Bin_input = 4'b0011;#5;
        Bin_input = 4'b0100;#5;
        Bin_input = 4'b0101;#5;
        Bin_input = 4'b0110;#5;
        Bin_input = 4'b0111;#5;
        Bin_input = 4'b1000;#5;
        Bin_input = 4'b1001;#5;
        Bin_input = 4'b1010;#5;
        Bin_input = 4'b1011;#5;
        Bin_input = 4'b1100;#5;
        Bin_input = 4'b1101;#5;
        Bin_input = 4'b1110;#5;
        Bin_input = 4'b1111;#5;
        Bin_input = 4'bzzzz;#5; // default case testing
        Bin_input = 4'bxxxx;#5;        

        
         
            
            
        
    end
    
    
  initial 
        
        begin
        
            $monitor("Time=%g\tBinary_input=%b\tGray_code_output=%b",$time,Bin_input,Gc_output);
            #100; $finish;
            
        end  
            
  
  
  

endmodule
