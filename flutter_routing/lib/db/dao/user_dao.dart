import 'package:flutter_routing/db/database_helper.dart';

DatabaseHepler databaseHepler = DatabaseHepler();

// R: Read đọc dữ liệu từ table user
Future<dynamic> selectDataUsers() async {
  final db = await databaseHepler.database;

  // truyền tham số là tên table muốn truy xuất
  final result = await db.query("users");

  return result;
}

/*
  var user ={
    "name":"",
    "email":""
  }
*/
Future<dynamic> insertUser(user) async {
  final db = await databaseHepler.database;

  // tham số 1: tên table
  // tham số 2: object user
  return await db.insert("users", user);
}

Future<dynamic> deleteUser(id) async {
  final db = await databaseHepler.database;

  // tham số 1: tên table
  // tham số 2: tìm kiếm trên column table
  // tham số 3: truyền tham số cho dấu ? ở tham số 2
  return await db.delete("users", where: "id = ?", whereArgs: [id]);
}

Future<dynamic> updateUser(id, user) async {
  final db = await databaseHepler.database;
  // tham số 1: tên table
  // tham số 2 : object user
  // tham số 3: tìm kiếm trên column table
  // tham số 4: truyền tham số cho dấu ? ở tham số 2
  return await db.update("users", user, where: "id = ?", whereArgs: [id]);
}
