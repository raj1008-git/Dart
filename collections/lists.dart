void main() {
  demonstrateListMastery();
}

void demonstrateListMastery() {
  List<String> fruits = [];
  List<int> scores = [95, 96, 97];
  List<String> daysOfWeek = List.filled(7, 'Day');
  List<int> evenNumbers = List.generate(5, (index) => index * 2);
  print('Generated even Numbers: $evenNumbers');

  fruits.add('Apple');
  fruits.add('Banana');
  fruits.addAll(['Orange', 'Mango']);

  fruits.insert(1, 'Strawberry');
  print('After insert: $fruits');

  fruits.remove('Banana');
  print('After Remove: $fruits');

  fruits.removeAt(0);
  print('After Remove at: $fruits');

  String lastFruit = fruits.removeLast();
  print('Removed: $lastFruit');

  List<String> temp = ['A', 'B', 'C'];
  print('Cleared List: $temp');

  List<int> numbers = [10, 20, 30, 40, 50];
  print('third Element: ${numbers[2]}');

  print('Forst Element: ${numbers.first}');
  print('last Element: ${numbers.last}');
  print('Length: ${numbers.length}');

  //Check if list is empty before accessing.
  if (numbers.isNotEmpty) {
    print('Safe First Access: ${numbers.first}');
  }

  // Check if elements exists.
  bool hasThirty = numbers.contains(30);
  print('Contains 30? $hasThirty');

  int indexOfForty = numbers.indexOf(40);
  print('Index of 40: $indexOfForty');

  // Transforming Lists.
  // Map: transform each element.
  List<int> doubled = numbers.map((n) => n * 2).toList();
  // Where: filter elements.
  List<int> largeNumbers = numbers.where((n) => n > 25).toList();
  print('Greater than 25: $largeNumbers');

  int sum = numbers.reduce((a, b) => a + b);
  print('Sum: $sum');

  List<int> unsorted = [5, 2, 8, 1, 9];
  unsorted.sort();
  print('Sorted ascending: $unsorted');

  unsorted.sort((a, b) => b.compareTo(a));
  print('Sorted descending: $unsorted');

  List<String> alphabet = ['A', 'B', 'C', 'D', 'E'];

  List<String> subset = alphabet.sublist(1, 4);
  print(
    'Sublist: $subset',
  ); // Get the Portion of the list. (Start index inclusive, end exclusive)
  List<int> original = [1, 2, 3, 4, 5];
  List<int> reversed = original.reversed.toList();
  print('Original: $original');
  print('Reversed: $reversed');
}
