import 'dart:io';

void main() {
  stdout.write("Enter the value of a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b: ");
  int b = int.parse(stdin.readLineSync()!);

  if (b < a) {
    print("Error: b must be greater than or equal to a.");
    return;
  }

  double meanB = arithmeticMeanInRange(a, b);
  print("Arithmetic mean of all integers from $a to $b: $meanB");
}

double arithmeticMeanInRange(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum / (end - start + 1);
}
