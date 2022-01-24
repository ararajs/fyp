`include "sram.v"

module sram_tb;

reg BL;
reg WL;
wire Q;
wire QB;

SRAM uut(
    .BL(BL),
    .WL(WL),
    .Q(Q),
    .QB(QB)
);

initial begin
    $dumpfile("sram.vcd");
    $dumpvars(0, sram_tb);
    
    #20

    BL = 1'b0;
    WL = 1'b0;

    #20

    BL = 1'b1;
    WL = 1'b1;

    #20

    BL = 1'b1;
    WL = 1'b0;

    #20

    BL = 1'b0;
    WL = 1'b0;

    #20

    BL = 1'b0;
    WL = 1'b1;

    #20

    $display("Test completed");

end

endmodule