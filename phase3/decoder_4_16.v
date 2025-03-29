module decoder_4_16(input wire [3:0] DecoderIn, output reg [15:0] DecoderOut);
	always@(*) begin
		case(DecoderIn)
         		4'b0000 : DecoderOut <= 16'h8000; //R0
         		4'b0001 : DecoderOut <= 16'h4000; //R1     
					4'b0010 : DecoderOut <= 16'h2000; //R2     
         		4'b0011 : DecoderOut <= 16'h1000; //R3    
         		4'b0100 : DecoderOut <= 16'h0800; //R4     
         		4'b0101 : DecoderOut <= 16'h0400; //R5     
         		4'b0110 : DecoderOut <= 16'h0200; //R6    
         		4'b0111 : DecoderOut <= 16'h0100; //R7
         		4'b1000 : DecoderOut <= 16'h0080; //R8
         		4'b1001 : DecoderOut <= 16'h0040; //R9
         		4'b1010 : DecoderOut <= 16'h0020; //R10
         		4'b1011 : DecoderOut <= 16'h0010; //R11
         		4'b1100 : DecoderOut <= 16'h0008; //R12
         		4'b1101 : DecoderOut <= 16'h0004; //R13
         		4'b1110 : DecoderOut <= 16'h0002; //R14  
         		4'b1111 : DecoderOut <= 16'h0001; //R15  
      		endcase
   	end
endmodule