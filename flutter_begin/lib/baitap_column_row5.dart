import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapColumnRow5 extends StatelessWidget {
  const BaiTapColumnRow5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          FontAwesomeIcons.list,
          color: Colors.orange,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "805,23422.524-411,423",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
            const Text("4343,5226.2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("AC", Colors.grey),
                _buttonNumber("+/-", Colors.grey),
                _buttonNumber("%", Colors.grey),
                _buttonNumber("÷", Colors.orange),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("7", Colors.grey[900]),
                _buttonNumber("8", Colors.grey[900]),
                _buttonNumber("9", Colors.grey[900]),
                _buttonNumber("x", Colors.orange),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("4", Colors.grey[900]),
                _buttonNumber("5", Colors.grey[900]),
                _buttonNumber("6", Colors.grey[900]),
                _buttonNumber("-", Colors.orange),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonNumber("1", Colors.grey[900]),
                _buttonNumber("2", Colors.grey[900]),
                _buttonNumber("3", Colors.grey[900]),
                _buttonNumber("+", Colors.orange),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Icon(
                    FontAwesomeIcons.calculator,
                    color: Colors.white,
                  ),
                ),
                _buttonNumber("0", Colors.grey[900]),
                _buttonNumber(".", Colors.grey[900]),
                _buttonNumber("=", Colors.orange),
              ],
            ),
          ],
        )
      ],
    );
  }
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
    child: Text(
      "$title",
      style: TextStyle(fontSize: 30, color: Colors.white),
    ),
  );
}
