// the good approach is to allow extension without modification. Hence use Abstraction.
abstract class Shape {
  double calculateArea();
}

class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Triangle implements Shape {
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

class AreaCalculator {
  double calculateTotalArea(List<Shape> shapes) {
    return shapes.fold(0, (sum, shape) => sum + shape.calculateArea());
  }
}

void main() {
  List<Shape> shapes = [Rectangle(5, 15), Circle(3), Triangle(4, 6)];
  AreaCalculator calculator = AreaCalculator();
  double totalArea = calculator.calculateTotalArea(shapes);

  print('Total Area: $totalArea');
}
