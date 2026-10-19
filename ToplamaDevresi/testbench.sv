
module tb_adder_4bit;

    logic [3:0] A, B;
    logic [4:0] SUM;

    adder_4bit uut (.*);

    initial begin
        $display("--- TOPLAMA TESTI BASLADI ---");

        A = 4'd3;  B = 4'd2;
        #10;
        $display("A=%d, B=%d, SUM=%d", A, B, SUM);

        A = 4'd7;  B = 4'd4;
        #10;
        $display("A=%d, B=%d, SUM=%d", A, B, SUM);

        A = 4'd15; B = 4'd1;
        #10;
        $display("A=%d, B=%d, SUM=%d", A, B, SUM);

        A = 4'd8;  B = 4'd8;
        #10;
        $display("A=%d, B=%d, SUM=%d", A, B, SUM);

        A = 4'd0;  B = 4'd0;
        #10;
        $display("A=%d, B=%d, SUM=%d", A, B, SUM);

        $finish;
    end

endmodule
