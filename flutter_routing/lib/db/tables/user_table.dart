// chỉnh sửa cấu trúc table
import 'package:flutter_routing/db/database_helper.dart';

// import datahepler vào user table
DatabaseHepler databaseHepler = DatabaseHepler();

// hàm tạo bảng user
Future<void> createTableUsers() async {
  final db = await databaseHepler.database;

  final result = await db.rawQuery('''
    CREATE TABLE users (
  		id INTEGER PRIMARY KEY AUTOINCREMENT,
		  name TEXT,
  		email TEXT
      );
''');

  print(result);
}


// hàm xóa bảng user
Future<void> deleteTableUsers() async {
  final db = await databaseHepler.database;

  final result = await db.rawQuery('DROP TABLE users');

  print(result);
}