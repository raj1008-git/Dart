// Interface Segregation Principle
// Classes should not be forced to implement interfaces they dont use.

// Good Segregated interfaces.
abstract class Worker {
  void work();
}

abstract class Eater {
  void eat();
}

abstract class Sleeper {
  void sleep();
}

abstract class MeetingAttendee {
  void attendMeeting();
}

abstract class Coder {
  void writeCode();
}

class Developer implements Worker, Sleeper, Eater, MeetingAttendee, Coder {
  @override
  void work() => print("Writing code");

  @override
  void eat() => print("Eating Lunch");

  @override
  void sleep() => print("Sleeping");

  @override
  void attendMeeting() => print('in Development meeting');

  @override
  void writeCode() => print('Coding new features.');
}

class Cleaner implements Worker, Eater, Sleeper {
  @override
  void work() => print('Cleaning office');

  @override
  void eat() => print('Eating Lunch');

  @override
  void sleep() => print('Sleeping');
}
