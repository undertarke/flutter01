void main(List<String> args) {
  // in số từ 1 -> 100

  // không có điều kiện dừng, điều kiện dừng bị sai => vòng lặp vô tận

  // for
  // ngoặc thứ 1 () =>  khai báo biến chạy ; điều kiện dừng ; gán lại giá trị cho biến mục 1
  // ngoặc thứ 2 {} => chứa lệnh xử lý mong muốn

  for (var number = 1; number <= 100; number++) {
    // khi có câu điều kiện

    // if (number == 50) {
    //   break; // dừng vòng lặp ngay tại vị trí này
    // }
    if (number == 50) {
      continue; // bỏ qua những lệnh phía dưới vòng lặp chạy tiếp vòng tiếp theo
    }

    print(number);
  }

  // do while , while
  var number = 1;

  while (number < 1) {
    print("while:" + number.toString());

    number++;
  }

  do {
    print("do while:" + number.toString());
    number++;
  } while (number < 1);

  // foreach
  var listNumber = [2, 5, 6, 8, 1, 10, 23];

  for (var number in listNumber) {
    // print(number);
  }
  // lenght = 7
  // 0 1 2 3 4 5 6 7
  for (var index = 0; index <= listNumber.length - 1; index++) {
    // print(listNumber[index]);
  }
}
