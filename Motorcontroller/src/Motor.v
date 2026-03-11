module StateController (
input clock,
input rst,
output reg outl,
output reg out2,
output reg out3,
output reg out4
):
parameter s0 = 3'do,
sl = 3'dl,
s2 = 3'd2,
83 = 3'd3,
s4 = 3'd4,
s5 = 3'd5,
s6 = 3'd6,
s7 = 3'd7;

reg [2:0] current_s, next_s;

always @(posedge clock or posedge rst) begin
if (rst)
current s <= s0;


else
current s <= next s;

end

always @(*) begin
case (current_s)
s0: begin {outl, out2, out3, out4} = 4'b1001; next s = sl; end
sl: begin {outl, out2, out3, out4} = 4'b1100; next s = s2;
s2: begin {outl, out2, out3, out4} = 4'b0110; next s = s3; end
s3: begin {outl, out2, out3, out4} = 4'b0011; next s = s4; end
s4: begin {outl, out2, out3, out4} = 4'b1001; next s = s5; end
s5: begin {outl, out2, out3, out4} = 4'b1100; next s = s6; end
s6: begin {outl, out2, out3, out4} = 4'b0110; next s = s7; end
s7: begin {outl, out2, out3, out4} = 4'b0011; next s = s0; end
default: begin (outl, out2, out3, out4} = 4'b0000; next s = s0; end
endcase

end
endmodule


