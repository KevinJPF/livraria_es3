import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Global {
  // Global Variables
  static bool isDarkTheme = true;
  static ThemeColors themeColors = ThemeColors();
  static ValueNotifier<bool> updatePage = ValueNotifier(false);

  // Global Functions
  static void toggleTheme({bool toggle = true}) {
    if (toggle) {
      isDarkTheme = !isDarkTheme;
    }
    themeColors = ThemeColors();
  }

  static clearGlobal() {}
}

Color hexToColor(String code, {double opacity = 1.0}) {
  return Color(int.parse(code.substring(1, 7), radix: 16) +
      (opacity * 255).toInt() * 0x1000000);
}

double setHeight(double height) {
  return ScreenUtil().setHeight(height);
}

double setWidth(double width) {
  return ScreenUtil().setWidth(width);
}

double setFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}

class ThemeColors {
  Color gray1 = _calculateColor('#1B1B1B', '#A4A4A4');
  Color gray2 = _calculateColor('#252525', '#6E6E6E');
  Color gray3 = _calculateColor('#434343', '#434343');
  Color gray4 = _calculateColor('#6E6E6E', '#252525');
  Color gray5 = _calculateColor('#A4A4A4', '#1B1B1B');
  Color beige = _calculateColor('#E1EDC9', '#2D2010');
}

Color _calculateColor(String hexDark, String hexLight, {double opacity = 1.0}) {
  return Global.isDarkTheme
      ? hexToColor(hexDark, opacity: opacity)
      : hexToColor(hexLight, opacity: opacity);
}
