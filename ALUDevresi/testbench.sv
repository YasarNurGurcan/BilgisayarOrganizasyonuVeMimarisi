module tb_alu_4bit;

    logic [3:0] a, b;
    logic [1:0] sel;
    logic [4:0] out;

    // ALU modülü test ortamına bağlanır
    alu_4bit uut (.*);

    initial begin
        $display("--- ALU TESTI BASLADI ---");

        // Örnek giriş değerleri verelim: a = 6, b = 3
        a = 4'd6; 
        b = 4'd3;

        // 1. Toplama Testi (sel = 00)
        sel = 2'b00;
        #10;
        $display("Toplama -> a=%d, b=%d, sel=%b, out=%d", a, b, sel, out);

        // 2. Çıkarma Testi (sel = 01)
        sel = 2'b01;
        #10;
        $display("Cikarma -> a=%d, b=%d, sel=%b, out=%d", a, b, sel, out);

        // 3. AND Testi (sel = 10)
        sel = 2'b10;
        #10;
        $display("AND     -> a=%b, b=%b, sel=%b, out=%b", a, b, sel, out);

        // 4. OR Testi (sel = 11)
        sel = 2'b11;
        #10;
        $display("OR      -> a=%b, b=%b, sel=%b, out=%b", a, b, sel, out);

        $display("--- ALU TESTI BITTI ---");
        $finish;
    end

endmodule
