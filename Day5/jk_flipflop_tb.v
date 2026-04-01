module jk_flipflop_tb;
reg clk,rst,j,k;
wire q;
jk_flipflop DUT(clk,rst,q,j,k);
always #5
clk=~clk;
initial begin
        $monitor("time=%0t clk=%b rst=%b j=%b k=%b q=%b", $time, clk, rst, j, k, q);
        $dumpfile("dump.vcd");
        $dumpvars(0);
clk = 0;
rst=1;j=0;k=0;   // initialize
 #10 rst = 0;
#10 j=1;k=0;   // SET → q=1
#10 j=0;k=0;   // HOLD
#10 j=0;k=1;   // RESET → q=0
#10 j=0;k=0;   // HOLD
#10 j=1;k=1;   // INVALID
#10 $finish;
end
endmodule
