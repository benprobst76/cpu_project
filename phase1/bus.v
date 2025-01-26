`timescale 1ns/10ps

module bus (
	// General purpose registers
	input [31:0] BusMuxInR0,
	input [31:0] BusMuxInR1,
	input [31:0] BusMuxInR2,
	input [31:0] BusMuxInR3, 
	input [31:0] BusMuxInR4,
	input [31:0] BusMuxInR5,
	input [31:0] BusMuxInR6,
	input [31:0] BusMuxInR7,
	input [31:0] BusMuxInR8,
	input [31:0] BusMuxInR9,
	input [31:0] BusMuxInR10,
	input [31:0] BusMuxInR11,
	input [31:0] BusMuxInR12,
	input [31:0] BusMuxInR13,
	input [31:0] BusMuxInR14,
	input [31:0] BusMuxInR15,
	
	input [31:0] BusMuxInHI,
	input [31:0] BusMuxInLO,
	input [31:0] BusMuxInRZHi,
	input [31:0] BusMuxInRZLo,
	input [31:0] BusMuxInPC,
	input [31:0] BusMuxInMDR,	
	input [31:0] BusMuxInInPort,
	input [31:0] BusMuxInCSignExtn,
	
	output reg [31:0] BusMuxOut,
	
	// control signal from the encoder
	input wire [4:0] BusMuxControl

);

always@(*) begin
	case(BusMuxControl)
         5'd23: BusMuxOut <= BusMuxInR0[31:0];
         5'd22: BusMuxOut <= BusMuxInR1[31:0];
         5'd21: BusMuxOut <= BusMuxInR2[31:0];
         5'd20: BusMuxOut <= BusMuxInR3[31:0];
			5'd19: BusMuxOut <= BusMuxInR4[31:0];
         5'd18: BusMuxOut <= BusMuxInR5[31:0];
         5'd17: BusMuxOut <= BusMuxInR6[31:0];
         5'd16: BusMuxOut <= BusMuxInR7[31:0];
			5'd15: BusMuxOut <= BusMuxInR8[31:0];
         5'd14: BusMuxOut <= BusMuxInR9[31:0];
         5'd13: BusMuxOut <= BusMuxInR10[31:0];
         5'd12: BusMuxOut <= BusMuxInR11[31:0];
			5'd11: BusMuxOut <= BusMuxInR12[31:0];
         5'd10: BusMuxOut <= BusMuxInR13[31:0];
         5'd9 : BusMuxOut <= BusMuxInR14[31:0];
         5'd8 : BusMuxOut <= BusMuxInR15[31:0];
			5'd7 : BusMuxOut <= BusMuxInHI[31:0];
         5'd6 : BusMuxOut <= BusMuxInLO[31:0];
         5'd5 : BusMuxOut <= BusMuxInRZHi[31:0];
         5'd4 : BusMuxOut <= BusMuxInRZLo[31:0];
			5'd3 : BusMuxOut <= BusMuxInPC[31:0];
         5'd2 : BusMuxOut <= BusMuxInMDR[31:0];
         5'd1 : BusMuxOut <= BusMuxInInPort[31:0];
         5'd0 : BusMuxOut <= BusMuxInCSignExtn[31:0];
	 default: BusMuxOut <= 32'd0;
      endcase
   end
	
endmodule