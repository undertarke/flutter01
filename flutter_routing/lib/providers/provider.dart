import 'package:flutter/material.dart';

class DemSoModel extends ChangeNotifier {
  var count = 0;

  void tangSo() {
    count++;

    // rebuild
    notifyListeners();
  }
}
