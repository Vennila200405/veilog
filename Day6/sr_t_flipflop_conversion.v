module sr_T_flipflop(clk,rst,T,q);
input clk,rst,T;
output reg q;
wire S,R;

assign S=T&~q;
assign R=~T&q;
always @(posedge clk)begin
if (rst)
q<=0;
else
if(S==0 && R==0)
q<=q;
else if(S==0 && R==1)
q<=0;
else if(S==1 && R==0)
q<=q;
else
q<=1'bx;
end
endmodule
