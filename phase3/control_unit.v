`timescale 1ns/10ps
module control_unit (
	output reg	PCout, ZHighout, ZLowout, MDRout, MARin, PCin, MDRin, IRin, Yin, IncPC, MDRread, 
					HIin, LOin, HIout, LOout, ZHighIn, ZLowIn, RCout, RAMwrite, Gra, Grb, Grc, Rin, Rout, BAout, CONin,
					InPortIn, OutPortin, InPortout, Run, Clear,
	input		   [31:0] IR,
	input		Clock, Reset, Stop
);
	
parameter Reset_state = 8'b00000000, fetch0 = 8'b00000001, fetch1 = 8'b00000010, fetch2= 8'b00000011,
			 add3 = 8'b00000100, add4= 8'b00000101, add5= 8'b00000110, sub3 = 8'b00000111, sub4 = 8'b00001000, sub5 = 8'b00001001,
			 mul3 = 8'b00001010, mul4 = 8'b00001011, mul5 = 8'b00001100, mul6 = 8'b00001101, div3 = 8'b00001110, div4 = 8'b00001111,
			 div5 = 8'b00010000, div6 = 8'b00010001, or3 = 8'b00010010, or4 = 8'b00010011, or5 = 8'b00010100, and3 = 8'b00010101, 
			 and4 = 8'b00010110, and5 = 8'b00010111, shl3 = 8'b00011000, shl4 = 8'b00011001, shl5 = 8'b00011010, shr3 = 8'b00011011,
			 shr4 = 8'b00011100, shr5 = 8'b00011101, rol3 = 8'b00011110, rol4 = 8'b00011111, rol5 = 8'b00100000, ror3 = 8'b00100001,
			 ror4 = 8'b00100010, ror5 = 8'b00100011, neg3 = 8'b00100100, neg4 = 8'b00100101, neg5 = 8'b00100110, not3 = 8'b00100111,
			 not4 = 8'b00101000, not5 = 8'b00101001, ld3 = 8'b00101010, ld4 = 8'b00101011, ld5 = 8'b00101100, ld6 = 8'b00101101, 
			 ld7 = 8'b00101110, ldi3 = 8'b00101111, ldi4 = 8'b00110000, ldi5 = 8'b00110001, st3 = 8'b00110010, st4 = 8'b00110011,
			 st5 = 8'b00110100, st6 = 8'b00110101, st7 = 8'b00110110, addi3 = 8'b00110111, addi4 = 8'b00111000, addi5 = 8'b00111001,
			 andi3 = 8'b00111010, andi4 = 8'b00111011, andi5 = 8'b00111100, ori3 = 8'b00111101, ori4 = 8'b00111110, ori5 = 8'b00111111,
			 br3 = 8'b01000000, br4 = 8'b01000001, br5 = 8'b01000010, br6 = 8'b01000011, br7 = 8'b11111111, jr3 = 8'b01000100, jal3 = 8'b01000101, 
			 jal4 = 8'b01000110, mfhi3 = 8'b01000111, mflo3 = 8'b01001000, in3 = 8'b01001001, out3 = 8'b01001010, nop3 = 8'b01001011, 
			 halt3 = 8'b01001100, shra3 = 8'b01001101, shra4 = 8'b01001111, shra5 = 8'b01010000, mul7 = 8'b01010001, div7 = 8'b01010010;

reg		[7:0] Present_state = Reset_state;

always @(negedge Clock, posedge Reset, posedge Stop) 
	begin
		if (Reset == 1'b1) Present_state = Reset_state;
		else if (Stop == 1'b1) Present_state = halt3;
		else case (Present_state)
			Reset_state		:	Present_state = fetch0;
			fetch0			:	Present_state = fetch1;
			fetch1			:	Present_state = fetch2;
			fetch2			:	begin	
										case	(IR[31:27])
											5'b00011		:		Present_state=add3;	
											5'b00100		: 		Present_state=sub3;
											5'b01110		:		Present_state=ori3;
											5'b01111		:		Present_state=div3;
											5'b00101		:		Present_state=and3;
											5'b00110		:		Present_state=or3;
											5'b00111		:		Present_state=ror3;
											5'b01000		:		Present_state=rol3;
											5'b01001		:		Present_state=shr3;
											5'b01010		:		Present_state=shra3;
											5'b10000		:		Present_state=mul3;
											5'b10001		:		Present_state=neg3;
											5'b00000		:		Present_state=ld3;
											5'b00001		:		Present_state=ldi3;
											5'b00010		:		Present_state=st3;
											5'b01011		:		Present_state=shl3;
											5'b01100		:		Present_state=addi3;
											5'b01101		:		Present_state=andi3;
											5'b10010		:		Present_state=not3;
											5'b10011		:		Present_state=br3;
											5'b10100		:		Present_state=jal3;
											5'b10111		:		Present_state=out3;
											5'b11000		:		Present_state=mflo3;
											5'b10101		:		Present_state=jr3;
											5'b10110		:		Present_state=in3;
											5'b11001		:		Present_state=mfhi3;
											5'b11010		:		Present_state=nop3;
											5'b11011		:		Present_state=halt3;
										endcase
									end
			add3				: 	Present_state = add4;
			add4				:	Present_state = add5;
			add5 				:	Present_state = fetch0;
			
			addi3				: 	Present_state = addi4;
			addi4				:	Present_state = addi5;
			addi5 			:  Present_state = fetch0;
			
			sub3				: 	Present_state = sub4;
			sub4				: 	Present_state = sub5;
			sub5				:	Present_state = fetch0;
			
			mul3				: 	Present_state = mul4;
			mul4				: 	Present_state = mul5;
			mul5				: 	Present_state = mul6;
			mul6				: 	Present_state = mul7;
			mul7           :	Present_state = fetch0; 
			
			div3				: 	Present_state = div4;
			div4				: 	Present_state = div5;
			div5				: 	Present_state = div6;
			div6				: 	Present_state = div7;
			div7				:	Present_state = fetch0;
			
			or3				: 	Present_state = or4;
			or4				: 	Present_state = or5;
			or5				:	Present_state = fetch0;
			
			and3				: 	Present_state = and4;
			and4				: 	Present_state = and5;
			and5   			:	Present_state = fetch0;
			
			shl3				: 	Present_state = shl4;
			shl4				: 	Present_state = shl5;
			shl5 				:	Present_state = fetch0;
			
			shr3				: 	Present_state = shr4;
			shr4				: 	Present_state = shr5;
			shr5 				:	Present_state = fetch0;
			
			shra3				: 	Present_state = shra4;
			shra4				: 	Present_state = shra5;
			shra5 			:	Present_state = fetch0;
			
			rol3				: 	Present_state = rol4;
			rol4				: 	Present_state = rol5;
			rol5 				:	Present_state = fetch0;
			
			ror3				: 	Present_state = ror4;
			ror4				: 	Present_state = ror5;
			ror5 				:	Present_state = fetch0;
			
			neg3				: 	Present_state = neg4;
			neg4				: 	Present_state = fetch0;
			
			not3				: 	Present_state = not4;
			not4				: 	Present_state = fetch0;
			
			ld3				: 	Present_state = ld4;
			ld4				: 	Present_state = ld5;
			ld5				: 	Present_state = ld6;
			ld6				: 	Present_state = ld7;
			ld7				:  Present_state = fetch0;
			
			ldi3				: 	Present_state = ldi4;
			ldi4				: 	Present_state = ldi5;
			ldi5 				:	Present_state = fetch0;
			
			st3				: 	Present_state = st4;
			st4				: 	Present_state = st5;
			st5				: 	Present_state = st6;
			st6				: 	Present_state = st7;
			st7 				:	Present_state = fetch0;
			
			andi3				: 	Present_state = andi4;
			andi4				: 	Present_state = andi5;
			andi5 			:	Present_state = fetch0;
			
			ori3				: 	Present_state = ori4;
			ori4				: 	Present_state = ori5;
			ori5 				:	Present_state = fetch0;
			
			jal3				: 	Present_state = jal4;
			jal4 				:	Present_state = fetch0;
			
			jr3 				:	Present_state = fetch0;
			
			br3				: 	Present_state = br4;
			br4				: 	Present_state = br5;
			br5				: 	Present_state = br6;
			br6  				:	Present_state = br7;
			br7  				:	Present_state = fetch0;
			
			out3 				:	Present_state = fetch0;
			
			in3 				:	Present_state = fetch0;
			
			mflo3 			:	Present_state = fetch0;
			
			mfhi3 			:	Present_state = fetch0;
			
			nop3 				:	Present_state = fetch0;
			
			endcase
	end

always @(Present_state)
begin
	case(Present_state)
		Reset_state: begin 
			Run <= 1; Clear <= 1; Gra <= 0; Grb <= 0; Grc <= 0; Yin <= 0;
			PCout<= 0; ZHighout<=0; ZLowout<=0; MDRout<=0; MARin<=0; PCin<=0; MDRin<=0; IRin<=0; Yin<=0; IncPC<=0; MDRread<=0;
			HIin<=0; LOin<=0; HIout<=0; LOout<=0; ZHighIn<=0; ZLowIn<=0; RCout<=0; RAMwrite<=0; 
			Rin<=0; Rout<=0; BAout<=0; CONin<=0; InPortIn<=0; OutPortin<=0; InPortout<=0;
			#10 Clear <= 0;
		end
		fetch0: begin
			ZLowout <= 0; Gra <= 0; Rin <= 0; PCin <= 0; MDRout <= 0; HIout <= 0; LOout<= 0; RAMwrite <= 0; ZHighout<= 0; HIin <= 0; Rout <= 0;
			PCout <= 1; MARin <= 1;
		end 
		fetch1: begin
			PCout <= 0; MARin <= 0; 	
			MDRin <= 1; MDRread <= 1; ZLowout <= 1;
		end 
		fetch2: begin
			MDRin <= 0; MDRread<=0; ZLowout <= 0; 
			MDRout <= 1; IRin <= 1; IncPC <= 1;	
		end 
		
		add3, sub3: begin	
			MDRout <= 0; IRin <= 0; PCin <= 0; IncPC <= 0;
			Grb <= 1; Rout <= 1; Yin <= 1;
		end
		add4, sub4: begin
				Grb <= 0; Rout <= 0; Yin <= 0;
				Grc<=1; Rout <= 1; ZHighIn <= 1;  ZLowIn <= 1; 
		end
		add5, sub5: begin
				Grc<=0; Rout <= 0; ZHighIn <= 0;  ZLowIn <= 0;
				ZLowout <= 1;Gra<=1;Rin<=1;
		end
		
		or3, and3, shl3, shr3, rol3, ror3, shra3: begin	
			MDRout <= 0; IRin <= 0;PCin <= 0; IncPC <= 0;
			Grb<=1;Rout<=1;Yin<=1;
		end
		or4, and4, shl4, shr4, rol4, ror4, shra4: begin
			Grb<=0;Rout<=0;Yin<=0;
			Grc<=1; Rout <= 1;ZHighIn <= 1;  ZLowIn <= 1;
		end
		or5, and5, shl5, shr5, rol5, ror5, shra5: begin
			Grc<=0; Rout <= 0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;Gra<=1;Rin<=1;
		end
		
		mul3, div3: begin	
			MDRout <= 0; IRin <= 0;PCin <= 0; IncPC <= 0;
			Grb <= 1; Rout <= 1;Yin <= 1;  
			
		end
		mul4, div4: begin
			Grb <= 0; Rout <= 0; Yin <= 0;
			Gra <=1; Rout <= 1; 
			#10 ZHighIn <= 1; ZLowIn <= 1;
				
		end
		mul5, div5: begin
			#10 Gra <=0; Rout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			#10 ZLowout<=1; LOin <= 1;
				
		end
		mul6, div6: begin
			#10 ZLowout<= 0; LOin <= 0;
			ZHighout<= 1; HIin <= 1; 
		end
		mul7, div7: begin
			#10 ZHighout<= 0; HIin <= 0; 
		end
		
		not3, neg3: begin	
			MDRout <= 0; IRin <= 0;PCin <= 0; IncPC <= 0;
			Grb<=1; Rout <= 1;ZHighIn <= 1;  ZLowIn <= 1;
		end
		not4, neg4: begin
			Grb<=0; Rout <= 0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;Gra<=1;Rin<=1;
		end

		
		andi3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Grb<=1;Rout<=1;Yin<=1;
		end

		andi4: begin
			Grb<=0;Rout<=0;Yin<=0;
			RCout<=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		andi5: begin
			RCout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;Gra<=1;Rin<=1;
		end
		
		addi3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Grb<=1;Rout<=1;Yin<=1;
		end

		addi4: begin
			Grb<=0;Rout<=0;Yin<=0;
			RCout<=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		addi5: begin
			RCout<=0; ZHighIn <= 0; ZLowIn <= 0;
			ZLowout <= 1; Gra <= 1; Rin <= 1;
		end
		
		ori3: begin
			MDRout <= 0; IRin <= 0;	PCin <= 0; IncPC <= 0;		
			Grb<=1;Rout<=1;Yin<=1;
		end

		ori4: begin
			Grb<=0;Rout<=0;Yin<=0;
			RCout<=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		ori5: begin
			RCout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;Gra<=1;Rin<=1;
		end
		
		ld3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Grb<=1;BAout<=1;Yin<=1;
		end

		ld4: begin
			Grb<=0;BAout<=0;Yin<=0;
			RCout<=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		ld5: begin
			RCout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;MARin<=1;
		end

		ld6: begin
			ZLowout <= 0; MARin <= 0;
			MDRread <= 1; MDRin <= 1;
		end
		ld7: begin
			MDRread <= 0; MDRin <= 0;
			MDRout <= 1; Gra <= 1; Rin <= 1;
		end
		
		ldi3: begin
			MDRout <= 0; IRin <= 0;PCin <= 0; IncPC <= 0;			
			Grb <= 1; BAout <= 1;Yin <= 1;
		end

		ldi4: begin
			Grb <= 0;BAout <= 0;Yin <= 0;
			RCout <=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		ldi5: begin
			RCout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;Gra<=1;Rin<=1; 
		end
		
		st3: begin
			MDRout <= 0; IRin <= 0;	PCin <= 0; IncPC <= 0;		
			Grb<=1;BAout<=1;Yin<=1;
		end

		st4: begin
			Grb<=0;BAout<=0;Yin<=0;
			RCout<=1;ZHighIn <= 1;  ZLowIn <= 1;
		end

		st5: begin
			RCout<=0; ZHighIn <= 0;  ZLowIn <= 0;
			ZLowout <= 1;MARin<=1;
		end

		st6: begin
			ZLowout <= 0; MARin <= 0;
			MDRread <= 0; Gra <= 1; Rout <= 1; MDRin <= 1;
		end
		st7: begin
			Gra <= 0; Rout <= 0; MDRin <= 0;
			RAMwrite <= 1; 
		end
		
		jr3: begin
			MDRout <= 0; IRin <= 0;	PCin <= 0; IncPC <= 0;				
			Gra<=1;Rout<=1; PCin <= 1;
		end
		
		jal3: begin
			MDRout <= 0; IRin <= 0; PCin <= 0;IncPC <= 0;	
			PCout <= 1; Rin <= 1; Grb <= 1;
		end

		jal4: begin
			Rin <= 0; PCout <= 0;		
			Gra <= 1; Rout <= 1; PCin <= 1;
		end
		
		mfhi3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Gra<=1;Rin<=1; HIout<=1;
		end
		
		mflo3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Gra<=1;Rin<=1; LOout<=1;
		end
		
		in3: begin
			MDRout <= 0; IRin <= 0;			PCin <= 0; IncPC <= 0;
			Gra<=1;Rin<=1; InPortout <= 1;
		end
		
		out3: begin
			MDRout <= 0; IRin <= 0;		PCin <= 0; IncPC <= 0;	
			Gra<=1;Rout<=1;Yin<=1; OutPortin <= 1;
		end
		
		br3: begin
			MDRout <= 0; IRin <= 0;	PCin <= 0; IncPC <= 0;		
			Gra <=1; Rout <=1; CONin <=1;
		end

		br4: begin
			Gra<=0;Rout<=0; CONin<=0;
			PCout<=1; Yin <= 1;
		end

		br5: begin
			PCout<=0; Yin <= 0;
			RCout <= 1; ZHighIn <= 1; ZLowIn <= 1;
		end

		br6: begin
			RCout <= 0; ZHighIn <= 0; ZLowIn <= 0;
			ZLowout<=1; PCin<=1;
		end
		br7: begin
			ZLowout<=0; PCin<=0;
			PCout<=1; 
		end
		
		nop3: begin
			MDRout <= 0; IRin <= 0; IncPC <= 0;	
		end
		
		halt3: begin
			Run <= 0; 
		end
		default: begin 
		end
	endcase
end
endmodule