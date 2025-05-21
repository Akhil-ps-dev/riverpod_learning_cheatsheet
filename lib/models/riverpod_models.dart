import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  int counter = 0;
  RiverpodModel({required this.counter});

  void incremntNumber() {
    counter++;
    notifyListeners();
  }

  void decrementNumber() {
    counter++;
    notifyListeners();
  }
}
