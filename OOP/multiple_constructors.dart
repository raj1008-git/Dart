class Person {
  final String name;
  final int age;
  final String email;

  // Main Constructor
  Person(this.name, this.age, this.email);
  // Named constructor - Alternative Ways to create an object;
  Person.child(this.name) : age = 0, email = '';
  Person.teenager(this.name, this.age) : email = '$name@student.com';
  Person.fromMap(Map<String, dynamic> map)
    : name = map['name'],
      age = map['age'],
      email = map['email'];

  @override
  String toString() => '$name ($age) - $email';
}
