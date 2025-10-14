// Advanced sets concepts.
void main() {
  demonstrateSetMastery();
}

void demonstrateSetMastery() {
  // Different ways to create Sets.
  // Empty set (Must Specify Type to distinguish from Map)
  Set<int> number = {};
  // or
  Set<int> moreNumbers = Set<int>();

  // Set with initial values.
  Set<String> colors = {'red', 'blue', 'green'};

  // Sets authmatically removes the duplicates.
  List<int> listWithDupes = [1, 2, 2, 3, 3, 4];
  Set<int> uniqueNumbers = listWithDupes.toSet();
  print('Unique Numbers: $uniqueNumbers');

  // Adding Elements.
  Set<String> fruits = {'apple', 'Banana'};

  // Add single element (returns true if added, false if already exists)
  bool added = fruits.add('apple');

  bool addAgain = fruits.add('apple');

  // Add multiple elements.
  fruits.addAll(['Mango', 'Grape', 'Apple']);
  print('Fruits: $fruits'); // Apple ignored.

  // Fruits Removing.
  fruits.remove('banana');

  // Removing the elements matching the conditions.
  fruits.removeWhere((fruit) => fruit.length > 5);
  print('After Removewhere: $fruits');

  // Checking and Searching.
  Set<int> scores = {85, 90, 78, 95, 88};

  bool has90 = scores.contains(90);
  print('Has 90? $has90');

  // Check if set contains all elements from another collection.
  bool hasMultiple = scores.containsAll([85, 90]);

  //Set Operations. (Mathematical Set Theory).
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  Set<int> union = setA.union(setB);

  // intersection: Only elements in both sets.
  Set<int> intersection = setA.intersection(setB);
  print('Difference (A-B): $intersection');
  Set<int> difference = setA.difference(setB);
  print('Difference A-B: $difference');

  // Symmetric Difference. Elements in either set, but not both.
  Set<int> symmetricDiff = setA.difference(setB).union(setB.difference(setA));

  // Comparing the sets.
  Set<String> groupA = {'Alice', 'Bob', 'Charlie'};
  Set<String> groupB = {'Bob', 'Charlie', 'David'};

  // check if sets have any common elements.
  bool hasCommon = groupA.intersection(groupB).isNotEmpty;
  print('$hasCommon');

  bool isSuperset = groupA.containsAll(groupB);
  print('Group A is superset of Group B? $isSuperset');

  // Converting between collections.
  Set<int> originalSet = {3, 1, 4, 1, 5, 9};

  List<int> asList = originalSet.toList();
  print('As list: $asList');

  List<int> sortedList = originalSet.toList()..sort();
}
