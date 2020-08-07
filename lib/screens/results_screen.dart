import 'package:flutter/material.dart';
import 'package:mef_baze/services/results_card.dart';

class ResultsScreen extends StatefulWidget {
  static const String id = 'results';
  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
          ResultsCard(
            cardTitle: 'Rezultati',
            dateOfPlaying: '7.8.2020.',
            subjects: 'Anatomija',
          ),
        ],
      ),
    );
  }
}
