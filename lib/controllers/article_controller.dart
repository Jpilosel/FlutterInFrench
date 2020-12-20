import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ArticleController extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  get getArticles =>
      _firestore.collection("articles").orderBy("date", descending: true).get();
}
