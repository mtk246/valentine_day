import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../models/function.dart';

class DaysCountScreen extends StatefulWidget {
  @override
  _DaysCountScreenState createState() => _DaysCountScreenState();
}

class _DaysCountScreenState extends State<DaysCountScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime _startDate = DateTime(2018, 9, 9);
    DateTime _currentDate = DateTime.now();
    final _differenceDate = _currentDate.difference(_startDate).inDays;

    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Center(
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildText('We\'ve been falling in love for'),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Icon(
                        MaterialCommunityIcons.heart,
                        size: 250,
                        color: Theme.of(context).primaryColor,
                      ),
                      TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(
                          milliseconds: 100,
                        ),
                        text: [
                          '${_differenceDate.toString()} Days',
                        ],
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'BreeSerif'),
                      )
                    ],
                  ),
                  buildText('and still counting!'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
