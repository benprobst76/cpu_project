`timescale 1ns/10ps

module datapath (
    input wire clock, clear,
	 //ALU 
//    input wire RAin, RAout,              // Control signals for A register
//    input wire RBin, RBout,              // Control signals for B register
	 //Dedicated registers
    input wire RZinLo, RZoutLo,          // Control signals for Z register
	 input wire RZinHi, RZoutHi,          // Control signals for Z register
	 input wire IRin, IRout,				  // Instruction register
	 input wire RYin, RYout,
	 input wire HIin, LOin,
	 // Temp registeter to hold ALU input A
	 //General purpose registers
	 input wire R3in, R3out,              // Control signals for R3 register
	 input wire R4in, R4out,              // Control signals for R4 register
	 input wire R7in, R7out,  
	 input wire R5in, R5out,
	 input wire R2in, R2out,
	 input wire R6in, R6out,
    // I/O registers
	 
	 input wire	PCout, PCin,
	 input wire IncPC,
	 //MDR unit
	 input wire MDRin, MDRout, MDRread,
	 input wire [31:0] Mdatain,
	 // MAR unit
	 input wire MARin, MARout

);
	 wire R0in = 0, R0out = 0;              // Control signals for R0 register
	 wire R1in = 0, R1out = 0;              // Control signals for R1 register
	 wire R8in = 0, R8out = 0;              // Control signals for R8 aka return address register
	 wire R9in = 0, R9out = 0;              // Control signals for R9 aka stack pointer register
	 wire R10in = 0, R10out = 0;            // Control signals for R10 aka argument register
	 wire R11in = 0, R11out = 0;            // Control signals for R11 aka argument register
	 wire R12in = 0, R12out = 0;            // Control signals for R12 aka argument register
	 wire R13in = 0, R13out = 0;            // Control signals for R13 aka argument register
	 wire R14in = 0, R14out = 0;            // Control signals for R14 aka return value register
	 wire R15in = 0, R15out = 0;            // Control signals for R15 aka return value register
	 wire HIout = 0;              // Control signals for HI register
    wire LOout = 0;              // Control signals for LO register
	 wire InPortIn = 0, InPortOut = 0;
	 wire OutPortIn = 0, OutPortOut = 0;
	 wire RCin = 0, RCout = 0;              // Control signals for C register

	 wire [31:0] BusMuxOut;        // Bus output
    // Internal wire inputs to the bus's 32-to_1 multiplexer
    wire [31:0] BusMuxInRZHi, BusMuxInRZLo, BusMuxInHI, BusMuxInLO;
	 wire [31:0] BusMuxInPC, BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3, BusMuxInR4;
	 wire [31:0] BusMuxInR5, BusMuxInR6, BusMuxInR7, BusMuxInR8, BusMuxInR9, BusMuxInR10;
	 wire [31:0] BusMuxInR11, BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15, MDRmuxOut;
	 wire [31:0] BusMuxInMDR, BusMuxInInPort, BusMuxInCSignExtn, BusMuxInIR;
	 // ALU wires
	 wire [31:0] ALUInRA, ALUInRB, RYOutput, RZHiOut, RZLoOut;
	 // Encoder 
	 wire [4:0] BusEncoderControl;

    // Instantiate Dedicated Registers
    register RZHi (.clear(clear), .clock(clock), .enable(RZinHi), .BusMuxOut(RZHiOut), .BusMuxIn(BusMuxInRZHi));
	 register RZLo (.clear(clear), .clock(clock), .enable(RZinLo), .BusMuxOut(RZLoOut), .BusMuxIn(BusMuxInRZLo));
	 register RY (.clear(clear), .clock(clock), .enable(RYin), .BusMuxOut(BusMuxOut), .BusMuxIn(RYOutput));
//    register RA (.clear(clear), .clock(clock), .enable(RAin), .BusMuxOut(RYOutput), .BusMuxIn(ALUInRA));
//    register RB (.clear(clear), .clock(clock), .enable(RBin), .BusMuxOut(BusMuxOut), .BusMuxIn(ALUInRB));
    register HI (.clear(clear), .clock(clock), .enable(HIin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInHI));
    register LO (.clear(clear), .clock(clock), .enable(LOin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInLO));
	 register PC (.clear(IncPC), .clock(clock), .enable(PCin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInPC));
	 register IR (.clear(IncPC), .clock(clock), .enable(IRin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInIR));
	 //register MAR (.clear(clear), .clock(clock), .enable(MARin), .BusMuxOut(BusMuxOut), .BusMuxIn());
	 // Instantiate General Purpose Registers
	 register R0 (.clear(clear), .clock(clock), .enable(R0in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR0));
	 register R1 (.clear(clear), .clock(clock), .enable(R1in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR1));
	 register R2 (.clear(clear), .clock(clock), .enable(R2in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR2));
	 register R3 (.clear(clear), .clock(clock), .enable(R3in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR3));
	 register R4 (.clear(clear), .clock(clock), .enable(R4in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR4));
	 register R5 (.clear(clear), .clock(clock), .enable(R5in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR5));
	 register R6 (.clear(clear), .clock(clock), .enable(R6in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR6));
	 register R7 (.clear(clear), .clock(clock), .enable(R7in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR7));
	 register R8 (.clear(clear), .clock(clock), .enable(R8in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR8));
	 register R9 (.clear(clear), .clock(clock), .enable(R9in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR9));
	 register R10 (.clear(clear), .clock(clock), .enable(R10in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR10));
	 register R11 (.clear(clear), .clock(clock), .enable(R11in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR11));
	 register R12 (.clear(clear), .clock(clock), .enable(R12in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR12));
	 register R13 (.clear(clear), .clock(clock), .enable(R13in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR13));
	 register R14 (.clear(clear), .clock(clock), .enable(R14in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR14));
	 register R15 (.clear(clear), .clock(clock), .enable(R15in), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR15));
	 //instantiate MDR
	 mux_2_1  MDRmux (.MuxIn1(BusMuxOut), .MuxIn2(Mdatain), .control(MDRread), .MuxOut(MDRmuxOut));
	 register MDRreg (.clear(clear), .clock(clock), .enable(MDRin), .BusMuxOut(MDRmuxOut), .BusMuxIn(BusMuxInMDR));
	 //instantiate encoder
	 encoder_32_5 BusEncoder (
		  .EncoderIn({{8{1'b0}}, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, HIout, LOout, RZoutHi, RZoutLo, PCout, MDRout, InPortOut, RCout}), 
		  .EncoderOut(BusEncoderControl)
	 );
	 // Instantiate Bus
    bus Bus (
	 	  .BusMuxInR0(BusMuxInR0), .BusMuxInR1(BusMuxInR1), .BusMuxInR2(BusMuxInR2), .BusMuxInR3(BusMuxInR3), .BusMuxInR4(BusMuxInR4),
		  .BusMuxInR5(BusMuxInR5), .BusMuxInR6(BusMuxInR6), .BusMuxInR7(BusMuxInR7), .BusMuxInR8(BusMuxInR8), .BusMuxInR9(BusMuxInR9),
		  .BusMuxInR10(BusMuxInR10), .BusMuxInR11(BusMuxInR11), .BusMuxInR12(BusMuxInR12), .BusMuxInR13(BusMuxInR13), .BusMuxInR14(BusMuxInR14), .BusMuxInR15(BusMuxInR15),
        .BusMuxInRZLo(BusMuxInRZLo), .BusMuxInRZHi(BusMuxInRZHi), .BusMuxInHI(BusMuxInHI), .BusMuxInLO(BusMuxInLO), .BusMuxInPC(BusMuxInPC),
		  .BusMuxInMDR(BusMuxInMDR), .BusMuxInInPort(BusMuxInInPort), .BusMuxInCSignExtn(BusMuxInCSignExtn),
        .BusMuxControl(BusEncoderControl), .BusMuxOut(BusMuxOut)
    );

    // Instantiate ALU
    alu ALU (
		  .clock(clock),
		  .clear(clear),
        .RA(RYOutput),
        .RB(BusMuxOut),
        .Op(BusMuxInIR[31:27]),
        .ResultHi(RZHiOut),
		  .ResultLo(RZLoOut)
    );

    // Handle multiplication and division results
//    always @(posedge clock) begin
//        if (clear) begin
//			BusMuxInHI <= 32'b0;
//			BusMuxInLO <= 32'b0;
//            // Reset registers
//        end else begin
//            if (HIin) BusMuxInHI <= Hi; // Load Hi result into HI register
//            if (LOin) BusMuxInLO <= Lo; // Load Lo result into LO register
//        end
//    end

endmodule