module booth_multiplier (
    input wire [31:0] A,       // Multiplicand
    input wire [31:0] B,       // Multiplier
    output reg [63:0] Result   // 64-bit result (High and Low parts)
);

    reg [63:0] product;
    reg [31:0] multiplicand, multiplier;
    integer i;

    always @(*) begin
        product = 64'b0;
        multiplicand = A;
        multiplier = B;

        for (i = 0; i < 32; i = i + 1) begin
            if (multiplier[0] == 1)
                product = product + {multiplicand, 32'b0};
            multiplicand = multiplicand << 1;
            multiplier = multiplier >> 1;
        end

        Result = product;
    end
endmodule