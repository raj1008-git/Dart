// class Shape {
//   String type;

//   Shape(this.type);
// }

// class AreaCalculator {
//   double calculateArea(Shape shape) {
//     if (shape.type == 'circle') {
//       return 3.14 * 3.14;
//     } else if (shape.type == 'rectangle') {
//       return 4 * 5;
//     } else if (shape.type == 'Square') {
//       return 4 * 4;
//     }
//     return 0;
//   }
// }

abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double breadth;

  Rectangle(this.length, this.breadth);
  @override
  double calculateArea() {
    return length * breadth;
  }
}

class Square implements Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

class AreaCalculator {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}

// void main() {
//   final circle = Circle(5.0);
//   final rectangle = Rectangle(4.0, 6.0);

//   final calculator = AreaCalculator();

//   print('Circle area: ${calculator.calculateArea(circle)}');
//   print('Rectangle area: ${calculator.calculateArea(rectangle)}');
// }
void main() {
  final Shape circle = Circle(5.0);
  final Shape rectangle = Rectangle(4.0, 5.0);

  final calculator = AreaCalculator();

  print('Circle Area: ${calculator.calculateArea(circle)}');
}
