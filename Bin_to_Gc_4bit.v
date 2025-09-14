`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Rajkrishna T R
// 
// Create Date: 14.09.2025 11:56:56
// Design Name: Binary to Gray code converter
// Module Name: Bin_to_Gc_4bit

// Revision 0.01 - File Created
// Additional Comments: The default case is  chosen as '0000' in binary as my choice
// 
//////////////////////////////////////////////////////////////////////////////////


module Bin_to_Gc_4bit(

               Bin_input, Gc_output
                
                 );
    
    input [3:0] Bin_input; // 4 bit binary input
     
    output reg[3:0] Gc_output; // 4bit binary output
    
    always@(*)
    
        begin
            
            case(Bin_input)
                
               
                
                    4'b0000:Gc_output=4'b0000;
                    4'b0001:Gc_output=4'b0001;
                    4'b0010:Gc_output=4'b0011;
                    4'b0011:Gc_output=4'b0010;
                    4'b0100:Gc_output=4'b0110;
                    4'b0101:Gc_output=4'b0111;
                    4'b0110:Gc_output=4'b0101;
                    4'b0111:Gc_output=4'b0100;
                    
    // The Mirror property of Gray code can be visually seen 
    
                    4'b1000:Gc_output=4'b1100;
                    4'b1001:Gc_output=4'b1101;
                    4'b1010:Gc_output=4'b1111;
                    4'b1011:Gc_output=4'b1110;
                    4'b1100:Gc_output=4'b1010;
                    4'b1101:Gc_output=4'b1011;
                    4'b1110:Gc_output=4'b1001;
                    4'b1111:Gc_output=4'b1000;
                    
                    default:Gc_output=4'b0000; // Default case to 0000
                    
                    
                
                    
                endcase
       end
       
endmodule
