import 'package:flutter/material.dart';
import 'package:flutter_routing/db/dao/user_dao.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapDanhBa extends StatefulWidget {
  const BaiTapDanhBa({super.key});

  @override
  State<BaiTapDanhBa> createState() => _BaiTapDanhBaState();
}

class _BaiTapDanhBaState extends State<BaiTapDanhBa> {
  var listUser = [];
  var hoTen = "";
  var email = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadDataUser();
  }

  Future<void> loadDataUser() async {
    try {
      var listUserDb = await selectDataUsers();

      setState(() {
        listUser = listUserDb;
      });
    } catch (exp) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh bạ", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                showDragHandle: true,

                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    height: 500,
                    child: Center(
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              onChanged: (value) {
                                setState(() {
                                  hoTen = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: "Họ tên",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: "Email",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              child: const Text('Lưu'),
                              onPressed: () {
                                var user = {"name": hoTen, "email": email};
                                insertUser(user);
                                loadDataUser();
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(FontAwesomeIcons.plus, color: Colors.white),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listUser.length, // table users
        itemBuilder: (context, index) {
          // index 0 - 49
          var item = listUser[index];
          print(item);
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.network(
                "https://ui-avatars.com/api/?name=${item['name']}&background=random&bold=true",
              ),
            ),
            title: Text("${item['name']}"),
            subtitle: Text("${item['email']} | ${item['country']}"),

            trailing: IconButton(
              onPressed: () {
                // lưu ý nên hiển thị popup xác nhận khi xóa

                deleteUser(item["id"]);
                loadDataUser();
              },
              icon: Icon(FontAwesomeIcons.trash),
            ),
            // sự kiện Click
          );
        },
      ),
    );
  }
}
