module full_add_tb;
  reg A,B,C;
  wire sum, carry;
  full_add uut(
    .A(A),
    .B(B),
    .C(C),
    .sum(sum),
    .carry(carry)
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
endmodule
    
