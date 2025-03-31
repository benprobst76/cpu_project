module ff_logic(input wire clock, input wire D, output reg Q);	
   reg Qnot;
	initial begin
		Q <= 0;
		Qnot <= 1;
	end
	always@(negedge clock) 
	begin
		Q <= D;
		Qnot <= !D;
	end
endmodule