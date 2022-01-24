module XNOR (
    A,
    B,
    O,
);

    input A,B;
    output reg O;

    always @(*) begin
        O = A ~^ B;
    end
endmodule
