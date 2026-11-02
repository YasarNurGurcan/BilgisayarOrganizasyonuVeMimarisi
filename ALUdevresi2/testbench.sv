
module tb_alu_4bit;

    logic [3:0] a;
    logic [3:0] b;
    logic [2:0] sel;
    logic [7:0] out;

    // ALU devresini test etmek için bağlıyoruz
    alu_4bit uut (.*);

    initial begin

        a = 4'd6;
        b = 4'd3;

        // Toplama testi
        sel = 3'b000;
        #10;
        $display("Toplama: %d + %d = %d", a, b, out);

        // Çıkarma testi
        sel = 3'b001;
        #10;
        $display("Cikarma: %d - %d = %d", a, b, out);

        // AND testi
        sel = 3'b010;
        #10;
        $display("AND: %d & %d = %d", a, b, out);

        // OR testi
        sel = 3'b011;
        #10;
        $display("OR: %d | %d = %d", a, b, out);

        // Çarpma testi
        sel = 3'b100;
        #10;
        $display("Carpma: %d * %d = %d", a, b, out);

        $finish;
    end

endmodule
