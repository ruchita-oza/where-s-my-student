import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
     
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            FirebaseAuth.instance.signInWithEmailAndPassword(email: "yash@gmail.com", password: "yash1234");
          },
        ),
      ),
    );
  }
}
