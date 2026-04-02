module sr_d_flipflop(clk,rst,D,q);
input clk,rst,D;
output reg q;
wire S,R;

assign S=D;
assign R=~D;
always @(posedge clk)begin
if (rst)
q<=0;
else
if(S==0 && R==0)
q<=q;
else if(S==0 && R==1)
q<=0;
else if(S==1 && R==0)
q<=1;
else
q<=1'bx;
end
endmodule
