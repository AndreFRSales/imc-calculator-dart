import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readValueWithText(String text) {
    print(text);
    return readValue();
  }

  static String readValue() => stdin.readLineSync(encoding: utf8) ?? "";

  static double readDoubleWithText(String text) {
    print(text);
    return readDouble();
  }

  static double readDouble() {
    try {
      return double.tryParse(readValue()) ?? 0.0;
    } catch (e) {
      return 0.0;
    }
  }

  static double getDoubleBiggerThanZero(String text) {
    var value = 0.0;
    do {
      value = ConsoleUtils.readDoubleWithText(text);
      if (value <= 0) {
        print("Valor tem de ser maior do que 0.0");
      }
    } while (value <= 0.0);

    return value;
  }
}
