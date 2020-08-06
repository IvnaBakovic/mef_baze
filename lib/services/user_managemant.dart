import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mef_baze/screens/homepage.dart';

class UserManagement {
  FirebaseUser loggedinUser;

  Future getCurrentUser() async {
    try {
      final user = await FirebaseAuth.instance.currentUser();

      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  storeNewUser(user, context) async {
    try {
      loggedinUser = user.user;
      await Firestore.instance
          .collection('users')
          .add({'email': loggedinUser.email, 'uid': loggedinUser.uid});
      if (user != null) {
        print('dobro2');
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, HomepageScreen.id);
      }
    } catch (e) {
      print(e);
    }
  }
}

//  Firestore.instance
//      .collection('users')
//      .add({'email': user.email, 'uid': user.uid}).then((value) {
//  Navigator.pop(context);
//  Navigator.pushReplacementNamed(context, '/homepage');
//  }).catchError((e) {
//  print(e);
//  });
//}
