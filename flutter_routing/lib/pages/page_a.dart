import 'dart:convert';

import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic keyOb =
        ModalRoute.of(context)?.settings.arguments; // nhận tham số từ home


    return Scaffold(
      appBar: AppBar(
        title: Text("Page A", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        // leading: IconButton(
        //   onPressed: () {
        //     print("icon click");
        //   },
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        // ),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          Text(
            "PAGE A: ${keyOb != null ? keyOb["value"] : " không có giá trị "}",
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/page-b");
            },
            child: Text("Page B"),
          ),
        ],
      ),
    );
  }
}
