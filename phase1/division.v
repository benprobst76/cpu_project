module division (
    input wire [31:0] RA,       // Dividend
    input wire [31:0] RB,      // Divisor
    output reg [63:0] RZ		 // Remainder + Quotient 
);

    reg [31:0] dividend, divisor;
    reg [31:0] temp;
    integer i;

    always @(RA or RB) begin
        dividend = RA;
        divisor = RB;
        RZ = {32'b0, dividend};

        for (i = 0; i < 32; i = i + 1) begin
            RZ = RZ << 1;
				temp = RZ[63:32];
				RZ[63:32] = RZ[63:32] - divisor;
            if (RZ[63] == 1) begin
                RZ[0] = 0;
					 RZ[63:32] = temp;  // Restore, same as adding back the divisor
            end else begin
                RZ[0] = 1;
            end
        end
    end
endmodule