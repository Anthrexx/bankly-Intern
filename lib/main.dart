import 'package:bankly/pages/firstSplash.dart';
import 'package:bankly/pages/phonenumb.dart';
import 'package:bankly/pages/splashScreen.dart';
import 'package:bankly/pages/utils/secondsplash.dart';
import 'package:flutter/material.dart';

void main() {
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
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
    );
  }
}

