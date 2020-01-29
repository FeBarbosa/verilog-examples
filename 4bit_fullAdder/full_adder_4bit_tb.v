module full_adder_4bit_tb;
	reg [3:0] a, b;
	reg cin;
	wire [3:0] s;
	wire cout;

	full_adder_4bit test_circuit(s, cout, cin, a, b); 

	initial
		begin
			$dumpfile("full_adder_4bit_dumpfile.vcd");
			$dumpvars(0, test_circuit);

			assign cin = 0;
			assign a = 4'b0000;
			assign b = 4'b0000;
			#20 assign a = 4'b0001;
			#20 assign b = 4'b0001;
			#20 assign a = 4'b1000;
			#20 assign a = 4'b1110;
			#20 assign a = 4'b1111;
			#20 assign a = 4'b0101;
			    assign b = 4'b1001;
			#40 $finish;
		end
endmodule
