import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapProfile extends StatelessWidget {
  const BaiTapProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        child: Card(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.network(
                  "https://i.pinimg.com/736x/76/1f/6a/761f6a805e03ab62d2b8cc882eafbc15.jpg",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Robert Downey Jr",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  text: 'Lập trình viên ',
                  children: [
                    TextSpan(
                      text: ' Flutter ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' với hơn ',
                    ),
                    TextSpan(
                      text: ' 5 năm kinh nghiệm. ',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Chuyên môn ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.solidCircleCheck,
                    color: Colors.green,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Đang hoạt động",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
