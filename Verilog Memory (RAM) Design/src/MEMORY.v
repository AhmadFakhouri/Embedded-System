

module MEM(
input clk,
input write_en,
input read_en,
input [7:0] Din,
input [2:0] write_address,
input [2:0] read_address,
output reg [7:0] Dout
):

reg [7:0] mem[7:0];

always @(posedge clk) begin
if (write_en)
mem[write_address] <= Din;
else if (read_en)
Dout <= mem[read_address];

end
endmodule