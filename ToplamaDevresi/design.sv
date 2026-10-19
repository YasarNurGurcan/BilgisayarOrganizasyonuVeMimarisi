module adder_4bit (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [4:0] SUM
);

    always_comb begin
        SUM = {1'b0, A} + {1'b0, B};
    end

endmodule
