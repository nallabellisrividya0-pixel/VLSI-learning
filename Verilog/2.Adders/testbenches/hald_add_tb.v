module half_add_tb;
  reg A,B;
  wire sum,carry;
  half_add uut(
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    A=0; B=0; #10;
     A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
  end
endmodule
    
    
    
    
    
