import 'package:flutter/material.dart';

enum ThemeType { dark, light }

class ThemeModel extends ChangeNotifier {
  ThemeType _themeType = ThemeType.dark;
  ThemeType get themeType => _themeType;

  void changeThemeType() {
    if (_themeType == ThemeType.dark) {
      _themeType = ThemeType.light;
    } else {
      _themeType = ThemeType.dark;
    }
    notifyListeners();
  }

  void setThemeType(ThemeType themeType) {
    _themeType = themeType;
    notifyListeners();
  }
}
