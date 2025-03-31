`timescale 1ns/10ps

module con_logic(input [3:0] C2, input signed [31:0] Bus, output Flag);
	wire [3:0] DecoderOut;
	wire zero;
	wire nonzero;
	wire positive;
	wire negative;
	wire [3:0] xor_in;
		
	decoder_2_4	decoder(C2[1:0], DecoderOut);
	
	//Branch if zero
	assign zero = (Bus == 32'd0) ? 1'b1 : 1'b0;
	//Branch if nonzero
	assign nonzero = (Bus != 32'd0) ? 1'b1 : 1'b0;
	//Branch if positive
	assign positive = (Bus[31] == 0) ? 1'b1 : 1'b0;
	//Branch if negative 
	assign negative = (Bus[31] == 1) ? 1'b1 : 1'b0;
	
	and(xor_in[0], DecoderOut[0], zero);
	and(xor_in[1], DecoderOut[1], nonzero);
   and(xor_in[2], DecoderOut[2], positive);
	and(xor_in[3], DecoderOut[3], negative);
	
	xor(Flag, xor_in[0], xor_in[1], xor_in[2], xor_in[3]);
	
endmodule