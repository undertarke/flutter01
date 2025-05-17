// nơi khởi tạo và kết nối database file sqlite => lưu thiết bị di động

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHepler {
  Database? _database;

  Future<Database> get database async {
    // lần thứ 2 trở đi thì không mở database tiếp
    if (_database != null) {
      return _database!;
    }

    // lấy đường dẫn của file database sqlite
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'sql_flutter.db');

    // mở file database sqlite từ nơi lưu lên
    _database = await openDatabase(
      path, // đường dẫn đi tới file db phía trên
      version: 1, // phiên bản
      onCreate: (db, version) {}, // tạo table mặc định
    );

    return _database!;
  }
}


