import 'package:flutter/material.dart';

class BaiTapGridView extends StatelessWidget {
  const BaiTapGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 500,
          child: GridView.count(
            crossAxisCount: 5,
            children: [
              Image.network("https://picsum.photos/100?random"),
              Image.network("https://picsum.photos/100?random=2"),
              Image.network("https://picsum.photos/100?random=3"),
              Image.network("https://picsum.photos/100?random=4"),
              Image.network("https://picsum.photos/100?random=5"),
              Image.network("https://picsum.photos/100?random=6"),
              Image.network("https://picsum.photos/100?random=7"),
              Image.network("https://picsum.photos/100?random=8"),
              Image.network("https://picsum.photos/100?random=9"),
              Image.network("https://picsum.photos/100?random=10"),
              Image.network("https://picsum.photos/100?random=11"),
              Image.network("https://picsum.photos/100?random=12"),
              Image.network("https://picsum.photos/100?random=13"),
              Image.network("https://picsum.photos/100?random=14"),
              Image.network("https://picsum.photos/100?random=15"),
              Image.network("https://picsum.photos/100?random=16"),
              Image.network("https://picsum.photos/100?random=17"),
              Image.network("https://picsum.photos/100?random=18"),
              Image.network("https://picsum.photos/100?random=22"),
              Image.network("https://picsum.photos/100?random=b"),
              Image.network("https://picsum.photos/100?random=45"),
              Image.network("https://picsum.photos/100?random=a"),
              Image.network("https://picsum.photos/100?random=66"),
              Image.network("https://picsum.photos/100?random=22"),
              Image.network("https://picsum.photos/100?random=99"),
              Image.network("https://picsum.photos/100?random=0"),
              Image.network("https://picsum.photos/100?random=35"),
              Image.network("https://picsum.photos/100?random=22"),
              Image.network("https://picsum.photos/100?random=32"),
              Image.network("https://picsum.photos/100?random=46"),
              Image.network("https://picsum.photos/100?random=74"),
              Image.network("https://picsum.photos/100?random=97"),
              Image.network("https://picsum.photos/100?random=6"),
              Image.network("https://picsum.photos/100?random=65"),
              Image.network("https://picsum.photos/100?random=23"),
              Image.network("https://picsum.photos/100?random=86"),
              Image.network("https://picsum.photos/100?random=26"),
            ],
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
            ],
          ),
        ),

          Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
            ],
          ),
        ),

          Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              SizedBox(
                width: 20,
              ),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
              newFeed(),
            ],
          ),
        ),
      ],
    );
  }
}

Widget newFeed() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("https://picsum.photos/200/200?random=true"),
      ),
      Positioned(
        left: 5,
        bottom: 5,
        child: Text("John",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      )
    ],
  );
}
