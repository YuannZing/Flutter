import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pjbl3/Mainpage.dart';
import 'package:pjbl3/page/bottom_navbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA9OAr3LhvTEhFZYUllJ2lMdWDdWuhyEC4",
          appId: "1:761608570710:android:678ea94d0f33fd54dab8f7",
          messagingSenderId: "761608570710",
          projectId: "nyobak-bec2b"));
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
      home: MainPage(),
    );
  }
}
