import 'package:flutter/material.dart';

class AddQuestionScreen extends StatefulWidget {
  static const String id = 'add_question';
  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('add question')),
    );
  }
}
