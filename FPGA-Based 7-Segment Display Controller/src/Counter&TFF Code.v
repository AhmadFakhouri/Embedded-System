
timescale ins / 1ps
// Engineer: Ahmad Fakhouri

// Design Name: 7-segment
module counter_3bit (
input CLOCK,
input RESET,
output [6:0] seg0 // 7-segment display for LD5 (q0)
// 7-segment display for LD6 (q1}
// 7-segment display for LD7 (q2)

wire x;
wire [2:0] q:
assign x = q[0] s q[1];
wire y = 1;
tff al(q[0], y, CLOCK, RESET];
tff a2(q[1], q[0], CLOCK, RESET);
tff a3(q[2], x, CLOCK, RESET] ,

seven_seg_decoder decoder0(.binary(q), .seg(seg0));
endmodule
module ff(q, t, clk, res);
input t,clk, res;
output reg q;
reg [31:0] counter;
reg [31:0] counter2;
always @(clk, res) begin
if(res)begin q=0; counter=0/counter2=0rend
else if(clk) begin
if(counter<500000000) begin
if(counter2<500000000)begin counter2=counter2+1;end
counter2=0;
counter=counter+1;
end
else begin
counter=0;
if(t)q=q
end
end