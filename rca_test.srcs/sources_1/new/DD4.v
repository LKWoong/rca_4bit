`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 21:58:35
// Design Name: 
// Module Name: DD4
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

//This is the fourth steps of the signal.
module DD4(d,clk,q

    );
    input d,clk;
    output reg q;
    reg [2:0] data;
    
    always@(posedge clk) begin
        data[0] <= d;
        data[1] <= data[0];
        data[2] <= data[1];
        q <= data[2];
    end
    
endmodule
