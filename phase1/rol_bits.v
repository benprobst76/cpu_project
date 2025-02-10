`timescale 1ns/10ps

module rol_bits(
	input wire [31:0] RA, RB,
	output wire [31:0] RZ
	);
	
	assign RZ = ((RA << RB) | (RA >> (32 - RB)));
	
endmodule