void setPlayground() {
  final Set<String> ministers = {
    'Justin',
    'Stephen',
    'Paul',
    'Jean',
    'Kim',
    'Brian',
  };

  ministers.addAll({'John', 'Pierre', 'Joe', 'Pierre'});

  final isJustinMinister = ministers.contains('Justin');
  print(isJustinMinister);

  for (String primeMinister in ministers) {
    print('$primeMinister is a Prime Minister.');
  }
}

void main() {
  setPlayground();
}
