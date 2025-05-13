// nơi khởi tạo database file sqlite => lưu thiết bị di động

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

Future<void> selectDataUsers() async {
  final db = await databaseHepler.database;

  await db.rawQuery('''
INSERT INTO users (name, email)
VALUES ('Nguyen Van A', 'vana@example.com');
''');

  final result = await db.rawQuery('SELECT * FROM users');

  print(result);
}
