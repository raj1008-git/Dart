mixin Swimmable {
  void swim() {
    print('Swimming through Water.');
  }

  void dive() {
    print('Diving Underwater.');
  }
}
mixin Walkable {
  void walk() {
    print('Walking on land');
  }

  void run() {
    print('Running Fast');
  }
}

// Using Mixins with 'With' Keyword.
class Duck with Walkable, Swimmable {}
