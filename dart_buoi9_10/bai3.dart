// thư viện toán học
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Calculator calculator = Calculator();

  var number1 = 2; // int.parse(stdin.readLineSync().toString());
  var number2 = 3; //int.parse(stdin.readLineSync().toString());

  print("Cộng: ");
  print(calculator.sum(number1, number2));

  print("Trừ: ");
  print(calculator.minus(number1, number2));

  print("Nhân: ");
  print(calculator.multiply(number1, number2));

  print("Chia: ");
  print(calculator.divide(number1, number2));

  print("Mũ: ");
  print(calculator.exponent(number1, number2));

  print("Mũ không thư viện: ");
  print(powShopee(number1, number2));

  print("Căn bậc 2: ");
  print(calculator.square(number1));
}

class Calculator {
  dynamic sum(number1, number2) => number1 + number2;

  dynamic minus(number1, number2) => number1 - number2;

  dynamic multiply(number1, number2) {
    return number1 * number2;
  }

  dynamic divide(number1, number2) {
    // chia cho 0 => NaN

    // debug
    // print(number1);
    // print(number2);

    if (number2 == 0) {
      return "NaN";
    }

    return number1 / number2;
  }

  //  tính số mũ =>
  dynamic exponent(number, exp) {
    // 2 cách
    // dùng thư viện
    return pow(number, exp);
  }

  //căn bậc 2
  dynamic square(number) {
    return sqrt(number);
  }
}

dynamic powShopee(int number, exp) {
  var data = 1;
  // không dùng thư viện
  for (var i = 0; i < exp; i++) {
    data *= number;
  }
  return data;
}
