/* 
 the default frequency of FPGA seven segment is 50 MHz, which is a very high frequency.
 the goal of this module is to divide this frequency to 1 Hz so we can see the numbers as they increase
 input - clock: the original clock of FPGA, rst: to reset the count
 output - trigger: to trigger the clock_system, whenever temp = 50,000,000 we send a trigger signal.
*/
module frequency_divider(
	input 			clock, rst,
	output reg 		trigger
);
	reg [31:0] temp;
	
	
	always@(posedge clock or negedge rst) begin
		if (!rst) begin
			temp <= 0;
			trigger <=1'b1;
		end else begin
			if (temp < 32'h02FAF080) begin
			//32'h02FAF080 is 50,000,000 in hexa decimal
				temp <= temp + 1'b1;
				trigger <= trigger;
			end else begin
				temp <= 0;
				trigger <= ~trigger;
			end
		end
	end
	
	 
endmodule

