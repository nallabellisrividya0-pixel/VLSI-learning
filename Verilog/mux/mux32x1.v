module mux32x1(
    input [31:0] in,
    input [4:0] sel,
    output reg y
);
always @(*)
begin
    case(sel)
        5'd0  : y = in[0];
        5'd1  : y = in[1];
        5'd2  : y = in[2];
        5'd3  : y = in[3];
        5'd4  : y = in[4];
        5'd5  : y = in[5];
        5'd6  : y = in[6];
        5'd7  : y = in[7];
        5'd8  : y = in[8];
        5'd9  : y = in[9];
        5'd10 : y = in[10];
        5'd11 : y = in[11];
        5'd12 : y = in[12];
        5'd13 : y = in[13];
        5'd14 : y = in[14];
        5'd15 : y = in[15];
        5'd16 : y = in[16];
        5'd17 : y = in[17];
        5'd18 : y = in[18];
        5'd19 : y = in[19];
        5'd20 : y = in[20];
        5'd21 : y = in[21];
        5'd22 : y = in[22];
        5'd23 : y = in[23];
        5'd24 : y = in[24];
        5'd25 : y = in[25];
        5'd26 : y = in[26];
        5'd27 : y = in[27];
        5'd28 : y = in[28];
        5'd29 : y = in[29];
        5'd30 : y = in[30];
        5'd31 : y = in[31];
        default: y = 1'b0;
    endcase
end
endmodule
