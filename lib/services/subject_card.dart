import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mef_baze/screens/results_screen.dart';

class SubjectsCard extends StatelessWidget {
  final String subjectsTitle;
  final String numberOfQuestions;

  SubjectsCard({
    @required this.subjectsTitle,
    @required this.numberOfQuestions,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 14.0),
                child: Icon(
                  MaterialCommunityIcons.heart_pulse,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 7.0,
                  left: 8.0,
                ),
                child: Text(
                  subjectsTitle,
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, right: 135.0),
            child: Text(
              'Broj pitanja: $numberOfQuestions',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, ResultsScreen.id);
            },
            child: Text(
              'Simulacija ispita',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          RaisedButton(
            elevation: 7.0,
            onPressed: () {
              Navigator.pushNamed(context, ResultsScreen.id);
            },
            child: Text(
              'Sva pitanja',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
