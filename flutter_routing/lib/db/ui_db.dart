import 'package:flutter/material.dart';
import 'package:flutter_routing/db/dao/user_dao.dart';
import 'package:flutter_routing/db/tables/user_table.dart';

class Ui_db extends StatelessWidget {
  const Ui_db({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              createTableUsers();
            },
            child: Text("Tạo table user"),
          ),
          ElevatedButton(
            onPressed: () {
              deleteTableUsers();
            },
            child: Text("Xóa table user"),
          ),
          ElevatedButton(
            onPressed: () async {
              print(await selectDataUsers());
            },
            child: Text("Xem dữ liệu table user"),
          ),

          ElevatedButton(
            onPressed: () async {
              var user = {"name": "tony starr", "email": "tony@gmail.com"};
              print(await insertUser(user));
            },
            child: Text("Tạo dữ liệu table user"),
          ),

          ElevatedButton(
            onPressed: () async {
              var result = await deleteUser(22);
              if (result == 1) {
                print("Xóa thành công");
              } else {
                print("Dữ liệu không tồn tại");
              }
            },
            child: Text("Xóa dữ liệu table user"),
          ),

          ElevatedButton(
            onPressed: () async {
              var user = {"name": "tony starr", "email": "tony@gmail.com"};
              print(await updateUser(4, user));
            },
            child: Text("Cập nhật dữ liệu table user"),
          ),
        ],
      ),
    );
  }
}
