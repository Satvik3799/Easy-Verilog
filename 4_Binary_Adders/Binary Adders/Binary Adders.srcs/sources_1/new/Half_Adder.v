`timescale 1ns / 1ps
module Half_Adder( A_in, B_in, sum, cy);

input wire  A_in, B_in;
output wire sum;
output wire cy;

assign sum = A_in ^ B_in;
assign cy = A_in & B_in;

endmodule
