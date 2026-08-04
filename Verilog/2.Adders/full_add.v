module full_add(
  input A,B,C.
  output sum,cary);
  assign sum=A^B^C;
  assign carry=(A&B)|(A&c)|(A&c);
endmodule
  
  
