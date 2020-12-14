import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static ThemeData build() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.blue[800],
        textTheme: TextTheme(
          headline6: GoogleFonts.robotoSlab(fontSize: 24.0),
        ),
      ),
    );
  }
}
