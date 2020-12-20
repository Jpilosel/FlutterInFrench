import 'package:flutter/material.dart';

class ArticleModel {
  String title;
  String description;
  String date;
  String imageUrl;

  ArticleModel(
      {@required this.title,
      @required this.description,
      @required this.date,
      @required this.imageUrl});
}
