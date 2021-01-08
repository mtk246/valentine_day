import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:valentine_day/dummy_data.dart';
import '../models/function.dart';

ContentData contentData = ContentData();

class MainScreen extends StatefulWidget {
  static const routePage = 'main';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void changeTextOnClick() {
    setState(() {
      if (contentData.isFinished()) {
        contentData.reset();
      } else {
        contentData.nextContent();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Center(
          child: Container(
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: buildText(contentData.getContentText()),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        IconButton(
                          iconSize: 350,
                          icon: Icon(
                            MaterialCommunityIcons.heart,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: changeTextOnClick,
                          splashColor: Colors.grey,
                          splashRadius: 10,
                        ),
                        InkWell(
                          child: Text(
                            'Tap me',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'BreeSerif',
                            ),
                          ),
                          onTap: changeTextOnClick,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
