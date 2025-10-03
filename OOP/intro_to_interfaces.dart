class Flyable {
  void fly() {
    print('Flying through the AIR');
  }

  void land() {
    print('Landing Safely.');
  }
}

// When you implement, you must provide yur own implementation

class Bird implements Flyable {
  final String species;

  Bird(this.species);

  @override
  void fly() {
    print('$species flaps wings and soars');
  }

  @override
  void land() {
    print('$species lands on a branch');
  }
}
