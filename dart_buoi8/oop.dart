void main(List<String> args) {
  //đối tượng
  var doiTuong = {
    'ten': "Tony",
    'dienThoai': '191',
    'tuoi': 21,
    'giaDinh': true
  };
  doiTuong['ten'];

  ConNguoi conNguoi = ConNguoi(
      "Khải", "911", 1999, true); // khai báo đối tượng từ lớp đối tượng
  // conNguoi.ten = "Khải";
  // conNguoi.dienThoai = "911";
  // conNguoi.tuoi = 21;

  conNguoi.inThongTin();
  print(conNguoi.tinhTuoi());
}

int tinhTong(int a, int b) {
  return a + b;
}

void inDanhSach() {
  print("danh sách demo ....");
}

// khởi tạo lớp đối tượng
// cách đặt tên viết hoa chữ cái đầu tiên
// Tạo ra lớp đối tượng => bao quát tất cả nhiều đối tượng khác
class ConNguoi {
  // thuộc tính (properties)
  var ten;
  var dienThoai;
  var namSinh;
  var giaDinh;

  // hàm khởi tạo => giúp gán giá trị cho thuộc tính khi khởi tạo đối tượng mới;
  ConNguoi(this.ten, this.dienThoai, this.namSinh, this.giaDinh);

// phương thức (method)
  int tinhTuoi() {
    return 2025 - int.parse(namSinh.toString());
  }

  void inThongTin() {
    print("Họ tên: $ten, điện thoại: $dienThoai, năm sinh: $namSinh");
  }
}

// OOP: 4 tính chất