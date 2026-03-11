module test;
reg clk;
reg rst;
wire outl, out2, out3, out4;

StateController dut (
.clock (clk),
.rst (rst),
.out1 (out1),
.out2 (out2),
.out3(out3),
.out4 (out4)

):

initial begin
clk - 0;
forever #10 clk = ~clk;

end

initial begin
rst = 1;
#10 rst = 0;

end
endmodule