`timescale 1ns / 1ps
module tb_binary_adder;

wire A_in, B_in, C_in, sum_FA;
wire cy_HA, cy_FA,  sum_HA;
reg clk;
reg [1:0] count;

Half_Adder dut_half_adder (.A_in(A_in), .B_in(B_in), .sum(sum_HA), .cy(cy_HA));
Full_Adder dut_full_adder (.A_in(A_in), .B_in(B_in), .C_in(C_in), .sum(sum_FA), .cy(cy_FA));

always@(posedge (clk))
begin
if (count <= 2'b11) count = count + 2'b01; else count = 2'b0;
end

always #5 clk = ~clk;

initial 
begin
clk = 0;
count = 0;
end

assign A_in = count[1];
assign B_in = count[0];
assign C_in = count[1];
endmodule
