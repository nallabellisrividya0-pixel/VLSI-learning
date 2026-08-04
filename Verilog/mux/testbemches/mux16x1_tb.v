module tb_mux16x1;

reg [15:0] in;
reg [3:0] sel;
wire y;

mux16x1 uut(
    .in(in),
    .sel(sel),
    .y(y)
);

integer i;

initial
begin
    in=16'b1010101111001101;

    for(i=0;i<16;i=i+1)
    begin
        sel=i;
        #10;
    end

    $finish;
end

endmodule
