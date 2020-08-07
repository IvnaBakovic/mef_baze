import 'package:flutter/material.dart';
import 'package:mef_baze/screens/add_question.dart';
import 'package:mef_baze/screens/login_screen.dart';
import 'package:mef_baze/screens/registration_screen.dart';
import 'package:mef_baze/screens/results_screen.dart';
import 'package:mef_baze/screens/statistics_screen.dart';
import 'package:mef_baze/screens/subjects1.dart';
import 'package:mef_baze/screens/subjects2.dart';
import 'package:mef_baze/screens/subjects3.dart';
import 'package:mef_baze/screens/subjects4.dart';
import 'package:mef_baze/screens/subjects5.dart';
import 'package:mef_baze/screens/subjects6.dart';

import 'screens/initial_screen.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[350],
      ),
      initialRoute: InitialScreen.id,
      routes: {
        InitialScreen.id: (context) => InitialScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginPage.id: (context) => LoginPage(),
        HomepageScreen.id: (context) => HomepageScreen(),
        SubjectsScreen1.id: (context) => SubjectsScreen1(),
        SubjectsScreen2.id: (context) => SubjectsScreen2(),
        SubjectsScreen3.id: (context) => SubjectsScreen3(),
        SubjectsScreen4.id: (context) => SubjectsScreen4(),
        SubjectsScreen5.id: (context) => SubjectsScreen5(),
        SubjectsScreen6.id: (context) => SubjectsScreen6(),
        ResultsScreen.id: (context) => ResultsScreen(),
        StatisticsScreen.id: (context) => StatisticsScreen(),
        AddQuestionScreen.id: (context) => AddQuestionScreen(),
      },
    );
  }
}

//'/': (context) => InitialScreen(),
//'/registration_screen': (context) => RegistrationScreen(),
//'/homepage': (context) => HomepageScreen(),
//'/initial_screen': (context) => InitialScreen(),
//'/login_screen': (context) => LoginPage()
