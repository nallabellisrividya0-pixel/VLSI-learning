module full_sub(
  input A,B,C,
  output borrow,diff);
  assign borrow=((~A)&B)|((~A)&C)|(B&C);
  assign diff=A^B^C;
endmodule
