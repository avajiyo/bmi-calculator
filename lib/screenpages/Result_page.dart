import 'file:///C:/Users/Kim/AndroidStudioProjects/bmi_calculator/lib/components/card_child.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:bmi_calculator/components/buttons/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bMInumber,
      @required this.bMIwords,
      @required this.bMIdescription});

  final String bMInumber;
  final String bMIwords;
  final String bMIdescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultsHeadingStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    bMIwords.toUpperCase(),
                    style: kResultsFontStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bMInumber,
                    style: kBMINumberFontStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(bMIdescription,
                      style: kResultsLetterFontStyle,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
