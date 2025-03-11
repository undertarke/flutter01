import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue,
        body: SafeArea(
          child: RichTextWidget(),
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
    return Column(
      children: [
        Text(
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
        ),
        Text("abc"),
      ],
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "Tôi tên là: ",
        style: TextStyle(color: Colors.black, fontSize: 20),
        children: [
          TextSpan(
            text: "Nguyễn Văn A",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ", fb: "),
          TextSpan(
            text: "facebook.com/nguyenvana",
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
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


