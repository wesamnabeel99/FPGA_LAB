module manual_counter(
	input sliding_switch,
	output [6:0] encoded_count
);
	wire countx;
	wire [6:0] encoded_countx;
	wire trigger;
	
	trigger_generator(
		.switch(sliding_switch),
		.trigger(trigger)
	);
	
	
	counter u1(
		.trigger(trigger),
		.count(countx)
	);
	
	
	encoder u2(
		.count(countx),
		.encoded_count(encoded_countx)
	);
	
	assign encoded_count = encoded_countx;
	
	
endmodule
