import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_routing/bloc/counter/counter_bloc.dart';
import 'package:flutter_routing/db/ui_db.dart';
import 'package:flutter_routing/pages/active_state.dart';
import 'package:flutter_routing/pages/danh_ba.dart';
import 'package:flutter_routing/pages/home_product.dart';
import 'package:flutter_routing/pages/home_shoe.dart';
import 'package:flutter_routing/pages/login_screen.dart';

import 'package:flutter_routing/pages/page_a.dart';
import 'package:flutter_routing/pages/page_b.dart';
import 'package:flutter_routing/pages/page_c.dart';
import 'package:flutter_routing/pages/product_detail.dart';
import 'package:flutter_routing/pages/show_state.dart';
import 'package:flutter_routing/providers/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// Provider
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [ChangeNotifierProvider(create: (context) => DemSoModel())],
//       child: MyApp(),
//     ),
//   );
// }

// BLoC
void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterBloc())],
      child: MyApp(),
    ),
  );
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
        '/product-detail': (context) => DetailProduct(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// main page của bài tập
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var indexPage = 0;
  var listPage = [HomePage(), LoginScreen(), ActiveState(), ShowState()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var indexPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // title: Text("Home Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context); // quay về trang trước
        //   },
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: listPage[indexPage],

      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
        child: Icon(FontAwesomeIcons.house),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        currentIndex: indexPage,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.deepOrangeAccent,
        // unselectedItemColor: Colors.white,
        // selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gear),
            label: "Config",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.book),
            label: "Active state",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.adn),
            label: "Show state",
          ),
        ],
      ),
    );
  }
}

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

//  class _MainPageState extends State<MainPage> {
//   var indexPage = 5;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     indexPage = 5;
//   }

//   @override
//   Widget build(BuildContext context) {
//     var listPage = [
//       HomePage(),
//       PageA(),
//       PageB(),
//       PageC(),
//       BaiTapDanhBa(),
//       HomeShoePage(),
//       Ui_db(),
//     ];
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Home Page", style: TextStyle(color: Colors.white)),
//       //   backgroundColor: Colors.deepOrangeAccent,
//       //   leading: IconButton(
//       //     onPressed: () {
//       //       Navigator.pop(context); // quay về trang trước
//       //     },
//       //     icon: Icon(Icons.arrow_back, color: Colors.white),
//       //   ),
//       //   actions: [
//       //     Icon(Icons.search, color: Colors.white),
//       //     SizedBox(width: 20),
//       //     Icon(Icons.settings, color: Colors.white),
//       //   ],
//       // ),
//       body: listPage[indexPage],

//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (index) {
//           setState(() {
//             indexPage = index;
//           });
//         },
//         currentIndex: indexPage,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.deepOrangeAccent,
//         unselectedItemColor: Colors.white,
//         selectedItemColor: Colors.yellow,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ), // index 0
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Page A",
//           ), // index 1
//           BottomNavigationBarItem(
//             icon: Icon(Icons.details),
//             label: "Page B",
//           ), // index 2
//           BottomNavigationBarItem(icon: Icon(Icons.cabin), label: "Page C"),
//           BottomNavigationBarItem(icon: Icon(Icons.list), label: "Danh bạ"),
//           BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.store), label: "Shoe"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.developer_board),
//             label: "database",
//           ), // index 3
//         ],
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   var listProduct = [];

//   HomePage({super.key});

//   final Uri _url = Uri.parse('https://google.com');

//   Future<void> _launchUrl() async {
//     if (!await launchUrl(_url)) {
//       throw Exception('Could not launch $_url');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("HOME PAGE", style: TextStyle(fontSize: 50)),
//         TextButton(onPressed: _launchUrl, child: Text("đi đến google !")),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, "/page-a");
//           },
//           child: Icon(FontAwesomeIcons.usersBetweenLines),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, "/page-b");
//           },
//           child: Text("Page B"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, "/page-c");
//           },
//           child: Text("Page C"),
//         ),
//       ],
//     );
//   }
// }
