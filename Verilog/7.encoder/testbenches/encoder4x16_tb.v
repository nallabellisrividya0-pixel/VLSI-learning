module encoder16x4_tb;
reg [15:0] D;
wire [3:0] Y;
encoder16x4 uut(
    .D(D),
    .Y(Y)
);
integer i;
initial
begin
    for(i=0;i<16;i=i+1)
    begin
        D = 16'h0001 << i;
        #10;
    end
      $finish;
end
endmodule
