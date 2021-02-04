import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wheres_my_student/user_mgmt/user_mgmt.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: new Text('Yash'),
              accountEmail: new Text('yash@gmail.com'),
            ),
            ListTile(
              title: new Text('Log out'),
              onTap: () {
                UserManagement().signOut();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
