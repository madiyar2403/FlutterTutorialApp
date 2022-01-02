import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/home_screen.dart';

class FlutterTutorialApp extends StatelessWidget {
  const FlutterTutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: HomeScreen(),
    );
  }
}

