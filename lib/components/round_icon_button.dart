import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  const RoundIconButton({this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      child: Icon(icon),
      fillColor: kActiveCardColor,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 16,
    );
  }
}
