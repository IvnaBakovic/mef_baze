import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class StatisticsCard extends StatelessWidget {
  final String cardTitle;
  final String numOfDailyExams;
  final String numOfMonthlyExams;
  final String numOfPremiumUsers;
  final String currentlyOnline;

  StatisticsCard(
      {@required this.cardTitle,
      @required this.numOfDailyExams,
      @required this.numOfMonthlyExams,
      @required this.numOfPremiumUsers,
      @required this.currentlyOnline});
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
                  Ionicons.md_stats,
                  color: Colors.blue,
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
              'Danas riješenih ispita: $numOfDailyExams',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 65.0),
            child: Text(
              'Riješeni ispiti u zadnjih 30 dana: $numOfMonthlyExams',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 65.0),
            child: Text(
              'Aktivnih premium korisnika: $numOfPremiumUsers',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.0, bottom: 20.0),
            child: Text(
              'Trenutno online: $currentlyOnline ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
