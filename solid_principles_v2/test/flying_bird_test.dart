import 'package:solid_principles_v2/duck.dart';
import 'package:solid_principles_v2/flying_service.dart';
import 'package:test/test.dart';

void main() {
  test('Duck can fly and be used in FlyingService', () {
    final service = FlyingService();
    final duck = Duck();
    expect(() => service.makeFly(duck), returnsNormally);
  });
}
