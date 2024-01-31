module NOT_gate (A,Y);

parameter integer w = 8;
input wire [w-1:0] A;
output wire [w-1:0] Y;

assign Y = ~A ;

endmodule

