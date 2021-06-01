import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int weight;
  final int height;
  double _bmi;
  String calculatBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
     return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'you have a heigher than normal body. you should to exercise more.';
    }else if(_bmi > 18.5){
      return 'you have a normal body weight. good jop!';
    }else{
      return 'you have a lower than normal body. you should eat a bit more.';
    }
  }
  String BMIRange(){
    if(_bmi >= 25){
      return 'Overweight BMI range:';
    }else if(_bmi > 18.5){
      return 'Normal BMI range:';
    }else{
      return 'Underweight BMI range:';
    }
  }
  String RangeNumber (){
    if(_bmi >= 25){
      return 'more than 25 kg/m2';
    }else if(_bmi > 18.5){
      return '18.5 - 25 kg/m2';
    }else{
      return 'less than 18.5 kg/m2';
    }
  }
}