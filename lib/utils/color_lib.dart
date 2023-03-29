import 'package:flutter/material.dart';

class ColorLib {
  static final primaryColor = '#59B58D'.toColor();
  static final lightBlack = '#455154'.toColor();
  static final darkBlack = '#000000'.toColor();
  static final darkGray = '#CDCDCD'.toColor();
  static final lightGray = '#F4F6F6'.toColor();
  static final white = '#FFFFFF'.toColor();
  static const transparent = Colors.transparent;
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
