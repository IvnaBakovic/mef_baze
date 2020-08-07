import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mef_baze/screens/add_question.dart';
import 'package:mef_baze/screens/initial_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mef_baze/screens/results_screen.dart';
import 'package:mef_baze/screens/statistics_screen.dart';
import 'year_selection.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class HomepageScreen extends StatefulWidget {
  static const String id = 'homepage_screen';
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _currentIndex = 0;
  final tabs = [
    YearSelection(),
    ResultsScreen(),
    StatisticsScreen(),
    AddQuestionScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

//  navigation(int index) {
//    String route = 'subjects_screen$index';
//    Navigator.pushNamed(context, route);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Ionicons.md_home),
              title: Text('Odabir godine'),
              backgroundColor: Colors.grey[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.md_trophy),
              title: Text('Rezultati'),
              backgroundColor: Colors.grey[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.ios_stats),
              title: Text('Statistika'),
              backgroundColor: Colors.grey[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Dodaj pitanje '),
              backgroundColor: Colors.grey[700],
            ),
          ]),

      body: tabs[_currentIndex],

//
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
//      ],
//      ),
    );
  }
}

class StackPhotos extends StatelessWidget {
  final String stackText;
  final String assetImagePath;
  final Function onTap;

  StackPhotos({this.stackText, this.assetImagePath, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(assetImagePath),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              stackText,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
