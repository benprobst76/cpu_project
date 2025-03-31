`timescale 1ns/10ps

module datapath (
    input wire clock, stop, reset
);

	 //Dedicated registers
    wire RZinLo, RZoutLo;          // Control signals for Z register
	 wire RZinHi, RZoutHi;          // Control signals for Z register
	 wire IRin, IRout;				  // Instruction register
	 wire RYin, RYout;
	 wire HIin, LOin, HIout, LOout;
    // I/O registers
	 wire OutPortIn, InPortIn, InPortOut;
	 wire [31:0] OutputUnitOut, IntputUnitIn;
	 wire	PCout, PCin;
	 wire IncPC, clear, Run;
	 //MDR unit
	 wire MDRin, MDRout, MDRread;
	 // MAR unit
	 wire MARin, MARout, RAMwrite;
	 // Select and Encode
	 wire Gra, Grb, Grc, BAout, Rin, Rout, RCout;
	 // CON FF
	 wire CONin, CON;
	 wire branchFlag;

	 wire [31:0] BusMuxOut;        // Bus output
    // Internal wire inputs to the bus's 32-to_1 multiplexer
    wire [31:0] BusMuxInRZHi, BusMuxInRZLo, BusMuxInHI, BusMuxInLO;
	 wire [31:0] BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3, BusMuxInR4;
	 wire [31:0] BusMuxInR5, BusMuxInR6, BusMuxInR7, BusMuxInR8, BusMuxInR9, BusMuxInR10;
	 wire [31:0] BusMuxInR11, BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15, MDRmuxOut;
	 wire [31:0] BusMuxInMDR, BusMuxInInPort, BusMuxInCSignExtn, BusMuxInIR, Mdatain, RAMAddressIN, BusMuxInPC;
	 wire [15:0] R0_15in, R0_15out;
	 // ALU wires
	 wire [31:0] RYOutput, RZHiOut, RZLoOut;
	 // Encoder 
	 wire [4:0] BusEncoderControl;

    // Instantiate Dedicated Registers
    register RZHi (.clear(clear), .clock(clock), .enable(RZinHi), .BusMuxOut(RZHiOut), .BusMuxIn(BusMuxInRZHi));
	 register RZLo (.clear(clear), .clock(clock), .enable(RZinLo), .BusMuxOut(RZLoOut), .BusMuxIn(BusMuxInRZLo));
	 register RY (.clear(clear), .clock(clock), .enable(RYin), .BusMuxOut(BusMuxOut), .BusMuxIn(RYOutput));
    register HI (.clear(clear), .clock(clock), .enable(HIin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInHI));
    register LO (.clear(clear), .clock(clock), .enable(LOin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInLO));
	 pc_register PC (.clear(clear), .increment(IncPC), .clock(clock), .enable(PCin), .inputPC(BusMuxOut), .newPC(BusMuxInPC));
	 register IR (.clear(clear), .clock(clock), .enable(IRin), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInIR));
	 register MAR (.clear(clear), .clock(clock), .enable(MARin), .BusMuxOut(BusMuxOut), .BusMuxIn(RAMAddressIN));
	 // Instantiate General Purpose Registers
	 zero_register R0 (.clear(clear), .clock(clock), .enable(R0_15in[15]), .BAout(BAout), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR0));
	 register R1 (.clear(clear), .clock(clock), .enable(R0_15in[14]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR1));
	 register R2 (.clear(clear), .clock(clock), .enable(R0_15in[13]), .BusMuxOut(BusMuxOut), .BusMuxIn(BusMuxInR2));
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
	 // Instantiate I/O
	 register inputPort (.clear(clear), .clock(clock), .enable(InPortIn), .BusMuxOut(IntputUnitIn), .BusMuxIn(BusMuxInInPort));
	 register outputPort (.clear(clear), .clock(clock), .enable(OutPortIn), .BusMuxOut(BusMuxOut), .BusMuxIn(OutputUnitOut));
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
	 
	 // Instantiate Flip Flop logic
	 ff_logic flipflop(
		 .clock(CONin),
		 .D(CON),
		 .Q(branchFlag)
	 );
	 
		
	// Instantiate the control unit
	control_unit c_unit(
		.PCout(PCout),
		.ZHighout(RZoutHi),
		.ZLowout(RZoutLo),
		.MDRout(MDRout),
		.MARin(MARin),
		.PCin(PCin),
		.MDRin(MDRin),
		.IRin(IRin),
		.Yin(RYin),
		.IncPC(IncPC),
		.MDRread(MDRread),
		.HIin(HIin),
		.LOin(LOin),
		.HIout(HIout),
		.LOout(LOout),
		.ZHighIn(RZinHi),
		.ZLowIn(RZinLo),
		.RCout(RCout),
		.RAMwrite(RAMwrite),
		.Gra(Gra),
		.Grb(Grb),
		.Grc(Grc),
		.Rin(Rin),
		.Rout(Rout),
		.BAout(BAout),
		.CONin(CONin),
		.InPortIn(InPortIn),
		.OutPortin(OutPortIn),
		.InPortout(InPortOut),
		.Run(Run),
		.Clear(clear),
		.IR(BusMuxInIR),
		.Clock(clock),
		.Reset(reset),
		.Stop(stop)
	);
   

endmodule