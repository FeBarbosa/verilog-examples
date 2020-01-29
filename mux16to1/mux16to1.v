// A pure behavioral 16x1 multiplexer

module mux16to1(out, in, sel);
	input [15:0] in;
	input [3:0] sel;
	output out;
	
	wire [3:0] t;

	mux4to1 MUX0(t[0], in[3:0], sel[1:0]);
	mux4to1 MUX1(t[1], in[7:4], sel[1:0]);
	mux4to1 MUX2(t[2], in[11:8], sel[1:0]);
	mux4to1 MUX3(t[3], in[15:12], sel[1:0]);
	mux4to1 MUXF(out, t, sel[3:2]);
endmodule
