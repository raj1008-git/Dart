class Address {
  final String street;
  final String city;

  const Address({required this.street, required this.city});

  @override
  String toString() => '$street, $city';
}

class Person {
  final String name;
  final int age;
  final Address address;
  final List<String> hobbies;

  const Person({
    required this.name,
    required this.age,
    required this.address,
    required this.hobbies,
  });

  Person copyWith({
    String? name,
    int? age,
    Address? address,
    List<String>? hobbies,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
      address: address ?? this.address,
      hobbies: hobbies ?? this.hobbies,
    );
  }
}

void main() {
  const person = Person(
    name: "Alice",
    age: 25,
    address: Address(street: "123 Main Road", city: "London"),
    hobbies: ["Reading", "Coding", "Gaming"],
  );
  //
}
