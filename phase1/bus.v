module bus (
    input wire [31:0] BusMuxInRZ,   // Input from Z register
    input wire [31:0] BusMuxInRA,   // Input from RA register
    input wire [31:0] BusMuxInRB,   // Input from RB register
    input wire RZout, RAout, RBout, // Control signals for bus access
    output wire [31:0] BusMuxOut    // Bus output
);

    reg [31:0] q;

    always @(*) begin
        if (RZout)
            q = BusMuxInRZ;
        else if (RAout)
            q = BusMuxInRA;
        else if (RBout)
            q = BusMuxInRB;
        else
            q = 32'bz; // High-impedance if no control signal is active
    end

    assign BusMuxOut = q;
endmodule