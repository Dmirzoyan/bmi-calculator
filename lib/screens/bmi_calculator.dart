import 'package:flutter/material.dart';
import 'dart:math';

class BmiCalculator {
  final int weight;
  final int height;

  double _bmi;

  BmiCalculator({@required this.weight, @required this.height});

  String calculateBmi() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5 ) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5 ) {
      return 'You have a normal body weight. Great job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
