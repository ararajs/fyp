module SRAM (
    BL,
    WL,
    Q,
    QB,
);

    input BL,WL;
    output reg Q, QB;

    reg SRAM = 1'b0;

    always @(*) begin
        if (WL == 1'b1 && BL == 1'b1) begin
            SRAM = 1'b1;
            Q <= SRAM;
            QB <= ~Q;
        end
        else if (WL == 1'b1 && BL == 1'b0) begin
            SRAM = 1'b0;
            Q <= SRAM;
            QB <= ~Q;
        end
        else begin
            Q <= SRAM;
            QB <= ~Q;
        end
    end
endmodule

