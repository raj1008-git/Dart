// Interface Segregation Principle.

abstract interface class Worker {
  void work();
}

abstract interface class Eater {
  void eat();
}

class Developer implements Worker {
  @override
  void work() {
    print('Developer is working');
  }
}

class Waiter implements Worker, Eater {
  @override
  void work() {
    print('Waiter is Working');
  }

  @override
  void eat() {
    print('Waiter is Eating');
  }
}

void main() {
  var developer = Developer();
  developer.work();

  var waiter = Waiter();

  waiter.eat();
}
