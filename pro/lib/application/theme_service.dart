import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool sDarkModeOn = false;

  void toggleThem() {
    sDarkModeOn = !sDarkModeOn;
    notifyListeners();
  }
}
