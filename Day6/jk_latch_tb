module jk_latch_tb;
reg j,k,enable;
wire q;
jk_latch DUT(j,k,enable,q);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
$monitor("j=%b k=%b enable=%b q=%b",j,k,enable,q);

enable=0;
j=0;k=0;
#10 enable=1;
j=0; k=0; #10
j=0; k=1; #10
j=1; k=0; #10
j=1; k=1;
end
endmodule
