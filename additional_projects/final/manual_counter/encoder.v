module encoder(
	input [1:0] count,
	output reg [6:0] encoded_count
);

	always begin
	case (count)
		2'b00: begin
			encoded_count = 7'b000_0001;
		end
		
		2'b01: begin
			encoded_count = 7'b100_1111;
		end
		
		2'b10: begin
			encoded_count = 7'b001_0010;
		end
		
		2'b11: begin
			encoded_count = 7'b000_0110;
		end
		
		default: begin
			encoded_count = 7'b111_1111;
		end
	
	endcase
	end

endmodule


