import 'package:flutter/material.dart';

class RiverpodSwitch extends ChangeNotifier{
  bool switchvalue = false;
  RiverpodSwitch({required this.switchvalue});

  void switchMethod() {
    switchvalue = !switchvalue;
    notifyListeners();
  }
}