import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:valentine_day/models/function.dart';

class SurpriseScreen extends StatefulWidget {
  @override
  _SurpriseScreenState createState() => _SurpriseScreenState();
}

class _SurpriseScreenState extends State<SurpriseScreen> {
  bool viewWidget = false;

  void showWidget() {
    setState(() {
      if (viewWidget == false) {
        viewWidget = true;
      } else {
        viewWidget = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: buildBoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Center(
                    child: buildTextSurpriseCaption(
                      'Don\'t press the button until you\'ve reached home',
                    ),
                  ),
                ),
                buildSizedBox(),
                buildRaisedButton(context, showWidget),
                buildSizedBox(),
                Visibility(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  buildHiddenText(
                                    MaterialCommunityIcons.numeric_1_circle,
                                    'Wireless Mouse',
                                  ),
                                  buildSizedBox(),
                                  buildHiddenText(
                                    MaterialCommunityIcons.numeric_2_circle,
                                    'Gold Clip',
                                  ),
                                  buildSizedBox(),
                                  buildHiddenText(
                                    MaterialCommunityIcons.numeric_3_circle,
                                    'Dress',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // buildRaisedButton(context, launchInApp),
                    ],
                  ),
                  visible: viewWidget,
                  maintainAnimation: true,
                  maintainSize: false,
                  maintainState: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
