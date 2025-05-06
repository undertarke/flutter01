import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page B", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
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
          Text("PAGE B", style: TextStyle(fontSize: 50)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/page-c");
            },
            child: Text("Page C"),
          ),
        ],
      ),
    );
  }
}
