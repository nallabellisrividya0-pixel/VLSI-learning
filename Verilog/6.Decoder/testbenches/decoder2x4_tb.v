module decoder2x4_tb;
reg [1:0] A;
reg EN;
wire [3:0] Y;
decoder2x4 uut(
    .A(A),
    .EN(EN),
    .Y(Y)
);
integer i;
initial
begin
    EN = 0;
    A = 0;
    #10;
  EN = 1;
  for(i=0;i<4;i=i+1)
    begin
        A = i;
        #10;
    end
      EN = 0;
    #10;
 $finish;
end
endmodule
