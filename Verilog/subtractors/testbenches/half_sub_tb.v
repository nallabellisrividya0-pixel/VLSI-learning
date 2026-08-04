module half_sub_tb;
  reg A,B;
  wire borrow,diff;
  half_sub uut(
    .A(A),
    .B(B),
    .borrow(borrow),
    .diff(diff)
  );
  initial begin
    A=0; B=0; #10;
     A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
  end
endmodule
    
