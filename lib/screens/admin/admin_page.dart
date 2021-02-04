import 'package:flutter/material.dart';
import 'package:wheres_my_student/user_mgmt/user_mgmt.dart';


class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admins Only'),
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
    );
  }
}
