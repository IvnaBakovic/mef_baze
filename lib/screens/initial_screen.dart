import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mef_baze/screens/login_screen.dart';
import 'package:mef_baze/screens/registration_screen.dart';

class InitialScreen extends StatelessWidget {
  static const String id = 'initial_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                padding: EdgeInsets.only(top: 100.0, left: 110.0, right: 110.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Image.asset('images/logo.png'),
                    ),
                    Text(
                      'MEF',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Digitalne baze pitanja',
              style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              child: Text(
                'Registracija',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
