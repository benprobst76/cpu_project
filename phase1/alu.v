module alu (
    input wire [31:0] A,  // Operand A
    input wire [31:0] B,  // Operand B
    input wire [3:0] Op,  // Operation selector
    input wire [31:0] Y_reg; // Temp register
	 output reg [63:0] Z_Reg, // Z_Reg of operation
	 
    output reg [31:0] Hi, // High Z_Reg (for mul/div)
    output reg [31:0] Lo, // Low Z_Reg (for mul/div)
    output reg Zero       // Zero flag
);

    // Wires for multiplication and division Z_Regs
    wire [63:0] mul_Z_Reg;
    wire [31:0] div_quotient, div_remainder, adder_sum. adder_cout;

    // Instantiate Booth's Multiplier
    booth_multiplier mul_unit (
        .A(A),
        .B(B),
        .Z_Reg(mul_Z_Reg)
    );

    // Instantiate Division Unit
    division div_unit (
        .A(A),
        .B(B),
        .Quotient(div_quotient),
        .Remainder(div_remainder)
    );
	 
	 addition adder_unit(
		  .A(A),
		  .B(B),
		  .cin({1'd0}),
		  .sum(adder_sum)
		  .cout(adder_cout)
	 );

    always @(*) begin
        case (Op)
            4'b0000: Z_Reg = A & B;            // AND
            4'b0001: Z_Reg = A | B;            // OR
            4'b0010: Z_Reg = ~A;               // NOT
            4'b0011: begin							  // ADD
					Z_reg[31:0] <= adder_sum;
					Z_reg[63:32] <= 32'd0;
				end 
            4'b0100: Z_Reg = A - B;            // SUB
            4'b0101: begin                      // MUL
                Hi = mul_Z_Reg[63:32];         // High 32 bits
                Lo = mul_Z_Reg[31:0];          // Low 32 bits
            end
            4'b0110: begin                      // DIV
                Hi = div_remainder;             // Remainder
                Lo = div_quotient;              // Quotient
            end
            default: Z_Reg = 32'b0;            // Default case
        endcase
        Zero = (Z_Reg == 32'b0) ? 1'b1 : 1'b0;
    end

endmodule