import 'dart:convert';
import 'package:flutter_routing/ultils/environment.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<dynamic> getProduct(keyword) async {
    // url backend cung cấp
    final url = Uri.parse("$DOMAIN_API/api/Product?keyword=$keyword");
    try {
      // kết nối tới API của Backend
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return result["content"];
      } else {
        throw Exception("Lỗi kết nối API");
      }
    } catch (exp) {
      print(exp);
      throw Exception("Lỗi kết nối API");
    }
  }

  // C

  static Future<dynamic> addProduct(data) async {
    // url backend cung cấp
    final url = Uri.parse("$DOMAIN_API/api/Product");
    try {
      //  kết nối tới API của Backend
      // tham số 1: url
      // tham số 2: headers => cho phép nhận json
      // tham số 3: json
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: data,
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return result["content"];
      } else {
        throw Exception("Lỗi kết nối API");
      }
    } catch (exp) {
      print(exp);
      throw Exception("Lỗi kết nối API");
    }
  }

  // U

  // D

  // API get product detail
  static Future<dynamic> getProductDetail(id) async {
    // url backend cung cấp
    final url = Uri.parse("$DOMAIN_API/api/Product/getid?id=$id");
    try {
      // kết nối tới API của Backend
      final response = await http.get(
        url,
        headers: {
          'tokenCybersoft':
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5Mb3AiOiJGbHV0dGVyIDAxIiwiSGV0SGFuU3RyaW5nIjoiMDkvMTEvMjAyNSIsIkhldEhhblRpbWUiOiIxNzYyNjQ2NDAwMDAwIiwibmJmIjoxNzM2MTIxNjAwLCJleHAiOjE3NjI4MTkyMDB9.We_FRRLkEJB271FX0Gcjbsfxsnl5YAym7uhkcKXulSQ",
        },
      );
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return result["content"];
      } else {
        throw Exception("Lỗi kết nối API");
      }
    } catch (exp) {
      print(exp);
      throw Exception("Lỗi kết nối API");
    }
  }
}
