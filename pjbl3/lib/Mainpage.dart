import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pjbl3/page/bottom_navbar.dart';
import 'package:pjbl3/page/home_page.dart';
import 'package:pjbl3/page/login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ExamplePage();
          } else {
            return login();
          }
        },
      ),
    );
  }
}
