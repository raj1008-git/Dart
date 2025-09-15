// Depencency Inversion Principle
// High level Modules should not depend on Low Level modules.
// Both should depend on abstractions.

// Low level Module
abstract interface class Bulb {
  void turnOn();
  void turnOff();
}

class IncandescentBulb implements Bulb {
  @override
  void turnOn() {
    print('Incandescent Bult turned On');
  }

  @override
  void turnOff() {
    print('Incandescent Bulb turned Off');
  }
}

class LEDBulb implements Bulb {
  @override
  void turnOn() {
    print('Led Bulb turned On');
  }

  @override
  void turnOff() {
    print('Led Bulb turned Off');
  }
}

// High Level Module
class Room {
  Bulb bulb;
  Room(this.bulb);

  void switchLightOn() {
    bulb.turnOn();
  }

  void switchLightOff() {
    bulb.turnOff();
  }
}
