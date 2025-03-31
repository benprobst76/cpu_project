`timescale 1ns / 10ps

module negate_bits(
input wire [31:0] Ra,
output wire [31:0] Rz);

wire [31:0] temp;
wire cout;
not_bits not_op(.Ra(Ra), .Rz(temp));
addition add_op(.RA(temp), .RB(32'd1), .cin(1'd0),.sum(Rz), .cout(cout));
endmodule