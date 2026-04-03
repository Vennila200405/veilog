module g_1bit_comparator(p,q,gt,lt,eq);
input p,q;
output gt,lt,eq;
wire w1,w2;
not(w1,q);
not(w2,p);
and(gt,w1,p);
xnor(eq,p,q);
and(lt,w2,q);
endmodule
