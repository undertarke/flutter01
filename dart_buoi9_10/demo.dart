import 'dart:convert';

void main(List<String> args) {
  // print('Never odd or even'.lastIndexOf('d'));
  //         tony
  // print(("        tony          "));
  // print("".isNotEmpty);
  // var a = "";
  // if (a.isNotEmpty) {}

  // String => json
  var json = jsonDecode('{ "id":123, "hoTen":{"id":999,"hoTen":true} }');

  var object = {"id": 101, "name": "john"};
  jsonEncode(object);

  print(json["hoTen"]["id"]);

  A a = A();
}

class A {
  var _a;
  var _b;
  // getter
  //setter
  dynamic func() {
    this._a;
    return 1;
  }
}
