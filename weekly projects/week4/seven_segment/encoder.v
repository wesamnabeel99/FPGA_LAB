module encoder(
	input 	[2:0]		count,
	output reg [6:0] 	encoded_count
);

	always@(count) begin
		case(count) 
			3'b000: begin
				encoded_count <= 7'b100_0000;
			end
			
			3'b001: begin
				encoded_count <= 7'b100_1111;
			end
			
			3'b010: begin
				encoded_count <= 7'b010_0100;
			end
			
			3'b011: begin

				encoded_count <= 7'b011_0000;
			end
			
			3'b100: begin
				encoded_count <= 7'b001_1001;
			end
			
			3'b101: begin
				encoded_count <= 7'b001_0010;
			end
			
			3'b110: begin
				encoded_count <= 7'b000_0011;
			end
			
			3'b111: begin
				encoded_count <= 7'b111_1000;
			end
			
			default: begin
				encoded_count <= 7'b000_0000;
			end
		endcase
		
	end
	
endmodule
