import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 20,
    ),
  );
  static TextTheme darkTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 30,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 20,
    ),
  );
}
