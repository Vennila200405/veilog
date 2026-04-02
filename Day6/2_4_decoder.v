module decoder_2_4(A0,A1,Y0,Y1,Y2,Y3);
input A0,A1;
output Y0,Y1,Y2,Y3;
assign Y0= ~ A1 & ~A0;
assign Y1= ~ A1 & A0;
assign Y2=  A1  & ~A0;
assign Y3=  A1  &A0;
endmodule
