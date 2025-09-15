// Properly following the liskov principle.

abstract class Bird {
  void eat();
  void sleep();
}

abstract class FlyingBird extends Bird {
  void fly();
}

abstract class SwimmingBird extends Bird {
  void swim();
}

class Sparrow extends FlyingBird {
  @override
  void eat() => print('Sparrow eating seeds');

  @override
  void sleep() => print('Sparrow sleeping in Nest');

  @override
  void fly() => print('Sparrow flying high!');
}
