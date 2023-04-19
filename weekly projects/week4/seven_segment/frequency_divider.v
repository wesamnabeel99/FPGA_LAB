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
				temp <= temp + 1'b1;
				trigger <= trigger;
			end else begin
				temp <= 0;
				trigger <= ~trigger;
			end
		end
	end
	
	 
endmodule

