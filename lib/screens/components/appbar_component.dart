import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarComponent {
  static PreferredSizeWidget build() {
    return AppBar(
      title: Text(
        'Flutter IN French',
      ),
      centerTitle: true,
    );
  }
}
