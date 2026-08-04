module tb_demux1x2_struct;
reg in;
reg sel;
wire y0;
wire y1;
integer i;
demux1x2_struct uut (
    .in(in),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);
initial begin
    $display("Time\tin\tsel\ty0\ty1");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, in, sel, y0, y1);
  for(i = 0; i < 4; i = i + 1) begin
        {in, sel} = i;   // Generates 00, 01, 10, 11
        #10;
    end
    $finish;
end
endmodule
