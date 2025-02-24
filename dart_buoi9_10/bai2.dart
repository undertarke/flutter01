import 'dart:io';

void main(List<String> args) {
  var thoatCT = 0;

  BankAccount bankAccount = BankAccount(123, "Tony", 5);
  while (thoatCT != 4) {
    print("1. Gửi tiền");
    print("2. Rút tiền");
    print("3. Kiểm tra tài khoản");
    print("4. Thoát");
    thoatCT = int.parse(stdin.readLineSync().toString());

    switch (thoatCT) {
      case 1:
        var money = int.parse(stdin.readLineSync().toString());
        bankAccount.deposit(money);
        break;
      case 2:
        var money = int.parse(stdin.readLineSync().toString());
        var account = bankAccount.withdraw(money);

        if (account == null)
          print("Name: ${account['name']}, balance: ${account['balance']}");
        break;

      case 3:
        bankAccount.checkBalance();
        break;
      default:
    }
  }
}

class BankAccount {
  var accountNumber;
  var ownerName;
  var balance;

  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void deposit(money) {
    this.balance += money;
  }

  dynamic withdraw(money) {
    var temp = this.balance - money;

    if (temp < 5) {
      print("Số dư không đủ");
      return null;
    }

    this.balance -= money;

    return {'name': this.ownerName, 'balance': this.balance};
  }

  void checkBalance() {
    print("Name: ${this.ownerName}, balance: ${this.balance}");
  }
}
