module alu(
	input 		[1:0] a,b,
	input 		[2:0] operation,
	output reg 	[1:0] result,
	output reg 			overflow
);
	
	always begin 
	
		overflow = 1'b0; 
	
		case(operation)
		
			3'b000: begin
				{overflow, result} = a+b;
			end
			
			3'b001: begin
				result = a - b;
			end
				
			3'b010: begin
				{overflow, result} = a+ 1'b1;
			end
			
			
			3'b011: begin
				result = a & b;
			end
			
			3'b100: begin
				result = a | b;
			end
			
						
			default: begin
			{overflow, result}= 3'b000;
			end
			
		endcase
		
	end
	
endmodule
