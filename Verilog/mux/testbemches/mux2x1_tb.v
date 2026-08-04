

module tb_mux2x1;

reg a, b, sel;
wire y;

mux2x1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

integer i;

initial
begin
    $monitor("Time=%0t a=%b b=%b sel=%b y=%b", $time,a,b,sel,y);

    for(i=0;i<8;i=i+1)
    begin
        {a,b,sel}=i;
        #10;
    end

    $finish;
end

endmodule
