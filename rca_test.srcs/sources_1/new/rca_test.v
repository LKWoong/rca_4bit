`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 15:08:31
// Design Name: 
// Module Name: rca_test
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


module rca_test(C0,a,b,clk,Oc,C4);
    input C0;
    input [3:0] a; // Because of the 4bits, all of the input's bits are 4bits.
    input [3:0] b; // same as above.
    input clk; // clock
    output [3:0] Oc;
    output C4;
    
    wire [2:0] C;
    wire [2:0] Cc;
    wire [3:0] Ac;
    wire [3:0] Bc;
    wire [3:0] O;
    wire C0c;
    //FA0
    FF R1(a[0],clk,Ac[0]); //first inputs a,b are going to FF R1
    FF R2(b[0],clk,Bc[0]); 
    FF R3(C0,clk,C0c); // carry datas
    full_adder F0(Ac[0],Bc[0],C0c,O[0],C[0]); // wire : Ac, Bc, C0c, O, C
    DD3 D33(O[0],clk,Oc[0]); // O,Oc are outputs.
    //FA1
    FF R4(C[0],clk,Cc[0]); // Outputs of first datas are in FF R4.
    DD2 D21(a[1],clk,Ac[1]); // Second datas : a[1] is connected with wire Ac[1]
    DD2 D22(b[1],clk,Bc[1]); // same as above.
    full_adder F1(Ac[1],Bc[1],Cc[0],O[1],C[1]); // full adder is connected with Ac[1]~C[1]
    DD2 D23(O[1],clk,Oc[1]); // DD2 is delay. 

//FA2
    FF R5(C[1],clk,Cc[1]); // Outputs of second datas are in FF R5
    DD3 D31(a[2],clk,Ac[2]); // DD3 is connected with  a[2], wire Ac[2]
    DD3 D32(b[2],clk,Bc[2]); 
    full_adder F2(Ac[2],Bc[2],Cc[1],O[2],C[2]);  // full_adder is connected with wires Ac[2].Bc[2].Cc[1],O[2], C[2]
    FF R7(O[2],clk,Oc[2]); // Outputs are going to FF R7.

//FA3
    FF R6(C[2],clk,Cc[2]); // Flipflop R6 is connected with C[2], wire Cc[2]
    DD4 D41(a[3],clk,Ac[3]); //DD4 is third time delay. Data a[3], wire Ac[3] is in DD4
    DD4 D42(b[3],clk,Bc[3]);
    full_adder F3(Ac[3],Bc[3],Cc[2],O[3],C4);  // full_adder is connected with wires.
    assign Oc[3] = O[3]; // Output Oc[3] will get from O[3]. O[3] is result datas.
endmodule
