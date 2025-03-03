import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextWidget(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello flutter",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 50, // em , rem
        fontFamily: "Playwrite",
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 5,
        wordSpacing: 50,
        decoration: TextDecoration.underline,
        backgroundColor: Colors.yellow,
        // shadows: [
        //   Shadow(
        //     color: Colors.black,
        //     offset: Offset(5, 5),
        //     blurRadius: 20,
        //   ),
        // ],
        height: 0,
      ),
    );
  }
}

// những gì mà sử dụng màu sắc thì xài lớp đối tượng Colors

// class TextWidget extends StatelessWidget {
//   var message = "";
//   TextWidget({super.key, required this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Text("${this.message}");
//   }
// }


// code snippet => stl

// alt + Shift + F => beautiful format code
// bóng đè: giúp thêm và xóa nhanh widget lồng nhau


