import 'package:flutter/material.dart';

class RiverpodHardLevelModel extends ChangeNotifier {
  int counter = 0;
  RiverpodHardLevelModel({required this.counter});

  void incremntNumber() {
    counter++;
    notifyListeners();
  }

  void decrementNumber() {
    counter--;

    notifyListeners();
  }
}
