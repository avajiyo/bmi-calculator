import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_child.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { male, female }

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender;
  int height = 180;
  int weight = 55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: kHeadingStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male
                            ? kPressedCardColour
                            : kNormalCardColour,
                        cardChild: CardChild(
                            icon: FontAwesomeIcons.mars, text: 'MALE')),
                  ),
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female
                            ? kPressedCardColour
                            : kNormalCardColour,
                        cardChild: CardChild(
                            icon: FontAwesomeIcons.venus, text: 'FEMALE')),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: kLetterFontStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(height.toString(), style: kNumberFontStyle),
                      Text(" cm", style: kLetterFontStyle),
                    ],
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double output) {
                        setState(() {
                          height = output.round();
                        });
                      }),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('WEIGHT', style: kLetterFontStyle),
                              Text(weight.toString(), style: kNumberFontStyle),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      }),
                                  Container(width: 10),
                                  RoundButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      }),
                                ],
                              )
                            ],
                          ),
                          colour: kCardColor)),
                  Expanded(child: ReusableCard(colour: kCardColor)),
                ],
              ),
            ),
          ],
        ));
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.white10,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
