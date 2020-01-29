// A 1-bit full adder

module fullAdder(Z, cout, A, B, cin);
	input A, B, cin;
	output Z, cout;
	
	wire t1, t2, t3, t4;

	xor G1 (t1, A, B);
	xor G2 (Z, t1, cin);
	and G3 (t2, A, B);
	and G4 (t3, A, cin);
	and G5 (t4, B, cin);
	or  G6 (cout, t2, t3, t4);
endmodule
