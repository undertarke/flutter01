import 'dart:io';

// import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_extend/ultil/setting_notify.dart';

void main() {
  // setting notofication
  settingMain();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // final _deviceInfo = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDeviceInfo();
    getLocalIpAddress();
  }

  Future<String?> getLocalIpAddress() async {
    try {
      // Lấy danh sách các giao diện mạng
      for (var interface in await NetworkInterface.list()) {
        // Duyệt qua các địa chỉ IP của giao diện
        for (var addr in interface.addresses) {
          // Kiểm tra nếu là IPv4 và không phải loopback (127.0.0.1)
          if (addr.type == InternetAddressType.IPv4 && !addr.isLoopback) {
            // print(interface.addresses);
            return addr.address;
          }
        }
      }
    } catch (e) {
      // print('Lỗi khi lấy IP: $e');
    }
    return null;
  }

  Future<void> getDeviceInfo() async {
    // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        // AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

        // print("host : ${androidInfo.host}");
        // print("model : ${androidInfo.model}");
        // print("physical : ${androidInfo.isPhysicalDevice}");
        // print("name : ${androidInfo.name}");
        // print("id : ${androidInfo.product}");
        // print("version : ${androidInfo.version.sdkInt}");
      }
    } catch (e) {
      // print("lỗi khi lấy thông tin thiết ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showNotification();
        },
        child: Text("Thông báo !!!"),
      ),
    );
  }
}
