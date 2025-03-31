`timescale 1ns/10ps

module select_and_encode(input [31:0] IR, input Gra, input Grb, input Grc, input Rin, input Rout, input BAout,
	output [31:0] C_sign_extended, output [15:0] R0_15in, output [15:0] R0_15out);
				
	wire [15:0] DecoderOut;
	wire [3:0] DecoderIn;
	
	assign DecoderIn = (IR[26:23]&{4{Gra}}) | (IR[22:19]&{4{Grb}}) | (IR[18:15]&{4{Grc}});
	decoder_4_16 decoder(DecoderIn, DecoderOut);
	
	assign C_sign_extended = {{13{IR[18]}},IR[18:0]};
	assign R0_15in = {16{Rin}} & DecoderOut;
assign R0_15out = ({16{Rout & 1'b1}} | {16{BAout & 1'b1}}) & DecoderOut;
endmodule