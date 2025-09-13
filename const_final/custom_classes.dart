import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  const Point.origin() : x = 0, y = 0;
  const Point.unitX() : x = 1, y = 0;
  const Point.unitY() : x = 0, y = 1;

  double get distanceFromOrigin {
    return sqrt(x * x + y * y);
  }

  Point translate(double dx, double dy) {
    return Point(x + dx, y + dy);
  }

  Point scale(double factor) {
    return Point(x * factor, y * factor);
  }

  @override
  String toString() => 'Point($x,$y)';
}

void main() {
  print("Building Immutable objects");
  const point1 = Point(3, 4);
  const point2 = Point(3, 4);
  const point3 = Point(5, 6);

  print("Point 1: $point1");
  print("Point 2: $point2");
  print("Point 3: $point3");

  print("Are point1 and point2 identical? ${identical(point1, point2)}");
  print("Are point1 and point3 identical? ${identical(point1, point3)}");
  print("Distance from the origin: ${point1.distanceFromOrigin}");
  print("Identical constant objects share the memory");

  print("----------   Final vs constant Objects. ---------");
  final Point finalPoint = Point(1, 2);
  print("Final point: $finalPoint");

  const Point constPoint = Point(1, 2);
  print("Const point: $constPoint");

  print(
    "Are final and const points identical? ${identical(finalPoint, constPoint)}",
  );
}
