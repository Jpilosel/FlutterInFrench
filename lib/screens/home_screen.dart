import 'package:flutter/material.dart';

import 'package:flutterinfrench/screens/components/appbar_component.dart';
import 'package:flutterinfrench/screens/components/menu_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent.build(),
      drawer: MenuComponent(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: Text('01-12-2020 15:50')),
            Container(child: Text('Titre')),
            Container(
              child: Image.asset('assets/logoFlutter.png'),
            )
          ],
        ),
      ),
    );
  }
}
