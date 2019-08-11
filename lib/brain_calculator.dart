import 'dart:math';

class BrainCalculator {
  final height;
  final weight;

  double _bmi;

  BrainCalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMITextResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      return 'Normal';
    } else if (_bmi >= 25 && _bmi < 30.0) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  String getBMIInterpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi >= 25 && _bmi < 30.0) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return 'You have a way higher than normal body weight. Keep an eye on it!';
    }
  }
}
