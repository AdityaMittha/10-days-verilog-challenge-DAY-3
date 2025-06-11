module x1_mux(a, b, s, out);
input a, b, s;
output out;
assign out = ((~s) & a) | (s & b);
endmodule

module x8(in, sel, out);
input [7:0] in;
input [2:0] sel;
output out;
wire w1, w2, w3, w4, w5, w6;

x1_mux m1(in[0], in[1], sel[0], w1);
x1_mux m2(in[2], in[3], sel[0], w2);
x1_mux m3(in[4], in[5], sel[0], w3);
x1_mux m4(in[6], in[7], sel[0], w4);
x1_mux m5(w1, w2, sel[1], w5);
x1_mux m6(w3, w4, sel[1], w6);
x1_mux m7(w5, w6, sel[2], out);
endmodule
