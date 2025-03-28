import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapColumnRow4 extends StatelessWidget {
  const BaiTapColumnRow4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        const Text(
          "026 115 3234",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Add Number",
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: Text(
                "1",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2",
                    style: TextStyle(fontSize: 30, height: 1),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "A B C",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "3",
                    style: TextStyle(
                      fontSize: 30,
                      height: 1,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    "D E F",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: Colors.grey[350],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              child: const Padding(
                padding: const EdgeInsets.fromLTRB(22, 17, 22, 17),
                child: Column(
                  children: [
                    Text(
                      "4",
                      style: TextStyle(fontSize: 30, height: 1),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "G H I",
                      style: TextStyle(fontSize: 15, height: 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[350],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              child: const Padding(
                padding: const EdgeInsets.fromLTRB(22, 17, 22, 17),
                child: Column(
                  children: [
                    Text(
                      "5",
                      style: TextStyle(fontSize: 30, height: 1),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "G H I",
                      style: TextStyle(fontSize: 15, height: 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[350],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              child: const Padding(
                padding: const EdgeInsets.fromLTRB(22, 17, 22, 17),
                child: Column(
                  children: [
                    Text(
                      "6",
                      style: TextStyle(fontSize: 30, height: 1),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "G H I",
                      style: TextStyle(fontSize: 15, height: 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: Text(
                "7",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "8",
                    style: TextStyle(fontSize: 30, height: 1),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "A B C",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              // alignment: Alignment.topCenter,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "9",
                    style: TextStyle(
                      fontSize: 30,
                      height: 1,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    "D E F",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                // alignment: Alignment.topCenter,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.white,
                )),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(FontAwesomeIcons.starHalf),
                Text("Favorites"),
              ],
            ),
            Column(
              children: [
                Icon(FontAwesomeIcons.connectdevelop),
                Text("Favorites"),
              ],
            ),
            Column(
              children: [
                Icon(FontAwesomeIcons.home),
                Text("Favorites"),
              ],
            ),
            Column(
              children: [
                Icon(FontAwesomeIcons.starOfLife),
                Text("Favorites"),
              ],
            ),
            Column(
              children: [
                Icon(FontAwesomeIcons.algolia),
                Text("Favorites"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
