import 'package:flutter/material.dart';
import 'package:mef_baze/services/statistics_card.dart';
import 'package:mef_baze/services/statistics_card.dart';

class StatisticsScreen extends StatefulWidget {
  static const String id = 'statistics';
  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Expanded(
            child: StatisticsCard(
              cardTitle: 'Statistika',
              numOfDailyExams: '19',
              numOfMonthlyExams: '139',
              numOfPremiumUsers: '57',
              currentlyOnline: '11',
            ),
          ),
        ],
      ),
    );
  }
}
