class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  const Point.origin() : x = 0, y = 0;
  const Point.unitX() : x = 1, y = 0;
  const Point.unitY() : x = 0, y = 1;
}
