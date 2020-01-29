module mux16to1_tb;
	reg [15:0] A;
	reg [3:0] S;
	wire F;

	mux16to1 circuit_test(
			.out(F),
			.in(A),
			.sel(S)
	);

	initial
	 begin
		$dumpfile("mux16to1.vcd");
		$dumpvars(0, circuit_test);
		$monitor($time, "A = %h, S=%h, F=%b" , A, S, F);

		#5 A = 16'h3f0a; 
		   S = 4'h0;
		#5 S = 4'h6;
		#5 S = 4'hc;
		#5 S = 4'hf;
		#5 $finish;
	 end
endmodule
