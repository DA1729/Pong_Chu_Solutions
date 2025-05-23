module single_BCD_incrementor (
    input wire [3:0] A,
    input wire en, 
    output reg [3:0] out,
    output reg C // carry
);

always @ *

begin 
    out = A;
    C = 1'b0;

    casez ({en, A[3:0]})
            5'b10000: out = 4'b0001;
            5'b10001: out = 4'b0010;
            5'b10010: out = 4'b0011;
            5'b10011: out = 4'b0100;
            5'b10100: out = 4'b0101;
            5'b10101: out = 4'b0110;
            5'b10110: out = 4'b0111;
            5'b10111: out = 4'b1000;
            5'b11000: out = 4'b1001;
            5'b11001:
                begin 
                    out = 4'b0000;
                    C = 1'b1;
                end
    endcase
end


    
endmodule