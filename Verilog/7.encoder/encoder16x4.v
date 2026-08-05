module encoder16x4(
    input [15:0] D,
    output reg [3:0] Y
);
always @(*)
begin
    case(D)
        16'h0001: Y=4'd0;
        16'h0002: Y=4'd1;
        16'h0004: Y=4'd2;
        16'h0008: Y=4'd3;
        16'h0010: Y=4'd4;
        16'h0020: Y=4'd5;
        16'h0040: Y=4'd6;
        16'h0080: Y=4'd7;
        16'h0100: Y=4'd8;
        16'h0200: Y=4'd9;
        16'h0400: Y=4'd10;
        16'h0800: Y=4'd11;
        16'h1000: Y=4'd12;
        16'h2000: Y=4'd13;
        16'h4000: Y=4'd14;
        16'h8000: Y=4'd15;
        default: Y=4'd0;
    endcase
end
endmodule
