import 'package:flutter/material.dart';
import 'package:flutter_routing/bloc/counter/counter_bloc.dart';
import 'package:flutter_routing/providers/provider.dart';
import 'package:flutter_routing/ultils/localStorage.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controller để lấy giá trị từ TextField
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool checkToken = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getToken().then((token) {
      if (token != null)
        setState(() {
          checkToken = true;
        });
    });
  }

  // Key để quản lý form
  final _formKey = GlobalKey<FormState>();

  // Hàm xử lý khi nhấn nút đăng nhập
  void _handleLogin() async {
    print("login thành công");

    saveToken(
      "eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJzdHJpbmciLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJWSUVXX1BST0ZJTEUiLCJuYmYiOjE3NDg4NjY2MTQsImV4cCI6MTc0ODg3MDIxNH0.bFbQRNdm35pfrET81RZGzhQLngrzhue8RphJiPA6ra0",
    );

    print(await getToken());

    setState(() {
      checkToken = true;
    });

    // => lưu token (access token) vào localStorage => lưu token (access token) vào thiết bị
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Đăng Nhập')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo hoặc tiêu đề
              Text(
                'Chào mừng bạn! ${context.watch<CounterBloc>().state.count}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),

              // Trường nhập Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập email';
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return 'Email không hợp lệ';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Trường nhập Password
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  if (value.length < 6) {
                    return 'Mật khẩu phải có ít nhất 6 ký tự';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Nút Đăng nhập
              ElevatedButton(
                onPressed: _handleLogin,
                child: Text('Đăng Nhập', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Liên kết quên mật khẩu
              TextButton(
                onPressed: () async {
                  removeToken();
                  print(await getToken());

                  setState(() {
                    checkToken = false;
                  });
                },
                child: Text('Đăng xuất'),
              ),
              if (checkToken == true)
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login mới thấy', style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
