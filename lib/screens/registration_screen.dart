import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mef_baze/services/user_managemant.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          bottom: 40.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  padding:
                      EdgeInsets.only(top: 100.0, left: 110.0, right: 110.0),
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
                height: 50.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'Email'),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                      child: Text('Login'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 7.0,
                      onPressed: () async {
                        try {
                          final newUser = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (newUser != null) {
                            print('dobro');
                            UserManagement().storeNewUser(newUser, context);
                          }
                        } catch (e) {
                          print(e);
                        }
                      })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
