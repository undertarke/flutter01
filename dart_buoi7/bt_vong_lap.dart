import 'dart:io';

void main(List<String> args) {
  print("Nhập N: ");
  var n = int.parse(stdin.readLineSync().toString());

  // bài 1:
  var tong = 0;
  for (var i = 0; i <= n; i++) {
    //  i = 1 2 3 4 5 6 7 .... n
    tong += i;
  }
  // print(tong);

  //bai 2
  for (var i = 1; i <= 9; i++) {
    //  i = 1 2 3 4 5 6 7 8 9

    // print("$i x $n = ${n * i}");
  }

// bai 3
  var demChan = 0;
  var demLe = 0;
  for (var i = 1; i <= n; i++) {
    //  i = 1 2 3 4 5 6 7

    if (i % 2 == 0) {
      // số chẵn
      demChan++;
    } else {
      // số lẻ
      demLe++;
    }
  }
  // print(" số chẵn: $demChan");
  // print(" số lẻ: $demLe");

  // bai 4
  var giaiThua = 1;
  for (var i = 1; i <= n; i++) {
    //  i = 1 2 3 4 5 6 7 .... n
    giaiThua *= i;
  }
  // print(giaiThua);

  print('1234'.length); // 4
  // bai 5
  var ketQua = "";
  var phanNguyen = n; // 1234
  // 1234
  for (var i = 0; i < n.toString().length; i++) {
    ketQua = ketQua + (phanNguyen % 10).toString();
    phanNguyen = phanNguyen ~/ 10;
  }

  print(ketQua);
}
