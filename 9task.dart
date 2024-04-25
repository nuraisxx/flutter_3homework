void main() {
  int number = 372659405;
  int countOfThree = countDigitOccurrences(number, 3);
  print("a) Count of digit 3: $countOfThree");

  int lastDigit = number % 10;
  int countOfLastDigit = countDigitOccurrences(number, lastDigit);
  print(
      "b) Count of occurrences of last digit ($lastDigit): $countOfLastDigit");

  int countOfEvenDigits = countEvenDigits(number);
  print("c) Count of even digits: $countOfEvenDigits");

  int sumOfDigitsGreaterThanFive = sumOfDigitsGreaterThan(number, 5);
  print("d) Sum of digits greater than 5: $sumOfDigitsGreaterThanFive");

  int productOfDigitsGreaterThanSeven = productOfDigitsGreaterThan(number, 7);
  print(
      "e) Product of digits greater than 7: $productOfDigitsGreaterThanSeven");

  int countOfZeroAndFive =
      countDigitOccurrences(number, 0) + countDigitOccurrences(number, 5);
  print("f) Count of occurrences of digits 0 and 5: $countOfZeroAndFive");
}

int countDigitOccurrences(int number, int digit) {
  int count = 0;
  while (number > 0) {
    if (number % 10 == digit) {
      count++;
    }
    number ~/= 10;
  }
  return count;
}

int countEvenDigits(int number) {
  int count = 0;
  while (number > 0) {
    if (number % 2 == 0) {
      count++;
    }
    number ~/= 10;
  }
  return count;
}

int sumOfDigitsGreaterThan(int number, int threshold) {
  int sum = 0;
  while (number > 0) {
    int digit = number % 10;
    if (digit > threshold) {
      sum += digit;
    }
    number ~/= 10;
  }
  return sum;
}

int productOfDigitsGreaterThan(int number, int threshold) {
  int product = 1;
  while (number > 0) {
    int digit = number % 10;
    if (digit > threshold) {
      product *= digit;
    }
    number ~/= 10;
  }
  return product;
}
