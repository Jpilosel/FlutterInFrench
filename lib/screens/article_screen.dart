import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutterinfrench/controllers/article_controller.dart';
import 'package:flutterinfrench/models/article_model.dart';
import 'package:flutterinfrench/screens/components/appbar_component.dart';
import 'package:provider/provider.dart';

class ArcticleScreen extends StatelessWidget {
  final ArticleModel articleData;
  ArcticleScreen(this.articleData);

  @override
  Widget build(BuildContext context) {
    final ArticleController _controller =
        Provider.of<ArticleController>(context);
    final _calcTitleHeight = MediaQuery.of(context).size.height * 0.065;
    return Scaffold(
      appBar: AppbarComponent.build(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
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
          Html(
            data: articleData.description,
            onLinkTap: (url) => _controller.launchUrl(url),
          ),
          // Text(
          //   articleData.description,
          //   style: TextStyle(fontSize: 20.0),
          // ),
        ],
      ),
    );
  }
}
