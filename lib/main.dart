import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wheres_my_student/screens/root/root.dart';
import 'package:wheres_my_student/user_mgmt/user_mgmt.dart';
import 'package:wheres_my_student/utils/our_theme.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: OurTheme().buildTheme(),
        home: UserManagement().handleAuth(),
    );
  }
}
