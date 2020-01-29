module full_adder_4bit(s, cout3, cin, a, b);
	input [3:0] a, b;
	input cin;
	
	output [3:0] s;
	output cout3;

	wire [2:0] cout;

	full_adder B0 (s[0], cout[0], a[0], b[0], cin);
	full_adder B1 (s[1], cout[1], a[1], b[1], cout[0]);
	full_adder B2 (s[2], cout[2], a[2], b[2], cout[1]);
	full_adder B3 (s[3], cout3, a[3], b[3], cout[2]);
endmodule // 4_bit_fullAdder
