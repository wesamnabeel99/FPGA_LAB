module combin2(
	input in1,
	input in2,
	output out1,
	output out2,
	output out3
	);
	assign out1 = in1 & in2;
	assign out2 = ~in2;
	assign out3 = in1 | in2;
endmodule
