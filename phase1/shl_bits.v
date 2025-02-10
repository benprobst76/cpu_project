`timescale 1ns/10ps

module shl_bits(
	input wire [31:0] RA, RB,
	output wire [31:0] RZ
	);
	
	assign RZ = RA << RB;
endmodule