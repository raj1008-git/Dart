import 'package:solid_principles_v2/bad_invoice.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Calculate total computes subTotal + tax', () {
    final inv = BadInvoice([10.0, 15.0], taxRate: 0.1);
    expect(inv.calculateTotal(), closeTo(27.5, 0.0001));
  });

  test('renderForPrinting includes the right lines', () {
    final inv = BadInvoice([10.0, 15.0], taxRate: 0.1);
    final output = inv.renderForPrinting();
    expect(output.contains('subtotal'), isTrue);
    expect(output.contains('Total:'), isTrue);
  });
}
