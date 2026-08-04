module tb_mux8x1;
reg [7:0] in;
reg [2:0] sel;
wire y;
mux8x1 uut(
    .in(in),
    .sel(sel),
    .y(y)
);
integer i;
initial
begin
    in=8'b10110010;

    for(i=0;i<8;i=i+1)
    begin
        sel=i;
        #10;
    end

    $finish;
end

endmodule
