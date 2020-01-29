// A 16-bit full adder with its flags

module fullAdder_16bit(Z, Sign, Zero, Carry, Parity, Overflow, A, B);
	input [15:0] A, B;
	output [15:0] Z;
	output Sign, Zero, Carry, Parity, Overflow;

	assign {Carry, Z} = A + B; // 16-bit addition

	//flags
	assign Sign = Z[15];
	assign Zero = ~|Z;
	assign Parity = ~^Z;
	assign Overflow = (A[15] & B[15] & ~Z[15]) | (~A[15] & ~B[15] & Z[15]);

endmodule  
