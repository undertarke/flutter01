import 'dart:io';

void main(List<String> args) {
  var listSinhVien = [];
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
          print(listSinhVien);
          for (var sinhVien in listSinhVien) {
            print(sinhVien);
          }
          break;
        }
      case 3:
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
    id = id;
    name = name;
    age = age;
    grade = grade;
  }

// getter
  void getInfo() {
    print("Name: $name, Age: $age, grade: $grade");
  }
}
