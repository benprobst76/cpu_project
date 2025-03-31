`timescale 1ns/10ps

module shla_bits(
	input wire [31:0] RA, RB,
	output wire [31:0] RZ
	);
	
	assign RZ = {RA[31], (RA[30:0] << RB)};
endmodule