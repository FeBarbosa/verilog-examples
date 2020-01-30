module fullAdder_16bit_tb;
	reg [15:0] A, B;
	reg Cin;
	wire [15:0] Z;
	wire Sign, Zero, Carry, Parity, Overflow;
	
	fullAdder_16bit circuit_test(Z, Sign, Zero, Carry, Parity, Overflow, A, B, Cin);
	
	initial
	 begin
		$dumpfile("fullAdder_16bit_dumpfile.vcd");
		$dumpvars(0, circuit_test);

		$monitor($time, "A = %h, B = %h, Cin = %h, Z = %h, Sign = %h, Zero = %h, Carry = %h, Parity = %h, Overflow = %h", A, B, Cin, Z, Sign, Zero, Carry, Parity, Overflow);
		
		#20 assign Cin = 1'b0;
		    assign A = 16'h0000;
		    assign B = 16'h0000;
		#20 assign A = 16'h8fff;
		    assign B = 16'h8000;
		#20 assign A = 16'hfffe;
		    assign B = 16'h0002;
		#20 assign A = 16'hAAAA;
		    assign B = 16'h5555;
		
		#20 $finish;
	 end

endmodule		
