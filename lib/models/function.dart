import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../screens/tab_screen.dart';

Widget buildAnimatedSplashScreen(BuildContext context, dynamic asset) {
  return AnimatedSplashScreen(
    duration: 150,
    splash: asset,
    splashIconSize: 600,
    nextScreen: TabsScreen(),
    splashTransition: SplashTransition.fadeTransition,
    backgroundColor: Colors.red,
  );
}

Widget buildText(String title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'DancingScript',
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget buildTextSurpriseCaption(String title) {
  return buildText(title);
}

buildBoxDecoration() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/heart_bg.png'),
      fit: BoxFit.cover,
    ),
  );
}

Widget buildHiddenText(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
    ),
    child: Row(
      children: [
        Icon(
          icon,
          size: 35,
          color: Colors.red,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'BreeSerif',
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildSizedBox() {
  return SizedBox(
    height: 20,
  );
}

Widget buildRaisedButtonText() {
  return Text(
    'What\'s in the box?',
    style: TextStyle(
      fontFamily: 'BreeSerif',
      color: Colors.white,
      fontSize: 20,
    ),
  );
}

Widget buildRaisedButton(BuildContext context, Function onPressed) {
  return RaisedButton(
    onPressed: onPressed,
    child: buildRaisedButtonText(),
    elevation: 5,
    color: Theme.of(context).primaryColor,
    padding: EdgeInsets.all(20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    splashColor: Colors.blueGrey,
  );
}

Widget buildCircleAvater(BuildContext ctx, String title, String personName) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 55,
        backgroundImage: AssetImage('assets/images/heart_bg_profile.png'),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(title),
          backgroundColor: Colors.white.withOpacity(0.3),
        ),
      ),
      Text(
        personName,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'BreeSerif',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
