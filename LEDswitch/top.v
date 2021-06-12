`timescale 1ns / 1ps

module top(
input switch0,
input switch1,
output led0,
output led1 
);

assign led0 = switch0;
assign led1 = switch1;
endmodule
