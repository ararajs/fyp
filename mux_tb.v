`include "mux2.v"

module mux_tb;

reg A;
reg B;
reg S;
wire O;

MUX_2 uut(
    .A(A),
    .B(B),
    .S(S),
    .O(O)
);

initial begin
    $dumpfile("mux2.vcd");
    $dumpvars(0, mux_tb);

    A = 1'b0;
    B = 1'b1;
    S = 1'b0;

    #20

    S = 1'b1;

    #20

    $display("Test completed");
end

endmodule