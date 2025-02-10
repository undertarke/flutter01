void main(List<String> args) {
  // kiểu dự liệu danh sách: mảng (array), danh sách (list),...

  // 1 , 2 , 3
  int num1 = 1;
  var num2 = 2;
  double numb3 = 3;

  // List<int> listNumber = [1,2,3]; // generic type

  //vị trí = index  0  1  2  3
  var listNumber = [3, 1, 2, 10, 3]; // generic type

  // duyệt dữ liệu => lấy hết tất cả dự liệu

  // lấy dữ liệu
  // print(listNumber[3]); // truyền vào vị trí

  // thêm dự liệu
  listNumber.add(101);

  // chỉnh sửa dữ liệu, xóa dữ liệu
  listNumber[1] = 900;
  listNumber.remove(900);

  // print(listNumber);

  Set<int> setNumber = {
    1,
    4,
    6,
    7,
    2
  }; // tương tự như List nhưng loại các giá trị trùng
  setNumber.add(4);
  setNumber.add(5);
  setNumber.add(4);
  // print(listNumber.toSet().toList());

  // Map<>: Đối tượng (object), json
  // con người => họ tên, email, điện thoại, ngày sinh
  var hoTen = "HIEUTHUHAI";
  var email = "hieu@gmail.com";
  var dienThoai = "09080706";
  var tuoi = 22;

  // đối tượng => thuộc tính: dữ liệu => key:value
  var conNguoi = {
    'hoTen': "HIEUTHUHAI",
    'email': "hieu@gmail.com",
    'dienThoai': "09080706",
    'tuoi': 22,
    'honNhan': true
  };

  print(conNguoi['honNhan']);

  // Map<String, dynamic> listConNguoi = {
  //   'hoTen': "HIEUTHUHAI",
  //   'email': "hieu@gmail.com",
  //   'dienThoai': "09080706",
  //   'tuoi': 22,
  //   'honNhan': true
  // };

  dynamic demo = 1.5;
  demo = "1";
  demo = true;

  // luôn luôn có mã cho từng đối tượng
  var listConNguoi = [
    {
      'ma': 1,
      'hoTen': "HIEUTHUHAI",
      'email': "hieu@gmail.com",
      'dienThoai': "09080706",
      'tuoi': 22,
      'honNhan': true
    },
    {
      'ma': 2,
      'hoTen': "HIEUTHUBA",
      'email': "hieu@gmail.com",
      'dienThoai': "09080706",
      'tuoi': 22,
      'honNhan': true
    },
    {
      'ma': 3,
      'hoTen': "HIEUTHUMOT",
      'email': "hieu@gmail.com",
      'dienThoai': "09080706",
      'tuoi': 22,
      'honNhan': true
    },
    {
      'ma': 4,
      'hoTen': "HIEUTHUBON",
      'email': "hieu@gmail.com",
      'dienThoai': "09080706",
      'tuoi': 22,
      'honNhan': true
    }
  ];

  int? rong = null; // chấp nhận gán null cho biến

  // const numberOne; // compile
  // numberOne = 456;

  // final int numberTwo; // runtime
  // numberTwo = 456;

  late int numberOne;
}
