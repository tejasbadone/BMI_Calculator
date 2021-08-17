import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25.0) {
      return 'OVERWEIGHT';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (bmi >= 25.0) {
      return 'You have a higher than normal body weigh. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight, Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat a bit more.';
    }
  }
}
