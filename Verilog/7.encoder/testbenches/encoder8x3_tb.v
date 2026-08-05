module encoder8x3_tb;

reg [7:0] D;
wire [2:0] Y;

encoder8x3 uut(
    .D(D),
    .Y(Y)
);

integer i;

initial
begin
    for(i=0;i<8;i=i+1)
    begin
        D = 8'b00000001 << i;
        #10;
    end

    $finish;
end

endmodule
