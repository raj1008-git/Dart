class Order {
  final String orderId;
  final List<String> items;

  Order(this.orderId, this.items);
}

void main() {
  var orders = [
    Order('ORD001', ['Laptop', 'Mouse', 'Keyboard']),
    Order('Ord002', ['Phone', 'Case']),
    Order('Ord003', ['Monitor', 'Cable', 'Stand', 'Speaker']),
  ];

  // Get all items from all orders.
  var allItem = orders.expand((order) => order.items).toList();

  // Count Unique items.
  var uniqueItems = allItem.toSet();

  // Finding most common item.
  var itemCounts = <String, int>{};
  for (var item in allItem) {
    itemCounts[item] = (itemCounts[item] ?? 0) + 1;
  }

  var sorteditems = itemCounts.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
}
