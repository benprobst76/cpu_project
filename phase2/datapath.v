`timescale 1ns/10ps

module datapath (
    input wire clock, clear,
	 //Dedicated registers
    input wire RZinLo, RZoutLo,          // Control signals for Z register
	 input wire RZinHi, RZoutHi,          // Control signals for Z register
	 input wire IRin, IRout,				  // Instruction register
	 input wire RYin, RYout,
	 input wire HIin, LOin,
	 input wire R2in, R1in,
    // I/O registers
	 input wire	PCout, PCin,
	 input wire IncPC,
	 //MDR unit
	 input wire MDRin, MDRout, MDRread,
	 // MAR unit
	 input wire MARin, MARout, RAMwrite,
	 // Select and Encode
	 input wire Gra, Grb, Grc, BAout, Rin, Rout, RCout,
	 // CON FF
	 input wire CONin
);
	 wire HIout = 0;              // Control signals for HI register
    wire LOout = 0;              // Control signals for LO register
	 wire InPortIn = 0, InPortOut = 0;
	 wire OutPortIn = 0, OutPortOut = 0;
	 wire branchFlag, CON;

	 wire [31:0] BusMuxOut;        // Bus output
    // Internal wire inputs to the bus's 32-to_1 multiplexer
    wire [31:0] BusMuxInRZHi, BusMuxInRZLo, BusMuxInHI, BusMuxInLO;
	 wire [31:0] BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3, BusMuxInR4;
	 wire [31:0] BusMuxInR5, BusMuxInR6, BusMuxInR7, BusMuxInR8, BusMuxInR9, BusMuxInR10;
	 wire [31:0] BusMuxInR11, BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15, MDRmuxOut;
	 wire [31:0] BusMuxInMDR, BusMuxInInPort, BusMuxInCSignExtn, BusMuxInIR, Mdatain, RAMAddressIN, BusMuxInPC;
	 wire [15:0] R0_15in, R0_15out;
	 // ALU wires
	 wire [31:0] ALUInRA, ALUInRB, RYOutput, RZHiOut, RZLoOut;
	 // Encoder 
	 wire [4:0] BusEncoderControl;

    // Instantiate Dedicated Registers
    register RZHi (.clear(clear), .clock(clock), .enable(RZinHi), .BusMuxOut(RZHiOut), .BusMuxIn(BusMuxInRZHi));
	 register RZLo (.clear(clear), .clock(clock), .enable(RZinLo), .BusMuxOut(RZLoOut), .BusMuxIn(BusMuxInRZLo));
	 register RY (.clear(clear), .clock(clock), .enable(RYin), .BusMuxOut(BusMuxOut), .BusMuxIn(RYOutput));
    register HI (.clear(clear), .clock(clock), .enable(HIin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInHI));
    register LO (.clear(clear), .clock(clock), .enable(LOin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInLO));
	 register PC (.clear(IncPC), .clock(clock), .enable(PCin), .BusMuxOut({32'h00000007}), .BusMuxIn(BusMuxInPC));
	 register IR (.clear(IncPC), .clock(clock), .enable(IRin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInIR));
	 register MAR (.clear(clear), .clock(clock), .enable(MARin), .BusMuxOut(BusMuxOut), .BusMuxIn(RAMAddressIN));
	 // Instantiate General Purpose Registers
	 register R0 (.clear(clear), .clock(clock), .enable(R0_15in[15]), .BusMuxOut({32'h00000000}), .BusMuxIn(BusMuxInR0));
	 register R1 (.clear(clear), .clock(clock), .enable(R1in), .BusMuxOut({32'h0FFFFFF7}), .BusMuxIn(BusMuxInR1));
	 register R2 (.clear(clear), .clock(clock), .enable(R2in), .BusMuxOut({32'h00000078}), .BusMuxIn(BusMuxInR2));
	 register R3 (.clear(clear), .clock(clock), .enable(R0_15in[12]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR3));
	 register R4 (.clear(clear), .clock(clock), .enable(R0_15in[11]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR4));
	 register R5 (.clear(clear), .clock(clock), .enable(R0_15in[10]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR5));
	 register R6 (.clear(clear), .clock(clock), .enable(R0_15in[9]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR6));
	 register R7 (.clear(clear), .clock(clock), .enable(R0_15in[8]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR7));
	 register R8 (.clear(clear), .clock(clock), .enable(R0_15in[7]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR8));
	 register R9 (.clear(clear), .clock(clock), .enable(R0_15in[6]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR9));
	 register R10 (.clear(clear), .clock(clock), .enable(R0_15in[5]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR10));
	 register R11 (.clear(clear), .clock(clock), .enable(R0_15in[4]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR11));
	 register R12 (.clear(clear), .clock(clock), .enable(R0_15in[3]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR12));
	 register R13 (.clear(clear), .clock(clock), .enable(R0_15in[2]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR13));
	 register R14 (.clear(clear), .clock(clock), .enable(R0_15in[1]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR14));
	 register R15 (.clear(clear), .clock(clock), .enable(R0_15in[0]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR15));
	 //instantiate MDR
	 mux_2_1  MDRmux (.MuxIn1(BusMuxOut), .MuxIn2(Mdatain), .control(MDRread), .MuxOut(MDRmuxOut));
	 register MDRreg (.clear(clear), .clock(clock), .enable(MDRin), .BusMuxOut(MDRmuxOut), .BusMuxIn(BusMuxInMDR));
	 //instantiate encoder
	 encoder_32_5 BusEncoder (
		  .EncoderIn({{8{1'b0}}, R0_15out, HIout, LOout, RZoutHi, RZoutLo, PCout, MDRout, InPortOut, RCout}), 
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
		  .Branch(branchFlag),
        .ResultHi(RZHiOut),
		  .ResultLo(RZLoOut)
    );
	 
	 // Instantiate RAM
	 ram RAM (
		.data_in(BusMuxInMDR),
		.address(RAMAddressIN[7:0]),
		.write(RAMwrite),
		.read(MDRread),
		.data_out(Mdatain)
	 );
	
	 // Instantiate Select and Encode
	 select_and_encode S_and_E (
		.IR(BusMuxInIR),
		.Gra(Gra),
		.Grb(Grb),
		.Grc(Grc),
		.Rin(Rin),
		.Rout(Rout),
		.BAout(BAout),
		.C_sign_extended(BusMuxInCSignExtn),
		.R0_15in(R0_15in),
		.R0_15out(R0_15out)
	 );
	 
	 // Instantiate Conditial branch logic
	 con_logic con(
		 .C2(BusMuxInIR[22:19]),
		 .Bus(BusMuxOut),
		 .Flag(CON)
	 );
	 
	 //Instantiate Flip Flop logic
	 ff_logic flipflop(
		 .clock(CONin),
		 .D(CON),
		 .Q(branchFlag)
	 );
	 
		

   

endmodule