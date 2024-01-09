import 'dart:math';

import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  List<int> clickedIndexes = [];
  int? random;
  int? enteredNumber;

  ClickedIndexes(int index) {
    clickedIndexes.add(index);
    notifyListeners();
  }

Number(int number) {
    enteredNumber = number;
    notifyListeners();
  }

  void setRandom() {
    if (enteredNumber != null && enteredNumber! > 0) {
      do {
        random = Random().nextInt(enteredNumber!);
      } while (clickedIndexes.contains(random));
    }

    notifyListeners();
  }
}