module demux1x8(
    input in,
    input [2:0] sel,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
);
wire s0_bar, s1_bar, s2_bar;
not G1(s0_bar, sel[0]);
not G2(s1_bar, sel[1]);
not G3(s2_bar, sel[2]);
and G4(y0, in, s2_bar, s1_bar, s0_bar);
and G5(y1, in, s2_bar, s1_bar, sel[0]);
and G6(y2, in, s2_bar, sel[1], s0_bar);
and G7(y3, in, s2_bar, sel[1], sel[0]);
and G8(y4, in, sel[2], s1_bar, s0_bar);
and G9(y5, in, sel[2], s1_bar, sel[0]);
and G10(y6, in, sel[2], sel[1], s0_bar);
and G11(y7, in, sel[2], sel[1], sel[0]);
endmodule
