import 'package:flutter/material.dart';

class PageC extends StatefulWidget {
  const PageC({super.key});

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page C", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
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
          Text("PAGE C", style: TextStyle(fontSize: 50)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: Text("HOME"),
          ),
        ],
      ),
    );
  }
}
