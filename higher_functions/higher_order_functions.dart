// Other Filter Functions.
void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // firstWhere -get First match.
  var firstWhere = numbers.firstWhere((n) => n % 2 == 0);

  var firstOver20 = numbers.firstWhere((n) => n > 20, orElse: () => -1);

  var lastEven = numbers.lastWhere((n) => n % 2 == 0);
}
