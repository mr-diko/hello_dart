void printFibonacciSequence(int n) {
  int a = 0;
  int b = 1;
  int c = a + b;
  print(a);
  print(b);
  while (c <= n) {
    print(c);
    a = b;
    b = c;
    c = a + b;
  }
}

void main(List<String> args) {
  printFibonacciSequence(40);
}
