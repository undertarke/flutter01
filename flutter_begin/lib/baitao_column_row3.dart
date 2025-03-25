import 'package:flutter/material.dart';

class BaiTapColumnRow3 extends StatelessWidget {
  const BaiTapColumnRow3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _cardInfo(),
        SizedBox(
          height: 20,
        ),
        _cardInfo(),
        SizedBox(
          height: 20,
        ),
        _cardInfo(),
        SizedBox(
          height: 20,
        ),
        _cardInfo(),
      ],
    );
  }
}

Widget _cardInfo() {
  return Expanded(
    child: Card(
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network("https://i.pravatar.cc/200"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          const Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nguyễn Văn A",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Email: nguyenvana@gmail.com \nĐiện thoại: 09 09 09 09 09 "),
                SizedBox(
                  height: 10,
                ),
                Text("Địa chỉ: 324 ĐBP F11, Q1, HCM"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
