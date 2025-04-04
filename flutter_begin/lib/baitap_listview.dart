import 'package:flutter/material.dart';

class BaiTapListView extends StatelessWidget {
  const BaiTapListView({super.key});

  @override
  Widget build(BuildContext context) {
    var listUser = [
      {
        "id": 1,
        "name": "Nguyen Van A",
        "age": 25,
        "email": "nguyenvana@example.com",
        "country": "Vietnam"
      },
      {
        "id": 2,
        "name": "Tran Thi B",
        "age": 30,
        "email": "tranthib@example.com",
        "country": "Vietnam"
      },
      {
        "id": 3,
        "name": "Le Van C",
        "age": 22,
        "email": "levanc@example.com",
        "country": "Vietnam"
      },
      {
        "id": 4,
        "name": "Pham Thi D",
        "age": 28,
        "email": "phamthid@example.com",
        "country": "Vietnam"
      },
      {
        "id": 5,
        "name": "Hoang Van E",
        "age": 35,
        "email": "hoangvane@example.com",
        "country": "Vietnam"
      },
      {
        "id": 6,
        "name": "Bui Thi F",
        "age": 27,
        "email": "buithif@example.com",
        "country": "Vietnam"
      },
      {
        "id": 7,
        "name": "Dang Van G",
        "age": 40,
        "email": "dangvang@example.com",
        "country": "Vietnam"
      },
      {
        "id": 8,
        "name": "Vu Thi H",
        "age": 23,
        "email": "vuthih@example.com",
        "country": "Vietnam"
      },
      {
        "id": 9,
        "name": "Do Van I",
        "age": 29,
        "email": "dovani@example.com",
        "country": "Vietnam"
      },
      {
        "id": 10,
        "name": "Ngo Thi J",
        "age": 31,
        "email": "ngothij@example.com",
        "country": "Vietnam"
      },
      {
        "id": 11,
        "name": "John Smith",
        "age": 34,
        "email": "johnsmith@example.com",
        "country": "USA"
      },
      {
        "id": 12,
        "name": "Emma Johnson",
        "age": 26,
        "email": "emmajohnson@example.com",
        "country": "USA"
      },
      {
        "id": 13,
        "name": "Hiroshi Tanaka",
        "age": 38,
        "email": "hiroshitanaka@example.com",
        "country": "Japan"
      },
      {
        "id": 14,
        "name": "Sakura Yamada",
        "age": 24,
        "email": "sakurayamada@example.com",
        "country": "Japan"
      },
      {
        "id": 15,
        "name": "Liam Brown",
        "age": 32,
        "email": "liambrown@example.com",
        "country": "UK"
      },
      {
        "id": 16,
        "name": "Sophie Davis",
        "age": 29,
        "email": "sophiedavis@example.com",
        "country": "UK"
      },
      {
        "id": 17,
        "name": "Carlos Lopez",
        "age": 33,
        "email": "carloslopez@example.com",
        "country": "Spain"
      },
      {
        "id": 18,
        "name": "Maria Garcia",
        "age": 27,
        "email": "mariagarcia@example.com",
        "country": "Spain"
      },
      {
        "id": 19,
        "name": "Pierre Dubois",
        "age": 36,
        "email": "pierredubois@example.com",
        "country": "France"
      },
      {
        "id": 20,
        "name": "Claire Martin",
        "age": 25,
        "email": "clairemartin@example.com",
        "country": "France"
      },
      {
        "id": 21,
        "name": "Zhang Wei",
        "age": 31,
        "email": "zhangwei@example.com",
        "country": "China"
      },
      {
        "id": 22,
        "name": "Li Na",
        "age": 28,
        "email": "lina@example.com",
        "country": "China"
      },
      {
        "id": 23,
        "name": "Kim Min-Jae",
        "age": 29,
        "email": "kimminjae@example.com",
        "country": "South Korea"
      },
      {
        "id": 24,
        "name": "Park Soo-Yeon",
        "age": 26,
        "email": "parksooyeon@example.com",
        "country": "South Korea"
      },
      {
        "id": 25,
        "name": "Anna Müller",
        "age": 34,
        "email": "annamueller@example.com",
        "country": "Germany"
      },
      {
        "id": 26,
        "name": "Lukas Schmidt",
        "age": 30,
        "email": "lukasschmidt@example.com",
        "country": "Germany"
      },
      {
        "id": 27,
        "name": "Elena Rossi",
        "age": 27,
        "email": "elenarossi@example.com",
        "country": "Italy"
      },
      {
        "id": 28,
        "name": "Marco Bianchi",
        "age": 35,
        "email": "marcobianchi@example.com",
        "country": "Italy"
      },
      {
        "id": 29,
        "name": "Olga Ivanova",
        "age": 32,
        "email": "olgaivanova@example.com",
        "country": "Russia"
      },
      {
        "id": 30,
        "name": "Dmitry Petrov",
        "age": 28,
        "email": "dmitrypetrov@example.com",
        "country": "Russia"
      },
      {
        "id": 31,
        "name": "Aisha Khan",
        "age": 25,
        "email": "aishakhan@example.com",
        "country": "Pakistan"
      },
      {
        "id": 32,
        "name": "Rahul Sharma",
        "age": 33,
        "email": "rahulsharma@example.com",
        "country": "India"
      },
      {
        "id": 33,
        "name": "Priya Patel",
        "age": 29,
        "email": "priyapatel@example.com",
        "country": "India"
      },
      {
        "id": 34,
        "name": "Fatima Ahmed",
        "age": 31,
        "email": "fatimaahmed@example.com",
        "country": "Egypt"
      },
      {
        "id": 35,
        "name": "Omar Hassan",
        "age": 27,
        "email": "omarhassan@example.com",
        "country": "Egypt"
      },
      {
        "id": 36,
        "name": "Sofia Silva",
        "age": 26,
        "email": "sofiasilva@example.com",
        "country": "Brazil"
      },
      {
        "id": 37,
        "name": "Lucas Oliveira",
        "age": 34,
        "email": "lucasoliveira@example.com",
        "country": "Brazil"
      },
      {
        "id": 38,
        "name": "Isabella Torres",
        "age": 28,
        "email": "isabellatorres@example.com",
        "country": "Mexico"
      },
      {
        "id": 39,
        "name": "Juan Hernandez",
        "age": 30,
        "email": "juanhernandez@example.com",
        "country": "Mexico"
      },
      {
        "id": 40,
        "name": "Amir Hossein",
        "age": 35,
        "email": "amirhossein@example.com",
        "country": "Iran"
      },
      {
        "id": 41,
        "name": "Sara Jafari",
        "age": 24,
        "email": "sarajafari@example.com",
        "country": "Iran"
      },
      {
        "id": 42,
        "name": "Thandiwe Zulu",
        "age": 29,
        "email": "thandiwezulu@example.com",
        "country": "South Africa"
      },
      {
        "id": 43,
        "name": "Sipho Nkosi",
        "age": 32,
        "email": "siphonkosi@example.com",
        "country": "South Africa"
      },
      {
        "id": 44,
        "name": "Alya Putri",
        "age": 23,
        "email": "alyaputri@example.com",
        "country": "Indonesia"
      },
      {
        "id": 45,
        "name": "Budi Santoso",
        "age": 31,
        "email": "budisantoso@example.com",
        "country": "Indonesia"
      },
      {
        "id": 46,
        "name": "Chloe Lim",
        "age": 27,
        "email": "chloelim@example.com",
        "country": "Singapore"
      },
      {
        "id": 47,
        "name": "Ethan Tan",
        "age": 33,
        "email": "ethantan@example.com",
        "country": "Singapore"
      },
      {
        "id": 48,
        "name": "Nia Kurniawati",
        "age": 26,
        "email": "niakurniawati@example.com",
        "country": "Malaysia"
      },
      {
        "id": 49,
        "name": "Ahmad bin Ismail",
        "age": 34,
        "email": "ahmadbinismail@example.com",
        "country": "Malaysia"
      },
      {
        "id": 50,
        "name": "Lara Cohen",
        "age": 28,
        "email": "laracohen@example.com",
        "country": "Israel"
      }
    ];

    return ListView.builder(
      itemCount: listUser.length, // 50
      itemBuilder: (context, index) {
        // index 0 - 49
        var item = listUser[index];

        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Image.network(
                "https://ui-avatars.com/api/?name=${item['name']}&background=random&bold=true"),
          ),
          title: Text("${item['name']}"),
          subtitle: Text("${item['email']} | ${item['country']}"),
          // sự kiện Click
        );
      },
    );
  }
}
