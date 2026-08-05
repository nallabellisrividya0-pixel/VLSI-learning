module decoder4x16(
    input [3:0] A,
    input EN,
    output reg [15:0] Y
);

always @(*)
begin
    if(EN)
        Y = 16'b0000000000000001 << A;
    else
        Y = 16'b0000000000000000;
end

endmodule
