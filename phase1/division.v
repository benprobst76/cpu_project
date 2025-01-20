module division (
    input wire [31:0] A,       // Dividend
    input wire [31:0] B,       // Divisor
    output reg [31:0] Quotient, // Quotient
    output reg [31:0] Remainder // Remainder
);

    reg [31:0] dividend, divisor;
    reg [63:0] temp;
    integer i;

    always @(*) begin
        dividend = A;
        divisor = B;
        temp = {32'b0, dividend};
        Quotient = 32'b0;

        for (i = 0; i < 32; i = i + 1) begin
            temp = temp << 1;
            if (temp[63:32] >= divisor) begin
                temp[63:32] = temp[63:32] - divisor;
                Quotient = (Quotient << 1) | 1'b1;
            end else begin
                Quotient = Quotient << 1;
            end
        end

        Remainder = temp[63:32];
    end
endmodule