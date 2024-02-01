`timescale 1ns/1ps
module tb_primitive_gates;

wire  A,B;
wire Y_OR, Y_NOR, Y_AND, Y_NAND, Y_NOT, Y_XOR;

OR_gate #(.w(1)) dut_OR (.A(A), .B(B), .Y(Y_OR));
NOR_gate #(.w(1)) dut_NOR (.A(A), .B(B), .Y(Y_NOR));
AND_gate #(.w(1)) dut_AND (.A(A), .B(B), .Y(Y_AND));
NAND_gate #(.w(1)) dut_NAND (.A(A), .B(B), .Y(Y_NAND));
NOT_gate #(.w(1)) dut_NOT (.A(A), .Y(Y_NOT));
XOR_gate #(.w(1)) dut_XOR (.A(A), .B(B), .Y(Y_XOR));

reg [1:0] count;
reg clk;

always #5 clk = ~clk;

always@(posedge clk)
begin
if (count < 2'b11)
	count =  count + 1;
else 
	count = 2'b00;
end

assign A = count[1];
assign B = count[0];


initial 
begin
clk = 0;
#200 $stop;
end


endmodule

