import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 35, bottom: 10),
            child: Text('Your Results', style: kMainTitleTextStyle),
          ),
          Expanded(
            child: ReusableCard(
                color: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'NORMAL',
                          style: kAccentTextStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '22.1',
                          style: kResultTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Normal BMI range:',
                          style: kSecondaryLabelTextStyle,
                        ),
                        SizedBox(height: 7),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: kLargeLabelTextStyle,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70),
                      child: Text(
                        'You have a normal body weight. Good job!',
                        textAlign: TextAlign.center,
                        style: kLargeLabelTextStyle,
                      ),
                    ),
                  ],
                )),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
