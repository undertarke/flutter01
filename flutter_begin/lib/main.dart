import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: ImageWidget(),
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
    return Container(
      color: Colors.red,
      child: RichText(
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

// buổi 14:

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.ccApplePay,
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Image.asset("./assets/imgs/cat.jpg");
    return Container(
      color: Colors.blue,
      child: Image.network(
        "https://airbnbnew.cybersoft.edu.vn/images/phong2.png",
        width: 400,
        height: 150,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset("./assets/imgs/404.jpg");
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(50),
      color: Colors.red,
      shadowColor: Colors.blue,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Text("Demo card !!!"),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // pixel
      height: 100,
      // alignment: Alignment.bottomRight,
      child: Text(
        "Căn chỉnh nội dung Căn chỉnh nội dung con bên trong Container (ví dụ: Alignment.center,a sdada dasd dsa das das dasd Alignment.topLeft). Căn chỉnh nội dung con bên trong Container (ví dụ: Alignment.center, Alignment.topLeft).",
        style: TextStyle(color: Colors.black),
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        // borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.yellow, width: 10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 2, 66, 176),
            Colors.green,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      // foregroundDecoration: BoxDecoration(
      //   border: Border.all(color: Colors.yellow, width: 10),
      //   color: Colors.orange,
      // ),
      clipBehavior: Clip.antiAlias,
    );
  }
}

class MarginPaddingWidget extends StatelessWidget {
  const MarginPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.symmetric(horizontal: 50),
        width: 200,
        height: 200,
        color: Colors.green,
        child: Text(
          "Content",
          style: TextStyle(
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
