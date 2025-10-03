// Abstract classes cannot be instantiated directly.
abstract class Vehicle {
  final String brand;
  final int year;
  Vehicle(this.brand, this.year);

  void startEngine();
  void displayInfo() {
    print('$brand ($year)');
  }
}

class Car extends Vehicle {
  final int doors;
  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void startEngine() {
    print('$brand car engine started with key');
  }
}

class Motorcycle extends Vehicle {
  final bool hasSidecar;
  Motorcycle(String brand, int year, this.hasSidecar) : super(brand, year);

  void startEngine() {
    print('$brand motorcucle started with kick button');
  }
}
