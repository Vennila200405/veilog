module D_latch_tb;
reg D,enable;
wire q;
D_latch DUT(D,enable,q);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
$monitor("D=%b enable=%b q=%b",D,enable,q);
enable=0;D=0;#10
enable=1;D=1;#10
enable=0;D=0;
enable=1;D=0;
enable=1;D=1;
enable=0;D=0;
end
endmodule
