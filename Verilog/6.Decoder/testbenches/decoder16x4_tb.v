module decoder4x16_tb;
reg [3:0] A;
reg EN;
wire [15:0] Y;
decoder4x16 uut(
    .A(A),
    .EN(EN),
    .Y(Y)
);
integer i;
initial
begin
    EN=1;
  for(i=0;i<16;i=i+1)
    begin
        A=i;
        #10;
    end
      EN=0;
    #10;
  $finish;
end
endmodule
