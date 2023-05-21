module global_controller(
	input clk, rst,
	input flag1,flag2,flag3,flag4,
	output reg [9:0] leds
);

	reg [1:0] state;
	parameter init=2'h0, state1= 2'h1, state2 = 2'h2, state3 = 2'h3; // or 2'b00 , 2'b01 , 2'b10, 2'b11
	
	always@(posedge clk or negedge rst) begin
		if (!rst) begin
			state <= init;
		end else begin
			case(state)
				init: begin
					if (flag1) begin
						state <= state1;
						end
					end
					
					state1: begin
						if (flag2) begin
							state <= state2;
							end
						end
						
					state2: begin
						if (flag3) begin
							state <= state3;
						end
					end
					
					state3: begin
						if (flag4) begin
							state <= init;
						end
					end
					
					default: begin
						state <= init;
					end
			endcase
		end
	end
	
	always@(state) begin
		case(state)
			init: begin
				leds <= 10'b00_0000_0001;
			end
			
			state1: begin
				leds <= 10'b00_000_0110;
			end
			
			state2: begin
				leds <= 10'b00_0011_1000;
			end
			
			state3: begin
				leds <= 10'b11_1100_0000;
			end
			
			default: begin
				leds <= 10'b00_0000_0000;
			end
		endcase
	end
			
			
					
endmodule
