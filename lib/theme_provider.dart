import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.dark();

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == ThemeData.dark()) {
      themeData = ThemeData.light(useMaterial3: true);
    } else {
      themeData = ThemeData.dark(useMaterial3: true);
    }
  }
}
