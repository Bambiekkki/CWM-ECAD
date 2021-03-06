//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb();

parameter CLK_PERIOD = 10;

reg clk, rst, button, sel;
wire [2:0]result;

initial begin
clk = 1'b0;
forever 
#(CLK_PERIOD/2) clk=~clk;
end

initial begin
rst=1;
#10
rst=0;
button=1;
sel=1;
#100
button=0;
$display("output=%h",result);
end

top mytop(.clk(clk),.rst(rst),.button(button),.sel(sel),.result(result));

endmodule
