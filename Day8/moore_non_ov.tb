module moore_1001_tb;

reg clk, rst, x;
wire y;
moore_1001 DUT (clk, rst, x, y);
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    x = 0;

    $dumpfile("dump.vcd");
    $dumpvars(0, moore_1001_tb);

    $monitor("time=%0t clk=%b rst=%b x=%b y=%b",
              $time, clk, rst, x, y);
    @(posedge clk);
    rst = 0;
    @(posedge clk) x = 1;
    @(posedge clk) x = 0;
    @(posedge clk) x = 0;
    @(posedge clk) x = 1;

    @(posedge clk) x = 0;
    @(posedge clk) x = 0;
    @(posedge clk) x = 1;

    @(posedge clk);
    $finish;
end

endmodule
