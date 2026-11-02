# 4 Bitlik ALU (Aritmetik Mantık Birimi) Tasarımı

## Projenin Amacı

Bu projede 4 bitlik iki giriş üzerinde toplama, çıkarma, AND, OR ve çarpma işlemlerini gerçekleştiren bir ALU devresi tasarlanmıştır. Yapılacak işlem, seçme girişi (`sel`) ile belirlenmektedir. Çıkarma işlemi doğrudan çıkarma operatörü kullanılmadan, iki'nin tümleyeni yöntemiyle toplama işlemi üzerinden gerçekleştirilmiştir.

## Giriş ve Çıkışlar

- `a`: 4 bitlik birinci giriş
- `b`: 4 bitlik ikinci giriş
- `sel`: Yapılacak işlemi seçen 3 bitlik kontrol girişi
- `out`: 8 bitlik işlem sonucu

## Gerçekleştirilen İşlemler

| sel | İşlem | Açıklama |
|---|---|---|
| 000 | Toplama | İki sayı normal şekilde toplanır. |
| 001 | Çıkarma | İki'nin tümleyeni yöntemiyle toplama kullanılarak gerçekleştirilir. |
| 010 | AND | İki girişin bitlerine AND işlemi uygulanır. |
| 011 | OR | İki girişin bitlerine OR işlemi uygulanır. |
| 100 | Çarpma | İki sayı normal şekilde çarpılır. |

## Kullanılan Dosyalar

- `design.sv`: ALU devresinin tasarım kodu.
- `testbench.sv`: Devrenin farklı işlemlerle test edildiği kod.
- `README.md`: Projenin açıklaması.
