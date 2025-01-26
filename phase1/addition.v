`timescale 1ns / 10ps

// Top-level module for a 32-bit carry look-ahead adder
module addition (
    input wire [31:0] RA, 
    input wire [31:0] RB, 
    input wire cin, 
    output wire [31:0] sum, 
    output wire cout
);
    wire cout16;

    // Instantiate two 16-bit CLAs
    CLA16 CLA_lower(
        .RA(RA[15:0]), 
        .RB(RB[15:0]), 
        .cin(cin), 
        .sum(sum[15:0]), 
        .cout(cout16)
    );

    CLA16 CLA_upper(
        .RA(RA[31:16]), 
        .RB(RB[31:16]), 
        .cin(cout16), 
        .sum(sum[31:16]), 
        .cout(cout)
    );

endmodule

// 16-bit carry look-ahead adder
module CLA16 (
    input wire [15:0] RA, 
    input wire [15:0] RB, 
    input wire cin, 
    output wire [15:0] sum, 
    output wire cout
);
    wire cout4, cout8, cout12;

    // Instantiate four 4-bit CLAs
    CLA4 CLA_lower(
        .RA(RA[3:0]), 
        .RB(RB[3:0]), 
        .cin(cin), 
        .sum(sum[3:0]), 
        .cout(cout4)
    );

    CLA4 CLA_mid1(
        .RA(RA[7:4]), 
        .RB(RB[7:4]), 
        .cin(cout4), 
        .sum(sum[7:4]), 
        .cout(cout8)
    );

    CLA4 CLA_mid2(
        .RA(RA[11:8]), 
        .RB(RB[11:8]), 
        .cin(cout8), 
        .sum(sum[11:8]), 
        .cout(cout12)
    );

    CLA4 CLA_upper(
        .RA(RA[15:12]), 
        .RB(RB[15:12]), 
        .cin(cout12), 
        .sum(sum[15:12]), 
        .cout(cout)
    );

endmodule

// 4-bit carry look-ahead adder
module CLA4 (
    input wire [3:0] RA, 
    input wire [3:0] RB, 
    input wire cin, 
    output wire [3:0] sum, 
    output wire cout
);
    // Wires for Propagate, Generate, and Carry
    wire [3:0] P, G, c;

    // Compute Propagate and Generate
    assign P = RA ^ RB;  // Propagate
    assign G = RA & RB;  // Generate

    // Compute carry bits
    assign c[0] = cin;
    assign c[1] = G[0] | (P[0] & c[0]);
    assign c[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & c[0]);
    assign c[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & c[0]);

    // Final carry-out
    assign cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & c[0]);

    // Compute sum
    assign sum = P ^ c;

endmodule

  
