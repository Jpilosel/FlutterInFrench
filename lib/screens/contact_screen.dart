import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterinfrench/screens/components/appbar_component.dart';
import '../controllers/article_controller.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent.build(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BuildContact(
            icon: Icons.mail,
            text: 'mail@email.com',
            space: 20.0,
            url: 'mailto:mail@mail.com',
          ),
          BuildContact(
            icon: Icons.web,
            text: 'siteweb.com',
            url: 'http://www.pilosel.fr',
          ),
          BuildContact(
            icon: Icons.video_library,
            text: 'youtube.com',
            url: 'https://youtube.com',
          )
        ],
      ),
    );
  }
}

class BuildContact extends StatelessWidget {
  const BuildContact({
    @required this.icon,
    @required this.text,
    this.space = 60.0,
    @required this.url,
  });

  final IconData icon;
  final String text;
  final String url;
  final double space;

  @override
  Widget build(BuildContext context) {
    final ArticleController _controller =
        Provider.of<ArticleController>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 60.0,
            color: Colors.blue,
          ),
          SizedBox(width: space),
          GestureDetector(
            onTap: () => _controller.launchUrl(url),
            child: Text(
              text,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ],
      ),
    );
  }
}
