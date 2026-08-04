module tb_demux1x8_struct;
reg in;
reg [2:0] sel;
wire y0, y1, y2, y3, y4, y5, y6, y7;
integer i;
demux1x8_struct uut(
    .in(in),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);
initial
begin
    $display("Time\tin\tsel\ty0 y1 y2 y3 y4 y5 y6 y7");

    $monitor("%0t\t%b\t%d\t%b  %b  %b  %b  %b  %b  %b  %b",
             $time,in,sel,y0,y1,y2,y3,y4,y5,y6,y7);
  in = 1;
  for(i=0; i<8; i=i+1)
    begin
        sel = i;
        #10;
    end
      in = 0;
    sel = 3'b000;
    #10;
  $finish;
end
endmodule
