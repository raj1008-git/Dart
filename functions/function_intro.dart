void main() {
  functionPlayground();
}

void functionPlayground() {
  classicalFunctions();
  // optionalParameters();
}

void printMyname(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }

  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyname('Raj');

  final sum = add(5, 3);
  print(sum);

  print('10 Factorial is ${factorial(5)}');
}
