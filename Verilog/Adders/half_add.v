module half_add(
  input A,B,
  output sum,
  output carry
);
  assign sum=A^B;
  assign carry=A&B;
endmodule
