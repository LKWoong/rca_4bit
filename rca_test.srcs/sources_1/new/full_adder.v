`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 21:01:09
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Full adder coding.
module full_adder(
    input a,b,
    input Ci,
    output S, Co);
    assign S=a^b^Ci; // a or b or Ci
    assign Co=a&b | (a^b)&Ci; // carry signal. (a and b) or {(a or b) and Ci.}
endmodule
