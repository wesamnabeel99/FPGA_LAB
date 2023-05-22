module trigger_generator(
	input switch,
	output reg trigger
);

	always@(switch) begin
			if (switch == 0) begin
				trigger <= 1;
			end else begin
				trigger <= 0;
			end
	end
	
endmodule
