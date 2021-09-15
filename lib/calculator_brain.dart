import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  Text getResult() {
    if (_bmi >= 30)
      return Text(
        'Obese',
        style: TextStyle(color: Colors.red, fontSize: 30),
      );
    else if (_bmi >= 25)
      return Text(
        'Overweight',
        style: TextStyle(color: Colors.orange, fontSize: 30),
      );
    else if (_bmi >= 18.5)
      return Text(
        'Normal',
        style: TextStyle(color: Colors.lightGreenAccent, fontSize: 30),
      );
    else
      return Text(
        'Underweight',
        style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 30),
      );
  }

  String getRange() {
    if (_bmi >= 30)
      return '30 - 34.9 kg/m2';
    else if (_bmi >= 25)
      return '25 - 29.9 kg/m2';
    else if (_bmi >= 18.5)
      return '18,5 - 24.9 kg/m2';
    else
      return '17 - 18.4 kg/m2';
  }

  String getQuote() {
    if (_bmi >= 30)
      return 'You are in obesity. You should go to hospital.';
    else if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more';
  }
}
