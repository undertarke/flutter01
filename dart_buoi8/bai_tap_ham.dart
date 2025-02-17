import 'dart:io';

void main(List<String> args) {
  // true, false

  // print(" ... ")

  var n = int.parse(stdin.readLineSync().toString());

  if (isPrime(n)) {
    // => if( isPrimt(n) == true )

    print("$n là số nguyên tố"); // true
  } else {
    print("$n không phải là SNT"); //false
  }

  var thoatCT = 0;
  while (thoatCT != 5) {
    print("1. Thêm sinh viên");
    print("2. Xem danh sách sinh viên");
    print("3. Thêm sinh viên");
    print("4. Tìm sinh viên");
    print("5. Thoát");
    thoatCT = int.parse(stdin.readLineSync().toString());
  }
}

bool isPrime(int n) {
  // demChia = 2, demChia > 3 => false

  // n % 1 == 0 && n % n == 0

  // 1,2,3 ... n

  // 8 => 8 4 2 1
  // 7 => 7 1
  // 8 => 8 7 6 5 4 3 2 1
  var dem = 0;
  for (var i = 1; i <= n; i++) {
    if (n % i == 0) {
      dem++;
    }
  }

  if (dem > 2) {
    return false;
  } else {
    return true;
  }
}
