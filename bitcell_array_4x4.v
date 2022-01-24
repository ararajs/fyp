`include "bitcell.v"

module bitcell_array (
    WL,
    BL,
    INPUT,
    SI,
    CI,
    OUTPUT
);
    input [3:0] WL;
    input [3:0] BL;
    input [3:0] INPUT;
    input [3:0] SI;
    input [3:0] CI;
    output [3:0] OUTPUT;

    wire IO_0_01; //IO_(ROW_NO)_(FROM_COL_TO_COL)
    wire IO_0_12;
    wire IO_0_23;
    wire IO_0_3O;

    wire IO_1_01;
    wire IO_1_12;
    wire IO_1_23;
    wire IO_1_3O;

    wire IO_2_01; 
    wire IO_2_12;
    wire IO_2_23;
    wire IO_2_3O;

    wire IO_3_01;
    wire IO_3_12;
    wire IO_3_23;
    wire IO_3_3O;

    wire C_0_01; //C_(COL_NO)_(FROM_ROW_TO_ROW)
    wire C_0_12;
    wire C_0_23;
    wire C_0_3O;

    wire C_1_01;
    wire C_1_12;
    wire C_1_23;
    wire C_1_3O;

    wire C_2_01;
    wire C_2_12;
    wire C_2_23;
    wire C_2_3O;

    wire C_3_01;
    wire C_3_12;
    wire C_3_23;
    wire C_3_3O;

    wire S_0_01; //S_(COL_NO)_(FROM_ROW_TO_ROW)
    wire S_0_12;
    wire S_0_23;
    wire S_0_3O;

    wire S_1_01;
    wire S_1_12;
    wire S_1_23;
    wire S_1_3O;

    wire S_2_01;
    wire S_2_12;
    wire S_2_23;
    wire S_2_3O;

    wire S_3_01;
    wire S_3_12;
    wire S_3_23;
    wire S_3_3O;

    bitcell B_0_0 (
        .SI(SI[0]),
        .CI(CI[0]),
        .WL(WL[0]),
        .BL(BL[0]),
        .WE(1'b1),
        .CE(1'b0),
        .INPUT(INPUT[0]),
        .OUTPUT(IO_0_01),
        .CO(C_0_01),
        .SO(S_0_01)
    );

    bitcell B_0_1 (
        .SI(SI[1]),
        .CI(CI[1]),
        .WL(WL[0]),
        .BL(BL[1]),
        .WE(1'b1),
        .CE(1'b0),
        .INPUT(IO_0_01),
        .OUTPUT(IO_0_12),
        .CO(C_1_01),
        .SO(S_1_01)
    );

    bitcell B_0_2 (
        .SI(SI[2]),
        .CI(CI[2]),
        .WL(WL[0]),
        .BL(BL[2]),
        .WE(1'b1),
        .CE(1'b0),
        .INPUT(IO_0_12),
        .OUTPUT(IO_0_23),
        .CO(C_2_01),
        .SO(S_2_01)
    );

    bitcell B_0_3 (
        .SI(SI[3]),
        .CI(CI[3]),
        .WL(WL[0]),
        .BL(BL[3]),
        .WE(1'b1),
        .CE(1'b0),
        .INPUT(IO_0_23),
        .OUTPUT(OUTPUT[0]),
        .CO(C_3_01),
        .SO(S_3_01)
    );

    bitcell B_1_0 (
        .SI(S_0_01),
        .CI(C_0_01),
        .WL(WL[1]),
        .BL(BL[0]),
        .WE(1'b1),
        .CE(1'b1),
        .INPUT(INPUT[1]),
        .OUTPUT(IO_1_01),
        .CO(C_0_12),
        .SO(S_0_12)
    );

    bitcell B_1_1 (
        .SI(S_1_01),
        .CI(C_1_01),
        .WL(WL[1]),
        .BL(BL[1]),
        .WE(1'b1),
        .CE(1'b1),
        .INPUT(IO_1_01),
        .OUTPUT(IO_1_12),
        .CO(C_1_12),
        .SO(S_1_12)
    );

    bitcell B_1_2 (
        .SI(S_2_01),
        .CI(C_2_01),
        .WL(WL[1]),
        .BL(BL[2]),
        .WE(1'b1),
        .CE(1'b1),
        .INPUT(IO_1_12),
        .OUTPUT(IO_1_23),
        .CO(C_2_12),
        .SO(S_2_12)
    );

    bitcell B_1_3 (
        .SI(S_3_01),
        .CI(C_3_01),
        .WL(WL[1]),
        .BL(BL[3]),
        .WE(1'b1),
        .CE(1'b1),
        .INPUT(IO_1_23),
        .OUTPUT(OUTPUT[1]),
        .CO(C_3_12),
        .SO(S_3_12)
    );

    bitcell B_2_0 (
        .SI(S_0_12),
        .CI(C_0_12),
        .WL(WL[2]),
        .BL(BL[0]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(INPUT[2]),
        .OUTPUT(IO_2_01),
        .CO(C_0_23),
        .SO(S_0_23)
    );

    bitcell B_2_1 (
        .SI(S_1_12),
        .CI(C_1_12),
        .WL(WL[2]),
        .BL(BL[1]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_2_01),
        .OUTPUT(IO_2_12),
        .CO(C_1_23),
        .SO(S_1_23)
    );

    bitcell B_2_2 (
        .SI(S_2_12),
        .CI(C_2_12),
        .WL(WL[2]),
        .BL(BL[2]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_2_12),
        .OUTPUT(IO_2_23),
        .CO(C_2_23),
        .SO(S_2_23)
    );

    bitcell B_2_3 (
        .SI(S_3_12),
        .CI(C_3_12),
        .WL(WL[2]),
        .BL(BL[3]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_2_23),
        .OUTPUT(OUTPUT[2]),
        .CO(C_3_23),
        .SO(S_3_23)
    );

    bitcell B_3_0 (
        .SI(S_0_23),
        .CI(C_0_23),
        .WL(WL[3]),
        .BL(BL[0]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(INPUT[3]),
        .OUTPUT(IO_3_01),
        .CO(C_0_3O),
        .SO(S_0_3O)
    );

    bitcell B_3_1 (
        .SI(S_1_23),
        .CI(C_1_23),
        .WL(WL[3]),
        .BL(BL[1]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_3_01),
        .OUTPUT(IO_3_12),
        .CO(C_1_3O),
        .SO(S_1_3O)
    );

    bitcell B_3_2 (
        .SI(S_2_23),
        .CI(C_2_23),
        .WL(WL[3]),
        .BL(BL[2]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_3_12),
        .OUTPUT(IO_3_23),
        .CO(C_2_3O),
        .SO(S_2_3O)
    );

    bitcell B_3_3 (
        .SI(S_3_23),
        .CI(C_3_23),
        .WL(WL[3]),
        .BL(BL[3]),
        .WE(1'b0),
        .CE(1'b1),
        .INPUT(IO_3_23),
        .OUTPUT(OUTPUT[3]),
        .CO(C_3_3O),
        .SO(S_3_3O)
    );

endmodule