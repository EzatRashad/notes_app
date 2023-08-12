import 'package:flutter/material.dart';
import '../utiles/utiles.dart';

class AppColors {
  static const Color primary = Color(0xff2E3F47);
  static Color get secondary =>
      Utils.appMode == ThemeMode.light ? Color(0xffFEF3E9) : Colors.white;
  static const Color borderMainColor = Color(0xffDEDEDE);
  static const Color backgroundMainColor = Color(0xffF6F6F6);
  static const Color greenSelect = Color(0xffDAF1DE);
  static Color get black =>
      Utils.appMode == ThemeMode.light ? Colors.black : Colors.white;
  static Color get backG =>
      Utils.appMode == ThemeMode.light ? Color(0xffF0F0F0) : Colors.black12;
  static Color get white =>
      Utils.appMode == ThemeMode.light ? Colors.white : Colors.black;
  static Color get grey =>
      Utils.appMode == ThemeMode.light ? Color(0xff7A7A7A) : Colors.black;
  // ignore: non_constant_identifier_names
  static Color get search_Color =>
      Utils.appMode == ThemeMode.light ? Color(0xffE2E0E0) : Colors.white54;
  static Color get lightGreybackgound =>
      Utils.appMode == ThemeMode.light ? Color(0xffF9F9F9) : Colors.black;
  static Color get darkGrey =>
      Utils.appMode == ThemeMode.light ? Color(0xff707070) : Colors.black;
  static Color get greyText =>
      Utils.appMode == ThemeMode.light ? Color(0xff9D9D9D) : Colors.black;
  static Color get buttonColor =>
      Utils.appMode == ThemeMode.light ? Color(0xff7BB3FF) : Colors.black;
  static Color get red =>
      Utils.appMode == ThemeMode.light ? Color(0xffFF0000) : Colors.black;
  static Color get yellow =>
      Utils.appMode == ThemeMode.light ? Color(0xffFFCC00) : Colors.black;
  static Color get green =>
      Utils.appMode == ThemeMode.light ? Color(0xff06C88A) : Colors.black;
  static Color get bottomNavBarColor =>
      Utils.appMode == ThemeMode.light ? Color(0xffF1F1F1) : Colors.black;
  static Color get greenDone =>
      Utils.appMode == ThemeMode.light ? Color(0xff0AE39D) : Colors.black;
}
