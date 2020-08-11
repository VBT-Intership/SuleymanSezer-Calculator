import 'dart:convert';
import 'dart:io';

import 'extension.dart';

class Control {
  Future<dynamic> getNumber() async {
    dynamic inputedText =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    try {
      for (int i = 0; i < inputedText.length; i++) {
        double.parse(inputedText);
      }
      inputedText = double.parse(inputedText);
    } catch (e) {
      print("Hatalı sayı girişi yapıldı.");
      sleep(const Duration(milliseconds: 500));
      print("Çıkış yapılıyor");
      exit(0);
    }
    return inputedText;
  }

  Future<dynamic> getFirstCharacter() async {
    var text = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    return text[0];
  }

  dynamic isCurrentCalculateChar(var text, var isCalculate,
      {double num1, double num2}) {
    var character = text[0];
    var calculateResult;
    var message;
    bool characterIsCurrent = true;
    switch (character) {
      case "+":
        message = "Toplama";
        if (isCalculate) calculateResult = num1.plus(num2);
        break;
      case "-":
        message = "Çıkarma";
        if (isCalculate) calculateResult = num1.minus(num2);
        break;
      case "*":
        message = "Çarpma";
        if (isCalculate) calculateResult = num1.multiply(num2);
        break;
      case "/":
        message = "Bölme";
        if (isCalculate) calculateResult = num1.divide(num2);
        break;
      case "e":
        message = "Çıkış";
        exit(0);
        break;
      default:
        message = "Geçersiz işlem...";
        characterIsCurrent = false;
        break;
    }
    sleep(const Duration(milliseconds: 500));
    if (!isCalculate) {
      print("$message işlemi yapılıyor...");
      return characterIsCurrent;
    } else {
      return calculateResult;
    }
  }
}
