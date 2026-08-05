module encoder4x2_tb;
reg [3:0] D;
wire [1:0] Y;
encoder4x2 uut(
    .D(D),
    .Y(Y)
);
integer i;
initial
begin
    for(i=0;i<4;i=i+1)
    begin
        D = 4'b0001 << i;
        #10;
    end
      $finish;
end
endmodule
