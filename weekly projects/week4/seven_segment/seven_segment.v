/*
	this is the main module that have the other sub-modules inside.
*/

module seven_segment(
	input 			clk,rst,up_down,
	output [6:0] 	encoded_value
);

	wire [2:0] count_wire;
	wire clk_sys;
	
	counter u1(
		.clk_sys(clk_sys),
		.rst(rst),
		.up_down(up_down),
		.count(count_wire)
	);
	
	frequency_divider u2(
		.clock(clk),
		.rst(rst),
		.trigger(clk_sys)
	);
	
	encoder u3(
		.count(count_wire),
		.encoded_count(encoded_value)
	);
	
endmodule
