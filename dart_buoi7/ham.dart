void main(List<String> args) {
  // demo(); // gọi hàm thực thi
  // var tinhTong = x + y;

  var x = 3;
  var y = 4;
  print(tinhTong(x, y));

  var tinhToan = demo(10, 2) * 3;

  var tinhToan2 = demo(101, 500) / 1;
}

// đệ quy
// tham số => tương ứng với biến
int demo(a, [b = 1]) {
  var tinhTong = a + b;

  return tinhTong;
  // bắt buộc khai báo hàm có kiểu dữ liệu => phụ thuộc giá trị trả;
}

int tinhTong(a, [b = 1]) => a + b;
