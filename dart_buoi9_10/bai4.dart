import 'dart:io';

// biến toàn cục
List<Product> listProduct = [];

void main(List<String> args) {
  Order order = Order();

  var thoatCT = 0;
  while (thoatCT != 3) {
    print("1. Thêm sản phẩm");
    print("2. Tính tổng đơn hàng");
    print("3. Thoát");
    thoatCT = int.parse(stdin.readLineSync().toString());

    switch (thoatCT) {
      case 1:
        {
          print("Nhập id: ");
          var id = int.parse(stdin.readLineSync().toString());

          print("Nhập name: ");
          var name = stdin.readLineSync().toString();

          print("Nhập price: ");
          var price = int.parse(stdin.readLineSync().toString());
          Product product = Product(id, name, price);

          order.insertProduct(product);
        }
      case 2:
        {
          print("Tổng giá trị: ");
          print(order.sum());
        }
      default:
    }
  }
}

class Product {
  var id;
  var name;
  var price;

  Product(this.id, this.name, this.price);
}

class Order {
  List<Product> listProduct = [];

  dynamic insertProduct(product) {
    listProduct.add(product);
    print("Thêm thành côn");
  }

  dynamic sum() {
    var data = 0;
    for (Product product in listProduct) {
      data += int.parse(product.price.toString());
    }
    // return listProduct.fold(0, (sum, product) => sum + int.parse(product.price.toString()));

    return data;
  }
}

dynamic insertProduct(product) {
  listProduct.add(product);
  print("Thêm thành côn");
}

dynamic sum() {
  var data = 0;
  for (Product product in listProduct) {
    data += int.parse(product.price.toString());
  }
  // return listProduct.fold(0, (sum, product) => sum + int.parse(product.price.toString()));

  return data;
}
