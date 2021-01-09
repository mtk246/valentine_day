import 'package:flutter/material.dart';
import 'package:valentine_day/models/function.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valentine\'s Day',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFF10EFE9),
      ),
      home: buildAnimatedSplashScreen(context, 'assets/images/heart_icon.png'),
    );
  }
}
