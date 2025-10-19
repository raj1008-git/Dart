class Person {
  final String name;
  final int age;
  final String city;
  final double salary;
  Person(this.name, this.age, this.city, this.salary);

  @override
  String toString() => '$name ($age) from $city: \$$salary';
}

void main() {
  var people = [
    Person('Raj', 24, 'Nepal', 45000),
    Person('Shruti', 24, 'Nepal', 200000),
  ];
  // Get names of People in Nepal over 20 earning more than 20,000 sorted by salary.
  // ...existing code...
  // Get names of People in London over 20 earning more than 20,000 sorted by salary.
  var result =
      (people
              .where((p) => p.city == 'London')
              .where((p) => p.age > 20)
              .where((p) => p.salary > 20000)
              .toList()
            ..sort((a, b) => b.salary.compareTo(a.salary)))
          .map((p) => p.name)
          .toList();
  // ...existing code...
}
