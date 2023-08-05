import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edu_career/lib/src/utils/Theme/widget_themes/text_theme.dart';

class TAppTheme {
  //this will private the class TAppTheme
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTheme,
  );
}
