`timescale 1ns/10ps

module register #(parameter DATA_WIDTH = 32, INIT = 32'h0) (
	input clear, clock, enable,
	input [DATA_WIDTH-1:0] BusMuxOut,
	output wire [DATA_WIDTH-1:0] BusMuxIn
);

	reg [DATA_WIDTH-1:0]q;
	initial q = INIT;
	always @(posedge clock) begin
		if(clear) begin
			q <= {DATA_WIDTH{1'b0}};
		end
		else if (enable) begin
			q <= BusMuxOut;
		end
	end
	
	assign BusMuxIn = q[DATA_WIDTH-1:0];
endmodule





