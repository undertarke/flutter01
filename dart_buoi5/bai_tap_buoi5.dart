import 'dart:io';

void main() {
  print("Nhập họ tên: ");
  var hoTen = stdin.readLineSync().toString();

  print("Nhập điểm toán: ");
  var diemToan = double.parse(stdin.readLineSync().toString());

  print("Nhập điểm lý: ");
  var diemLy = double.parse(stdin.readLineSync().toString());

  print("Nhập điểm hóa: ");
  var diemHoa = double.parse(stdin.readLineSync().toString());

  var diemTB = (diemToan + diemHoa + diemLy) / 3;

  /*
ĐTB >= 8.0: Giỏi.
ĐTB >= 6.5 và < 8.0: Khá.
ĐTB >= 5.0 và < 6.5: Trung bình.
ĐTB < 5.0: Yếu.
điểm hóa, điểm toán, điểm lý < 4: rớt môn
  */
  if (diemToan < 4 || diemHoa < 4 || diemLy < 4) {
    print('trượt môn');
    return; // dừng lệnh tại đây không chạy tiếp các lệnh dưới
  }

  if (diemTB >= 8) {
    // print('Sinh viên có tên: ' + hoTen + ', đạt loại giỏi, điểm trung bình: ' + diemTB.toString());
    print(
        'Sinh viên có tên: $hoTen , đạt loại giỏi, điểm trung bình: ${diemTB.toString()} '); // template string
  }

  if (diemTB >= 6.5 && diemTB < 8) {
    print(
        'Sinh viên có tên: $hoTen , đạt loại khá, điểm trung bình: ${diemTB.toString()} '); // template string
  }

  if (diemTB >= 5 && diemTB < 6.5) {
    print(
        'Sinh viên có tên: $hoTen , đạt loại trung bình, điểm trung bình: ${diemTB.toString()} '); // template string
  }

  if (diemTB < 5) {
    print(
        'Sinh viên có tên: $hoTen , đạt loại Yếu, điểm trung bình: ${diemTB.toString()} '); // template string
  }
}
