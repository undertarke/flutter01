import 'dart:io';

void main(List<String> args) {
  // generic type
  List<Student> listSinhVien = [];

  Student student = Student();

  var thoatCT = 0;
  while (thoatCT != 4) {
    print("1. Thêm sinh viên");
    print("2. Xem danh sách sinh viên");
    print("3. Tìm sinh viên");
    print("4. Thoát");
    thoatCT = int.parse(stdin.readLineSync().toString());

    switch (thoatCT) {
      case 1:
        {
          Student student = Student();
          print("Nhập id: ");
          var id = int.parse(stdin.readLineSync().toString());

          print("Nhập name: ");
          var name = stdin.readLineSync().toString();

          print("Nhập age: ");
          var age = int.parse(stdin.readLineSync().toString());

          print("Nhập grade: ");
          var grade = stdin.readLineSync().toString();

          student.createInfo(id, name, age, grade);

          listSinhVien.add(student);
          break;
        }

      case 2:
        {
          // print(listSinhVien);
          for (Student sinhVien in listSinhVien) {
            sinhVien.getInfo();
          }
          break;
        }
      case 3:
        print("Nhập id: ");
        var id = int.parse(stdin.readLineSync().toString());

        List<Student> lstStudent =
            listSinhVien.where((sinhVien) => sinhVien.id == id).toList();

        // listSinhVien.map((item) => {
        //   item.getInfo()
        //   });

        // student.getInfo();

        // Student? student = null;
        // var ketQua = null;

        // // xử lý tìm kiếm
        // for (Student sinhVien in listSinhVien) {
        //   // các dự liệu đầu ra hoặc thông báo => không nên trả ở trọng vòng lặp (for)
        //   if (sinhVien.id == id) {
        //     student = sinhVien;
        //     ketQua =
        //         "Name: ${sinhVien.name}, Age: ${sinhVien.age}, grade: ${sinhVien.grade}";
        //     break;
        //   }
        // }

        // if (student == null) {
        //   print("không tìm thấy học viên");
        // } else {
        //   student.getInfo();
        //   // student.getInfo();
        // }

        break;
      default:
    }
  }
}

class Student {
  var id;
  var name;
  var age;
  var grade;

  // Student(this.id, this.name, this.age, this.grade);

  // setter
  void createInfo(id, name, age, grade) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.grade = grade;
  }

// getter
  dynamic getter() {
    return {'name': this.name, 'age': this.age, 'grade': this.grade};
  }

  void getInfo() {
    print("Name: ${this.name}, Age: ${this.age}, grade: ${this.grade}");
  }
}
