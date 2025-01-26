`timescale 1ns/10ps

module mux_2_1 (input wire [31:0] MuxIn1, input wire [31:0] MuxIn2, input wire control, output reg [31:0] MuxOut);
 
always@(*)begin
		if (control) begin
			MuxOut[31:0] <= MuxIn2[31:0];
		end
		else begin
			MuxOut[31:0] <= MuxIn1[31:0];
		end
	end
 
endmodule