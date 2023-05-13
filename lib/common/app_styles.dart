import 'package:first_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class FontFamily {
  static final sen = 'Sen';
}

class AppStyle {
  static TextStyle h1 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 109.66, color: Colors.white);
  static TextStyle h2 = TextStyle(
      fontFamily: FontFamily.sen,
      fontSize: 67.77,
      color: AppColor.titleColor,
      fontWeight: FontWeight.w700);
  static TextStyle h3 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 41.89, color: Colors.white);
  static TextStyle h4 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 25.89, color: Colors.white);
  static TextStyle h5 =
      TextStyle(fontFamily: FontFamily.sen, fontSize: 16, color: Colors.white);
  static TextStyle h6 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 9.89, color: Colors.white);
}