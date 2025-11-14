import 'package:solid_principles_v2/invoice_calculator.dart';
import 'package:solid_principles_v2/invoice_model.dart';
import 'package:solid_principles_v2/invoice_renderer.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('renderForPrinting uses calculator values', () {
    final invoice = InvoiceModel([10.0, 15.0], taxRate: 0.1);
    final calc = InvoiceCalculator();
    final renderer = InvoiceRenderer(calc);

    final output = renderer.renderForPrinting(invoice);
    expect(output.contains('SubTotal'), isTrue);
  });
}
