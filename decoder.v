
module decoder(     
             

                    input [2:0]S,

                    input D,

                    output  [7:0]Y
                    
                    );

                    assign Y[0]=D&(~S[2])&(~S[1])&(~S[0]);
                    assign Y[1]=D&(~S[2])&(~S[1])&(S[0]);
                    assign Y[2]=D&(~S[2])&(S[1])&(~S[0]);
                    assign Y[3]=D&(~S[2])&(S[1])&(S[0]);
                    assign Y[4]=D&(S[2])&(~S[1])&(~S[0]);
                    assign Y[5]=D&(S[2])&(~S[1])&(S[0]);
                    assign Y[6]=D&(S[2])&(S[1])&(~S[0]);
                    assign Y[7]=D&(S[2])&(S[1])&(S[0]);


        endmodule
