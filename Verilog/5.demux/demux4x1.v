module demux1x4(
    input in,
    input [1:0] sel,
    output y0,
    output y1,
    output y2,
    output y3
);
wire s0_bar, s1_bar;
not G1(s0_bar, sel[0]);
not G2(s1_bar, sel[1]);
and G3(y0, in, s1_bar, s0_bar);
and G4(y1, in, s1_bar, sel[0]);
and G5(y2, in, sel[1], s0_bar);
and G6(y3, in, sel[1], sel[0]);
endmodule
