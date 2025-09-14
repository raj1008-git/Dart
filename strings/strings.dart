void main() {
  stringPlayground();
}

void stringPlayground() {
  basicStringDeclaration();
}

void basicStringDeclaration() {
  print('Single quotes');
  final aBoldStatement = 'Dart isn\'t loosely typed.';
  print(aBoldStatement);

  print('Raw String');
  final rawString = r'Show an escape \ characters';
  print(rawString);

  print("Hello, World");
  final aMoreMildOpinion = "Dart's popularity has skyrocketed with flutter";
  print(aMoreMildOpinion);

  final mixAndMatch =
      'Every Programmer should write "Hello, World" when learning a new language.';
  print(mixAndMatch);
}
