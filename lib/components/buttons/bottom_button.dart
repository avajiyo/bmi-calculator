import 'package:flutter/material.dart';
import '../../screenpages/input_page.dart';
import '../../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onTap});
  final Function onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.black),
          ),
          color: kPressedCardColour,
          margin: EdgeInsets.only(top: 20.0),
          width: double.infinity,
          height: kBottomNavigationBarHeight),
    );
  }
}
