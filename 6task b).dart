import 'dart:io';

void main() {
  stdout.write("Enter the value of a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b: ");
  int b = int.parse(stdin.readLineSync()!);

  int sumB = sumIntegersInRange(a, b);
  print("Sum of all integers from $a to $b: $sumB");
}

int sumIntegersInRange(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum;
}
