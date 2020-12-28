import 'package:flutter/material.dart';
import 'package:flutterinfrench/models/article_model.dart';
import 'package:flutterinfrench/screens/components/appbar_component.dart';

class ArcticleScreen extends StatelessWidget {
  final ArticleModel articleData;
  ArcticleScreen(this.articleData);

  @override
  Widget build(BuildContext context) {
    final _calcTitleHeight = MediaQuery.of(context).size.height * 0.15;
    return Scaffold(
      appBar: AppbarComponent.build(),
      body: ListView(
        children: <Widget>[
          Container(
            height: _calcTitleHeight,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  articleData.title,
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.network(articleData.imageUrl),
          SizedBox(height: 20.0),
          Text(
            articleData.description,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
