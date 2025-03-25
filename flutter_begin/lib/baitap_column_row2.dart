import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapColumnRow2 extends StatelessWidget {
  const BaiTapColumnRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pravatar CC0 Avatar placeholders",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add an identify then always get same image. Add an identify then always get same image.Add an identify then always get same image",
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                    ),
                  ],
                ),
                Text(
                  "1700 Reviews",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.taxi,
                      color: Colors.green,
                    ),
                    Text("PRED: "),
                    SizedBox(
                      height: 10,
                    ),
                    Text("5 min")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      color: Colors.green,
                    ),
                    Text("COOK:"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("1 hr")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.utensils,
                      color: Colors.green,
                    ),
                    Text("FEED:"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("4-6")
                  ],
                ),
              ],
            )
          ],
        )),
        Expanded(
          child: Image.network("https://picsum.photos/500/400?random=1"),
        )
      ],
    );
  }
}
