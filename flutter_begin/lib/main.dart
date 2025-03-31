import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_column_row2.dart';
import 'package:flutter_buoi11/baitao_column_row3.dart';
import 'package:flutter_buoi11/baitap_column_row.dart';
import 'package:flutter_buoi11/baitap_column_row4.dart';
import 'package:flutter_buoi11/baitap_column_row5.dart';
import 'package:flutter_buoi11/baitap_profile.dart';
import 'package:flutter_buoi11/baitap_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black87,
        // appBar: AppBar(
        //   title: Text("Profile card"),
        // ),
        body: SafeArea(
          child: BaiTapStack(), // Main Page
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// buoi 18
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // thứ tự trên xuống dưới => những item phía dưới chồng lên các item phía trên
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          width: 500,
          height: 500,
        ),
        Positioned(
          top: 10, // khai báo cách phía dưới 0px
          right: 30,
          child: Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
        ),
        Positioned(
          top: 20, // khai báo cách phía dưới 0px
          right: 40,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}

// buoi 16

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 1"),
            ),
            color: Colors.amber,
          ),
        ),
        Expanded(
          flex: 2,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 2"),
            ),
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 10,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 3"),
            ),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      height: 600,
      color: Colors.red,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
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

// buổi 15

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

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
