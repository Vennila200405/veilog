module sr_JK_flipflop(clk,rst,J,K,q);
input clk,rst,J,K;
output reg q;
wire S,R;

assign S=J&~q;
assign R=K&q;
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
