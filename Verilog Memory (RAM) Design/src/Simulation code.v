
module testben;

// Inputs
reg clk;
reg write_en;
reg read en;
reg [7:0] Din;
reg [2:0] write address;
reg [2:0] read_address;

// Outputs
wire [7:0] Dout;

// Instantiate the Unit Under Test (UUT)
MEM uut (
.clk(clk),
.write_en(write_en),
.read_en (read_en),
.Din (Din),
.write_address (write_address),
.read_address(read_address),
.Dout (Dout)

):

initial begin
// Initialize Inputs
clk = 0;
write en = 0;
read_en = 0;
Din = 0;
write_address = 0;
read_ address = 0;
#100;
// 1. Write value 171 to address 0
Din = 171;
write_address = 0;
write en = 1;
#10;
write_en = 0;
#10;
// 2. Read from address 0 (should be 171)
read address = 0;
read_en = 1;
#10;
read en = 0;
#10;

// 3. Write value 200 to address 1
Din = 200;
write address = 1;
write_en = 1;
#10;

write en = 0;
#10;
// 4. Read from address 1 (should be 200)
read address = 1;
read en = 1;
#10;
read en = 0;
#10;
end
// Clock generation
always #5 clk = ~clk;

endmodule