module eight_demux(in, en, sel, out);
input in, en;
input [2:0] sel;
output reg [7:0] out;
always @(*) begin
    out = 8'b00000000;
    if (en) begin
        case(sel)
            3'b000: out[0] = in;
            3'b001: out[1] = in;
            3'b010: out[2] = in;
            3'b011: out[3] = in;
            3'b100: out[4] = in;
            3'b101: out[5] = in;
            3'b110: out[6] = in;
            3'b111: out[7] = in;
        endcase
    end
end
endmodule
