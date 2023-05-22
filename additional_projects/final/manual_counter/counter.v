module counter(
	input trigger,
	output reg [1:0] count
);

	always@(trigger) begin
		if (trigger == 1) begin
			count <= count + 1;
		end else begin
			count <= count;
		end
	end

endmodule

