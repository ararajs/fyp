`include "bitcell_array_4x4.v"

module bitcell_array_tb;

reg [3:0] WL;
reg [3:0] BL;
reg [3:0] INPUT;
reg [3:0] SI;
reg [3:0] CI;
wire [3:0] OUTPUT;

bitcell_array uut (
    .WL(WL),
    .BL(BL),
    .INPUT(INPUT),
    .SI(SI),
    .CI(CI),
    .OUTPUT(OUTPUT)
);

initial begin
    $dumpfile("bitcell_array.vcd");
    $dumpvars(0, bitcell_array_tb);

    WL = 4'b0000;
    BL =  4'b0110;
    INPUT = 4'b0000;
    SI = 4'b0000;
    CI = 4'b0000;

    #10

    WL = 4'b0001;
    BL = 4'b0110;

    #20

    WL = 4'b0000;

    #10

    BL = 4'b1101;

    #10

    WL = 4'b0010;

    #20

    WL = 4'b0000;

    #10

    BL = 4'b0000;

    #20
    
    BL = 4'b1000;

    #20

    BL = 4'b0100;

    #20

    BL = 4'b1100;

    #20

    BL = 4'b0010;

    #20

    BL = 4'b1010;

    #20

    BL = 4'b0110;

    #20

    BL = 4'b1110;

    #20

    BL = 4'b0001;

    #20

    BL = 4'b1001;

    #20

    BL = 4'b0101;

    #20

    BL = 4'b1101;

    #20

    BL = 4'b0011;

    #20

    BL = 4'b1011;

    #20

    BL = 4'b0111;

    #20

    BL = 4'b1111;

    #20

    $display("Test completed");
end

endmodule