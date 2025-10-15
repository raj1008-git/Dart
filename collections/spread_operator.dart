void main() {}
void demonstrateSpreadOperator() {
  // Basic Spreading.
  List<int> firstThree = [1, 2, 3];
  List<int> secondThree = [4, 5, 6];

  // Without Spread Operator
  List<int> properCombined = [...firstThree, ...secondThree];
  // 2. Spreading with additional elements.
  List<String> fruits = ['apple', 'banana'];
  List<String> allItems = ['Start', ...fruits, 'Middle', ...fruits, 'End'];
  print('All items: $allItems');

  // 3. Conditional Spreading with Null-Aware operator.
  List<int>? maybeNumbers;

  List<int> safeNumbers = [1, 2, ...?maybeNumbers, 3];

  // Now with actual values.
  maybeNumbers = [10, 20, 30];
  List<int> numbersWithSpread = [1, 2, 3, ...?maybeNumbers, 4];

  // Spreading Maps.
  Map<String, int> score1 = {'Alice': 90, 'Bob': 85};
  Map<String, int> score2 = {'Charlie': 88, 'Diana': 92};

  Map<String, int> allScores = {...score1, ...score2, 'Eve': 95};
  print('All Scores: $allScores');

  //If keys conflict, later values override earlier ones.
  Map<String, int> conflicting = {...score1, 'Alice': 100};
  print('Conflicting: $conflicting');

  // Spreading Sets.
  Set<String> group1 = {'Alice', 'Bob'};
  Set<String> group2 = {'Charlie', 'Bob'};

  Set<String> combined = {...group1, ...group2};
  print('Combined Set: $combined');

  // Practicle Examples.
  List<String> baseFeatures = ['Login', 'Password'];
  List<String> premiumFeatures = ['Analytics', 'Export'];
  List<String> adminFeatures = ['User Management', 'System Settings'];

  bool isPremium = true;
  bool isAdmin = false;

  List<String> availableFeatures = [
    ...baseFeatures,
    if (isPremium) ...premiumFeatures,
    if (isAdmin) ...adminFeatures,
  ];

  print('\n Available  Features:');
  for (String feature in availableFeatures) {
    print('-$feature');
  }

  // 7. Merging Configuration.
}
