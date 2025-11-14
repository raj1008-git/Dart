import 'package:solid_principles_v2/invoice_calculator.dart';
import 'package:solid_principles_v2/invoice_model.dart';
import 'package:test/test.dart';

void main() {
  late InvoiceCalculator calc;

  setUp(() {
    calc = InvoiceCalculator();
  });

  test('subtotal sums items', () {
    final invoice = InvoiceModel([10.0, 15.0], taxRate: 0.1);
    expect(calc.subTotal(invoice), closeTo(25.0, 0.001));
  });

  test('tax amount is subtotal * taxRate', () {
    final invoice = InvoiceModel([10.0, 15.0], taxRate: 0.1);
    expect(calc.taxAmount(invoice), closeTo(2.5, 0.0001));
  });

  test('total equals subTotal +tax', () {
    final invoice = InvoiceModel([10.0, 15.0], taxRate: 0.1);
    expect(calc.total(invoice), closeTo(27.5, 0.0001));
  });
}
