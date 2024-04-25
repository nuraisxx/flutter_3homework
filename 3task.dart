void main() {
  int n = 34534;

  bool isPalindrome = checkPalindrome(n);
  if (isPalindrome) {
    print("$n is a palindrome.");
  } else {
    print("$n is not a palindrome.");
  }
}

bool checkPalindrome(int number) {
  String numberString = number.toString();
  int length = numberString.length;
  for (int i = 0; i < length ~/ 2; i++) {
    if (numberString[i] != numberString[length - i - 1]) {
      return false;
    }
  }
  return true;
}
