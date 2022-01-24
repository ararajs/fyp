`include "fa.v"
`include "mux2.v"
`include "sram.v"
`include "xnor.v"

module bitcell (
    SI,
    CI,
    WL,
    BL,
    WE,
    CE,
    INPUT,
    OUTPUT,
    CO,
    SO
);

    input SI, CI, WL, BL, WE, CE, INPUT;
    output OUTPUT, CO, SO;
    wire SRAM_to_XNOR;
    wire SRAM_QB; //NC
    wire XNOR_to_MUX;
    wire WE_MUX_to_FA;
    wire CE_MUX_to_FA;

    SRAM sram (
        .BL(BL),
        .WL(WL),
        .Q(SRAM_to_XNOR),
        .QB(SRAM_QB)
    );

    XNOR xnor1 (
        .A(BL),
        .B(SRAM_to_XNOR),
        .O(XNOR_to_MUX)
    );

    MUX_2 we_mux (
        .A(SI),
        .B(XNOR_to_MUX),
        .S(WE),
        .O(WE_MUX_to_FA)
    );

    MUX_2 ce_mux (
        .A(~BL),
        .B(CI),
        .S(CE),
        .O(CE_MUX_to_FA)
    );


    full_adder fa (
        .A(INPUT),
        .B(WE_MUX_to_FA),
        .Cin(CE_MUX_to_FA),
        .S(OUTPUT),
        .Co(CO)
    );

    assign SO = WE_MUX_to_FA;

    
endmodule

