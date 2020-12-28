import 'package:flutter/material.dart';
import 'package:flutterinfrench/models/article_model.dart';
import 'package:provider/provider.dart';

import '../controllers/article_controller.dart';
import 'package:flutterinfrench/screens/components/appbar_component.dart';
import 'package:flutterinfrench/screens/components/menu_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<ArticleController>(context);
    return Scaffold(
      appBar: AppbarComponent.build(),
      drawer: MenuComponent(),
      body: FutureBuilder(
        future: _controller.getArticles(),
        builder: (context, AsyncSnapshot<List<ArticleModel>> snapshot) {
          if (!snapshot.hasData) {
            Center(child: CircularProgressIndicator());
          }
          if (snapshot.data.isEmpty) {
            return Container(
              alignment: Alignment.center,
              child: Text("Il n'y a pas d'article pour le moment."),
            );
          }
          List<ArticleModel> _articleData = snapshot.data;
          return ListView.builder(
              itemCount: _articleData.length,
              itemBuilder: (context, articleNumber) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    right: 10.0,
                    left: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Text(
                        _articleData[articleNumber].date,
                        style: TextStyle(fontSize: 16.0),
                      )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          child: Text(
                        _articleData[articleNumber].description,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(child: Text(_articleData[articleNumber].title)),
                      Container(
                          child: Image.network(
                              _articleData[articleNumber].imageUrl))
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
