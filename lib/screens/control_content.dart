import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ControlContent extends StatelessWidget {
  final String label;
  final String value;
  final Function increment;
  final Function decrement;

  const ControlContent({this.label, @required this.value, @required this.increment, @required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label, style: kLabelTextStyle),
        Text(value, style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: decrement,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: increment,
            ),
          ],
        )
      ],
    );
  }
}