module decoder_2_4(input wire [1:0] DecoderIn, output reg [3:0] DecoderOut);
	always@(*) begin
		case(DecoderIn)
         		2'b00 : DecoderOut <= 4'h1; //zero
         		2'b01 : DecoderOut <= 4'h2; //nonzero    
					2'b10 : DecoderOut <= 4'h4; //positive   
         		2'b11 : DecoderOut <= 4'h8; //negative
      		endcase
   	end
endmodule