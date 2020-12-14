import 'package:flutter/material.dart';
import 'package:flutterinfrench/screens/article_screen.dart';
import 'package:flutterinfrench/screens/contact_screen.dart';
import 'package:flutterinfrench/screens/home_screen.dart';
import 'package:flutterinfrench/screens/themes/main_theme.dart';

void main() => runApp(FlutterInFrenchApp());

class FlutterInFrenchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter in French",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/contact': (context) => ContactScreen(),
        'article': (context) => ArcticleScreen()
      },
      theme: MainTheme.build(),
    );
  }
}
