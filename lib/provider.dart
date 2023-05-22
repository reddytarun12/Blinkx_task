import 'package:flutter/material.dart';

class BlinkxProvider extends ChangeNotifier {
  bool isDarkModeOn = false;

  void updateTheme(bool value) {
    isDarkModeOn = value;
    notifyListeners();
  }
}
