module test_adder_tb;
	reg a, b, cin;
	wire s, cout;
	
	test_adder test_circuit(
		.a(a),
		.b(b),
		.cin(cin),
		.s(s),
		.cout(cout)
	);

	initial
		begin
			$dumpfile("test_adder_dumpfile.vcd");
			$dumpvars(0, test_circuit);

			assign a = 0;
			assign b = 0;
			assign cin = 0;
			#20 assign a = 1;
			#20 assign a = 0;
			    assign b = 1;
			#20 assign a = 1;
			#20 assign a = 0;
			    assign b = 0;
			    assign cin = 1;
			#20 assign a = 1;
			#20 assign b = 1;
			#20 $finish;
		end

endmodule
