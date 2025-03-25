`timescale 1ns/10ps

module encoder_32_5 (input wire [31:0] EncoderIn, output reg [4:0] EncoderOut);
		
	always@(*) begin
		case(EncoderIn)
         32'h00000001 : EncoderOut <= 5'd0;   
         32'h00000002 : EncoderOut <= 5'd1;     
			32'h00000004 : EncoderOut <= 5'd2;      
         32'h00000008 : EncoderOut <= 5'd3;     
         32'h00000010 : EncoderOut <= 5'd4;     
         32'h00000020 : EncoderOut <= 5'd5;      
         32'h00000040 : EncoderOut <= 5'd6;    
         32'h00000080 : EncoderOut <= 5'd7;     
         32'h00000100 : EncoderOut <= 5'd8;     
         32'h00000200 : EncoderOut <= 5'd9;      
         32'h00000400 : EncoderOut <= 5'd10;    
         32'h00000800 : EncoderOut <= 5'd11;   
         32'h00001000 : EncoderOut <= 5'd12;    
         32'h00002000 : EncoderOut <= 5'd13;  
         32'h00004000 : EncoderOut <= 5'd14; 
         32'h00008000 : EncoderOut <= 5'd15; 
			32'h00010000 : EncoderOut <= 5'd16;     
         32'h00020000 : EncoderOut <= 5'd17;     
         32'h00040000 : EncoderOut <= 5'd18;  
			32'h00080000 : EncoderOut <= 5'd19;   
         32'h00100000 : EncoderOut <= 5'd20;     
         32'h00200000 : EncoderOut <= 5'd21;    
			32'h00400000 : EncoderOut <= 5'd22; 
			32'h00800000 : EncoderOut <= 5'd23;     
	  default: EncoderOut <= 5'd31;
      endcase
   end
endmodule