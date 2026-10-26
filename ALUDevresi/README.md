4 Bitlik ALU (Aritmetik Mantık Birimi) Tasarımı
Ödevin Amacı
Toplama, çıkarma, AND ve OR işlemlerini yapabilen bir ALU devresinin SystemVerilog ile tasarlanması ve test edilmesi.

Tasarım Detayları
Girişler: a ve b (4-bitlik veri girişleri)
Seçim Sinyali: sel (2-bitlik işlem seçici)
Çıkış: out (5-bitlik işlem sonucu)

İşlem Tablosu (sel değerlerine göre)
00 : Toplama (a + b)
01 : Çıkarma (a - b)
10 : AND İşlemi (a & b)
11 : OR İşlemi (a | b)

Dosyalar
design.sv : ALU devresinin tasarım kodu.
testbench.sv : ALU devresini test etmek için kullanılan kod.
