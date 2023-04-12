`timescale 1ns/100ps

module counter_tb;
	reg clockx;
	reg resetx;
	reg up_down_x;
	
	wire [3:0] countx;
		
	counter uut(
	.clock(clockx),
	.reset(resetx),
	.up_down(up_down_x),
	.count(countx)
	);
	
	initial begin
		clockx = 1'b0;
		resetx = 1'b1;
		up_down_x = 1'b1;
	
		#30

		resetx = 1'b0;
	end
	
	initial begin
		forever begin
			#10 clockx = ~clockx;
		end
	end
	
	initial begin
		up_down_x = 1'b1;
		#100
		up_down_x = 1'b0;
		#400;
	end

endmodule
