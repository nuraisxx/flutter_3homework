void main() {
  int sumA = sumIntegersInRange(100, 500);
  print("Sum of all integers from 100 to 500: $sumA");
}

int sumIntegersInRange(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum;
}
