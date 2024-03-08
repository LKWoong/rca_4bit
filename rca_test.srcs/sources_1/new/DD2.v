`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 21:30:23
// Design Name: 
// Module Name: DD2
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

//DD2 is second step of the signals.
module DD2(d,clk,q

    );
    input d, clk;
    output reg q;
    
    reg data; 
    
    always@(posedge clk) begin
    data <= d;
    q <= data;
    end
endmodule
