module datapath_tb;
    reg [31:0] A, B;
    reg [3:0] Op;
    wire [31:0] Result, Hi, Lo;
    wire Zero;

    alu DUT (.A(A), .B(B), .Op(Op), .Result(Result), .Hi(Hi), .Lo(Lo), .Zero(Zero));

    initial begin
        // Logical AND
        A = 32'hA5A5A5A5; B = 32'h5A5A5A5A; Op = 4'b0000; #10;
        $display("AND Result: %h", Result);

        // Logical OR
        Op = 4'b0001; #10;
        $display("OR Result: %h", Result);

        // Logical NOT
        Op = 4'b0010; #10;
        $display("NOT Result: %h", Result);

        // ADD
        Op = 4'b0011; #10;
        $display("ADD Result: %h", Result);

        // SUB
        Op = 4'b0100; #10;
        $display("SUB Result: %h", Result);

        // MUL
        Op = 4'b0101; #10;
        $display("MUL High: %h, Low: %h", Hi, Lo);

        // DIV
        Op = 4'b0110; #10;
        $display("DIV Quotient: %h, Remainder: %h", Lo, Hi);

        $stop;
    end
endmodule