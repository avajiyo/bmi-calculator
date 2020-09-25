import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  CardChild({@required this.text, this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50),
          SizedBox(height: 15),
          Text(text, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
        ],
      ),
    );
  }
}
