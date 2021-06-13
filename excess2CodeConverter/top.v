`timescale 1ns / 1ps

module top(
input A,
input B,
input C,
input D,

output led1,
output led2,
output led3,
output led4,
output led5,
output led6,
output led7,

output light0,
output light1,
output light2,
output light3
    );

assign led1 = ~(A | B | ~D)| ~(~B | ~C | D);
assign led2 = ~(~A | C | D) | ~(~B | ~C | ~D);
assign led3 = ~(A | C | D);
assign led4 = ~(A | B | ~D) | ~(~A | C | ~D) | ~(~B | ~C | D);
assign led5 = (D | ~(~B | ~C | D));
assign led6 = ~(A | C | D) | ~(C | ~D) | ~(A | B | ~D);
assign led7 = ~(A | B) | ~(~A | C | ~D);

assign light0 = D;
assign light1 = C;
assign light2 = B;
assign light3 = A;

endmodule
