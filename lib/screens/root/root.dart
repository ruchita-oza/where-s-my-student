
import 'package:flutter/material.dart';
import 'package:wheres_my_student/screens/login/login_page.dart';

enum AuthStatus {
   notLoggedIn,
   loggedIn
}

class OurRoot extends StatefulWidget {
  @override
  _OurRootState createState() => _OurRootState();
}

class _OurRootState extends State<OurRoot> {

  @override
  Widget build(BuildContext context) {

    return LoginPage();
  }
}
