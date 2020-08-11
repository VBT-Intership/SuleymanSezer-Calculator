import 'dart:io';

extension calculate on double {
  String plus(var sayi2) => (this.toDouble() + sayi2.toDouble()).toString();

  String minus(var sayi2) => (this.toDouble() - sayi2.toDouble()).toString();

  String multiply(var sayi2) => (this.toDouble() * sayi2.toDouble()).toString();

  String divide(var sayi2) => (this.toDouble() / sayi2.toDouble()).toString();
}

extension printMessage on String {
  String printing(int milsecond) {
    sleep(Duration(milliseconds: milsecond));
    print(this);
  }
}
