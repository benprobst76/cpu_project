module booth_multiplier (
	 input wire clk,            // Clock signal for sequential operations
    input wire [31:0] RA,       // Multiplicand
    input wire [31:0] RB,       // Multiplier
    output reg [63:0] RZ        // 64-bit result (High and Low parts)
);

    reg [63:0] product, multiplicand, multiplier, neg_multiplicand_64;
	 wire [31:0] neg_multiplicand;
	 reg signed [1:0] booth_code [31:0];
	 reg [31:0] neg_sign_ext = 32'hFFFFFFFF;
    reg [31:0] pos_sign_ext = 32'h00000000;
	 reg prev_bit;
	 
	 negate_bits negate_ra(.Ra(RA), .Rz(neg_multiplicand));

    integer i;

    always @(posedge clk) begin
		  // Get the booths recoding of the multiplier
		  multiplicand = {pos_sign_ext, RA};
        multiplier = {pos_sign_ext, RB};
		  neg_multiplicand_64 = {neg_sign_ext, neg_multiplicand};
		  product = 64'b0;
		  prev_bit = 0;				 // Assume bit before LSB is 0
        for (i = 0; i < 32; i = i + 1) begin
            case ({multiplier[i], prev_bit}) 
                2'b00: booth_code[i] = 2'b00;  // 0
                2'b01: booth_code[i] = 2'b01;  // +1
                2'b10: booth_code[i] = 2'b11;  // -1 (signed 2's complement)
                2'b11: booth_code[i] = 2'b00;  // 0
            endcase
            prev_bit = multiplier[i];  // Update previous bit
        end
		  
        for (i = 0; i < 32; i = i + 1) begin
			   case(booth_code[i]) 
					2'b01: begin
						product = product + multiplicand;
					end
					
					2'b11: begin 
						product = product + neg_multiplicand_64;
					end
				endcase
				multiplicand = multiplicand << 1;
				neg_multiplicand_64 = neg_multiplicand_64 << 1;
        end

        RZ = product;
    end
endmodule