// A 16-bit full adder with its flags

module fullAdder_16bit(Z, Sign, Zero, Carry, Parity, Overflow, A, B, Cin);
	input [15:0] A, B;
	input Cin;
	output [15:0] Z;
	output Sign, Zero, Carry, Parity, Overflow;

	wire [2:0] t;
	//assign {Carry, Z} = A + B; // 16-bit addition
	fullAdder_4bit adder0 (Z[3:0], t[0], A[3:0], B[3:0], Cin);  
	fullAdder_4bit adder1 (Z[7:4], t[1], A[7:4], B[7:4], t[0]);  
	fullAdder_4bit adder2 (Z[11:8], t[2], A[11:8], B[11:8], t[1]);  
	fullAdder_4bit adder3 (Z[15:12], Carry, A[15:12], B[15:12], t[2]);  

	//flags
	assign Sign = Z[15];
	assign Zero = ~|Z;
	assign Parity = ~^Z;
	assign Overflow = (A[15] & B[15] & ~Z[15]) | (~A[15] & ~B[15] & Z[15]);

endmodule  
