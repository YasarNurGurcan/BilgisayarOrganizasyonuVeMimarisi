module alu_4bit (
    input logic [3:0] a,       // 4-bitlik 1. veri girişi
    input logic [3:0] b,       // 4-bitlik 2. veri girişi
    input logic [1:0] sel,     // İşlem seçici (2-bit)
    output logic [4:0] out     // İşlem sonucu (Taşma payı için 5-bit)
);

    always_comb begin
        case (sel)
            2'b00: out = {1'b0, a} + {1'b0, b}; // Toplama
            2'b01: out = {1'b0, a} - {1'b0, b}; // Çıkarma
            2'b10: out = {1'b0, (a & b)};       // AND işlemi
            2'b11: out = {1'b0, (a | b)};       // OR işlemi
            default: out = 5'b00000;
        endcase
    end

endmodule
