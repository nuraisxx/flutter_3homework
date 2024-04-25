void main() {
  double meanA = arithmeticMeanInRange(1, 1000);
  print("Arithmetic mean of all integers from 1 to 1000: $meanA");
}

double arithmeticMeanInRange(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum / (end - start + 1);
}
