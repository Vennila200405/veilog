module full_subtractor_tb;
  reg a,b,c;
  wire diff,borrow;
  full_subtractor DUT(a,b,c,diff,borrow);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("a=%b,b=%b,c=%b,diff=%b,borrow=%b",a,b,c,diff,borrow);
    a=0;b=0;c=0; #10
    a=0;b=0;c=1; #10
    a=0;b=1;c=0; #10
    a=0;b=1;c=1; #10
    a=1;b=0;c=0; #10
    a=1;b=0;c=1; #10
    a=1;b=1;c=0; #10
    a=1;b=1;c=1;
  end
endmodule
