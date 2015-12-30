module top (
	input  clk,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5
);

	localparam BITS = 5;
	localparam LOG2DELAY = 22;

	reg [BITS+LOG2DELAY-1:0] counter = 0;
	reg out_led = 0;

	always@(posedge clk) begin
		if (counter == 1000000) begin
			out_led <= out_led ^ 1;
			counter <= 0;
		end
		else
		begin
			counter <= counter + 1;
		end
	end

	assign {LED1, LED2, LED3, LED4} = 15;
	assign LED5 = out_led;
endmodule
