`timescale 1ns/10ps

module shra_bits(
	input wire [31:0] RA, RB,
	output wire [31:0] RZ
	);
	
	assign RZ = $signed(RA) >>> RB;
endmodule