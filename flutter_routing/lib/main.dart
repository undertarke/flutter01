import 'package:flutter/material.dart';
import 'package:flutter_routing/db/ui_db.dart';
import 'package:flutter_routing/pages/danh_ba.dart';

import 'package:flutter_routing/pages/page_a.dart';
import 'package:flutter_routing/pages/page_b.dart';
import 'package:flutter_routing/pages/page_c.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        '/home': (context) => MainPage(),
        '/page-a': (context) => PageA(),
        '/page-b': (context) => PageB(),
        '/page-c': (context) => PageC(),
        '/danh-ba': (context) => BaiTapDanhBa(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var indexPage = 4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indexPage = 4;
  }

  @override
  Widget build(BuildContext context) {
    var listPage = [
      HomePage(),
      PageA(),
      PageB(),
      PageC(),
      BaiTapDanhBa(),
      Ui_db(),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Page", style: TextStyle(color: Colors.white)),
      //   backgroundColor: Colors.deepOrangeAccent,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context); // quay về trang trước
      //     },
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //   ),
      //   actions: [
      //     Icon(Icons.search, color: Colors.white),
      //     SizedBox(width: 20),
      //     Icon(Icons.settings, color: Colors.white),
      //   ],
      // ),
      body: listPage[indexPage],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        currentIndex: indexPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ), // index 0
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Page A",
          ), // index 1
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: "Page B",
          ), // index 2
          BottomNavigationBarItem(icon: Icon(Icons.cabin), label: "Page C"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Danh bạ"),
          BottomNavigationBarItem(
            icon: Icon(Icons.developer_board),
            label: "database",
          ), // index 3
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  var listProduct = [];

  HomePage({super.key});

  final Uri _url = Uri.parse('https://google.com');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("HOME PAGE", style: TextStyle(fontSize: 50)),
        TextButton(onPressed: _launchUrl, child: Text("đi đến google !")),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/page-a");
          },
          child: Icon(FontAwesomeIcons.usersBetweenLines),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/page-b");
          },
          child: Text("Page B"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/page-c");
          },
          child: Text("Page C"),
        ),
      ],
    );
  }
}
