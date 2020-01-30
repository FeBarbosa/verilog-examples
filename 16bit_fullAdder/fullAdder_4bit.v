// A 4-bit full adder based on a 1-bit full adder

module fullAdder_4bit(Z, cout, A, B, cin);
	input [3:0] A, B;
	input cin;
	output [3:0] Z;
	output cout;	

	wire [2:0] t;

	//assign {cout, Z} = A + B;
	fullAdder adder0 (Z[0], t[0], A[0], B[0], cin);
	fullAdder adder1 (Z[1], t[1], A[1], B[1], t[0]);
	fullAdder adder2 (Z[2], t[2], A[2], B[2], t[1]);
	fullAdder adder3 (Z[3], cout, A[3], B[3], t[2]);
	
endmodule // fullAdder_4bit
