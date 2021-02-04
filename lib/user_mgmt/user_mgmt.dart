import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wheres_my_student/screens/admin/admin_page.dart';
import 'package:wheres_my_student/screens/home/home_screen.dart';
import 'package:wheres_my_student/screens/login/login_page.dart';


class UserManagement {
  Widget handleAuth()   {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: screen,
    );
  }

Widget screen(BuildContext context,snapshot)  {
    if(snapshot.connectionState == ConnectionState.waiting){
      return wait();
    }
    if(snapshot.hasData) {
      return  authorizeAccess();
    }
    return LoginPage();
  }

  Widget authorizeAccess() {
    User user = FirebaseAuth.instance.currentUser;

    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance.collection('/users')
          .doc(user.uid)
          .snapshots(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError)
          return Text(snapshot.error);

        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return wait();
          default:
            return checkRole(snapshot.data);
        }
      },
    );
  }

  Widget checkRole(DocumentSnapshot snapshot){
    if(snapshot.data()['role'] == 'admin'){
      return AdminPage();
    }
    else{
      return Home();
    }
  }

  Widget wait(){
    return Scaffold(
      body: CircularProgressIndicator(),
    );
  }
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}