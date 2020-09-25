import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_child.dart';

const cardColor = Color(0xFF101015);
const headingStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 20,
);
const normalCardColour = Color(0xFF101015);
const pressedCardColour = Colors.amber;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { male, female }

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender;
  //  Color maleCardColour = normalCardColour;
//  Color femaleCardColour = normalCardColour;

//  void selectGender(Gender gender) {
//    if (gender == Gender.male) {
//      if (maleCardColour == pressedCardColour) {
//        maleCardColour = normalCardColour;
//      } else {
//        femaleCardColour = normalCardColour;
//        maleCardColour = pressedCardColour;
//      }
//    } else {
//      if (femaleCardColour == pressedCardColour) {
//        femaleCardColour = normalCardColour;
//      } else {
//        maleCardColour = normalCardColour;
//        femaleCardColour = pressedCardColour;
//      }
//    }
//  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                          colour: selectedGender == Gender.male
                              ? pressedCardColour
                              : normalCardColour,
                          cardChild: CardChild(
                              icon: FontAwesomeIcons.male, text: 'MALE')),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                        colour: selectedGender == Gender.female
                            ? pressedCardColour
                            : normalCardColour,
                        cardChild: CardChild(
                            icon: FontAwesomeIcons.female, text: 'FEMALE')),
                  )),
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
