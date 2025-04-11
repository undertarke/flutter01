import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapListView2 extends StatelessWidget {
  const BaiTapListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      padding: EdgeInsets.all(20),
      children: [
        Text("News Feed",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )),
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
        Text("Friends Online",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getOnline(),
              SizedBox(
                width: 10,
              ),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
              getOnline(),
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
        Text("Contacts",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )),


           
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
        getContacts("John Doe", "john.doe@gmail.com"),
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
