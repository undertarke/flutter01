import 'package:flutter/material.dart';
import 'package:flutter_routing/services/product_service.dart';

class HomeShoePage extends StatefulWidget {
  const HomeShoePage({super.key});

  @override
  State<HomeShoePage> createState() => _HomeShoePageState();
}

class _HomeShoePageState extends State<HomeShoePage> {
  var listProduct = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // then: xử lý thành công
    // catch: xử lý thất bại
    ProductService.getProduct("b")
        .then((value) {
          setState(() {
            listProduct = value;
          });
        })
        .catchError((error) {
          // xử lý nếu lỗi
          print(error); // ????
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProduct.length,
      itemBuilder: (context, index) {
        var product = listProduct[index];
        return Text("name: ${product["name"]} - price: ${product["price"]}");
      },
    );
  }
}
