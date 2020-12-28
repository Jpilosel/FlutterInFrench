import 'package:flutter/material.dart';
import 'package:flutterinfrench/screens/components/appbar_component.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent.build(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buidContact(icon: Icons.mail, text: 'mail@email.com', space: 20.0),
          _buidContact(icon: Icons.web, text: 'siteweb.com', space: 60.0),
          _buidContact(
              icon: Icons.video_library, text: 'youtube.com', space: 60.0)
        ],
      ),
    );
  }

  Widget _buidContact({
    @required IconData icon,
    @required String text,
    double space = 20.0,
  }) {
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
          Text(
            text,
            style: TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
