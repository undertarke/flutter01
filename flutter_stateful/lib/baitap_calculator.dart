import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaitapCalculator extends StatefulWidget {
  const BaitapCalculator({super.key});

  @override
  State<BaitapCalculator> createState() => _BaitapCalculatorState();
}

class _BaitapCalculatorState extends State<BaitapCalculator> {
  var result;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    result = "";
  }

  String evaluateExpression(String expression) {
    // Loại bỏ khoảng trắng
    expression = expression.replaceAll(' ', '');

    // Kiểm tra chuỗi rỗng
    if (expression.isEmpty) {
      return 'NaN';
    }

    // Kiểm tra ký tự hợp lệ (chỉ cho phép số, +, -, x, *, ÷, .)
    if (!RegExp(r'^[0-9+\-x*÷.]+$').hasMatch(expression)) {
      return 'NaN';
    }

    // Kiểm tra định dạng chuỗi
    if (RegExp(r'[+\-x*÷]{2,}').hasMatch(expression) || // Hai toán tử liên tiếp
        RegExp(r'^[+\-x*÷]').hasMatch(expression) || // Bắt đầu bằng toán tử
        RegExp(r'[+\-x*÷]$').hasMatch(expression)) {
      // Kết thúc bằng toán tử
      return 'NaN';
    }

    // Thay 'x' thành '*' để thống nhất
    expression = expression.replaceAll('x', '*');

    // Tách số và toán tử
    List<String> tokens = [];
    String currentNumber = '';

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];
      if (RegExp(r'[0-9.]').hasMatch(char)) {
        currentNumber += char;
      } else if (RegExp(r'[+\-*÷]').hasMatch(char)) {
        if (currentNumber.isNotEmpty) {
          tokens.add(currentNumber);
          currentNumber = '';
        }
        tokens.add(char);
      }
    }
    if (currentNumber.isNotEmpty) {
      tokens.add(currentNumber);
    }

    // Kiểm tra tokens hợp lệ
    if (tokens.isEmpty || tokens.length % 2 == 0) {
      return 'NaN';
    }

    // Chuyển tokens thành số và toán tử
    List<double> numbers = [];
    List<String> operators = [];

    for (int i = 0; i < tokens.length; i++) {
      if (i % 2 == 0) {
        try {
          numbers.add(double.parse(tokens[i]));
        } catch (e) {
          return 'NaN';
        }
      } else {
        operators.add(tokens[i]);
      }
    }

    // Xử lý nhân và chia trước
    List<double> tempNumbers = [numbers[0]];
    List<String> tempOperators = [];

    for (int i = 0; i < operators.length; i++) {
      double right = numbers[i + 1];
      if (operators[i] == '*' || operators[i] == '÷') {
        double left = tempNumbers.removeLast();
        double result;
        if (operators[i] == '*') {
          result = left * right;
        } else {
          if (right == 0) {
            return 'NaN'; // Lỗi chia cho 0
          }
          result = left / right;
        }
        tempNumbers.add(result);
      } else {
        tempNumbers.add(right);
        tempOperators.add(operators[i]);
      }
    }

    // Xử lý cộng và trừ
    double result = tempNumbers[0];
    for (int i = 0; i < tempOperators.length; i++) {
      double nextNumber = tempNumbers[i + 1];
      if (tempOperators[i] == '+') {
        result += nextNumber;
      } else if (tempOperators[i] == '-') {
        result -= nextNumber;
      }
    }

    // Định dạng kết quả để tránh .0 không cần thiết
    if (result == result.toInt()) {
      return result.toInt().toString();
    }
    return result.toString();
  }

  dynamic processExpression(expression, input) {
    // Kiểm tra nếu chuỗi rỗng
    if (expression.isEmpty) {
      // Chỉ cho phép số làm ký tự đầu tiên
      if (RegExp(r'[0-9]').hasMatch(input)) {
        return input;
      }
      return '';
    }

    // Lấy ký tự cuối cùng của chuỗi
    var lastChar = expression[expression.length - 1];

    // Kiểm tra ký tự cuối là số
    if (RegExp(r'[0-9]').hasMatch(lastChar)) {
      // Nếu ký tự cuối là số, nối input (có thể là số hoặc toán tử)
      return expression + input;
    }

    // Kiểm tra ký tự cuối là toán tử (+, -, ×, ÷)
    if (RegExp(r'[\+\-\x\÷]').hasMatch(lastChar)) {
      // Nếu input là số, nối input
      if (RegExp(r'[0-9]').hasMatch(input)) {
        return expression + input;
      }
      // Nếu input là toán tử, thay thế ký tự cuối
      if (RegExp(r'[\+\-\x\÷]').hasMatch(input)) {
        return expression.substring(0, expression.length - 1) + input;
      }
    }

    // Trường hợp không khớp, trả về chuỗi gốc
    return expression;
  }

  Widget _buttonNumber(title, color) {
    return Container(
      alignment: Alignment.center,
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(80),
      ),
      child: TextButton(
        onPressed: () {
          // dòng kiểm tra

          setState(() {
            result = processExpression(result, title);
          });
        },
        child: Text(
          "$title",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buttonAC(title, color) {
    return Container(
      alignment: Alignment.center,
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(80),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            result = "";
          });
        },
        child: Text(
          "$title",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buttonEqual(title, color) {
    return Container(
      alignment: Alignment.center,
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(80),
      ),
      child: TextButton(
        onPressed: () {
          var temp = evaluateExpression(result);

          setState(() {
            result = temp;
          });
        },
        child: Text(
          "$title",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(FontAwesomeIcons.list, color: Colors.orange),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${result}",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonAC("AC", Colors.grey),

                _buttonNumber(" ", Colors.grey),
                _buttonNumber("÷", Colors.orange),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("7", Colors.grey[900]),
                _buttonNumber("8", Colors.grey[900]),
                _buttonNumber("9", Colors.grey[900]),
                _buttonNumber("x", Colors.orange),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("4", Colors.grey[900]),
                _buttonNumber("5", Colors.grey[900]),
                _buttonNumber("6", Colors.grey[900]),
                _buttonNumber("-", Colors.orange),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("1", Colors.grey[900]),
                _buttonNumber("2", Colors.grey[900]),
                _buttonNumber("3", Colors.grey[900]),
                _buttonNumber("+", Colors.orange),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("", Colors.grey[900]),

                _buttonNumber("0", Colors.grey[900]),
                _buttonNumber(".", Colors.grey[900]),
                _buttonEqual("=", Colors.orange),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
