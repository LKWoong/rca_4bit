`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 21:31:23
// Design Name: 
// Module Name: DD3
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

//This is the third steps of the signal.
module DD3(d,clk,q

    );
    input d,clk;
    output reg q;
    reg [1:0] data;
    
    always@(posedge clk) begin
        data[0] <= d;
        data[1] <= data[0];
        q <= data[1];
     end
endmodule
