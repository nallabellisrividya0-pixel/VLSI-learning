module tb_mux4x1;

reg i0,i1,i2,i3;
reg [1:0] sel;
wire y;

mux4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

integer i;

initial
begin
    i0=0;
    i1=1;
    i2=0;
    i3=1;

    for(i=0;i<4;i=i+1)
    begin
        sel=i;
        #10;
    end

    $finish;
end

endmodule
