void collectionControlFlow() {
  final addMore = true;

  // Collection - If : Conditionally include elements.
  final randomNumbers = [
    34,
    232,
    54,
    32,
    if (addMore) ...[123, 258],
  ];

  final doubled = [for (int number in randomNumbers) number * 2];
  print(doubled);
}
