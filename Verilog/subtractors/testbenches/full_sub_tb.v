module full_sub_tb;
  reg A,B,C;
  wire borrow, diff;
  full_sub uut(
    .A(A),
    .B(B),
    .C(C),
    .borrow(borrow),
    .diff(diff)
  );
  initial begin
    A=0; B=0 ; C=0; #10;
    A=0; B=0 ; C=1; #10;
    A=0; B=1 ; C=0; #10;
    A=0; B=1 ; C=1; #10;
    A=1; B=0 ; C=0; #10;
    A=1; B=0 ; C=1; #10;
    A=1; B=1 ; C=0; #10;
    A=1; B=1 ; C=1; #10;
    $finish;
  end
