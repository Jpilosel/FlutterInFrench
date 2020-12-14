import 'package:flutter/material.dart';

class MenuComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(child: Text('Flutter in French')),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Text('Accueil'),
                Text('En savoir plus'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
