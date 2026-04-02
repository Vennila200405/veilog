module sr_T_flipflop_tb;
reg clk,rst,T;
wire q;
sr_T_flipflop DUT(clk,rst,T,q);
always #5
clk=~clk;
initial begin
$monitor("time=%0t clk=%b T=%b q=%b",$time,clk,T,q);
$dumpfile("dump.vcd");
$dumpvars(0);

clk=0;
rst=1; T=0;#10
rst=0; T=0;#10
T=1; #10
T=0; #10
T=1; #10
$finish;
end
endmodule
