void main() {
  demonstrateMapMastery();
}

void demonstrateMapMastery() {
  Map<String, double> prices = {};

  Map<String, int> inventory = {'Apples': 50, 'Banana': 30, 'Orange': 25};

  // Using Map Constructor.
  Map<int, String> errorCodes = Map();

  // Adding and Updating.
  prices['coffee'] = 4.48;
  prices['tea'] = 3.8;

  prices.addAll({'juice': 3.50, 'soda': 2.40});
  print('Prices: $prices');

  // Safe Access with Null-Aware Operators.
  Map<String, String> capitals = {
    'Nepal': 'Kathmandu',
    'India': 'New Delhi',
    'China': 'Beijing',
  };

  // This returns null if key doesn't exist.
  String? capitalOfJapan = capitals['Japan'];
  String? capitalOfNepal = capitals['nepal'];

  print('$capitalOfNepal');
  print('$capitalOfJapan');

  // Provide Default value if doesnot exists.
  String capitalOrDefault = capitals['Japan'] ?? 'Unknown';
  print('Capital with Default: $capitalOrDefault');

  //putIfAbsent: add only if the key doesnot exists.
  capitals.putIfAbsent('Japan', () => 'Tokyo');
  print('After putIfAbsent: ${capitals['Japan']}');

  //checking Existance.
  bool hasNepal = capitals.containsKey('Nepal');

  bool hasKathmandu = capitals.containsValue('Kathmandu');
  bool isEmpty = capitals.isEmpty;
  bool isNotEmpty = capitals.isNotEmpty;

  //Iterating Through Maps.
  Map<String, int> scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92};

  scores.forEach((name, score) {
    print('$name scored $score');
  });

  for (MapEntry<String, int> entry in scores.entries) {
    print('${entry.key}:${entry.value}');
  }

  for (String name in scores.keys) {
    print('Name: $name');
  }

  for (int score in scores.values) {
    print('Scores: $score');
  }
}
