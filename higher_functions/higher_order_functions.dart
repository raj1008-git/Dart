// The Solution:Higher order functions are elegant.

void modernWay() {
  var numbers = [1, 2, 3, 4, 5];

  // Task: Double all numbers.
  var doubled = numbers.map((n) => n * 2).toList();
  print(doubled);

  var evens = numbers.where((n) => n % 2 == 0).toList();
  print(evens);

  // Task: Sum all numbers.
  var sum = numbers.reduce((total, n) => total + n);
  print(sum);
}
