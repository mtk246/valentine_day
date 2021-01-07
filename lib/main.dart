import 'package:flutter/material.dart';
import 'package:valentine_day/screens/main_screen.dart';
import 'screens/main_screen.dart';
import 'package:valentine_day/screens/tab_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        MainScreen.routePage: (ctx) => MainScreen(),
      },
    );
  }
}
