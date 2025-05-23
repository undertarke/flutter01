import 'package:flutter/material.dart';
import 'package:flutter_routing/services/product_service.dart';
import 'package:flutter_routing/ultils/environment.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ProductService.getProduct("a")
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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              "Nike Shoe Store",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),

          SliverToBoxAdapter(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(FontAwesomeIcons.search),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),

          SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: listProduct.length,
            itemBuilder: (context, index) {
              var product = listProduct[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/product-detail",
                      arguments: product["id"],
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(product["image"], width: 150),
                      Text(
                        "${product["name"]}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Mô tả ngắn",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$ ${product["price"]}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     childAspectRatio: 0.8,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //   ),
          //   delegate: SliverChildListDelegate([
          //     Container(
          //       color: Colors.red,
          //       child: TextButton(
          //         onPressed: () {
          //           Navigator.pushNamed(context, "/product-detail");
          //         },
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Image.network(
          //               "https://srv.carbonads.net/static/30242/4f7f59796c5dda8f5dfc63a40583dfde7cebb050",
          //               width: 150,
          //             ),
          //             Text(
          //               "Tên sản phẩm",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 20,
          //                 color: Colors.white,
          //               ),
          //             ),
          //             Text(
          //               "Mô tả ngắn",
          //               style: TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //             Text(
          //               "\$20",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       color: Colors.red,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Image.network(
          //             "https://srv.carbonads.net/static/30242/4f7f59796c5dda8f5dfc63a40583dfde7cebb050",
          //             width: 150,
          //           ),
          //           Text(
          //             "Tên sản phẩm",
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20,
          //               color: Colors.white,
          //             ),
          //           ),
          //           Text(
          //             "Mô tả ngắn",
          //             style: TextStyle(fontWeight: FontWeight.bold),
          //           ),
          //           Text(
          //             "\$20",
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       color: Colors.red,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Image.network(
          //             "https://srv.carbonads.net/static/30242/4f7f59796c5dda8f5dfc63a40583dfde7cebb050",
          //             width: 150,
          //           ),
          //           Text(
          //             "Tên sản phẩm",
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20,
          //               color: Colors.white,
          //             ),
          //           ),
          //           Text(
          //             "Mô tả ngắn",
          //             style: TextStyle(fontWeight: FontWeight.bold),
          //           ),
          //           Text(
          //             "\$20",
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ]),
          // ),
        ],
      ),
    );
  }
}
