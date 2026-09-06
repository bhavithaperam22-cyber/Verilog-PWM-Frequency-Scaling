
module frequency_scaling (
    input clk_50M,
    output reg clk_3125KHz
);

initial begin
    clk_3125KHz = 0;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////

reg [2:0] counter = 0; // counts 0 to 7
always @ (posedge clk_50M) begin
    if (!counter) clk_3125KHz = ~clk_3125KHz; // toggles clock signal
    counter = counter + 1'b1; // increment counter // after 7 it resets to 0
end



//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule
