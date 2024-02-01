module AND_gate (A,B,Y);

parameter integer w = 8;
input wire [w-1:0] A,B;
output wire [w-1:0] Y;

assign Y = A & B;

endmodule

