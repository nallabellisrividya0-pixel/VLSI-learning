module tb_mux32x1;
reg [31:0] in;
reg [4:0] sel;
wire y;
mux32x1 uut(
    .in(in),
    .sel(sel),
    .y(y)
);
integer i;
initial
begin
    in=32'hA5A5F0F0;
  for(i=0;i<32;i=i+1)
    begin
        sel=i;
        #10;
    end
      $finish;
end
endmodule
