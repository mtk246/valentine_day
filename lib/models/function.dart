import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

Widget buildText(String title) {
  return BorderedText(
    strokeWidth: 0.8,
    strokeColor: Colors.red,
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'DancingScript',
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

boxDecoration() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/heart_bg.png'),
      fit: BoxFit.cover,
    ),
  );
}
