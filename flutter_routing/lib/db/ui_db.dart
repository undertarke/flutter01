import 'package:flutter/material.dart';
import 'package:flutter_routing/db/database_helper.dart';

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
            onPressed: () {
              selectDataUsers();
            },
            child: Text("Xem dữ liệu table user"),
          ),
        ],
      ),
    );
  }
}
