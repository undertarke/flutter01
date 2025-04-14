import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: MyWidget())),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var title = "Chưa thay đổi";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$title", style: TextStyle(fontSize: 30)),
        ListTile(
          title: Text("Click me"),
          onTap: () {
            title = "Đã thay đổi";
            print(title);
            // giúp rebuild (load lại phương thức build() ) , gán lại giá trị
            // setState(() {
            //   title="Đã thay đổi"; // thay đổi giá trị
            // });
          },
        ),
      ],
    );
  }
}

class Parent extends StatelessWidget {
  const Parent({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}
