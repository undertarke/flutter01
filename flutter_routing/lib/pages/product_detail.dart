// stf => state full
// stl => state less

import 'package:flutter/material.dart';
import 'package:flutter_routing/services/product_service.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  var product = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  getProductDetail(id) {
   
    if (product == null) {
      ProductService.getProductDetail(id)
          .then((value) {
            setState(() {
              product = value;
            });
          })
          .catchError((error) {
            // xử lý nếu lỗi
            print(error); // ????
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    var productId = ModalRoute.of(context)?.settings.arguments;
    getProductDetail(productId);

    return product == null
        ? Center(
          child: Container(
            width: 200,
            height: 200,
            child: CircularProgressIndicator(
              strokeWidth: 4.0,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor,
              ),
            ),
          ),
        )
        : Scaffold(
          appBar: AppBar(
            // title: Text("Home Page", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.redAccent,
            // leading: IconButton(
            //   onPressed: () {
            //     Navigator.pop(context); // quay về trang trước
            //   },
            //   icon: Icon(Icons.arrow_back, color: Colors.white),
            // ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.menu, color: Colors.white),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.redAccent,
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.network(product["image"]),
              ),
              Text(
                "${product["name"]}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              Text("${product["description"]}", style: TextStyle(fontSize: 20)),

              Text(
                "\$ ${product["price"]}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
  }
}
