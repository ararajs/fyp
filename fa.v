module full_adder(
    A,
    B,
    Cin,
    S,
    Co
);

    input A,B,Cin;
    output reg S, Co;

    always @(*) begin
        S <= A ^ B ^ Cin;
        Co <= A&B | B&Cin| A&Cin;
        //{Co, S} = A + B + Cin;
    end

endmodule