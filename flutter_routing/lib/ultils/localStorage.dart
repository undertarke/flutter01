import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

// lưu token login => login thành công
Future<void> saveToken(token) async {
  await storage.write(key: "LOGIN_TOKEN", value: token);
}

// đọc token login => truy cập những gì liên quan đến user (info user, giỏ hàng, thêm mục yêu thích, comment, delivery,...) => bắt buộc phải login
Future<dynamic> getToken() async {
  return await storage.read(key: "LOGIN_TOKEN");
}

// xóa token login => đăng xuất
Future<void> removeToken() async {
  await storage.delete(key: "LOGIN_TOKEN");
}
