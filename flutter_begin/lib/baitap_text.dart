import 'package:flutter/material.dart';

class BaiTapTextWidget extends StatelessWidget {
  const BaiTapTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Demo",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "Demo",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
        Text(
          "Demo",
          style: TextStyle(
            fontSize: 10,
            color: Colors.green,
          ),
        ),
        Text(
          "Demo",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        Text(
          "Demo",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        Text(
          "Demo",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        Text(
          "Shadow Text",
          style: TextStyle(
            fontSize: 20,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
            height: 5,
          ),
        ),
        Text(
          "Text with",
          style: TextStyle(letterSpacing: 5),
        ),
        Text(
          "Letter Spacing",
          style: TextStyle(letterSpacing: 5),
        ),
        Text(
          "Demo demo",
          style: TextStyle(wordSpacing: 25),
        ),
        Text("Demo"),
      ],
    );
  }
}

class BaiTapText2Widget extends StatelessWidget {
  const BaiTapText2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello world !",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 150,
        color: Colors.orange,
        decoration: TextDecoration.lineThrough,
        decorationStyle: TextDecorationStyle.dotted,
        fontStyle: FontStyle.italic,
        fontFamily: "stencil",
        shadows: [
          Shadow(
            color: Colors.black,
            offset: Offset(5, 10),
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}
