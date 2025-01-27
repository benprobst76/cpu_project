`timescale 1ns / 10ps

module ones_comp(
	input wire [31:0] RA,
	output wire [31:0] RZ
	);
	
	genvar i;
	generate
		for (i=0; i<32; i=i+1) begin : loop
			assign RZ[i] = !RA[i];
		end
	endgenerate
endmodule