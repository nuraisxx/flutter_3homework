void main() {
  int number = 345678;

  bool isLuckyNumber = checkLuckyNumber(number);
  if (isLuckyNumber) {
    print("$number is a lucky number.");
  } else {
    print("$number is not a lucky number.");
  }
}

bool checkLuckyNumber(int number) {
  String numberString = number.toString();

  if (numberString.length != 6) {
    return false;
  }

  int sumFirstHalf = int.parse(numberString.substring(0, 3));

  int sumSecondHalf = int.parse(numberString.substring(3));

  return sumFirstHalf == sumSecondHalf;
}
