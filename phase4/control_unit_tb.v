`timescale 1ns/10ps

module control_unit_tb;
	reg clock, reset, stop;

datapath Phase3_DUT(
	.clock(clock),
	.reset(reset),
	.stop(stop)
);

	initial 
		begin
			clock = 1;
			stop = 0;
			reset = 1;
			#15 reset = 0;
			forever #10 clock = ~ clock;
	end

endmodule


