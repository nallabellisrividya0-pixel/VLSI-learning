module half_sub(
  input A,B,
  output borrow,diff);
  assign borrow=A^B;
  assign diff=(~A)&B;
endmodule
