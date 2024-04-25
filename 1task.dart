void main() {
  int number = 57;
  bool containsFourOrSeven = checkForDigits(number, [4, 7]);
  print("a) Does the number contain 4 or 7? $containsFourOrSeven");

  bool containsThreeSixOrNine = checkForDigits(number, [3, 6, 9]);
  print("b) Does the number contain 3, 6, or 9? $containsThreeSixOrNine");

  int digitA = 5;
  bool containsDigitA = checkForDigit(number, digitA);
  print("c) Does the number contain digit $digitA? $containsDigitA");
}

bool checkForDigits(int number, List<int> digits) {
  String numberString = number.toString();
  for (int digit in digits) {
    if (numberString.contains(digit.toString())) {
      return true;
    }
  }
  return false;
}

bool checkForDigit(int number, int digit) {
  String numberString = number.toString();
  return numberString.contains(digit.toString());
}
