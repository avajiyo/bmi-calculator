import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.grey[700],
            thumbColor: Color(0xFFFFA000),
            overlayColor: Color(0x23FFECB3),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          ),
          primaryColor: Color(0xFF101015),
          scaffoldBackgroundColor: Color(0xFF1B1C23)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
