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
