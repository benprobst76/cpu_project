`timescale 1ns/10ps

module ram(input [31:0] data_in, input [7:0] address, input write, read, output [31:0] data_out);
	reg [31:0] memory[511:0];
	initial $readmemh("C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/ram.mem", memory);
	reg [31:0] temp = 32'b0;

	always @(posedge write, posedge read)
	begin
		if (write)
			memory[address] <= data_in;
		else if (read)
			temp <= memory[address];
	end
	assign data_out = temp;
endmodule