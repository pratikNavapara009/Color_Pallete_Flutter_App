import 'package:color/models/thememodel.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel themeModel = ThemeModel(isDark: false);

  void changeTheme() {
    themeModel.isDark = !themeModel.isDark;
    notifyListeners();
  }
}
