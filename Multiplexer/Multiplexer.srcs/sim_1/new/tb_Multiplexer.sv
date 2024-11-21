`timescale 1ns / 1ps

module tb_Multiplexer #(parameter bits = 8,selectBits = 3);
    logic [bits-1:0] d[2**selectBits-1:0];
    logic [selectBits-1:0] s;
    logic [bits-1:0] y;
    
Multiplexer #(bits,selectBits) multiplexer1(
    .d(d),
    .s(s),
    .y(y)
);

    initial begin
        d[0] = 8'b00000000;
        d[1] = 8'b00000001;
        d[2] = 8'b00000010;
        d[3] = 8'b00000011;
        d[4] = 8'b00000100;
        d[5] = 8'b00000101;
        d[6] = 8'b00000110;
        d[7] = 8'b00000111;
        s = 0; #10;
        s = 1; #10;
        s = 2; #10;
        $stop;
    end    
endmodule
