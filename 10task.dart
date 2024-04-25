import 'dart:io';

void main() {
  int sumGreaterThanX = 0;
  int countOfEvenNumbers = 0;
  int x;

  stdout.write("Enter the value of x: ");
  x = int.parse(stdin.readLineSync()!);

  print("Enter the sequence of integers, ending with 0:");
  int number;
  do {
    stdout.write("Enter an integer (0 to end): ");
    number = int.parse(stdin.readLineSync()!);
    if (number > x) {
      sumGreaterThanX += number;
    }

    if (number % 2 == 0) {
      countOfEvenNumbers++;
    }
  } while (number != 0);

  print("a) Sum of all numbers greater than $x: $sumGreaterThanX");
  print("b) Count of even numbers: $countOfEvenNumbers");
}
