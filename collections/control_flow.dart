void main() {
  demonstrateCollectionControlFlow();
}

void demonstrateCollectionControlFlow() {
  // 1. Collection -If : Conditional Elements.
  bool isAdmin = true;
  bool isPremium = false;

  List<String> menuItems = [
    'Home',
    'Profile',
    'Settings',
    if (isAdmin) 'Admin panel',
    if (isPremium) 'Premium Features',
    if (!isPremium) 'Upgrade to premium',
  ];
  print('Menu Items: $menuItems');

  // Collection -If with Spread operator.
  bool showExtras = true;
  List<int> numbers = [
    1,
    2,
    3,
    if (showExtras) ...[4, 5, 6],
    7,
  ];

  print('Numbers: $numbers');

  // 3. Collection -If -Else
  String userRole = 'editor';
  List<String> permissions = [
    'read',
    if (userRole == 'admin')
      'delete'
    else if (userRole == 'editor')
      'write'
    else
      'view',
  ];
  print('Permissions: $permissions');

  // Collection-For Generating Elements.
  // Generate Squares of numbers 1-5
  List<int> squares = [for (int i = 1; i <= 5; i++) i * i];

  // Collection-For with Existing Elements.
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  List<String> greetings = [for (String name in names) 'Hello, $name!'];

  // 6. Combining Collection-For with Collection - If
  List<int> values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> doubledEvens = [
    for (int value in values)
      if (value % 2 == 0) value * 2,
  ];
  print('Doubled events: $doubledEvens');

  // Nested Collection For.
  // Multiplication Table.
  List<String> multiplicationTable = [
    for (int i = 1; i <= 3; i++)
      for (int j = 1; j <= 3; j++) '$i x $j= ${i * j}',
  ];

  print('\nMultiplication table:');
  for (String entry in multiplicationTable) {
    print(entry);
  }

  bool includeOptional = true;
  Map<String, int> scores = {
    'Alice': 95,
    'Bob': 87,
    if (includeOptional) 'Charlie': 92,
    if (includeOptional) 'Diana': 88,
  };
  print('\nScores: $scores');

  // Generating Map Entries with collection For.
  List<String> students = ['John', 'Sarah', 'Mike'];
  Map<String, bool> attendance = {
    for (String student in students) student: true,
  };

  print('Attendance: $attendance');

  // 10. Collection Control Flow with Sets.
  bool includeExtras = true;
  Set<String> tags = {
    'dart',
    'flutter',
    if (includeExtras) ...['mobile', 'web', 'desktop'],
  };
  print('Tags: $tags');

  bool hasDiscount = true;
  bool isMember = true;
  List<String> selectedItems = ['Laptop', 'Mouse', 'Keyboard'];

  List<String> cartSummary = [
    'Your Cart:',
    for (String item in selectedItems) '- $item',
    if (hasDiscount) 'Discount applied!',
    if (isMember) 'Member Benefits active',
    'Thank you for shopping!',
  ];

  print('\n--- Shopping Cart ---');
  for (String line in cartSummary) {
    print(line);
  }

  // 12. Filtering and Transforming Data.
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 1000, 'inStock': true},
    {'name': 'Phone', 'price': 500, 'inStock': false},
  ];

  List<String> affordableInStock = [
    for (var product in products)
      if (product['inStock'] == true && product['price'] < 500) product['name'],
  ];

  //13. Practical Example. Building UI like structure.
  bool isLoggedin = true;
  bool hasNotifications = true;
  int notificationCount = 5;

  List<String> navigationItems = [
    'Home',
    'Explore',
    if (isLoggedin) ...[
      'Profile',
      'Settings',
      if (hasNotifications) 'Notifications ($notificationCount)',
    ],
    if (!isLoggedin) 'Login',
  ];
  print('\nNavigation:');
  for (int i = 0; i < navigationItems.length; i++) {
    print('${i + 1}.${navigationItems[i]}');
  }

  // 14. Complex Example - Dynamic Form Fields.
  String userType = 'business';
  bool requiresAddress = true;

  List<Map<String, String>> formFields = [
    {'label': 'Name', 'type': 'text'},
    {'label': 'Email', 'type': 'Email'},
    if (userType == 'business') ...[
      {'label': 'Street Address', 'type': 'text'},
      {'label': 'Tax ID', 'type': 'text'},
    ],
  ];
  // 15. Comparison. Old Way vs New Way.
  List<int> oldWayNumbers = [1, 2, 3];
  bool addExtra = true;
  if (addExtra) {
    oldWayNumbers.add(4);
    oldWayNumbers.add(5);
  }
  print('Old Way: $oldWayNumbers');
  List<int> newWayNumbers = [
    1,
    2,
    3,
    if (addExtra) ...[4, 5],
  ];
  print('New way:$newWayNumbers');
}
