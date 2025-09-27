// Good: Follows Liskovs Subtitution Principle.
// All Subclasses can be interchangeably with their parents.

// Base class only defines what all Birds can do.

abstract class Bird {
  String name;
  Bird(this.name);

  void makeSound() {
    print('$name makes Bird Sound');
  }

  void moveAround() {
    print('$name moves around');
  }

  void reproduce() {
    print('$name reproduces');
  }

  void eat() {
    print('$name is eating');
  }
}

// Seperate abstraction for the Birds that can fly.
abstract class FlyingBird extends Bird {
  FlyingBird(String name) : super(name);

  // only Flying birds have an extra method other than the bird method and that is Fly.
  void fly() {
    print('$name is flying.');
  }

  @override
  void moveAround() {
    fly();
  }
}

abstract class SwimmingBird extends Bird {
  SwimmingBird(String name) : super(name);

  // Now only Swimming birds will have its extra method and that is Swim.
  void swim() {
    print('$name is swimming');
  }

  @override
  void moveAround() {
    swim();
  }
}

class Eagle extends FlyingBird {
  Eagle(String name) : super(name);

  @override
  void fly() {
    print('$name roars majestically.');
  }

  @override
  void makeSound() {
    print('$name screeches loudly.');
  }
}

// Works perfectly with any bird type.
class BirdWatcher {
  void observeBird(Bird bird) {
    print('\n-- Observing ${bird.name} --');
  }
}
