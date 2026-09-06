
module pwm_generator(
    input clk_3125KHz,
    input [3:0] duty_cycle,
    output reg clk_195KHz, pwm_signal
);

initial begin
    clk_195KHz = 0; pwm_signal = 1;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////
reg [3:0] counter = 0; // counts 0 to 15
always @ (posedge clk_3125KHz) begin
    if (counter == 0 || counter == 8) clk_195KHz = ~clk_195KHz; // toggles clock signal
    counter <= counter + 1'b1; // increment counter // after 15 it resets to 0
	

	if (counter < duty_cycle)
        pwm_signal <= 1'b1;
    else
        pwm_signal <= 1'b0;
end



//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule
