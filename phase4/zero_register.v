`timescale 1ns/10ps

module zero_register (
	input wire [31:0] BusMuxOut,
	input wire clock,
	input	wire clear,
	input wire enable,
	input wire BAout,
	output wire [31:0] BusMuxIn
	);
	
	wire [31:0] qTemp;
	register zero_reg (.clear(clear), .clock(clock), .enable(enable), .BusMuxOut(BusMuxOut), .BusMuxIn(qTemp));
	assign BusMuxIn = {32{!BAout}} & qTemp;
endmodule