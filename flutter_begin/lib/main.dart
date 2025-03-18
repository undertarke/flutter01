import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile card"),
        ),
        body: SafeArea(
          child: BaiTapProfile(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// buổi 15

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 300,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // căn chỉnh item theo trục dọc
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 1"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 2"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 3"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 4"),
            ),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
