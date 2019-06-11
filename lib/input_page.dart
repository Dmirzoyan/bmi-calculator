import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'control_content.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;
  final maxWeight = 150;
  final minWeight = 10;
  final maxAge = 140;
  final minAge = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: new IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      SizedBox(width: 5),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: kAccentColor,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kLabelColor,
                        overlayColor: kAccentShadeColor,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                        min: 120,
                        max: 220,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    cardChild: ControlContent(
                      label: 'WEIGHT',
                      value: weight.toString(),
                      increment: () {
                        setState(() {
                          weight = weight == maxWeight ? maxWeight : weight + 1;
                        });
                      },
                      decrement: () {
                        setState(() {
                          weight = weight == minWeight ? minWeight : weight - 1;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    cardChild: ControlContent(
                      label: 'Age',
                      value: age.toString(),
                      increment: () {
                        setState(() {
                          age = age == maxAge ? maxAge : age + 1;
                        });
                      },
                      decrement: () {
                        setState(() {
                          age = age == minAge ? minAge : age - 1;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            color: kAccentColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 28),
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
