module sr_latch_tb;
reg s,r,enable;
wire q;
sr_latch DUT(s, r, enable, q);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, sr_latch_tb);

    $monitor("s=%b r=%b enable=%b q=%b", s, r, enable, q);

    enable = 0; s = 0; r = 0;
    #10 enable = 1;

    s = 0; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 0; #10;
    s = 1; r = 1; #10;

    $finish;
end

endmodule
