`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 23:33:25
// Design Name: 
// Module Name: tb_rca_test
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

//testbench of the 4bits rca.
module tb_rca_test();
  reg clk=0; // clk must be 0 when the signal has started.
    reg C0; // carry?
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] o;
    wire Co;
    
    rca_test tb_rca_test(C0,a,b,clk,o,Co);
    
    always
    #5
    clk = ~clk;
    
    initial begin
    a = $random;
    b = $random;
    C0 = 0;
    
    #50
    a = $random;
    b = $random;
    C0 = 1;
    end
endmodule
