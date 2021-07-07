import 'package:android_starter_web/model/enum/theme_type_enum.dart';
import 'package:android_starter_web/providers/light_theme_provider.dart';
import 'package:android_starter_web/providers/style_provider.dart';
import 'package:flutter/material.dart';

class MainScreenState with ChangeNotifier {
  ThemeType _themeType = ThemeType.light;
  StyleProvider _styleProvider = LightThemeProvider();
  
  Color get mainBackgroundColor => _styleProvider.getPageBackground();
  Color get mainFontColor => _styleProvider.getMainFontColor();
  Color get selectedFontColor => _styleProvider.getSelectedFontColor();
  ThemeType get themeType => _themeType;

  
}