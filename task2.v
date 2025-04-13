module Sync_RAM #(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8, DEPTH = 16) (
input clk,
input we,
input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] din,
output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] memory [0:DEPTH-1];

always @(posedge clk) begin
if (we)
memory[addr] <= din; // Write Operation
else
dout <= memory[addr]; // Read Operation
end
endmodule
