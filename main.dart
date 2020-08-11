import 'dart:io';

import 'package:calculator/control.dart';

import 'extension.dart';

void main() async {
  final Control islemler = Control();
  var isExist = false;

  while (!isExist) {
    "".printing(500);
    "----- Hesap Makinesi Uygulamasına Hoşgeldiniz -----".printing(1000);
    "Toplama işlemi için : +".printing(500);
    "Çıkarma işlemi için : -".printing(500);
    "Bölme işlemi için : /".printing(500);
    "Çarpma işlemi için : *".printing(500);
    "Çıkmak için : e".printing(500);
    print("Giriniz ...");

    var yapilacakIslem = await islemler.getFirstCharacter();
    var characterIsCurrent =
        islemler.isCurrentCalculateChar(yapilacakIslem, false);
    if (!characterIsCurrent) {
      print("\nHatalı giriş.Tekrar deneyiniz...\n");
      sleep(const Duration(seconds: 1));
    } else {
      print("Sayı 1'i Giriniz... ");
      var num1 = await islemler.getNumber();
      print("Sayı 2'yi Giriniz... ");
      var num2 = await islemler.getNumber();

      var sonuc = islemler.isCurrentCalculateChar(yapilacakIslem, true,
          num1: num1, num2: num2);
      "İşlem yapılıyor...".printing(200);
      "Sonuç hesaplanıyor...".printing(1000);
      "İşlem Sonucu : $sonuc".printing(1000);
    }
  }
}
