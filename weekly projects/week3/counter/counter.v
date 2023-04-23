/*
	a simple program to implement up-down counter, the counting occurs at the rising edge of the clock
	inputs - up_down: to select whether the counting should be up or down, clock: a simple clock that generates pulses.
	reset: to select whether should we restart counting from 0 or not
	output: count - a 3 bit register to hold the value of counting, maximum value is 3'b111 (15 decimal)
*/

module counter(
	input up_down,
	input clock,
	input reset, 
	output [3:0] count
);

	reg [3:0] temp_count;
	
	always@ (posedge clock) begin
		if(reset == 1'b1) begin
			temp_count = 4'b0000;
			end else begin 			
				if (up_down == 1'b1) begin
					temp_count = temp_count+ 1'b1;
				end else begin
					temp_count= temp_count - 1'b1;
				end
			end
	end
	
	assign count = temp_count;
	
endmodule
