void setPlayground() {
  final Set<String> ministers = {'Justin', 'Sthepen', 'jean'};
  ministers.addAll({'John', 'Joe', 'Justin'});

  final isJustinAminister = ministers.contains('Justin');
  print(isJustinAminister);

  for (String primeMinister in ministers) {
    print('$primeMinister is a PrimeMinister');
  }
}
