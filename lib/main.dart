import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterinfrench/controllers/article_controller.dart';
import 'package:provider/provider.dart';

import 'package:flutterinfrench/screens/article_screen.dart';
import 'package:flutterinfrench/screens/contact_screen.dart';
import 'package:flutterinfrench/screens/home_screen.dart';
import 'package:flutterinfrench/screens/themes/main_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlutterInFrenchApp());
}

class FlutterInFrenchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/logoFlutter.png'), context);
    return ChangeNotifierProvider(
      lazy: false,
      create: (context) => ArticleController(),
      child: MaterialApp(
        title: "Flutter in French",
        initialRoute: '/',
        onGenerateRoute: (route) {
          switch (route.name) {
            case '/article':
              return MaterialPageRoute(
                  builder: (context) => ArcticleScreen(route.arguments));
              break;
            default:
              return MaterialPageRoute(builder: (context) => HomeScreen());
              break;
          }
        },
        routes: {
          '/': (context) => HomeScreen(),
          '/contact': (context) => ContactScreen(),
        },
        theme: MainTheme.build(),
      ),
    );
  }
}
