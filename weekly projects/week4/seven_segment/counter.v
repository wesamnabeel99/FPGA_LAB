/*
 the main goal of this module is to make a simple counter 
 input - clk_sys: a clock signal that is triggered at a rate of 1 Hz, 1 clock signal per second
 rst: to reset the counter and make it start from 0
 up_down: to control whether we want to count up or down
 output: the value of count.
*/
module counter(
	input 			clk_sys, rst,up_down,
	output reg [2:0] 	count
);
	
	always@(posedge clk_sys or negedge rst) begin
		if (!rst) begin
			count <= 3'b000;
		end else begin
			if (up_down) begin
				count <= count + 1'b1;
			end else begin
				count <= count - 1'b1;
			end
		end
	end

endmodule
