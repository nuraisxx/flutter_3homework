void main() {
  int n = 4456;

  bool containsThreeIdenticalDigits = checkThreeIdenticalDigits(n);
  if (containsThreeIdenticalDigits) {
    print("$n contains exactly three identical digits.");
  } else {
    print("$n does not contain exactly three identical digits.");
  }
}

bool checkThreeIdenticalDigits(int number) {
  String numberString = number.toString();
  Map<String, int> digitCount = {};
  for (int i = 0; i < numberString.length; i++) {
    String digit = numberString[i];
    if (digitCount.containsKey(digit)) {
      digitCount[digit];
    } else {
      digitCount[digit] = 1;
    }
  }
  return digitCount.containsValue(3);
}
