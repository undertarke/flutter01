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
      home: Scaffold(body: SafeArea(child: BaiTapButtonWidget())),
    );
  }
}

class BaiTapButtonWidget extends StatefulWidget {
  const BaiTapButtonWidget({super.key});

  @override
  State<BaiTapButtonWidget> createState() => _BaiTapButtonWidgetState();
}

class _BaiTapButtonWidgetState extends State<BaiTapButtonWidget> {
  var _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _color = Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 200, width: 200, color: _color),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _color = Colors.green;
                });
              },
              child: Text(""),
              style: TextButton.styleFrom(
                // padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                backgroundColor: Colors.green,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                   _color = Colors.red;
                });
              },
              child: Text(""),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(50),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                   _color = Colors.yellow;
                });
              },
              child: Text(""),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(50),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// buoi 23

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            print("button clicked");
          },
          child: Text("Elevated button"),
        ),

        TextButton(
          style: TextButton.styleFrom(),
          onPressed: () {
            print("text button clicked");
          },
          child: Text("Text button"),
        ),

        OutlinedButton(
          style: TextButton.styleFrom(),
          onPressed: () {
            print("outline button clicked");
          },
          child: Text("Outline button"),
        ),
      ],
    );
  }
}

class _BaiTapTangGiamSoState extends StatefulWidget {
  const _BaiTapTangGiamSoState({super.key});

  @override
  State<_BaiTapTangGiamSoState> createState() => __BaiTapTangGiamSoStateState();
}

class __BaiTapTangGiamSoStateState extends State<_BaiTapTangGiamSoState> {
  var number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    number = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$number", style: TextStyle(fontSize: 50)),
        ListTile(
          title: Text("+", style: TextStyle(fontSize: 50, color: Colors.green)),
          onTap: () {
            setState(() {
              // number = number + 1;
              number += 1;
            });
          },
        ),
        ListTile(
          title: Text("-", style: TextStyle(fontSize: 50, color: Colors.red)),
          onTap: () {
            setState(() {
              // number = number - 1;
              number -= 1;
            });
          },
        ),
      ],
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    title = "Chưa thay đổi";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$title", style: TextStyle(fontSize: 30)),
        ListTile(
          title: Text("Click me"),
          onTap: () {
            // title = "Đã thay đổi";
            // print(title);
            // giúp rebuild (load lại phương thức build() ) , gán lại giá trị
            setState(() {
              title = "Đã thay đổi"; // thay đổi giá trị
            });
          },
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class Parent extends StatelessWidget {
  const Parent({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}
