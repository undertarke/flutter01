import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapCustomScrollView extends StatelessWidget {
  const BaiTapCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text("News Feed"),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                newFeed(),
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
        ),
        SliverToBoxAdapter(
          child: Text("Friend Online"),
        ),
        SliverToBoxAdapter(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Text("Contacts"),
        ),

        SliverList(delegate: SliverChildListDelegate([
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
          getContacts("a","a@gmail.com"),
        ]))
      ],
    );
  }
}

Widget getContacts(name, email) {
  return Card(
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Image.network("https://i.pravatar.cc/150"),
      ),
      title: Text("${name}"),
      subtitle: Text("${email}}"),
      trailing: Icon(FontAwesomeIcons.solidUser),
      // sự kiện Click
    ),
  );
}

Widget getOnline() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network('https://i.pravatar.cc/100'),
      ),
      Positioned(
        right: 5,
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
  );
}

Widget newFeed() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("https://picsum.photos/200/300?random=true"),
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
