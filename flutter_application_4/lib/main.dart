import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/main_screen.dart';
import 'package:flutter_application_4/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA9OAr3LhvTEhFZYUllJ2lMdWDdWuhyEC4",
          appId: "1:761608570710:android:15a14c3aacfc433cdab8f7",
          messagingSenderId: "761608570710",
          projectId: "nyobak-bec2b"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const MainPage(),
    );
  }
}
