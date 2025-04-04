import 'package:flutter/material.dart';
import 'package:flutter_buoi11/baitap_column_row2.dart';
import 'package:flutter_buoi11/baitao_column_row3.dart';
import 'package:flutter_buoi11/baitap_column_row.dart';
import 'package:flutter_buoi11/baitap_column_row4.dart';
import 'package:flutter_buoi11/baitap_column_row5.dart';
import 'package:flutter_buoi11/baitap_listview.dart';
import 'package:flutter_buoi11/baitap_profile.dart';
import 'package:flutter_buoi11/baitap_stack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black87,
        // appBar: AppBar(
        //   title: Text("Profile card"),
        // ),
        body: SafeArea(
          child: BaiTapListView(), // Main Page
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// buoi 20:

class ListViewNested extends StatelessWidget {
  const ListViewNested({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        child: Image.network("https://picsum.photos/300/300"),
      ),
      title: Text("Macbook pro 16 inch"),
      subtitle: Text("RAM 24G, M4 pro"),
      trailing: Icon(FontAwesomeIcons.cartArrowDown),
      onTap: () {
        print("click list title");
      }, // sự kiện Click
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // itemCount: khai báo số lượng
    // itemBuilder: trả nội dung trên ListView

    // ưu điểm: lazy-load => hiển thị tối ưu hơn
    // nhược điểm: dư thừa sử dụng hiển thị item với số lượng ít, cú pháp định khá nhiều
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        // index 0 - 99

        return Container(width: 100, height: 100, child: Text("mục $index"));
      },
    );
  }
}

class SingleChildWidget extends StatelessWidget {
  const SingleChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> items = List.generate(
    //     1500, (index) => 'https://i.pravatar.cc/500'); // [mục 1, mục 2,...]

    // return SingleChildScrollView(
    //   child: Column(
    //       children: items.map((item) {
    //     return Container(
    //       height: 250,
    //       child: Image.network(item),
    //     );
    //   }).toList()),
    // );

    // ưu điểm: dễ sử dụng, nên dùng hiển dữ dữ liệu ít < 50
    // nhược điểm: bị hiển thị tất cả dữ liệu lên => không tối ưu
    return SingleChildScrollView(
      scrollDirection: Axis.vertical, // cuộn theo chiều ngang
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network('https://i.pravatar.cc/100'),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                  'https://picsum.photos/300/200'),
                            ),
                            Positioned(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Đây là một hình ảnh ngẫu nhiên !",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Một trong những địa điểm du lịch nổi tiếng."),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  'https://picsum.photos/300/200'),
                            ),
                            Positioned(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Đây là một hình ảnh ngẫu nhiên !",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Một trong những địa điểm du lịch nổi tiếng."),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  'https://picsum.photos/300/200'),
                            ),
                            Positioned(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Đây là một hình ảnh ngẫu nhiên !",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Một trong những địa điểm du lịch nổi tiếng."),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// buoi 18
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // thứ tự trên xuống dưới => những item phía dưới chồng lên các item phía trên
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          width: 500,
          height: 500,
        ),
        Positioned(
          top: 10, // khai báo cách phía dưới 0px
          right: 30,
          child: Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
        ),
        Positioned(
          top: 20, // khai báo cách phía dưới 0px
          right: 40,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}

// buoi 16

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 1"),
            ),
            color: Colors.amber,
          ),
        ),
        Expanded(
          flex: 2,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 2"),
            ),
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 10,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 3"),
            ),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      height: 600,
      color: Colors.red,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 1"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 2"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 3"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 4"),
            ),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

// buổi 15

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 300,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // căn chỉnh item theo trục dọc
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 1"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 2"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 3"),
            ),
            color: Colors.amber,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(" card 4"),
            ),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
