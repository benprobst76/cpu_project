`timescale 1ns/10ps

module alu (
	 input wire clock, clear,
    input wire [31:0] RA,  	  // Operand A
    input wire [31:0] RB,  	  // Operand B
    input wire [4:0]  Op,  	  // Operation selector	 
    output reg [31:0] ResultHi, // High Z_Reg (for mul/div)
    output reg [31:0] ResultLo  // Low Z_Reg
);
    parameter ADD = 5'b00011, SUB = 5'b00100, AND = 5'b00101, OR = 5'b00110, ROR = 5'b00111,
				  ROL = 5'b01000, SHR = 5'b01001, SHRA = 5'b01010, SHL = 5'b01011, ADDI = 5'b01100,
				  ANDI = 5'b01101, ORI = 5'b01110, DIV = 5'b01111, MUL = 5'b10000, NEG = 5'b10001,
				  NOT = 5'b10010;

    // Wires for multiplication and division Z_Regs
    wire [31:0] div_quotient, div_remainder, adder_sum, negate_out, not_out;
	 wire adder_cout;

    // Instantiate Booth's Multiplier
//    booth_multiplier mul_unit (
//        .A(A),
//        .B(B),
//        .Z_Reg(mul_Z_Reg)
//    );
//
//    // Instantiate Division Unit
//    division div_unit (
//        .A(A),
//        .B(B),
//        .Quotient(div_quotient),
//        .Remainder(div_remainder)
//    );
	 
	 addition adder(
		  .RA(RA),
		  .RB(RB),
		  .cin({1'd0}),
		  .sum(adder_sum),
		  .cout(adder_cout)
	 );
	 
	 negate_bits negate(
		.Ra(RB),
		.Rz(negate_out)
		);
		
		not_bits notb(
		.Ra(RB),
		.Rz(not_out)
		);
		
		

    always @(*) begin
        case (Op)
		  		ADD: begin
					ResultLo[31:0] <= adder_sum[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				NEG: begin
					ResultLo[31:0] <= negate_out[31:0];
					ResultHi[31:0] <= 32'd0;
				
				end
			
				NOT: begin
					ResultLo[31:0] <= not_out[31:0];
					ResultHi[31:0] <= 32'd0;
				
				end
            default: begin 
					ResultHi = 32'b0;
					ResultLo = 32'b0;			// Default case
				end
        endcase
    end

endmodule