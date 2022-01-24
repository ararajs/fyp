`include "xnor.v"

module xnor_tb;


reg A;
reg B;
wire O;
XNOR uut (
    .A(A),
    .B(B),
    .O(O)
);

initial begin
    $dumpfile("xnor.vcd");
    $dumpvars(0, xnor_tb);
    A = 1'b0;
    B = 1'b0;

    #20
    A = 1'b0;
    B = 1'b1;

    #20

    A = 1'b1;
    B = 1'b0;

    #20

    A = 1'b1;
    B = 1'b1;

    #20

    $display("Test completed");
end

endmodule

