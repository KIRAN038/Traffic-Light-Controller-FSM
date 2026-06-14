module traffic_tb;

reg clk;
reg reset;

wire [1:0] light;
wire [1:0] state;
wire [3:0] count;

// DUT
traffic_light uut (
    .clk(clk),
    .reset(reset),
    .light(light),
    .state(state),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial
begin

    // Waveform file
    $dumpfile("traffic.vcd");
    $dumpvars(0, traffic_tb);

    // Monitor values
    $monitor("Time=%0t Reset=%b State=%b Count=%d Light=%b",
              $time, reset, state, count, light);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #300 $finish;

end

endmodule