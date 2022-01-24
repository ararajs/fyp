module MUX_2 (
    A,
    B,
    S,
    O,
);

    input A,B,S;
    output reg O;

    always @(*) begin
        O = S ? B : A;
    end

endmodule