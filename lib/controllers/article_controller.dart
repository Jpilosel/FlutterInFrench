import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ArticleController extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future getArticles() async {
    QuerySnapshot dataFirestore = await _firestore
        .collection("articles")
        .orderBy("date", descending: true)
        .get();
  }
}
