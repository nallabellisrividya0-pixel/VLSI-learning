module demux1x2(
    input in,
    input sel,
    output y0,
    output y1
);

wire sel_bar;
not G1(sel_bar, sel);
and G2(y0, in, sel_bar);
and G3(y1, in, sel);
endmodule
