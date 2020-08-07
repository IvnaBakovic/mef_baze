import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mef_baze/screens/results_screen.dart';

class ResultsCard extends StatelessWidget {
  final String cardTitle;
  final String dateOfPlaying;
  final String subjects;

  ResultsCard(
      {@required this.cardTitle,
      @required this.dateOfPlaying,
      @required this.subjects});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 14.0),
                child: Icon(
                  Ionicons.md_trophy,
                  color: Colors.yellow[600],
                  size: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 7.0,
                  left: 8.0,
                ),
                child: Text(
                  cardTitle,
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 65.0),
            child: Text(
              'Datum rješavanja: $dateOfPlaying',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 65.0),
            child: Text(
              'Predmet: $subjects',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.0, bottom: 20.0),
            child: Text(
              '62/100 = 62%',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
