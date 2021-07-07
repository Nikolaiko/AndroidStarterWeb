import 'dart:ui';

import 'package:android_starter_web/model/consts/dark_style.dart';
import 'package:android_starter_web/providers/style_provider.dart';

class BlackThemeProvider extends StyleProvider {
  @override
  Color getMainFontColor() {
    return darkMainTextColor;
  }

  @override
  Color getPageBackground() {
    return darkScreenBackColor;
  }

  @override
  Color getSelectedFontColor() {
    return darkSelectedTextColor;
  }

}