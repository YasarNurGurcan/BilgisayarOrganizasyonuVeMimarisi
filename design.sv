// 8 bitlik 4'e 1 MUX tasarimi

module mux4to1_8bit (
    input logic [7:0] in0,
    input logic [7:0] in1,
    input logic [7:0] in2,
    input logic [7:0] in3,
    input logic [1:0] sel,
    output logic [7:0] out
);

    always_comb begin
        case (sel)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
            default: out = 8'b0;
        endcase
    end

endmodule
