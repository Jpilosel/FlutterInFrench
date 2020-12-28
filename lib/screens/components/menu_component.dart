import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Expanded(child: Image.asset('assets/logoFlutter.png')),
                SizedBox(
                  height: 15.0,
                ),
                Text("IN'French")
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                    title: Text(
                  'Accueil',
                  style: GoogleFonts.robotoSlab(fontSize: 22.0),
                )),
                ListTile(
                  title: Text(
                    'En savoir plus',
                    style: GoogleFonts.robotoSlab(fontSize: 22.0),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/contact'),
                ),
              ],
            ),
          ),
          Container(child: Text('Copyright 2020 - Tous droit réservés')),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
