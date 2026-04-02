module T_latch_tb;
reg T,enable;
wire q;
T_latch DUT(T,enable,q);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
$monitor("T=%b enable=%b q=%b",T,enable,q);
enable = 0; T = 0; #10;
enable = 1; T = 1; #10;
enable = 0; T = 0; #10;
enable = 1; T = 0; #10;
enable = 1; T = 1; #10;
enable = 0; T = 0; #10;
end
endmodule
