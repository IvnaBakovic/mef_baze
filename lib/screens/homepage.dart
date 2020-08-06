import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mef_baze/screens/initial_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mef_baze/screens/subjects1.dart';
import 'package:mef_baze/screens/subjects2.dart';

import 'package:modal_progress_hud/modal_progress_hud.dart';

class HomepageScreen extends StatefulWidget {
  static const String id = 'homepage_screen';
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
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
//      appBar: AppBar(
//        title: Text('Dashboard'),
//        centerTitle: true,
//      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: StreamBuilder(
                stream: Firestore.instance.collection('images').snapshots(),
                builder: (context, snapshot) {
                  return ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        DocumentSnapshot images =
                            snapshot.data.documents[index];

                        return GestureDetector(
                          //onTap: navigation(index + 1),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                images['img'],
                              ),
                              Text(
                                '${index + 1}. godina',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              )
                            ],
                          ),
                        );
                      });
                },
              ),

//                child: ListView.builder(
//                  itemBuilder: (context, index) {
//                    return GestureDetector(
//                      onTap: () {
//                        Navigator.pushNamed(context, SubjectsScreen1.id);
//                      },
//                      child: Stack(
//                        children: <Widget>[
//                          Image.memory(
//                            imageFile[index],
//                          ),
//                          Padding(
//                            padding: EdgeInsets.only(left: 8.0),
//                            child: Text(
//                              '${index + 1}. godina',
//                              style: TextStyle(
//                                  fontSize: 30,
//                                  color: Colors.grey,
//                                  fontWeight: FontWeight.bold),
//                            ),
//                          ),
//                        ],
//                      ),
//                    );
//                  },
//                  itemCount: 6,
//                ),
            ),
            Text('You are now logged in'),
            SizedBox(
              height: 15.0,
            ),
            OutlineButton(
                borderSide: BorderSide(
                    color: Colors.red, style: BorderStyle.solid, width: 3.0),
                child: Text('Logout'),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, InitialScreen.id);
                })
          ],
        ),
      ),
    );
  }
}
