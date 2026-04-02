module T_latch(T, enable, q);

input T, enable;
output reg q;

initial q = 0;
always @(*) begin
        if (enable) begin
        if (T == 1)
            q = ~q;
        else
            q = q;
end
else
        q = q;
end
endmodule
