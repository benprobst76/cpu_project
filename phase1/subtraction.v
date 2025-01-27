`timescale 1ns / 10ps

module sub_bits(input wire [31:0] Ra, input wire [31:0] Rb, input wire cin, output wire [31:0] sum, output wire cout);
	wire [31:0] temp;
	negate_bits negate(.Ra(Rb),.Rz(temp));
	add_bits add(.Ra(Ra), .Rb(temp), .cin(cin), .sum(sum), .cout(cout));
	endmodule

