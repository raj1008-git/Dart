void listPlayGround() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  numbers.add(11);
  numbers.addAll([8, 9, 10]);
  numbers[0] = 0;
  print('The first number is ${numbers[0]}');

  for (int number in numbers) {
    print(number);
  }
}

void main() {
  listPlayGround();
}
