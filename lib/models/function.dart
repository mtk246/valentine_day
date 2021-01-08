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

Widget buildTextSurpriseCaption(String title) {
  return BorderedText(
    strokeWidth: 0.5,
    strokeColor: Colors.red,
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'DancingScript',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

buildBoxDecoration() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/heart_bg.png'),
      fit: BoxFit.cover,
    ),
  );
}

buildHiddenText(IconData icon, String title) {
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

buildSizedBox() {
  return SizedBox(
    height: 20,
  );
}

buildRaisedButtonText() {
  return Text(
    'What\'s in the box?',
    style: TextStyle(
      fontFamily: 'BreeSerif',
      color: Colors.white,
      fontSize: 20,
    ),
  );
}

buildRaisedButton(BuildContext context, Function onPressed) {
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
