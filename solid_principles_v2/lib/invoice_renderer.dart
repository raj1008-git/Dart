import 'package:solid_principles_v2/invoice_calculator.dart';
import 'package:solid_principles_v2/invoice_model.dart';

class InvoiceRenderer {
  final InvoiceCalculator calculator;
  InvoiceRenderer(this.calculator);

  String renderForPrinting(InvoiceModel invoice) {
    final subtotal = calculator.subTotal(invoice);
    final tax = calculator.taxAmount(invoice);
    final total = calculator.total(invoice);
    return 'SubTotal: \$${subtotal.toStringAsFixed(2)}\n'
        'Tax: \$${tax.toStringAsFixed(2)}\n'
        'Total: \$${total.toStringAsFixed(2)}';
  }
}
