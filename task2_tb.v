module Sync_RAM_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;

// Instantiate RAM module
Sync_RAM uut (
.clk(clk),
.we(we),
.addr(addr),
.din(din),
.dout(dout)
);

initial begin
clk = 0;
forever #5 clk = ~clk; // Generate clock signal
end

initial begin
$monitor("Time=%0t | clk=%b | we=%b | addr=%h | din=%h | dout=%h", $time, clk,
we, addr, din, dout);
we = 1; addr = 4'h1; din = 8'hAA; #10;
we = 1; addr = 4'h2; din = 8'h55; #10;

// Test Read Operation
we = 0; addr = 4'h1; #10;
we = 0; addr = 4'h2; #10;

$finish;

end
endmodule
