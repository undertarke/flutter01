import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_column_row.dart';
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
          child: BaiTapColumnRow(), // Main Page
        ),
      ),
      debugShowCheckedModeBanner: false,
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
