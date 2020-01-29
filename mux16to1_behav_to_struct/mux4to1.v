// A pure behavioral 4x1 multiplexer

module mux4to1(out, in, sel);
	input [3:0] in;
	input [1:0] sel;
	output out;
	
	wire [1:0] t;
	
	mux2to1 MUX1(t[0], in[1:0], sel[0]);
	mux2to1 MUX2(t[1], in[3:2], sel[0]);

	mux2to1 MUXF(out, t, sel[1]);
endmodule
