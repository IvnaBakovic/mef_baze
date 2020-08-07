import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:mef_baze/screens/subjects1.dart';
import 'package:mef_baze/screens/subjects2.dart';
import 'package:mef_baze/screens/subjects3.dart';
import 'package:mef_baze/screens/subjects4.dart';
import 'package:mef_baze/screens/subjects5.dart';
import 'package:mef_baze/screens/subjects6.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'initial_screen.dart';

class YearSelection extends StatefulWidget {
  static const String id = 'results';
  @override
  _YearSelectionState createState() => _YearSelectionState();
}

class _YearSelectionState extends State<YearSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Ionicons.md_log_out,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, InitialScreen.id);
                })
          ],
          leading: Container(),
          backgroundColor: Colors.grey[700],
          title: Text(
            'Odaberi godinu za štrebanje',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    StackPhotos(
                      stackText: '1. godina',
                      assetImagePath: 'images/god_1.png',
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen1.id);
                      },
                    ),
                    StackPhotos(
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen2.id);
                      },
                      stackText: '2. godina',
                      assetImagePath: 'images/god_2.png',
                    ),
                    StackPhotos(
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen3.id);
                      },
                      stackText: '3. godina',
                      assetImagePath: 'images/god_3.png',
                    ),
                    StackPhotos(
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen4.id);
                      },
                      stackText: '4. godina',
                      assetImagePath: 'images/god_4.png',
                    ),
                    StackPhotos(
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen5.id);
                      },
                      stackText: '5. godina',
                      assetImagePath: 'images/god_5.png',
                    ),
                    StackPhotos(
                      onTap: () {
                        Navigator.pushNamed(context, SubjectsScreen6.id);
                      },
                      stackText: '6. godina',
                      assetImagePath: 'images/god_6.png',
                    ),
                  ],
                ),

//
              ),
//            Text('You are now logged in'),
//            SizedBox(
//              height: 15.0,
//            ),
//            OutlineButton(
//                borderSide: BorderSide(
//                    color: Colors.red, style: BorderStyle.solid, width: 3.0),
//                child: Text('Logout'),
//                onPressed: () {
//                  FirebaseAuth.instance.signOut();
//                  Navigator.pushReplacementNamed(context, InitialScreen.id);
//                })
            ],
          ),
        ));
  }
}
