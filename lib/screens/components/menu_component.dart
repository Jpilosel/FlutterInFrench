import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/logoFlutter.png'),
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
                    title: Text('En savoir plus',
                        style: GoogleFonts.robotoSlab(fontSize: 22.0))),
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
