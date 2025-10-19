// Custom Higher Order function takes a function as a parameter.
List<T> transformList<T>(List<T> items, T Function(T) transformer) {
  return items.map(transformer).toList();
}

// Custom Higher Order Function that returns a function.
Function makeMultiplier(int factor) {
  return (int value) => value * factor;
}

// Custom filter with custom Logic.
