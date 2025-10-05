void mapPlayground() {
  final Map<String, int> ages = {'Clark': 26, 'Peter': 35, 'Bruce': 44};
  ages['Steve'] = 48;

  final ageOfPeter = ages['Peter'];

  ages.forEach((String name, int age) {
    print('$name is $age years old');
  });
}
