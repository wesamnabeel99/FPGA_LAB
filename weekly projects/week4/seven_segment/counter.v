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
