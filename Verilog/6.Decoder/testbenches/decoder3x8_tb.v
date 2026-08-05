module decoder3x8_tb;
reg [2:0] A;
reg EN;
wire [7:0] Y;
decoder3x8 uut(
    .A(A),
    .EN(EN),
    .Y(Y)
);
integer i;
initial
begin
    EN=1;
  for(i=0;i<8;i=i+1)
    begin
        A=i;
        #10;
    end
      EN=0;
    #10;
  $finish;
end
endmodule
