`include "bitcell.v"

module bitcell_tb;

reg SI, CI, WL, BL, WE, CE, INPUT;
wire OUTPUT, CO, SO;

bitcell uut (
    .SI(SI),
    .CI(CI),
    .WL(WL),
    .BL(BL),
    .WE(WE),
    .CE(CE),
    .INPUT(INPUT),
    .OUTPUT(OUTPUT),
    .CO(CO),
    .SO(SO)
);

initial begin
    $dumpfile("bitcell.vcd");
    $dumpvars(0, bitcell_tb);

    SI = 1'b0;
    CI = 1'b0;
    WL = 1'b1;
    BL = 1'b1;
    WE = 1'b1;
    CE = 1'b1;
    INPUT = 1'b0;

    #20

    WL = 1'b0;
    BL = 1'b0;

    #20

    $display("Test completed");
end

endmodule