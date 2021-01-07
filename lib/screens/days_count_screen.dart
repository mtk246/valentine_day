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
    DateTime startDate = DateTime(2018, 9, 9);
    DateTime currentDate = DateTime.now();
    final differenceDate = currentDate.difference(startDate).inDays;

    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: boxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          '${differenceDate.toString()} Days',
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
