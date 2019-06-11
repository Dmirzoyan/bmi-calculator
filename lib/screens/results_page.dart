import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

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
                          resultText.toUpperCase(),
                          style: kAccentTextStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          bmiResult,
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
                        interpretation,
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
