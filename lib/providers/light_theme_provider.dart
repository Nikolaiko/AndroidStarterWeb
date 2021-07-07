import 'dart:ui';

import 'package:android_starter_web/model/consts/white_style.dart';
import 'package:android_starter_web/providers/style_provider.dart';

class LightThemeProvider extends StyleProvider {
  @override
  Color getMainFontColor() {
    return lightMainTextColor;
  }

  @override
  Color getPageBackground() {
    return lightScreenBackColor;
  }

  @override
  Color getSelectedFontColor() {
    return lightSelectedTextColor;
  }

}