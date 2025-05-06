import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stateful/baitap_calculator.dart';
import 'package:flutter_stateful/baitap_form.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: BaiTapForm()),
        // backgroundColor: Colors.black,
      ),
    );
  }
}

// buoi 25 validation

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.copyWith(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}

class ValidationForm extends StatefulWidget {
  const ValidationForm({super.key});

  @override
  State<ValidationForm> createState() => _ValidationFormState();
}

class _ValidationFormState extends State<ValidationForm> {

 

  final _formKey = GlobalKey<FormState>();

  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Form hợp lệ");

   
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            maxLength: 100,
            decoration: InputDecoration(
              labelText: "Họ tên",
              border: OutlineInputBorder(),
            ),
            
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r'[a-zA-Z]'),
              ), // Chỉ cho phép chữ cái
              UpperCaseTextFormatter(), 
            ],
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
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
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
          ),
          SizedBox(height: 20),

          TextFormField(
            decoration: InputDecoration(
              labelText: "Điện thoại",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            // tự động hiện thị thông báo validation không cần nhần submit
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // inputFormatters: [
            //   FilteringTextInputFormatter.digitsOnly, // Chỉ cho phép nhập số
            // ],
            validator: (value) {
              // kiểm tra có rỗng hay không

              if (value == null || value.isEmpty == true) {
                return "Hãy nhập điện thoại !";
              }

              // if (int.tryParse(value) == null) {
              //   return 'Vui lòng chỉ nhập số';
              // }
              // hợp lệ

              if (value.length < 8 || value.length > 16) {
                return 'Số phải từ 8 đến 16';
              }

              return null;
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

// buoi 24

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({super.key});

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  final _formKey = GlobalKey<FormState>();

  var listNhanVien=[];

  var hoTen = "";
  var moTa = "";

  var checkDart = false;
  var checkFlutter = false;
  var checkHTML = false;

  var radioGroup = "0";

  var gioiTinh = 0;

  var lstDropdown = [
    {"id": 0, "label": "Nam"},
    {"id": 1, "label": "Nữ"},
    {"id": 2, "label": "Khác"},
  ];

  submitForm() {
    // _formKey.currentState!.save();

    // print(hoTen);

    var thongTin = {
      "hoTen": hoTen,
      "moTa": moTa,
      "gioiTinh": gioiTinh,
      "checkDart": checkDart,
      "checkDart": checkDart,
      "checkFlutter": checkFlutter,
      "checkHTML": checkHTML,
      "radioChoice": radioGroup,
    };

    listNhanVien.add(thongTin);

    

    // lưu xuống SQLite, state management
    // API Back-End

    print(thongTin);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            initialValue: hoTen, // nội dung mặc định khi load lần đầu
            decoration: InputDecoration(
              labelText: "Họ & tên",
              hintText:
                  "Nhập vào họ và tên...", //placeholder => hướng dẫn thao tác của user
              prefixIcon: Icon(FontAwesomeIcons.user),
              suffixIcon: Icon(FontAwesomeIcons.searchengin),
              border: OutlineInputBorder(),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.green),
              // ),
              // filled: true,
              // fillColor: Colors.red[100],
            ),

            validator: (value) {
              // khi lỗi => rỗng
              return "Hãy nhập họ tên";

              // hợp lệ => pass validation
              return null;
            },

            // hoạt động trong widget Form() => khi nhấn nút button (submit)
            onSaved: (newValue) {
              // hoTen = newValue!;
            },
            // khi gõ phím => đè (down) phím và thả (up) phím
            onChanged: (value) {
              // setState(() {
              //   hoTen = value;
              // });

              // hoTen = value;
            },

            // tương tự onSaved() => nhấn Enter
            onFieldSubmitted: (value) {
              print(value);
            },
            // style: TextStyle(fontSize: 40, color: Colors.red),
          ),
          SizedBox(height: 20),
          TextFormField(
            maxLines: 2,
            onChanged: (value) {
              setState(() {
                moTa = value;
              });
            },
            decoration: InputDecoration(
              labelText: "Mô tả",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          // load theo định dạng => key: value => list object
          DropdownButtonFormField(
            value: gioiTinh, // 2
            decoration: InputDecoration(
              labelText: "Dropdown",
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
          SizedBox(height: 20),
          CheckboxListTile(
            title: Text("Dart"),
            value: checkDart,
            onChanged: (value) {
              setState(() {
                checkDart = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Flutter"),
            value: checkFlutter,
            onChanged: (value) {
              setState(() {
                checkFlutter = value!;
              });
            },
          ),
          SwitchListTile(
            title: Text("HTML"),
            value: checkHTML,
            onChanged: (value) {
              setState(() {
                checkHTML = value!;
              });
            },
          ),
          SizedBox(height: 20),

          RadioListTile(
            title: Text("Nam"),
            value: "0",
            groupValue: radioGroup,
            onChanged: (value) {
              setState(() {
                radioGroup = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Nữ"),
            value: "1",
            groupValue: radioGroup,
            onChanged: (value) {
              setState(() {
                radioGroup = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Khác"),
            value: "2",
            groupValue: radioGroup,
            onChanged: (value) {
              setState(() {
                radioGroup = value!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              submitForm();
            },
            child: Text("Button submit"),
          ),
        ],
      ),
    );
  }
}

class BaiTapButtonWidget extends StatefulWidget {
  const BaiTapButtonWidget({super.key});

  @override
  State<BaiTapButtonWidget> createState() => _BaiTapButtonWidgetState();
}

class _BaiTapButtonWidgetState extends State<BaiTapButtonWidget> {
  var _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _color = Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(height: 200, width: 200, color: _color),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.green;
                  });
                },
                child: Text(""),
                style: TextButton.styleFrom(
                  // padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  backgroundColor: Colors.green,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.red;
                  });
                },
                child: Text(""),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(50),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.yellow;
                  });
                },
                child: Text(""),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(50),
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// buoi 23

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            print("button clicked");
          },
          child: Text("Elevated button"),
        ),

        TextButton(
          style: TextButton.styleFrom(),
          onPressed: () {
            print("text button clicked");
          },
          child: Text("Text button"),
        ),

        OutlinedButton(
          style: TextButton.styleFrom(),
          onPressed: () {
            print("outline button clicked");
          },
          child: Text("Outline button"),
        ),
      ],
    );
  }
}

class _BaiTapTangGiamSoState extends StatefulWidget {
  const _BaiTapTangGiamSoState({super.key});

  @override
  State<_BaiTapTangGiamSoState> createState() => __BaiTapTangGiamSoStateState();
}

class __BaiTapTangGiamSoStateState extends State<_BaiTapTangGiamSoState> {
  var number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    number = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$number", style: TextStyle(fontSize: 50)),
        ListTile(
          title: Text("+", style: TextStyle(fontSize: 50, color: Colors.green)),
          onTap: () {
            setState(() {
              // number = number + 1;
              number += 1;
            });
          },
        ),
        ListTile(
          title: Text("-", style: TextStyle(fontSize: 50, color: Colors.red)),
          onTap: () {
            setState(() {
              // number = number - 1;
              number -= 1;
            });
          },
        ),
      ],
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    title = "Chưa thay đổi";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$title", style: TextStyle(fontSize: 30)),
        ListTile(
          title: Text("Click me"),
          onTap: () {
            // title = "Đã thay đổi";
            // print(title);
            // giúp rebuild (load lại phương thức build() ) , gán lại giá trị
            setState(() {
              title = "Đã thay đổi"; // thay đổi giá trị
            });
          },
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class Parent extends StatelessWidget {
  const Parent({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}
