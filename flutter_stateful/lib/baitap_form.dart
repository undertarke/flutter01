import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapForm extends StatefulWidget {
  const BaiTapForm({super.key});

  @override
  State<BaiTapForm> createState() => BaiTapFormState();
}

class BaiTapFormState extends State<BaiTapForm> {
  final _formKey = GlobalKey<FormState>();

  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  var hoTen = "";
  var email = "";
  var matKhau = "";
  var gioiTinh = 0;
  var dieuKhoan = false;
  var varTro = "0";
  var thongBao = false;

  var lstDropdown = [
    {"id": 0, "label": "Nam"},
    {"id": 1, "label": "Nữ"},
    {"id": 2, "label": "Khác"},
  ];

  submitForm() {
    if (_formKey.currentState!.validate() && dieuKhoan == true) {
      var thongtin = {
        "hoTen": hoTen,
        "email": email,
        "gioiTinh": gioiTinh,
        "dieuKhoan": dieuKhoan,
        "varTro": varTro,
        "thongBao": thongBao,
      };
      print("Form hợp lệ, $thongtin");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            maxLength: 100,
            decoration: InputDecoration(
              labelText: "Họ tên",
              border: OutlineInputBorder(),
              prefixIcon: Icon(FontAwesomeIcons.solidUser),
            ),
            validator: (value) {
              // kiểm tra có rỗng hay không
              if (value == null || value.isEmpty == true) {
                return "Hãy nhập họ tên";
              }
              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return 'Chỉ được nhập chữ cái';
              }
              // hợp lệ
              return null;
            },
            onChanged: (value) {
              setState(() {
                hoTen = value;
              });
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(labelText: "Email"),
            // tự động hiện thị thông báo validation không cần nhần submit
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              // kiểm tra có rỗng hay không
              if (value == null || value.isEmpty == true) {
                return "Hãy nhập email !";
              }
              // kiểm tra email hợp lệ
              if (!_emailRegExp.hasMatch(value)) {
                return 'Email không hợp lệ';
              }
              // hợp lệ
              return null;
            },
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Mật khẩu",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Hãy nhập mật khẩu";
              }
              if (value.length < 6) {
                return "Mật khẩu phải có ít nhất 6 ký tự";
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                matKhau = value;
              });
            },
          ),

          SizedBox(height: 30),
          DropdownButtonFormField(
            value: gioiTinh, // 2
            decoration: InputDecoration(
              labelText: "Giới tính",
              border: OutlineInputBorder(),
            ),
            items:
                lstDropdown.map((item) {
                  return DropdownMenuItem(
                    child: Text("${item["label"]}"),
                    value: item["id"],
                  );
                }).toList(),
            onChanged: (value) {
              // print(value);
              // gioiTinh= int.parse(value.toString());
              setState(() {
                gioiTinh = int.parse(value.toString());
              });
            },
          ),

          CheckboxListTile(
            title: Text("Đồng ý điều khoản sử dụng"),
            value: dieuKhoan, //checkDart,
            onChanged: (value) {
              setState(() {
                dieuKhoan = value!;
              });
            },
          ),

          dieuKhoan == false
              ? Text(
                "Hãy đồng ý điều khoản !!",
                style: TextStyle(color: Colors.red),
              )
              : SizedBox(height: 20),

              
          SizedBox(height: 20),
          Text("Vai trò"),
          RadioListTile(
            title: Text("User"),
            value: "0",
            groupValue: varTro,
            onChanged: (value) {
              setState(() {
                varTro = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Admin"),
            value: "1",
            groupValue: varTro,
            onChanged: (value) {
              setState(() {
                varTro = value!;
              });
            },
          ),

          SwitchListTile(
            title: Text("Bật thông báo"),
            value: thongBao,
            onChanged: (value) {
              setState(() {
                thongBao = value!;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              submitForm();
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
