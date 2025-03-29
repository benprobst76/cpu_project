`timescale 1ns/10ps

module alu (
	 input wire clock, clear, Branch,
    input wire [31:0] RA,  	  // Operand A
    input wire [31:0] RB,  	  // Operand B
    input wire [4:0]  Op,  	  // Operation selector	 
    output reg [31:0] ResultHi, // High Z_Reg (for mul/div)
    output reg [31:0] ResultLo  // Low Z_Reg
);
    parameter ADD = 5'b00011, SUB = 5'b00100, AND = 5'b00101, OR = 5'b00110, ROR = 5'b00111,
				  ROL = 5'b01000, SHR = 5'b01001, SHRA = 5'b01010, SHL = 5'b01011, ADDI = 5'b01100,
				  ANDI = 5'b01101, ORI = 5'b01110, DIV = 5'b01111, MUL = 5'b10000, NEG = 5'b10001,
				  NOT = 5'b10010, SHLA = 5'b11111, LOAD = 5'b00000, BR = 5'b10011, MFLO = 5'b11000;

    // Wires for multiplication and division Z_Regs
    wire [31:0]adder_sum, sub_diff, and_out, or_out, negate_out, not_out, shr_out, shra_out, shl_out, shla_out, ror_out, rol_out;
	 wire [63:0] mul_out, div_out;
	 wire adder_cout;

    // Instantiate Booth's Multiplier
    booth_multiplier mul_unit(
	     .clk(clock),
        .RA(RA),
        .RB(RB),
        .RZ(mul_out)
    );

    // Instantiate Division Unit
    division div_unit (
        .RA(RA),
        .RB(RB),
        .RZ(div_out)
    );
	 
	 addition adder(
		  .RA(RA),
		  .RB(RB),
		  .cin({1'd0}),
		  .sum(adder_sum),
		  .cout(adder_cout)
	 );
	 
	 subtraction sub(
	 	  .RA(RA),
		  .RB(RB),
		  .cin({1'd0}),
		  .diff(sub_diff),
		  .cout(sub_cout)
	 );
	 
	 and_bits and_(
	 	  .Ra(RA),
		  .Rb(RB),
		  .Rz(and_out)
		);
		
	or_bits or_(
		  .RA(RA),
		  .RB(RB),
		  .RZ(or_out)
		);
		
	 negate_bits negate(
		.Ra(RB),
		.Rz(negate_out)
	 );
		
	not_bits notb(
		.Ra(RB),
		.Rz(not_out)
	 );
	
	shr_bits shr(
		.RA(RA),
		.RB(RB),
		.RZ(shr_out)
	);
	
	shra_bits shra(
		.RA(RA),
		.RB(RB),
		.RZ(shra_out)
	);
	
	shl_bits shl(
		.RA(RA),
		.RB(RB),
		.RZ(shl_out)
	);	

	shla_bits shla(
		.RA(RA),
		.RB(RB),
		.RZ(shla_out)
	);	
	
	ror_bits ror(
		.RA(RA),
		.RB(RB),
		.RZ(ror_out)	
	);
	
	rol_bits rol(
		.RA(RA),
		.RB(RB),
		.RZ(rol_out)	
	);
	

    always @(*) begin
        case (Op)
		  		ADD: begin
					ResultLo[31:0] <= adder_sum[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				SUB: begin
					ResultLo[31:0] <= sub_diff[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				AND: begin
					ResultLo[31:0] <= and_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				OR: begin
					ResultLo[31:0] <= or_out[31:0];
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
				
				MUL: begin 
					ResultLo[31:0] <= mul_out[31:0];
					ResultHi[31:0] <= mul_out[63:32];
				end
				
				DIV: begin
					ResultLo[31:0] <= div_out[31:0];
					ResultHi[31:0] <= div_out[63:32];
				end
				
				SHR: begin
					ResultLo[31:0] <= shr_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				SHRA: begin
					ResultLo[31:0] <= shra_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				SHL: begin
					ResultLo[31:0] <= shl_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				SHLA: begin
					ResultLo[31:0] <= shla_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				ROR: begin
					ResultLo[31:0] <= ror_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				ROL: begin
					ResultLo[31:0] <= rol_out[31:0];
					ResultHi[31:0] <= 32'd0;	
				end
				
				LOAD: begin 
					ResultLo[31:0] <= adder_sum[31:0];
					ResultHi[31:0] <= 32'd0;	
				end
				
				BR: begin
					if (Branch == 1) begin
						ResultLo[31:0] <= adder_sum[31:0];
						ResultHi[31:0] <= 32'd0;
					end 
					else begin 
						ResultLo[31:0] <= RA;
						ResultHi[31:0] <= 32'd0;
					end 
				end
				
				ADDI: begin
					ResultLo[31:0] <= adder_sum[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				ORI: begin
					ResultLo[31:0] <= or_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
				ANDI: begin
					ResultLo[31:0] <= and_out[31:0];
					ResultHi[31:0] <= 32'd0;
				end
				
            default: begin 
					ResultHi = 32'b0;
					ResultLo = 32'b0;			// Default case
				end
        endcase
    end

endmodule