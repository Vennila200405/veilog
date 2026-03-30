module or_gate_tb;
reg a,b;
wire y;
or_gate DUT(a,b,y);
initial begin
$dumpfile("dump.vcd");
$dumpvars();
$monitor("a=%b,b=%b,y=%b",a,b,y);
a=0;b=0; #10
a=0;b=1; #10
a=1;b=0; #10
a=1;b=1;
end
endmodule
