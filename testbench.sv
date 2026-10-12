// MUX devresini test eden testbench

module tb_mux4to1_8bit;

    logic [7:0] in0, in1, in2, in3;
    logic [1:0] sel;
    logic [7:0] out;

    mux4to1_8bit uut (.*);

    initial begin
        in0 = 8'h11;
        in1 = 8'h22;
        in2 = 8'h33;
        in3 = 8'h44;

        $display("--- TEST BASLADI ---");

        sel = 2'b00;
        #10;
        $display("sel = %b, out = %h", sel, out);

        sel = 2'b01;
        #10;
        $display("sel = %b, out = %h", sel, out);

        sel = 2'b10;
        #10;
        $display("sel = %b, out = %h", sel, out);

        sel = 2'b11;
        #10;
        $display("sel = %b, out = %h", sel, out);

        $display("--- TEST BITTI ---");
        $finish;
    end

endmodule
