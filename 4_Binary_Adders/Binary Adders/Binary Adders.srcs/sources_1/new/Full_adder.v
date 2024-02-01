`timescale 1ns / 1ps
module Full_Adder( A_in, B_in, C_in, sum, cy);

input wire  A_in, B_in, C_in;
output wire sum, cy;

assign sum = A_in ^ B_in ^ C_in;
assign cy = A_in & B_in | C_in & B_in | B_in & C_in;

endmodule
