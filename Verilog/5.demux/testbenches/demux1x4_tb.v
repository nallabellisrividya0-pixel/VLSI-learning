module tb_demux1x4_struct;
reg in;
reg [1:0] sel;
wire y0, y1, y2, y3;
integer i;
demux1x4_struct uut(
    .in(in),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);
initial
begin
    $display("Time\tin\tsel\ty0\ty1\ty2\ty3");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
              $time,in,sel,y0,y1,y2,y3);
  in = 1;
  for(i=0; i<4; i=i+1)
    begin
        sel = i;
        #10;
    end

    in = 0;
    sel = 2'b00;
    #10;

    $finish;
end

endmodule
