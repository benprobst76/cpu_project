`timescale 1ns / 10ps
module shl_tb; 	
	reg	PCout, ZHighout, ZLowOut, MDRout, R4out, R3out, R7out, R5out, R2out, R6out; // add any other signals to see in your simulation
	reg	MARin, ZHighIn, ZLowIn, PCin, MDRin, IRin, IRout, Yin, Yout;
	reg 	IncPC, Read, MARout, LOin, HIin;
	reg   R4in, R3in, R7in, R5in, R2in, R6in;
	reg	clock, clear;
	reg	[31:0] Mdatain;

	parameter	Default = 4'b0000, Reg_load1a= 4'b0001, Reg_load1b= 4'b0010, Reg_load2a= 4'b0011, 
					Reg_load2b = 4'b0100, Reg_load3a = 4'b0101, Reg_load3b = 4'b0110, 
					T0= 4'b0111, T1= 4'b1000,T2= 4'b1001, T3= 4'b1010, T4= 4'b1011, T5= 4'b1100, T6 = 4'b1101, T7 = 4'b1110;

	reg	[3:0] Present_state = Default;


	datapath SHL_DUT( 
		.clock(clock),
		.clear(clear),
		.PCout(PCout),
		.RZoutLo(ZLowOut),
		.RZinLo(ZLowIn),
		.RZinHi(ZHighIn),
		.RZoutHi(ZHighout),
		.MDRout(MDRout),
		.MDRin(MDRin),
		.MARin(MARin),
		.MARout(MARout),
		.PCin(PCin),
		.IncPC(IncPC),
		.IRin(IRin),
		.IRout(IRout),
		.RYin(Yin),
		.RYout(Yout),
		.MDRread(Read),
		.R3in(R3in),
		.R3out(R3out),
		.R4in(R4in),
		.R4out(R4out),
		.R7in(R7in),
		.R7out(R7out),
		.Mdatain(Mdatain),
		.R5in(R5in),
		.R5out(R5out),
		.R2in(R2in),
		.R2out(R2out),
		.R6in(R6in),
		.R6out(R6out),
		.LOin(LOin),
		.HIin(HIin)
	);
	// add test logic here

	initial 
		begin
			clock = 0;
			clear = 0;
			forever #10 clock = ~ clock;
	end

		always @(posedge clock) // finite state machine; if clock rising-edge
	begin
		case (Present_state)
			Default			:	Present_state = Reg_load1a;
			Reg_load1a		:	Present_state = Reg_load1b;
			Reg_load1b		:	Present_state = Reg_load2a;
			Reg_load2a		:	Present_state = Reg_load2b;
			Reg_load2b		:	Present_state = Reg_load3a;
			Reg_load3a		:	Present_state = Reg_load3b;
			Reg_load3b		:	Present_state = T0;
			T0					:	Present_state = T1;
			T1					:	Present_state = T2;
			T2					:	Present_state = T3;
			T3					:	Present_state = T4;
			T4					:	Present_state = T5;
			endcase
		end

	always @(Present_state) // do the required job in each state
	begin
		case (Present_state)              //assert the required signals in each clock cycle
			Default: begin
					PCout <= 0;   ZLowOut <= 0; ZHighout <= 0;  ZHighIn <= 0; MDRout<= 0;   //initialize the signals
					R3out <= 0;  R4out <= 0; R7out <= 0; R5out <= 0; R2out <= 0; R6out <= 0; MARin <= 0;   ZLowIn <= 0;  
					PCin <=0;   MDRin <= 0;   IRin  <= 0;   Yin <= 0; Yout <= 0;  
					IncPC <= 0;   Read <= 0; MARout <= 0; IRout <= 0; LOin <= 0; HIin <= 0;
					R3in <= 0; R4in <= 0; R7in <= 0; R5in <= 0; R2in <= 0; R6in <= 0; Mdatain <= 32'h00000000;
			end
			Reg_load1a: begin 
					Mdatain<= 32'h00000022;
					Read = 0; MDRin = 0;				//the first zero is there for completeness
					#5 Read <= 1; MDRin <= 1;  
					#15 Read <= 0; MDRin <= 0;
			end
			Reg_load1b: begin
					#5 MDRout<= 1; R3in <= 1;  
					#15 MDRout<= 0; R3in <= 0;     // initialize R3 with the value $22
			end
			Reg_load2a: begin 
					Mdatain <= 32'h00000002;
					#5 Read <= 1; MDRin <= 1;  
					#15 Read <= 0; MDRin <= 0;
			end
			Reg_load2b: begin
					#5 MDRout<= 1; R7in <= 1;  
					#15 MDRout<= 0; R7in <= 0;		// initialize R7 with the value $2
			end
			Reg_load3a: begin 
					Mdatain <= 32'h00000028;
					#5 Read <= 1; MDRin <= 1;  
					#15 Read <= 0; MDRin <= 0;
			end
			Reg_load3b: begin
					#5 MDRout<= 1; R4in <= 1;  
					#15 MDRout<= 0; R4in <= 0;		// initialize R4 with the value $28
			end
		
			T0: begin			//see if you need to de-assert these signals
					#5 PCout<= 1; MARin <= 1; IncPC <= 1; ZLowIn <= 1;
					#15 PCout<= 0; MARin <= 0; IncPC <= 0; ZLowIn <= 0;
			end
			T1: begin
					Mdatain <= 32'h5A2B8000;   //op code for "shl R4, R3, R7"
					#5 Read <= 1; MDRin <= 1;
					#15 Read <= 0; MDRin <= 0;
					
			end
			T2: begin
					#5 MDRout<= 1; IRin <= 1; 
					#15 MDRout<= 0; IRin <= 0; 
			end
			T3: begin
					#5 R3out<= 1; Yin <= 1;  
					#15 R3out<= 0; Yin <= 0;
			end
			T4: begin
					#5 R7out<= 1; ZLowIn <= 1; 
					#15 R7out<= 0; ZLowIn <= 0; 
			end
			T5: begin
					#5 ZLowOut<= 1; R4in <= 1; 
					#15 ZLowOut<= 0; R4in <= 0;
			end
		endcase
	end
endmodule