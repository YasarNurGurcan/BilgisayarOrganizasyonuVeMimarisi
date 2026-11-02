
module alu_4bit (
    input logic [3:0] a,
    input logic [3:0] b,
    input logic [2:0] sel,
    output logic [7:0] out
);

    always_comb begin
        case (sel)

            3'b000: begin
                // Toplama işlemi
                out = {4'b0000, a} + {4'b0000, b};
            end

            3'b001: begin
                // Çıkarma işlemi iki'nin tümleyeni ile yapılır
                // a - b yerine a + (~b + 1) işlemi uygulanır
                out = {4'b0000, a} + {4'b0000, (~b)} + 8'd1;
            end

            3'b010: begin
                // AND işlemi
                out = a & b;
            end

            3'b011: begin
                // OR işlemi
                out = a | b;
            end

            3'b100: begin
                // Çarpma işlemi
                out = a * b;
            end

            default: begin
                out = 8'b00000000;
            end

        endcase
    end

endmodule
