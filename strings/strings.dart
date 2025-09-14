void main() {
  stringPlayground();
}

void stringPlayground() {
  // basicStringDeclaration();
  // multiLineString();
  combiningStrings();
}

void combiningStrings() {
  traditionalConcatenation();
  modernInterpolation();
}

void modernInterpolation() {
  final year = 2011;
  final interpolated = 'Dart wa announced in $year';
  print(interpolated);

  final age = 2;
  final howOld = 'I am $age ${age == 1 ? 'year' : 'years'}old';
  print(howOld);
}

void traditionalConcatenation() {
  final hello = 'Hello';
  final world = "world";

  final combined = hello + ' ' + world;
  print(combined);
}

void multiLineString() {
  final withEscaping = 'One Fish\nTwo Fish\nBlue Fish';
  print(withEscaping);

  final hamlet = '''
To be,
or not to be,

''';

  print(hamlet);
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
