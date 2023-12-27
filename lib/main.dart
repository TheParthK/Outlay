import 'package:flutter/material.dart';
import 'package:outlay/Screens/home.dart';
import 'package:outlay/Screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      // home: HomePage(),
    );
  }
}