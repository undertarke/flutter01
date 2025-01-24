import 'dart:io';

void main() {
  // câu điều kiện
  // if: đúng
  // else: sai
  // var a = int.parse(stdin.readLineSync().toString()); // '10' => 10

  // if (a == 10) {
  //   print('có bằng 10');
  // } else {
  //   // sai
  //   print("không bằng 10");
  // }

  // bài 1:
  // var a = int.parse(stdin.readLineSync().toString());
  // var b = int.parse(stdin.readLineSync().toString());

  // if (a == b) {
  //   print('a bằng b');
  // } else {
  //   print('a không bằng b');
  // }

  // bài 2:
  // var x = int.parse(stdin.readLineSync().toString()); // 15
  // var y = int.parse(stdin.readLineSync().toString()); // 15

  // if (x > y) {
  //   print('x lớn hơn y');
  // } else {
  //   if (x == y) {
  //     print('x bằng y');
  //   } else {
  //     print('x bé hơn y');
  //   }
  // }

  // bài 3:
  // var x = int.parse(stdin.readLineSync().toString()); // 15
  // var y = int.parse(stdin.readLineSync().toString()); // 15

  // if (x >= y) {
  //   print('x lớn hơn hoặc bằng y');
  // } else {
  //   print('x bé hơn y');
  // }

  // bài 4: Cho nhập 1 số kiểm tra số đó là số chẵn hay lẻ.
  // 2 4 6 8 10 .... chia hết cho 2
  // 1 3 5 7 ... chia ko hết cho 2
  // var num = int.parse(stdin.readLineSync().toString());
  // if ((num % 2) == 0) {
  //   print("số chẵn");
  // } else {
  //   print("số lẻ");
  // }

  // var thu = int.parse(stdin.readLineSync().toString());
  // if (thu == 2) {
  //   print("hôm nay là thứ hai");
  // }
  // if (thu == 3) {
  //   print("hôm nay là thứ ba");
  // }
  // if (thu == 4) {
  //   print("hôm nay là thứ tư");
  // }
  // if (thu == 5) {
  //   print("hôm nay là thứ năm");
  // }
  // if (thu == 6) {
  //   print("hôm nay là thứ sáu");
  // }
  // if (thu == 7) {
  //   print("hôm nay là thứ bảy");
  // }
  // if (thu == 8) {
  //   print("hôm nay là CN");
  // }
  // if (thu > 2 || thu < 8) {
  //   print("hôm nay là CN");
  // }

  // switch (thu) {
  //   case 2:
  //     print("hôm nay là thứ hai");
  //     print("hôm nay là thứ hai lần 2");
  //     break;
  //   case 3:
  //     print("hôm nay là thứ 3");
  //     break;
  //   case 4:
  //     print("hôm nay là thứ 4");
  //     break;
  //   case 5:
  //     print("hôm nay là thứ 5");
  //     break;
  //   case 6:
  //     print("hôm nay là thứ 6");
  //     break;
  //   case 7:
  //     print("hôm nay là thứ 7");
  //     break;
  //   case 8:
  //     print("hôm nay là CN");
  //     break;
  //   default:
  //     print("thứ không hợp lệ");
  // }

  // var num = int.parse(stdin.readLineSync().toString());
  // // TH 1: gán dữ liệu đó cho một biến
  // // TH 2: in dữ liệu đó ra ngoài

  // var ketQua = num > 2 ? 10 : 20;

  // if (num > 2) {
  //   ketQua = 10;
  // } else {
  //   ketQua = 20;
  // }

  // print(num > 2 ? 10 : 20);

  var num = null;
  var a = num ?? 10;
  var b = num != null ? num : 10;
  // 10 == 10.0 => true
  // 10 === 10.0 => false

  // if (num != null) {
  //   // validate => kiểm tra tính hợp lệ
  //   // số điện thoại
  //   // cccd => 12
  //   a = int.parse(num);
  // }
  // a = num != null ? int.parse(num) : 0;

  print(a);
}
