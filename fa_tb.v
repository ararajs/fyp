`include "fa.v"

module full_adder_tb;

reg A;
reg B;
reg Cin;
wire S;
wire Co;

full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Co(Co)
);

initial begin
    $dumpfile("fa.vcd");
    $dumpvars(0, full_adder_tb);

    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;

    #20

    A = 1'b1;
    B = 1'b1;
    Cin = 1'b1;

    #20

    A = 1'b1;
    B = 1'b1;
    Cin = 1'b0;

    #20

    A = 1'b1;
    B = 1'b0;
    Cin = 1'b0;

    #20

    A = 1'b1;
    B = 1'b0;
    Cin = 1'b1;

    #20

    $display("Completed test");
end

endmodule