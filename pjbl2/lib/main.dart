import 'package:flutter/material.dart';
import 'package:pjbl2/page/bottom_navbar.dart';
import 'package:pjbl2/page/ttt.dart';
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ExamplePage(),
    );
  }
}
