import 'package:solid_principles_v2/developer.dart';
import 'package:test/test.dart';

void main() {
  test('Developer can work and take breaks only', () {
    final dev = Developer();

    expect(() => dev.work(), returnsNormally);
    expect(() => dev.takeBreak(), returnsNormally);
  });
}
