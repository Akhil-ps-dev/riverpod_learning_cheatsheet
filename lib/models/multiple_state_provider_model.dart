import 'package:flutter/material.dart';

class AppState {
  final double slider;
  final bool showPassword;

  AppState({required this.slider, required this.showPassword});

  AppState copyWith({double? slider, bool? showPassowrd}) {
    return AppState(
      slider: slider ?? this.slider,
      showPassword: showPassowrd ?? this.showPassword,
    );
  }
}
