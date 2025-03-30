`timescale 1ns/10ps

module pc_register #(parameter INIT = 32'h0)(
	input wire [31:0] inputPC,
	input wire clock,
	input	wire clear,
	input wire increment,
	input wire enable,
	output wire [31:0] newPC
	);
	
	reg [31:0] qTemp;
	initial qTemp = INIT;
	always @ (posedge clock) 
		begin
			if (clear) begin
				qTemp <= 0;
			end
			else if (enable) begin
				qTemp <= inputPC;
			end
			else if (increment) begin
				qTemp <= newPC + 1;
			end
		end
	assign newPC = qTemp;
endmodule 