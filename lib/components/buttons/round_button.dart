import 'package:flutter/material.dart';

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
