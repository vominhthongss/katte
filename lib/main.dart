// @dart=2.9
import 'package:flutter/material.dart';
import 'package:katte/nav.dart';
import 'package:katte/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // brightness: MyTheme.darkMode,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
