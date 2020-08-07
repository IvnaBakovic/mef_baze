import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mef_baze/screens/results_screen.dart';
import 'package:mef_baze/services/subject_card.dart';

class SubjectsScreen1 extends StatefulWidget {
  static const String id = 'subjects_screen1';
  @override
  _SubjectsScreen1State createState() => _SubjectsScreen1State();
}

class _SubjectsScreen1State extends State<SubjectsScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 5.0,
          // TODO: Build a grid of cards (102)
          children: <Widget>[
            SubjectsCard(
              subjectsTitle: 'Anatomija',
              numberOfQuestions: '1500',
            ),
            SubjectsCard(
              subjectsTitle: 'Kemija',
              numberOfQuestions: '1500',
            ),
            SubjectsCard(
              subjectsTitle: 'Fizika',
              numberOfQuestions: '1500',
            ),
            SubjectsCard(
              subjectsTitle: 'Fiziologija',
              numberOfQuestions: '1500',
            ),
            SubjectsCard(
              subjectsTitle: 'Radiologija',
              numberOfQuestions: '1500',
            ),
            SubjectsCard(
              subjectsTitle: 'Mikra',
              numberOfQuestions: '1500',
            ),
          ],
        ),
      ),
    );
  }
}
