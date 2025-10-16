// Multiple Filters.
void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Filter Even Numbers.
  var evens = numbers.where((n) => n % 2 == 0).toList();
  print('Evens: $evens');

  var greaterThanFive = numbers.where((n) => n > 5).toList();
  print('Greater than 5: $greaterThanFive');

  // Combine filters
  var evenAndGreaterThanFive = numbers
      .where((n) => n % 2 == 0)
      .where((n) => n > 5)
      .toList();

  var evenOrGreaterThanEight = numbers
      .where((n) => n % 2 == 0 || n > 8)
      .toList();
}
