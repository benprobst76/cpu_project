`timescale 1ns / 10ps

module subtraction(input wire [31:0] RA, input wire [31:0] RB, input wire cin, output wire [31:0] diff, output wire cout);
	wire [31:0] temp;
	negate_bits negate(.Ra(RB),.Rz(temp));
	addition add(.RA(RA), .RB(temp), .cin(cin), .sum(diff), .cout(cout));
endmodule

