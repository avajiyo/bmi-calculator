import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_child.dart';

const cardColor = Color(0xFF101015);
const headingStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 20,
);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: headingStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          colour: cardColor,
                          cardChild: CardChild(
                              icon: FontAwesomeIcons.male, text: 'MALE'))),
                  Expanded(
                      child: ReusableCard(
                          colour: cardColor,
                          cardChild: CardChild(
                              icon: FontAwesomeIcons.female, text: 'FEMALE'))),
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: cardColor)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: cardColor)),
                  Expanded(child: ReusableCard(colour: cardColor)),
                ],
              ),
            ),
          ],
        ));
  }
}
