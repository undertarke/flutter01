import 'dart:io';
import 'dart:math';
// lập trình giao diện dòng lệnh => CLI (comment line interface)
// code online => https://dartpad.dev/
// lệnh chạy file dart => dart [tên file].dart

// khởi tạo một hàm main() => gõ main

void main() {
  // output => lệnh xuất
  // Kết thúc câu luôn luôn bằng chấm phẩy ";"

  // biến: dùng để lưu trữ tạm thời dữ liệu

  // dữ liệu chuỗi (string), dữ liệu số (number)

  // nhập vô một dữ liệu, input
  // in ra dữ liệu

  // var inputValue = stdin.readLineSync().toString();

  // print("Dữ liệu nhập được là: " + inputValue); // output

// var , const => cho phép gán bất kỳ kiểu dữ liệu nào
// const => tính bất biến, không cho gán lại dữ liệu HẰNG SỐ
  const VARDEMO = 'hello';

  // Diện tích ■ : DxR
  // chu vi  ■: 2*(D+R)
  var number; // null => rỗng

  var chieuDai = 2;
  var chieuRong = 4;
  var dienTich = chieuRong * chieuDai;

  var chuVi = 2 * (chieuRong + chieuDai);

  var a = 1;
  var b = 4;
  var bac1 = -b / a;
  var bac2 = sqrt(-b / a);

  // a = a + b;
  // a += b;
  // print(26 / 3);
  // print("Nguyên: ");x
  // print(26 ~/ 3);
  // print("Dư: ");
  // print(26 % 3);
  print(a++);
  print(a);
  // print(a++);

  var dung = true;
  var sai = false;
}
