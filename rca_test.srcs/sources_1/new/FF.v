`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 20:59:57
// Design Name: 
// Module Name: FF
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


module FF(d, clk, q

    ); // Flip-Flop coding.
    input d, clk; // FF has 2 inputs. input is d and clk is clock.
    output reg q; // output must have storage. So I defined it as reg. not wire.
    
    always @(posedge clk) begin // when the clock has started,
        q<=d; // d's signal will go to q. 
    end // This is same as all of the FF. Regardless of the clock Timing signal.
    
endmodule
