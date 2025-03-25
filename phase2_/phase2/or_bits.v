`timescale 1ns/10ps

module or_bits(
	input wire [31:0] RA, RB,
	output wire [31:0] RZ
	);
	
	genvar i;
	generate
		for (i=0; i<32; i=i+1) begin : gen_or
			assign RZ[i] = (RA[i])|(RB[i]);
		end
	endgenerate
endmodule