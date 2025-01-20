module datapath (
    input wire clock, clear,
    input wire [31:0] A, B,              // Inputs to ALU
    input wire [3:0] Op,                 // ALU operation selector
    input wire RZin, RZout,              // Control signals for Z register
    input wire RAin, RAout,              // Control signals for A register
    input wire RBin, RBout,              // Control signals for B register
    input wire HIin, HIout,              // Control signals for HI register
    input wire LOin, LOout,              // Control signals for LO register
	 input wire R0in, R0out,              // Control signals for R0 register
	 input wire R1in, R1out,              // Control signals for R0 register
	 input wire R2in, R2out,              // Control signals for R0 register
	 input wire R3in, R3out,              // Control signals for R0 register
	 input wire R4in, R4out,              // Control signals for R0 register
	 input wire R5in, R5out,              // Control signals for R0 register
	 input wire R6in, R6out,              // Control signals for R0 register
	 input wire R7in, R7out,              // Control signals for R0 register
	 input wire R8in, R8out,              // Control signals for R0 register
	 input wire R9in, R9out,              // Control signals for R0 register
	 input wire R10in, R10out,              // Control signals for R0 register
	 input wire R11in, R11out,              // Control signals for R0 register
	 input wire R12in, R12out,              // Control signals for R0 register
	 input wire R13in, R13out,              // Control signals for R0 register
	 input wire R14in, R14out,              // Control signals for R0 register
	 input wire R15in, R15out,              // Control signals for R0 register

    output wire [31:0] BusMuxOut,        // Bus output
    output wire [31:0] ALUResult         // ALU result for basic operations
);

	wire MDRIn, MDROut;

    // Internal wires
    wire [31:0] BusMuxInRZ, BusMuxInRA, BusMuxInRB;
    reg [31:0] BusMuxInHI, BusMuxInLO;
    wire [31:0] Hi, Lo;                  // High and Low results from ALU
	 wire [31:0] MDR_Mux_Out;
	 wire [31:0] MDR_Data_Out;

    // Instantiate Registers
    register RZ (.clear(clear), .clock(clock), .enable(RZin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInRZ));
    register RA (.clear(clear), .clock(clock), .enable(RAin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInRA));
    register RB (.clear(clear), .clock(clock), .enable(RBin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInRB));
    register HI (.clear(clear), .clock(clock), .enable(HIin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInHI));
    register LO (.clear(clear), .clock(clock), .enable(LOin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInLO));
	 register R0 (.clear(clear), .clock(clock), .enable(0), .BusMuxOut(BusMuxOut), .BusMuxIn(R0in));
	 register R1 (.clear(clear), .clock(clock), .enable(1), .BusMuxOut(BusMuxOut), .BusMuxIn(R1in));
	 register R2 (.clear(clear), .clock(clock), .enable(2), .BusMuxOut(BusMuxOut), .BusMuxIn(R2in));
	 register R3 (.clear(clear), .clock(clock), .enable(3), .BusMuxOut(BusMuxOut), .BusMuxIn(R3in));
	 register R4 (.clear(clear), .clock(clock), .enable(4), .BusMuxOut(BusMuxOut), .BusMuxIn(R4in));
	 register R5 (.clear(clear), .clock(clock), .enable(5), .BusMuxOut(BusMuxOut), .BusMuxIn(R5in));
	 register R6 (.clear(clear), .clock(clock), .enable(6), .BusMuxOut(BusMuxOut), .BusMuxIn(R6in));
	 register R7 (.clear(clear), .clock(clock), .enable(7), .BusMuxOut(BusMuxOut), .BusMuxIn(R7in));
	 register R8 (.clear(clear), .clock(clock), .enable(8), .BusMuxOut(BusMuxOut), .BusMuxIn(R8in));
	 register R9 (.clear(clear), .clock(clock), .enable(9), .BusMuxOut(BusMuxOut), .BusMuxIn(R9in));
	 register R10 (.clear(clear), .clock(clock), .enable(10), .BusMuxOut(BusMuxOut), .BusMuxIn(R10in));
	 register R11 (.clear(clear), .clock(clock), .enable(11), .BusMuxOut(BusMuxOut), .BusMuxIn(R11in));
	 register R12 (.clear(clear), .clock(clock), .enable(12), .BusMuxOut(BusMuxOut), .BusMuxIn(R12in));
	 register R13 (.clear(clear), .clock(clock), .enable(13), .BusMuxOut(BusMuxOut), .BusMuxIn(R13in));
	 register R14 (.clear(clear), .clock(clock), .enable(14), .BusMuxOut(BusMuxOut), .BusMuxIn(R14in));
	 register R15 (.clear(clear), .clock(clock), .enable(15), .BusMuxOut(BusMuxOut), .BusMuxIn(R15in));
	 
	 //instatiate MDR Mux
	//EDIT LINE Mux_2_to_1 MDMux(BusMuxOut, ALUResult, Read, MDR_Mux_Out);
	
	//INIT MDR
	register MDR_reg(clock, clear, MDRIn, MDR_Mux_Out, MDR_Data_Out);
	 

    // Instantiate Bus
    bus Bus (
        .BusMuxInRZ(BusMuxInRZ), .BusMuxInRA(BusMuxInRA), .BusMuxInRB(BusMuxInRB),
        .BusMuxInHI(BusMuxInHI), .BusMuxInLO(BusMuxInLO),
		  .BusMuxInR0(BusMuxInR0), .BusMuxInR1(BusMuxInR1), .BusMuxInR2(BusMuxInR2), .BusMuxInR3(BusMuxInR3), .BusMuxInR4(BusMuxInR4),
		  .BusMuxInR5(BusMuxInR5), .BusMuxInR6(BusMuxInR6), .BusMuxInR7(BusMuxInR7), .BusMuxInR8(BusMuxInR8), .BusMuxInR9(BusMuxInR9),
		  .BusMuxInR10(BusMuxInR10), .BusMuxInR11(BusMuxInR11), .BusMuxInR12(BusMuxInR12), .BusMuxInR13(BusMuxInR13), .BusMuxInR14(BusMuxInR14),
		  .BusMuxInR15(BusMuxInR15),
        .RZout(RZout), .RAout(RAout), .RBout(RBout),
        .HIout(HIout), .LOout(LOout),
        .BusMuxOut(BusMuxOut)
    );

    // Instantiate ALU
    alu ALU (
		  .clock(clock),
		  .clear(clear),
        .A(A),
        .B(B),
        .Op(Op),
        .Result(ALUResult),
        .Hi(Hi),   // High part of result (for mul/div)
        .Lo(Lo),   // Low part of result (for mul/div)
    );

    // Handle multiplication and division results
    always @(posedge clock) begin
        if (clear) begin
			BusMuxInHI <= 32'b0;
			BusMuxInLO <= 32'b0;
            // Reset registers
        end else begin
            if (HIin) BusMuxInHI <= Hi; // Load Hi result into HI register
            if (LOin) BusMuxInLO <= Lo; // Load Lo result into LO register
        end
    end

endmodule